;
; File generated by co65 v 2.14.0 using model `cc65-module'
;
.fopt		compiler,"co65 v 2.14.0"
.case		on
.debuginfo	off
.export		_atmos_acia_ser

;
; CODE SEGMENT
;
.segment	"CODE"
_atmos_acia_ser:
	.byte	$73
	.byte	$65
	.byte	$72
	.byte	$02
	.byte	$00
	.byte	$00
	.word	_atmos_acia_ser+24
	.word	_atmos_acia_ser+24
	.word	_atmos_acia_ser+41
	.word	_atmos_acia_ser+24
	.word	_atmos_acia_ser+147
	.word	_atmos_acia_ser+210
	.word	_atmos_acia_ser+254
	.word	_atmos_acia_ser+263
	.word	_atmos_acia_ser+268
	.byte	$AE
	.word	BSS+520
	.byte	$F0
	.byte	$05
	.byte	$A9
	.byte	$0A
	.byte	$9D
	.byte	$1E
	.byte	$03
	.byte	$A9
	.byte	$00
	.byte	$AA
	.byte	$8E
	.word	BSS+520
	.byte	$60
	.byte	$A0
	.byte	$04
	.byte	$B1
	.byte	<(ZEROPAGE+8)
	.byte	$C9
	.byte	$01
	.byte	$D0
	.byte	$58
	.byte	$A0
	.byte	$00
	.byte	$8C
	.word	BSS+6
	.byte	$8C
	.word	BSS+0
	.byte	$8C
	.word	BSS+1
	.byte	$8C
	.word	BSS+3
	.byte	$8C
	.word	BSS+4
	.byte	$88
	.byte	$8C
	.word	BSS+2
	.byte	$8C
	.word	BSS+5
	.byte	$A0
	.byte	$00
	.byte	$B1
	.byte	<(ZEROPAGE+8)
	.byte	$A8
	.byte	$B9
	.word	_atmos_acia_ser+363
	.byte	$30
	.byte	$3B
	.byte	$85
	.byte	<(ZEROPAGE+16)
	.byte	$A0
	.byte	$01
	.byte	$B1
	.byte	<(ZEROPAGE+8)
	.byte	$A8
	.byte	$B9
	.word	_atmos_acia_ser+383
	.byte	$05
	.byte	<(ZEROPAGE+16)
	.byte	$85
	.byte	<(ZEROPAGE+16)
	.byte	$A0
	.byte	$02
	.byte	$B1
	.byte	<(ZEROPAGE+8)
	.byte	$A8
	.byte	$B9
	.word	_atmos_acia_ser+387
	.byte	$05
	.byte	<(ZEROPAGE+16)
	.byte	$09
	.byte	$10
	.byte	$8D
	.byte	$1F
	.byte	$03
	.byte	$A0
	.byte	$03
	.byte	$B1
	.byte	<(ZEROPAGE+8)
	.byte	$A8
	.byte	$B9
	.word	_atmos_acia_ser+389
	.byte	$09
	.byte	$01
	.byte	$8D
	.word	BSS+7
	.byte	$09
	.byte	$08
	.byte	$8D
	.byte	$1E
	.byte	$03
	.byte	$8E
	.word	BSS+520
	.byte	$A9
	.byte	$00
	.byte	$AA
	.byte	$60
	.byte	$A9
	.byte	$08
	.byte	$A2
	.byte	$00
	.byte	$60
	.byte	$A9
	.byte	$05
	.byte	$A2
	.byte	$00
	.byte	$60
	.byte	$AC
	.word	BSS+5
	.byte	$C8
	.byte	$F0
	.byte	$05
	.byte	$A9
	.byte	$00
	.byte	$20
	.word	_atmos_acia_ser+319
	.byte	$AD
	.word	BSS+2
	.byte	$C9
	.byte	$FF
	.byte	$D0
	.byte	$05
	.byte	$A9
	.byte	$06
	.byte	$A2
	.byte	$00
	.byte	$60
	.byte	$AC
	.word	BSS+6
	.byte	$F0
	.byte	$11
	.byte	$C9
	.byte	$3F
	.byte	$90
	.byte	$0D
	.byte	$A9
	.byte	$00
	.byte	$8D
	.word	BSS+6
	.byte	$AD
	.word	BSS+7
	.byte	$09
	.byte	$08
	.byte	$8D
	.byte	$1E
	.byte	$03
	.byte	$AC
	.word	BSS+0
	.byte	$B9
	.word	BSS+8
	.byte	$EE
	.word	BSS+0
	.byte	$EE
	.word	BSS+2
	.byte	$A2
	.byte	$00
	.byte	$81
	.byte	<(ZEROPAGE+8)
	.byte	$8A
	.byte	$60
	.byte	$AC
	.word	BSS+5
	.byte	$C8
	.byte	$F0
	.byte	$07
	.byte	$48
	.byte	$A9
	.byte	$00
	.byte	$20
	.word	_atmos_acia_ser+319
	.byte	$68
	.byte	$AC
	.word	BSS+5
	.byte	$D0
	.byte	$05
	.byte	$A9
	.byte	$07
	.byte	$A2
	.byte	$00
	.byte	$60
	.byte	$AC
	.word	BSS+4
	.byte	$99
	.word	BSS+264
	.byte	$EE
	.word	BSS+4
	.byte	$CE
	.word	BSS+5
	.byte	$A9
	.byte	$FF
	.byte	$20
	.word	_atmos_acia_ser+319
	.byte	$A9
	.byte	$00
	.byte	$AA
	.byte	$60
	.byte	$AD
	.byte	$1D
	.byte	$03
	.byte	$A2
	.byte	$00
	.byte	$81
	.byte	<(ZEROPAGE+8)
	.byte	$8A
	.byte	$60
	.byte	$A9
	.byte	$09
	.byte	$A2
	.byte	$00
	.byte	$60
	.byte	$AE
	.word	BSS+520
	.byte	$F0
	.byte	$2D
	.byte	$BD
	.byte	$1D
	.byte	$03
	.byte	$29
	.byte	$08
	.byte	$F0
	.byte	$26
	.byte	$BD
	.byte	$1C
	.byte	$03
	.byte	$AC
	.word	BSS+2
	.byte	$F0
	.byte	$14
	.byte	$AC
	.word	BSS+1
	.byte	$99
	.word	BSS+8
	.byte	$EE
	.word	BSS+1
	.byte	$CE
	.word	BSS+2
	.byte	$AC
	.word	BSS+2
	.byte	$C0
	.byte	$21
	.byte	$90
	.byte	$01
	.byte	$60
	.byte	$AD
	.word	BSS+7
	.byte	$9D
	.byte	$1E
	.byte	$03
	.byte	$8D
	.word	BSS+6
	.byte	$38
	.byte	$60
	.byte	$85
	.byte	<(ZEROPAGE+16)
	.byte	$AD
	.word	BSS+5
	.byte	$C9
	.byte	$FF
	.byte	$F0
	.byte	$10
	.byte	$AD
	.word	BSS+6
	.byte	$D0
	.byte	$0B
	.byte	$AD
	.byte	$1D
	.byte	$03
	.byte	$29
	.byte	$10
	.byte	$D0
	.byte	$05
	.byte	$24
	.byte	<(ZEROPAGE+16)
	.byte	$30
	.byte	$E9
	.byte	$60
	.byte	$AC
	.word	BSS+3
	.byte	$B9
	.word	BSS+264
	.byte	$8D
	.byte	$1C
	.byte	$03
	.byte	$EE
	.word	BSS+3
	.byte	$EE
	.word	BSS+5
	.byte	$4C
	.word	_atmos_acia_ser+321
	.byte	$FF
	.byte	$01
	.byte	$02
	.byte	$03
	.byte	$04
	.byte	$05
	.byte	$06
	.byte	$07
	.byte	$08
	.byte	$09
	.byte	$0A
	.byte	$0B
	.byte	$0C
	.byte	$0D
	.byte	$0E
	.byte	$0F
	.byte	$FF
	.byte	$FF
	.byte	$FF
	.byte	$FF
	.byte	$60
	.byte	$40
	.byte	$20
	.byte	$00
	.byte	$00
	.byte	$80
	.byte	$00
	.byte	$20
	.byte	$60
	.byte	$A0
	.byte	$E0

;
; DATA SEGMENT
;
.segment	"DATA"
DATA:

;
; BSS SEGMENT
;
.segment	"BSS"
BSS:
	.res	521

;
; ZEROPAGE SEGMENT
;
.import	__ZP_START__		; Linker generated symbol
ZEROPAGE = __ZP_START__

.end
