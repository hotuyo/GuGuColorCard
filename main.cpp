// Copyright (C) 2021 The Qt Company Ltd.
// SPDX-License-Identifier: LicenseRef-Qt-Commercial OR GPL-3.0-only

#include <QApplication>
#include <QCoreApplication>
#include <QQmlApplicationEngine>
#include <QDir>

int main(int argc, char *argv[])
{

  QApplication *app;
  app = dynamic_cast<QApplication*>(QApplication::instance());
  if (app) {
    return 0;
  } else {
    app = new QApplication(argc, argv);
    QString tempDirPath = QCoreApplication::applicationDirPath() + "/temp";
    QQmlApplicationEngine engine;
      QDir dir;
      if (!dir.exists(tempDirPath)) {
          dir.mkdir(tempDirPath);
      }
      const QUrl url(u"qrc:Main/main.qml"_qs);
      engine.addImportPath(":/");
      engine.addImportPath("qrc:");
      engine.load(url);
      if (engine.rootObjects().isEmpty()) {
          return -1;
      }
      return app->exec();
      }
}

