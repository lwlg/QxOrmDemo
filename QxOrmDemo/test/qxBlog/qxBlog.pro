include(../../QxOrm/QxOrm.pri)

TEMPLATE = app
DEFINES += _BUILDING_QX_BLOG
INCLUDEPATH += ../../QxOrm/include/
DESTDIR = ../../_bin/
LIBS += -L"../../lib"

!contains(DEFINES, _QX_NO_PRECOMPILED_HEADER) {
PRECOMPILED_HEADER = ./include/precompiled.h
} # !contains(DEFINES, _QX_NO_PRECOMPILED_HEADER)

macx:CONFIG-=app_bundle



CONFIG(debug, debug|release) {
    TARGET = qxBlogd
    LIBS += -l"QxOrmd"
} else {
    TARGET = qxBlog
    LIBS += -l"QxOrm"
} # CONFIG(debug, debug|release)




HEADERS += ./include/precompiled.h
HEADERS += ./include/export.h
HEADERS += ./include/author.h
HEADERS += ./include/blog.h
HEADERS += ./include/category.h
HEADERS += ./include/comment.h

SOURCES += ./src/author.cpp
SOURCES += ./src/blog.cpp
SOURCES += ./src/category.cpp
SOURCES += ./src/comment.cpp
SOURCES += ./src/main.cpp
