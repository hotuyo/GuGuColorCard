#include "imageanalyse.h"
#include <QString>
#include <QChar>
#include <QUrl>
#include <QBrush>
#include <QPainter>
#include <QDir>
#include <QMap>
#include <QtConcurrent>

ImageAnalyse::ImageAnalyse(QObject *parent): QObject(parent) {

}
ImageAnalyse::~ImageAnalyse() {

}
// GrabPixelBit
QStringList ImageAnalyse::GrabPixelBit(const QString &image_path, int color_count) {
    QUrl url(image_path);
    QString path = url.toLocalFile();
    cv::Mat image = cv::imread(path.toStdString());
    if (image.empty()) {
        throw std::runtime_error("Could not open or find the image");
    }
    cv::Mat reshaped_image = image.reshape(1, image.cols * image.rows);
    reshaped_image.convertTo(reshaped_image, CV_32F);
    std::vector<int> labels;
    QStringList dominat_colors;
    QFuture<void> future = QtConcurrent::run([=, &dominat_colors](){
     cv::Mat centers;
     std::vector<int> labels;
     cv::kmeans(reshaped_image, color_count, labels,
         cv::TermCriteria(cv::TermCriteria::EPS + cv::TermCriteria::COUNT, 10, 1.0),
         3, cv::KMEANS_PP_CENTERS, centers);
     centers.convertTo(centers, CV_8U);
     for (int i = 0; i < centers.rows; ++i) {
         cv::Vec3b color = centers.at<cv::Vec3b>(i);
         QString color_string = QString("#%1%2%3")
             .arg(color[2], 2, 16, QChar('0'))
             .arg(color[1], 2, 16, QChar('0'))
             .arg(color[0], 2, 16, QChar('0'));
         dominat_colors.append(color_string);
     }
    });
    future.waitForFinished();
    return dominat_colors;
}

void ImageAnalyse::ComposeImage(const QVariant &picture, const QVariant &colors) {
    QImage origian_image = picture.value<QImage>();
    if (origian_image.isNull()) {
        qDebug() << "Failed to load image";
        return;
    }
    int desired_width = 1600;
    double picture_radio = origian_image.width() / origian_image.height();
    int desired_height = desired_width / picture_radio;
    origian_image = origian_image.scaled(desired_width, desired_height, Qt::KeepAspectRatio, Qt::SmoothTransformation);
    int white_bar_height = origian_image.height() / 5;
    QImage new_image(origian_image.width(), origian_image.height() + white_bar_height,
                            QImage::Format_ARGB32);
    QPainter painter(&new_image);
    painter.setRenderHint(QPainter::Antialiasing, true);
    painter.drawImage(0, 0, origian_image);
    painter.fillRect(0, origian_image.height(), origian_image.width(), white_bar_height, Qt::white);
    int circle_radius = white_bar_height / 4;
    int circle_spacing = origian_image.width() / 25;
    int first_circle_x = (new_image.width() - (colors.toList().size() *
                        (circle_radius * 2 + circle_spacing) - circle_spacing)) / 2;
    int circle_y =  origian_image.height() + (white_bar_height - circle_radius * 2) / 2;
    QFont font;
    int font_size = circle_radius / 2;
    font.setPointSize(font_size);
    painter.setFont(font);
    for (int i = 0; i < colors.toList().size(); ++i) {
        QColor color(colors.toList()[i].toString());
        int circle_x = first_circle_x + i * (circle_radius * 2 + circle_spacing);
        painter.setBrush(QBrush(color));
        painter.drawEllipse(circle_x, circle_y, circle_radius * 2, circle_radius * 2);
        QString hexColor = color.name(QColor::HexRgb);
        painter.setPen(Qt::black);
        painter.drawText(circle_x, circle_y + circle_radius * 2 + 30, hexColor);
    }
    painter.end();
    QImage scaled_image = new_image.scaled(desired_width, desired_height,
                                 Qt::KeepAspectRatio, Qt::SmoothTransformation);
    QString tempDirPath = QCoreApplication::applicationDirPath() + "/temp";
    QString image_path = "file://" + tempDirPath + "/output.jpg";
    scaled_image.save(tempDirPath + "/output.jpg");
    emit signal_ComposeImage(image_path);
    emit signal_emitComposeImage(new_image);
}

QVariant ImageAnalyse::CreateQImage(const QString &path) {
    qDebug() << path;
    QUrl url(path);
    QString image_path = url.toLocalFile();
    QImage image(image_path);
    return QVariant::fromValue(image);
}

QMap<QString, int> ImageAnalyse::HexToRGB(const QString &hex_color) {

    QMap<QString, int> rgb_color;
        if(hex_color.size() < 7){
        return rgb_color;
        }
    bool ok;
    rgb_color["red"] = hex_color.mid(1, 2).toInt(&ok, 16);
    rgb_color["green"] = hex_color.mid(3, 4).toInt(&ok, 16);
    rgb_color["blue"] = hex_color.mid(5, 6).toInt(&ok, 16);
    return rgb_color;
}

void ImageAnalyse::SaveImage(const QVariant processed_picture) {
    QImage image = qvariant_cast<QImage>(processed_picture);

    QString fileName = QFileDialog::getSaveFileName(nullptr, tr("Save Image"), "", tr("Image (*.jpg)"));

    if (!fileName.isEmpty()) {
        image.save(fileName, "JPG");
    }
}


