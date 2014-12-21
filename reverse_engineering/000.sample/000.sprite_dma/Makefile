
TARGET=sprite_dma_sample.nes
OBJS=main.o crt0.o
PROJ_DIR=../../..
INC_DIR=$(PROJ_DIR)/include
CC65_DIR=$(PROJ_DIR)/cc65-master
BIN=$(CC65_DIR)/bin
LIBS=$(CC65_DIR)/lib/atmos.lib
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

win_clean:
	del *.o
	del main.s
	del $(TARGET)

clean:
	rm *.o
	rm main.s
	rm $(TARGET)
