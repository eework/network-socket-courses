#-------------------------------------------------
#
# Project created by QtCreator 2019-10-10T14:40:23
#
#-------------------------------------------------

QT       += core gui network opengl

greaterThan(QT_MAJOR_VERSION, 4): QT += widgets

TARGET = three-widget
TEMPLATE = lib
VERSION = 2.2.0
#DEFINES += QOPENGLWIDGET
#DEFINES += OSGEARTH

# The following define makes your compiler emit warnings if you use
# any feature of Qt which has been marked as deprecated (the exact warnings
# depend on your compiler). Please consult the documentation of the
# deprecated API in order to know how to port your code away from it.
DEFINES += QT_DEPRECATED_WARNINGS \
           GLOBAL_COMPANY=\\\"csnc\\\" \
           GLOBAL_NAME=\\\"config\\\" \
           GLOBAL_MODELDIRECTORYPATH=\\\"modelDirectoryPath\\\" \
           TW_LIBRARY

# You can also make your code fail to compile if you use deprecated APIs.
# In order to do so, uncomment the following line.
# You can also select to disable deprecated APIs only up to a certain version of Qt.
#DEFINES += QT_DISABLE_DEPRECATED_BEFORE=0x060000    # disables all the APIs deprecated before Qt 6.0.0

CONFIG += c++11

SOURCES += \
    plugins/controls.cpp \
    plugins/editor.cpp \
    plugins/observer.cpp \
    plugins/skybox.cpp \
    teleportmanipulator.cpp \
    threeearthwidget.cpp \
    threewidget.cpp \
    interfaces.cpp \
    plugins/basic.cpp \
    plugins/animations.cpp \
    plugins/shadow.cpp \
    threemanipulator.cpp

HEADERS += \
    plugins/controls.h \
    plugins/editor.h \
    plugins/observer.h \
    plugins/skybox.h \
    teleportmanipulator.h \
    threeearthwidget.h \
    threewidget.h \
    interfaces.h \
    plugins/basic.h \
    plugins/animations.h \
    plugins/shadow.h \
    threemanipulator.h \
    three-widget_global.h

INCLUDEPATH += \
            $$PWD/../OpenSceneGraph/include\
#unix:!mac: $$PWD/../OpenSceneGraph/build-gcc4.4.5-libc2.11/include \
unix:!mac:  $$PWD/../OpenSceneGraph/build-gcc9-libc2.29/include \
win32:      $$PWD/../OpenSceneGraph/build-win-vs2013x64/include

#unix:!mac:LIBS += -lxml2 -L$$PWD/../OpenSceneGraph/build-gcc4.4.5-libc2.11/lib -lOpenThreads -losg -losgDB -losgGA -losgUtil -losgViewer -losgManipulator -losgAnimation -losgShadow -losgText
unix:!mac:LIBS += -lxml2 -L$$PWD/../OpenSceneGraph/build-gcc9-libc2.29/lib -lOpenThreads -losg -losgDB -losgGA -losgUtil -losgViewer -losgManipulator -losgAnimation -losgShadow -losgText
#unix:!mac:LIBS += -L$$PWD/../OpenSceneGraph-Earth/build-gcc9-libc2.29/lib -losgEarth -losgEarthUtil
win32:LIBS     += -L$$PWD/../OpenSceneGraph/build-win-vs2013x64/lib -lAdvapi32 -lOpenThreads -losg -losgDB -losgGA -losgUtil -losgViewer -losgManipulator -losgAnimation -losgShadow -losgText

# Default rules for deployment.
qnx: target.path = /tmp/$${TARGET}/bin
else: unix:!android: target.path = /opt/$${TARGET}/bin
!isEmpty(target.path): INSTALLS += target
