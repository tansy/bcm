# bcm Makefile

TARGET     = bcm
CC         = gcc
CXX        = g++
CFLAGS     = -O2 -Wall
CXXFLAGS   = -std=c++11 -O2 -Wall
LIBS       =
LD         = $(CXX)

SRCS := src/libsais.c src/bcm.cpp

OBJS := $(SRCS)
OBJS := $(OBJS:.c=.o)
OBJS := $(OBJS:.cpp=.o)

all: $(TARGET)

$(TARGET): $(OBJS)
	$(LD) -o $@ $(OBJS) $(LIBS)

.c.o:
	$(CC) $(CFLAGS) -c -o $@ $<
.cpp.o:
	$(CXX) $(CXXFLAGS) -c -o $@ $<

.PHONY: clean

clean:
	rm -rf $(TARGET) $(OBJS)

