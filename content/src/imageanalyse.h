#ifndef IMAGEANALYSE_H
#define IMAGEANALYSE_H

#include <QBrush>
#include <QChar>
#include <QDir>
#include <QFileDialog>
#include <QImage>
#include <QMap>
#include <QPainter>
#include <QObject>
#include <QString>
#include <QThread>
#include <QUrl>
#include <QVariant>
#include <QtConcurrent>
#include <QtConcurrentRun>
#include <QtQml/qqmlregistration.h>

#include "opencv2/imgproc/imgproc.hpp"
#include "opencv2/opencv.hpp"
#include <vector>


class ImageAnalyse: public QObject
{
  Q_OBJECT
  QML_ELEMENT

 public:
  explicit ImageAnalyse(QObject *parent = nullptr);
  ~ImageAnalyse();
  Q_INVOKABLE QStringList GrabPixelBit(QVariant image_path, int color_count = 6);
  Q_INVOKABLE void ComposeImage(const QVariant &picture, const QVariant &colors);
  Q_INVOKABLE QVariant CreateQImage(const QString &path);
  Q_INVOKABLE QMap<QString, int> HexToRGB(const QString&);
  Q_INVOKABLE void SaveImage(const QVariant processed_picture);
  Q_INVOKABLE QString OpenImageFileDialog();

 signals:
  void signal_ComposeImage(QString image_path);
  void signal_EmitComposeImage(QImage emit_image);


};

#endif // IMAGEANALYSE_H
