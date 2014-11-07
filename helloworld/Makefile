
TARGET=helloworld.nes
OBJS=main.o crt0.o
INC_DIR=../include
BIN=../cc65-master/bin
#LIBS=../cc65-master/lib/nes.lib ./cc65-master/lib/atmos.lib
LIBS=../cc65-master/lib/atmos.lib
CC=$(BIN)/cc65
CA=$(BIN)/ca65
LD=$(BIN)/ld65
CL=$(BIN)/cl65

.SUFFIXES : .asm .o

all:$(TARGET)

$(TARGET):$(OBJS)
	$(LD) -o $@ --config main.cfg $(OBJS) $(LIBS)

.c.o:
	$(CL) -t nes -I $(INC_DIR) -o $*.o -c -O $*.c
	$(CC) -t nes -O -I include $<

.asm.o:
	$(CA) -t nes $<

clean:
	del *.o
	del main.s
	del $(TARGET)