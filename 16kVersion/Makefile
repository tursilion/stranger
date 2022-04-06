# Paths to TMS9900 compilation tools
GAS=/cygdrive/c/cygwin/home/tursi/bin/tms9900-as
LD=/cygdrive/c/cygwin/home/tursi/bin/tms9900-ld
CC=/cygdrive/c/cygwin/home/tursi/bin/tms9900-gcc
AR=/cygdrive/c/cygwin/home/tursi/bin/tms9900-ar
CP=/usr/bin/cp
ELF2EA5=/cygdrive/c/cygwin/home/tursi/elf2ea5
ELF2CART=/cygdrive/c/cygwin/home/tursi/elf2cart
EA5PLIT=/cygdrive/c/cygwin/home/tursi/ea5split/ea5split

LDFLAGS_EA5=\
  -L../libti99 --section-start .text=2080 --section-start .data=2c00 -M 

OBJECT_LIST_EA5=\
  crt0_ea5.o\

OBJECT_LIST_CART=\
  cart_header1.o \
  cart_header2.o

# output file
NAME=loader.a

C_FLAGS=\
  -O2 -std=c99 -s --save-temp -I../libTI99

# List of compiled objects used in executable
OBJECT_LIST=\
  loader.o \
  puff16k.o

# Recipe to compile the library
all: loader

loader: $(OBJECT_LIST) $(OBJECT_LIST_EA5) $(OBJECT_LIST_CART) 
	$(LD) $(OBJECT_LIST_EA5) $(OBJECT_LIST) $(LDFLAGS_EA5) -L. -lti99 -o loader.ea5.elf > ea5.map
	$(ELF2EA5) loader.ea5.elf loader.ea5.bin
	$(EA5PLIT) loader.ea5.bin
	$(CP) LOADE* /cygdrive/c/classic99/dsk1/
	$(LD) cart_header1.o --section-start .text=6000 -L. -o cart_header1.elf
	$(ELF2CART) cart_header1.elf cart_header1C.bin
	$(LD) cart_header2.o --section-start .text=6000 -L. -o cart_header2.elf
	$(ELF2CART) cart_header2.elf cart_header2C.bin
	
# Recipe to clean all compiled objects
.phony clean:
	-rm *.o
	-rm *.a
	-rm *.s
	-rm *.i
	-rm *.elf
	-rm *.map
	-rm *.bin
	-rm TESTLI*

# Recipe to compile all assembly files
%.o: %.asm
	$(GAS) $< -o $@

# Recipe to compile all C files
%.o: %.c
	$(CC) -c $< $(C_FLAGS) -o $@
