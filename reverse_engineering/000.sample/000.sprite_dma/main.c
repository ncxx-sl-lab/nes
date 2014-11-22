#include <conio.h>
#include <string.h>
#include <stdint.h>
#include "main.h"

void nmi_handler(void);

struct sprite {
	char y;
	char no;
	char attr;
	char x;
};



// スクリーンのオン・オフ
void ShowScreen(char ShowFlag)
{
	if (ShowFlag == 1) {
		*(char*)0x2000 = 0x08;
		*(char*)0x2001 = 0x1e;
	} else {
		*(char*)0x2000 = 0x00;
		*(char*)0x2001 = 0x00;
	}
}

// スクロール設定
void SetScroll(unsigned char x, unsigned char y)
{
	*(char*)0x2005 = x;
	*(char*)0x2005 = y;
}

static struct sprite spr[2];

/******************************************************************************/
/* main                                                                       */
/******************************************************************************/
uint8_t main(void)
{

//	const char palettes[] = {
//		0x0f, 0x00, 0x10, 0x20,
//		0x0f, 0x06, 0x16, 0x26,
//		0x0f, 0x08, 0x18, 0x28,
//		0x09, 0x0a, 0x0b, 0x0c
//	};
//	const char string[] = "hello world!";
//	char i;

	ShowScreen(0);

//	// パレットを書き込み
//	*(char*)0x2006 = 0x3f;
//	*(char*)0x2006 = 0x00;
//	for (i = 0; i < 0x10; i ++)
//		*(char*)0x2007 = palettes[i];
//
//	*(char*)0x2006 = 0x21;
//	*(char*)0x2006 = 0x20;
//	// ネームテーブルへ書き込み
//	for (i = 0; i < sizeof(string); i ++) {
//		*(char*)0x2007 = string[i];
//	}

	SetScroll(0, 0);
	ShowScreen(1);

	while (1);

	return 0;
}

/******************************************************************************/
/* VBlank 割り込みハンドラー                                                  */
/******************************************************************************/
void nmi_handler(void)
{

	spr[0].y = 10;
	spr[0].x = 10;
	spr[0].no = 64;
	spr[0].attr = 0;

	*APU_SPR_DMA = spr;
}


