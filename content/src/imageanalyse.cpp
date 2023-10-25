#include "imageanalyse.h"

ImageAnalyse::ImageAnalyse(QObject *parent) : QObject(parent) {}

ImageAnalyse::~ImageAnalyse() {}

QVariant ImageAnalyse::CreateQImage(const QString &path) {
  qDebug() << path;
  QUrl url(path);
  QString image_path = url.toLocalFile();
  QImage image(image_path);
  return QVariant::fromValue(image);
}

QStringList ImageAnalyse::GrabPixelBit(QVariant image, int color_count) {
  QImage q_image = qvariant_cast<QImage>(image);
  cv::Mat cv_image(q_image.height(), q_image.width(), CV_8UC4, q_image.bits(),
                   q_image.bytesPerLine());
  cv::cvtColor(cv_image, cv_image, cv::COLOR_RGB2BGR);
  cv::Mat reshaped_image = cv_image.reshape(1, cv_image.cols * cv_image.rows);
  reshaped_image.convertTo(reshaped_image, CV_32F);
  QStringList dominat_colors;
  unsigned int seed = static_cast<unsigned int>(QDateTime::currentMSecsSinceEpoch());
  QFuture<void> future = QtConcurrent::run([=, &dominat_colors]() {
    cv::Mat centers;
    std::vector<int> labels;
    cv::RNG rng(seed);
    std::vector<int> random_indices;
    for (int i = 0; i < reshaped_image.rows; ++i) {
      int random_index = rng.uniform(0, reshaped_image.rows);
      random_indices.push_back(random_index);
    }
    cv::Mat random_sampled_pixels;
    for (int i = 0; i < random_indices.size(); ++i) {
      random_sampled_pixels.push_back(reshaped_image.row(random_indices[i]));
    }
    cv::kmeans(random_sampled_pixels, color_count, labels,
               cv::TermCriteria(cv::TermCriteria::EPS + cv::TermCriteria::COUNT,
                                10, 1.0),
               3, cv::KMEANS_PP_CENTERS, centers);
    centers.convertTo(centers, CV_8U);
    for (int i = 0; i < centers.rows; ++i) {
      cv::Vec3b color = centers.at<cv::Vec3b>(i);
      QString color_string = QString("#%1%2%3")
                                 .arg(color[0], 2, 16, QChar('0'))
                                 .arg(color[1], 2, 16, QChar('0'))
                                 .arg(color[2], 2, 16, QChar('0'));
      dominat_colors.append(color_string);
    }
  });
  future.waitForFinished();
  return dominat_colors;
}

void ImageAnalyse::ComposeImage(const QVariant &picture,
                                const QVariant &colors) {
  QImage origian_image = picture.value<QImage>();
  if (origian_image.isNull()) {
    return;
  }
  int desired_width = 1600;
  double picture_radio = origian_image.width() / origian_image.height();
  int desired_height = desired_width / picture_radio;
  origian_image =
      origian_image.scaled(desired_width, desired_height, Qt::KeepAspectRatio,
                           Qt::SmoothTransformation);
  int white_bar_height = origian_image.height() / 5;
  QImage new_image(origian_image.width(),
                   origian_image.height() + white_bar_height,
                   QImage::Format_ARGB32);
  QPainter painter(&new_image);
  painter.setRenderHint(QPainter::Antialiasing, true);
  painter.drawImage(0, 0, origian_image);
  painter.fillRect(0, origian_image.height(), origian_image.width(),
                   white_bar_height, Qt::white);
  int circle_radius = white_bar_height / 4;
  int circle_spacing = origian_image.width() / 25;
  int first_circle_x =
      (new_image.width() - (colors.toList().size() * (circle_radius * 2 + circle_spacing)
            - circle_spacing)) / 2;
  int circle_y = origian_image.height() + (white_bar_height - circle_radius * 2) / 2;
  QFont font;
  int font_size = circle_radius / 2;
  font.setPointSize(font_size);
  painter.setFont(font);
  for (int i = 0; i < colors.toList().size(); ++i) {
    QColor color(colors.toList()[i].toString());
    int circle_x = first_circle_x + i * (circle_radius * 2 + circle_spacing);
    painter.setBrush(QBrush(color));
    painter.drawEllipse(circle_x, circle_y, circle_radius * 2,
                        circle_radius * 2);
    QString hexColor = color.name(QColor::HexRgb);
    painter.setPen(Qt::black);
    painter.drawText(circle_x, circle_y + circle_radius * 2 + 30, hexColor);
  }
  painter.end();
  QImage scaled_image =
      new_image.scaled(desired_width, desired_height, Qt::KeepAspectRatio,
                       Qt::SmoothTransformation);
  QString tempDirPath = QCoreApplication::applicationDirPath() + "/temp";
  QString image_path = "file://" + tempDirPath + "/output.jpg";
  scaled_image.save(tempDirPath + "/output.jpg");
  emit signal_ComposeImage(image_path);
  emit signal_EmitComposeImage(new_image);
}

QMap<QString, int> ImageAnalyse::HexToRGB(const QString &hex_color) {
  QMap<QString, int> rgb_color;
  if (hex_color.size() < 7) {
    return rgb_color;
  }
  bool ok;
  rgb_color["red"] = hex_color.mid(1, 2).toInt(&ok, 16);
  rgb_color["green"] = hex_color.mid(3, 4).toInt(&ok, 16);
  rgb_color["blue"] = hex_color.mid(5, 6).toInt(&ok, 16);
  return rgb_color;
}

QString ImageAnalyse::OpenImageFileDialog() {
  QString file_path = QFileDialog::getOpenFileName(nullptr, tr("Select Image File"),
                                            QString(),
                                            tr("Images (*.jpg *.png *.jpeg)"));

  if (!file_path.isEmpty()) {
    return "file://" + file_path;
  } else {
    return QString();
  }
}

void ImageAnalyse::SaveImage(const QVariant processed_picture) {
  QImage image = qvariant_cast<QImage>(processed_picture);
  QString fileName = QFileDialog::getSaveFileName(nullptr, tr("Save Image"),
                                            "",
                                            tr("Image (*.jpg)"));
  if (!fileName.isEmpty()) {
    image.save(fileName, "JPG");
  }
}
