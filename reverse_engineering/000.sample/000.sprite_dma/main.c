#include <conio.h>
#include <string.h>
#include <stdint.h>
#include "main.h"

void nmi_handler(void);

typedef struct sprite {
	char y;
	char idx;
	char attr;
	char x;
} sprite_t;

// スクリーンのオン・オフ
void ShowScreen(char ShowFlag)
{
	if (ShowFlag == 1) {
		*(char*)0x2000 = 0x90;
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

//static struct sprite spr[2];

/******************************************************************************/
/* main                                                                       */
/******************************************************************************/
uint8_t main(void)
{
	sprite_t* sprite = (sprite_t*)0x0200;
	const char palettes[] = {
		0x0f, 0x00, 0x10, 0x20,
		0x0f, 0x06, 0x16, 0x26,
		0x0f, 0x08, 0x18, 0x28,
		0x09, 0x0a, 0x0b, 0x0c
	};

	const char string[] = "hello sprite dma!";
	char i;
	ShowScreen(0);

	// パレットを書き込み

	*(char*)0x2006 = 0x3f;
	*(char*)0x2006 = 0x00;
	for (i = 0; i < 0x10; i ++)
		*(char*)0x2007 = palettes[i];

	*(char*)0x2006 = 0x21;
	*(char*)0x2006 = 0x20;
	// ネームテーブルへ書き込み
	for (i = 0; i < sizeof(string); i ++) {
		*(char*)0x2007 = string[i];
	}

	SetScroll(0, 0);
	ShowScreen(1);
	
	sprite[0].y = 20;
	sprite[0].idx = 0;
	sprite[0].attr = 0;
	sprite[0].x = 0;
	
	sprite[1].y = 25;
	sprite[1].idx = 1;
	sprite[1].attr = 0;
	sprite[1].x = 10;
	
	sprite[2].y = 20;
	sprite[2].idx = 2;
	sprite[2].attr = 0;
	sprite[2].x = 20;
	
	sprite[3].y = 25;
	sprite[3].idx = 3;
	sprite[3].attr = 0;
	sprite[3].x = 30;
	
	sprite[4].y = 20;
	sprite[4].idx = 4;
	sprite[4].attr = 0;
	sprite[4].x = 40;
	
	sprite[5].y = 25;
	sprite[5].idx = 5;
	sprite[5].attr = 0;
	sprite[5].x = 50;
	
	*APU_SPR_DMA = 0x02;

	while (1);

	return 0;
}

/******************************************************************************/
/* VBlank 割り込みハンドラー                                                  */
/******************************************************************************/
void nmi_handler(void)
{
	
}


