
#ifndef _MAIN_H
#define _MAIN_H

/** I/O Port */
#define PPU_CTRL1		((uint8_t*)0x2000)	/* PPU制御レジスタ1 */
#define PPU_CTRL2		((uint8_t*)0x2001)	/* PPU制御レジスタ2 */
#define PPU_STATUS		((uint8_t*)0x2002)	/* PPUの状態を取得 */
#define PPU_SPR_ADDR	((uint8_t*)0x2003)
#define PPU_SPR_IO		((uint8_t*)0x2004)
#define PPU_VRAM_ADDR1	((uint8_t*)0x2005)	/*  */
#define PPU_VRAM_ADDR2	((uint8_t*)0x2006)	/*  */
#define PPU_VRAM_IO		((uint8_t*)0x2007)

#define APU_PULSE1CTRL	((uint8_t*)0x4000)
#define APU_PULSE1RAMP	((uint8_t*)0x4001)
#define APU_PULSE1FTUNE	((uint8_t*)0x4002)
#define APU_PULSE1CTUNE	((uint8_t*)0x4003)
#define APU_PULSE2CTRL	((uint8_t*)0x4004)
#define APU_PULSE2RAMP	((uint8_t*)0x4005)
#define APU_PULSE2FTUNE	((uint8_t*)0x4006)
#define APU_PULSE2STUNE	((uint8_t*)0x4007)
#define APU_TRICTRL1	((uint8_t*)0x4008)
#define APU_TRICTRL2	((uint8_t*)0x4009)
#define APU_TRIFREQ1	((uint8_t*)0x400A)
#define APU_TRIFREQ2	((uint8_t*)0x400B)
#define APU_NOISECTRL	((uint8_t*)0x400C)

#define APU_NOISEFREQ1	((uint8_t*)0x400E)
#define APU_NOISEFREQ2	((uint8_t*)0x400F)
#define APU_MODCTRL		((uint8_t*)0x4010)
#define APU_MODDA		((uint8_t*)0x4011)	/* DPCM制御レジスタ2 Delta Modulation D/A Register (W) */
#define APU_MODADDR		((uint8_t*)0x4012)
#define APU_MODLEN		((uint8_t*)0x4013)
#define APU_SPR_DMA		((uint8_t*)0x4014)
#define APU_CHANCTRL	((uint8_t*)0x4015)	/* 音声チャンネル制御レジスタ Sound/Vertical Clock Signal Register (R) */
#define APU_PAD1		((uint8_t*)0x4016)
#define APU_PAD2		((uint8_t*)0x4017)

#define ADDR_0x0000		((uint8_t*)0x0000)
#define ADDR_0x0001		((uint8_t*)0x0001)
#define ADDR_0x0200		((uint8_t*)0x0200)
#define ADDR_0x0300		((uint8_t*)0x0300)
#define ADDR_0x0301		((uint8_t*)0x0301)
#define ADDR_0x073F		((uint8_t*)0x073F)
#define ADDR_0x0740		((uint8_t*)0x0740)
#define ADDR_0x0770		((uint8_t*)0x0770)
#define ADDR_0x0773		((uint8_t*)0x0773)
#define ADDR_0x0774		((uint8_t*)0x0774)
#define PPU_CTRL1_STATUS		((uint8_t*)0x0778)
#define ADDR_0x0779		((uint8_t*)0x0779)
#define ADDR_0x07A7		((uint8_t*)0x07A7)
#define ADDR_0x07D7		((uint8_t*)0x07D7)
#define ADDR_0x07FF		((uint8_t*)0x07FF)
#define ADDR_0x805A		((uint8_t*)0x805A)
#define ADDR_0x806D		((uint8_t*)0x806D)


/*******************************************************************************/
/* マクロ                                                                      */
/*******************************************************************************/
/* 8220 */
#define init_0x200() memset(ADDR_0x0200, 0xF8, 0xFF)
/* 8E92 */

/* 8EE0 */
//#define 
/* BEE6 */
#define set_ppu_vlamaddr1(x) { *PPU_VRAM_ADDR1 = (x); *PPU_VRAM_ADDR1 = (x); }
/* 8EED */
#define set_ppu_ctrl1(x) { *PPU_CTRL1_STATUS = (x); *PPU_CTRL1 = *PPU_CTRL1_STATUS; }

#define set_ppu_ctrl2(x) { *PPU_CTRL2_STATUS = (x); *PPU_CTRL2 = *PPU_CTRL2_STATUS; }

#define stop_irq()			__asm__("sei")
#define clear_bcdmode()		__asm__("cld")
#define inc(x)				__asm__("inc %w", x)
/*******************************************************************************/
/* 関数ヘッダ                                                                  */
/*******************************************************************************/
void meminit(void);
void func_BE19(void);
void func_8E2D(uint8_t ppu_addr2_hi_addr);
void func_8EDD(void);
void func_8E92(uint8_t a, int8_t i);

#endif