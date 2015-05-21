SOURCES += \
    main.cpp

INCLUDEPATH += -I/usr/local/include

LIBS += -L/usr/local/lib
LIBS += -lcharls
LIBS += -ldcmdata
LIBS += -ldcmdsig
LIBS += -ldcmimage
LIBS += -ldcmimgle
LIBS += -ldcmjpeg
LIBS += -ldcmjpls
LIBS += -ldcmnet
LIBS += -ldcmpstat
LIBS += -ldcmqrdb
LIBS += -ldcmrt
LIBS += -ldcmsr
LIBS += -ldcmtls
LIBS += -ldcmwlm
LIBS += -li2d
LIBS += -lijg12
LIBS += -lijg16
LIBS += -lijg8
LIBS += -loflog
LIBS += -lofstd

LIBS += -lz
LIBS += -llog4cpp
LIBS += -lpthread
