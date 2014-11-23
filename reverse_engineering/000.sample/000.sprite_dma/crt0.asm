;----------------------------------------------------------------------------
;				NES Startup
;----------------------------------------------------------------------------
.setcpu		"6502"
.autoimport	on
.IMPORTZP	sp

.export         __STARTUP__ : absolute = 1      ; Mark as startup

;----------------------------------------------------------------------------
;	ヘッダセグメント
;----------------------------------------------------------------------------
.segment "HEADER"
	.byte	$4E, $45, $53, $1A	; "NES" Header
	.byte	$02			; PRG-BANKS
	.byte	$01			; CHR-BANKS
	.byte	$01			; Vetrical Mirror
	.byte	$00			;
	.byte	$00, $00, $00, $00	;
	.byte	$00, $00, $00, $00	;

;----------------------------------------------------------------------------
;	STARTUPセグメント
;----------------------------------------------------------------------------
.segment "STARTUP"
; リセット割り込み
.proc	Reset
	sei
	ldx	#$ff
	txs

	; ソフトウェアスタック設定
	lda #$ff
	sta sp
	lda #$03
	sta sp + 1

	jsr _main
	cli
	rti
.endproc


.proc	NMI
	jsr _nmi_handler
        rti
.endproc

;----------------------------------------------------------------------------
;	VECINFOセグメント
;----------------------------------------------------------------------------
.segment "VECINFO"
	.word	NMI
	.word	Reset
	.word	$0000

;----------------------------------------------------------------------------
;	CHARSセグメント
;----------------------------------------------------------------------------
; パターンテーブル
.segment "CHARS"
	.incbin "character.chr"
