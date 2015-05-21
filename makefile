# 可执行文件  
TARGET= dcmtk_user
# 指令编译器和选项  
CC=g++  
# CPP文件  
SRCS = main.cpp
# 目标文件  
OBJS = $(SRCS:.cpp=.o)  

#INCLUDE = -I./include
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
RPATH   = -Wl,-rpath=. 

$(TARGET):$(OBJS)  
#   @echo TARGET:$@  
#   @echo OBJECTS:$^  
	$(CC) -o $@ $^ $(INCLUDE) $(LIBS) $(RPATH)
%.o:%.cpp
	$(CC) -o $@ -c $< $(INCLUDE)

clean:  
	rm -rf $(TARGET) $(OBJS)  


