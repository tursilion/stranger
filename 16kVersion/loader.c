#include "vdp.h"
#include "puff16k.h"

// target load address
#define DESTPTR (unsigned char*)0xa812
// amount of free space at DESTPTR
#define DESTLEN 0x57ea
// source address (will hexedit in later)
#define SRCPTR (unsigned char*)0x6ba0
// source len (will hexedit in later)
#define SRCLEN 0x2ff2
// variables in/out for puff
unsigned int dstlen;
unsigned int srclen;

void (*game)() = (void(*)())DESTPTR;

int main() {
  // assume a clean start, and just note at the bottom
  vdpmemcpy(VDP_SCREEN_POS(22,10),"UNPACKING...",12);
  
  /* ROM data preloaded to straddle 8k boundary starting at address to */
  /* be loaded by hexeditting (0xaaaa) */
  *((unsigned char*)0x6000) = 0;  // first bank
	dstlen=DESTLEN;
	srclen=SRCLEN;
	puff16k(DESTPTR, &dstlen, SRCPTR, &srclen);
  game();
	return 0;
}


