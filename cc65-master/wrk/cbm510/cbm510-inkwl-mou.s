;
; File generated by co65 v 2.14.0 using model `cc65-module'
;
.fopt		compiler,"co65 v 2.14.0"
.case		on
.debuginfo	off
.export		_cbm510_inkwl_mou

;
; CODE SEGMENT
;
.segment	"CODE"
_cbm510_inkwl_mou:
	.byte	$6D
	.byte	$6F
	.byte	$75
	.byte	$05
	.byte	$00
	.byte	$00
	.word	_cbm510_inkwl_mou+49
	.word	_cbm510_inkwl_mou+137
	.word	_cbm510_inkwl_mou+137
	.word	_cbm510_inkwl_mou+143
	.word	_cbm510_inkwl_mou+149
	.word	_cbm510_inkwl_mou+166
	.word	_cbm510_inkwl_mou+181
	.word	_cbm510_inkwl_mou+198
	.word	_cbm510_inkwl_mou+219
	.word	_cbm510_inkwl_mou+247
	.word	_cbm510_inkwl_mou+258
	.word	_cbm510_inkwl_mou+263
	.byte	$40
	.byte	$4C
	.byte	$00
	.byte	$00
	.byte	$4C
	.byte	$00
	.byte	$00
	.byte	$4C
	.byte	$00
	.byte	$00
	.byte	$4C
	.byte	$00
	.byte	$00
	.byte	$4C
	.byte	$00
	.byte	$00
	.byte	$4C
	.byte	$00
	.byte	$00
	.byte	$A2
	.byte	$07
	.byte	$BD
	.word	_cbm510_inkwl_mou+418
	.byte	$9D
	.word	BSS+0
	.byte	$CA
	.byte	$10
	.byte	$F7
	.byte	$A2
	.byte	$0F
	.byte	$86
	.byte	$01
	.byte	$A0
	.byte	$13
	.byte	$B1
	.byte	<(ZEROPAGE+30)
	.byte	$8D
	.word	BSS+12
	.byte	$A0
	.byte	$14
	.byte	$B1
	.byte	<(ZEROPAGE+30)
	.byte	$8D
	.word	BSS+13
	.byte	$A6
	.byte	$00
	.byte	$86
	.byte	$01
	.byte	$AD
	.word	_cbm510_inkwl_mou+4
	.byte	$AE
	.word	_cbm510_inkwl_mou+5
	.byte	$85
	.byte	<(ZEROPAGE+8)
	.byte	$86
	.byte	<(ZEROPAGE+9)
	.byte	$A0
	.byte	$01
	.byte	$B1
	.byte	<(ZEROPAGE+8)
	.byte	$F0
	.byte	$10
	.byte	$8D
	.word	DATA+3
	.byte	$88
	.byte	$B1
	.byte	<(ZEROPAGE+8)
	.byte	$8D
	.word	DATA+2
	.byte	$A9
	.byte	<(DATA-256)
	.byte	$A2
	.byte	>(DATA+0)
	.byte	$20
	.word	DATA+1
	.byte	$78
	.byte	$20
	.word	_cbm510_inkwl_mou+31
	.byte	$A9
	.byte	$64
	.byte	$A2
	.byte	$00
	.byte	$20
	.word	_cbm510_inkwl_mou+400
	.byte	$A9
	.byte	$A0
	.byte	$A2
	.byte	$00
	.byte	$20
	.word	_cbm510_inkwl_mou+409
	.byte	$58
	.byte	$A9
	.byte	$00
	.byte	$AA
	.byte	$60
	.byte	$78
	.byte	$20
	.word	_cbm510_inkwl_mou+31
	.byte	$58
	.byte	$60
	.byte	$78
	.byte	$20
	.word	_cbm510_inkwl_mou+34
	.byte	$58
	.byte	$60
	.byte	$85
	.byte	<(ZEROPAGE+8)
	.byte	$86
	.byte	<(ZEROPAGE+9)
	.byte	$A0
	.byte	$07
	.byte	$78
	.byte	$B1
	.byte	<(ZEROPAGE+8)
	.byte	$99
	.word	BSS+0
	.byte	$88
	.byte	$10
	.byte	$F8
	.byte	$58
	.byte	$60
	.byte	$85
	.byte	<(ZEROPAGE+8)
	.byte	$86
	.byte	<(ZEROPAGE+9)
	.byte	$A0
	.byte	$07
	.byte	$B9
	.word	BSS+0
	.byte	$91
	.byte	<(ZEROPAGE+8)
	.byte	$88
	.byte	$10
	.byte	$F8
	.byte	$60
	.byte	$78
	.byte	$20
	.word	_cbm510_inkwl_mou+400
	.byte	$A0
	.byte	$01
	.byte	$B1
	.byte	<(ZEROPAGE+0)
	.byte	$AA
	.byte	$88
	.byte	$B1
	.byte	<(ZEROPAGE+0)
	.byte	$20
	.word	_cbm510_inkwl_mou+409
	.byte	$58
	.byte	$60
	.byte	$A2
	.byte	$0F
	.byte	$86
	.byte	$01
	.byte	$A0
	.byte	$01
	.byte	$B1
	.byte	<(ZEROPAGE+36)
	.byte	$A6
	.byte	$00
	.byte	$86
	.byte	$01
	.byte	$0A
	.byte	$0A
	.byte	$49
	.byte	$10
	.byte	$29
	.byte	$10
	.byte	$A2
	.byte	$00
	.byte	$60
	.byte	$A0
	.byte	$00
	.byte	$78
	.byte	$AD
	.word	BSS+8
	.byte	$91
	.byte	<(ZEROPAGE+8)
	.byte	$AD
	.word	BSS+9
	.byte	$C8
	.byte	$91
	.byte	<(ZEROPAGE+8)
	.byte	$AD
	.word	BSS+10
	.byte	$C8
	.byte	$91
	.byte	<(ZEROPAGE+8)
	.byte	$AD
	.word	BSS+11
	.byte	$58
	.byte	$C8
	.byte	$91
	.byte	<(ZEROPAGE+8)
	.byte	$60
	.byte	$20
	.word	_cbm510_inkwl_mou+219
	.byte	$20
	.word	_cbm510_inkwl_mou+198
	.byte	$A0
	.byte	$04
	.byte	$91
	.byte	<(ZEROPAGE+8)
	.byte	$60
	.byte	$A9
	.byte	$05
	.byte	$A2
	.byte	$00
	.byte	$60
	.byte	$20
	.word	_cbm510_inkwl_mou+37
	.byte	$A2
	.byte	$0F
	.byte	$86
	.byte	$01
	.byte	$A0
	.byte	$14
	.byte	$B1
	.byte	<(ZEROPAGE+30)
	.byte	$CD
	.word	BSS+13
	.byte	$F0
	.byte	$36
	.byte	$8D
	.word	BSS+13
	.byte	$A6
	.byte	$00
	.byte	$86
	.byte	$01
	.byte	$38
	.byte	$E9
	.byte	$32
	.byte	$A8
	.byte	$A2
	.byte	$00
	.byte	$8A
	.byte	$CC
	.word	BSS+2
	.byte	$ED
	.word	BSS+3
	.byte	$10
	.byte	$09
	.byte	$AC
	.word	BSS+2
	.byte	$AE
	.word	BSS+3
	.byte	$4C
	.word	_cbm510_inkwl_mou+325
	.byte	$8A
	.byte	$CC
	.word	BSS+6
	.byte	$ED
	.word	BSS+7
	.byte	$30
	.byte	$06
	.byte	$AC
	.word	BSS+6
	.byte	$AE
	.word	BSS+7
	.byte	$98
	.byte	$20
	.word	_cbm510_inkwl_mou+400
	.byte	$A2
	.byte	$0F
	.byte	$86
	.byte	$01
	.byte	$A0
	.byte	$13
	.byte	$B1
	.byte	<(ZEROPAGE+30)
	.byte	$A6
	.byte	$00
	.byte	$86
	.byte	$01
	.byte	$CD
	.word	BSS+12
	.byte	$F0
	.byte	$31
	.byte	$8D
	.word	BSS+12
	.byte	$38
	.byte	$ED
	.word	DATA+0
	.byte	$0A
	.byte	$A8
	.byte	$A9
	.byte	$00
	.byte	$2A
	.byte	$AA
	.byte	$CC
	.word	BSS+0
	.byte	$ED
	.word	BSS+1
	.byte	$10
	.byte	$09
	.byte	$AC
	.word	BSS+0
	.byte	$AE
	.word	BSS+1
	.byte	$4C
	.word	_cbm510_inkwl_mou+391
	.byte	$8A
	.byte	$CC
	.word	BSS+4
	.byte	$ED
	.word	BSS+5
	.byte	$30
	.byte	$06
	.byte	$AC
	.word	BSS+4
	.byte	$AE
	.word	BSS+5
	.byte	$98
	.byte	$20
	.word	_cbm510_inkwl_mou+409
	.byte	$20
	.word	_cbm510_inkwl_mou+40
	.byte	$18
	.byte	$60
	.byte	$8D
	.word	BSS+10
	.byte	$8E
	.word	BSS+11
	.byte	$4C
	.word	_cbm510_inkwl_mou+46
	.byte	$8D
	.word	BSS+8
	.byte	$8E
	.word	BSS+9
	.byte	$4C
	.word	_cbm510_inkwl_mou+43
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$3F
	.byte	$01
	.byte	$C7
	.byte	$00

;
; DATA SEGMENT
;
.segment	"DATA"
DATA:
	.byte	$18
	.byte	$4C
	.byte	$00
	.byte	$00

;
; BSS SEGMENT
;
.segment	"BSS"
BSS:
	.res	14

;
; ZEROPAGE SEGMENT
;
.import	__ZP_START__		; Linker generated symbol
ZEROPAGE = __ZP_START__

.end
