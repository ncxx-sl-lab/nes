
```
L809e:	8d7907	sta	$779
29e7	and	#$e7
8d0120	sta	$2001	PPU Control #2
ae0220	ldx	$2002	PPU Status
a900	lda	#$00
20e68e	jsr	L8ee6
8d0320	sta	$2003	PPU SPRITE RAM Address
a902	lda	#$02
8d1440	sta	$4014	Sprite DMA
```

0x4014 (スプライトDMAレジスタ)

W1 : WRAMからSpriteRAMにデータを転送します。設定したアドレスから0x100バイト分転送します。

位置	内容	値
bit7-0	WRAMベースアドレス	N x 0x100


