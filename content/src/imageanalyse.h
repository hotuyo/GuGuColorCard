#ifndef IMAGEANALYSE_H
#define IMAGEANALYSE_H

#include <QFileDialog>
#include <QObject>
#include <QImage>
#include <QMap>
#include <QtConcurrent>
#include <QVariant>
#include "opencv2/opencv.hpp"
#include "opencv2/imgproc/imgproc.hpp"
#include <vector>
#include <QtConcurrentRun>
#include <QFuture>
#include <QThread>


#include <QtQml/qqmlregistration.h>
class ImageAnalyse: public QObject
{
  Q_OBJECT
  QML_ELEMENT

 public:
  explicit ImageAnalyse(QObject *parent = nullptr);
  ~ImageAnalyse();
  Q_INVOKABLE QStringList GrabPixelBit(const QString &image_path, int color_count = 6);
//  Q_INVOKABLE QFuture<QStringList> GrabPixelBitAsync(const QString &image_path, int color_count = 6);
  Q_INVOKABLE void ComposeImage(const QVariant &picture, const QVariant &colors);
  Q_INVOKABLE QVariant CreateQImage(const QString &path);
  Q_INVOKABLE QMap<QString, int> HexToRGB(const QString&);
  // 写一个导出图片到指定目录的函数
  Q_INVOKABLE void SaveImage(const QVariant processed_picture);

 signals:
  void signal_ComposeImage(QString image_path);
  void signal_emitComposeImage(QImage emit_image);


};

#endif // IMAGEANALYSE_H
