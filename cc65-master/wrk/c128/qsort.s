;
; File generated by cc65 v 2.14.0
;
	.fopt		compiler,"cc65 v 2.14.0"
	.setcpu		"6502"
	.smart		on
	.autoimport	on
	.case		on
	.debuginfo	off
	.importzp	sp, sreg, regsave, regbank
	.importzp	tmp1, tmp2, tmp3, tmp4, ptr1, ptr2, ptr3, ptr4
	.macpack	longbranch
	.export		_qsort
	.import		__swap

; ---------------------------------------------------------------
; void __near__ __fastcall__ qsort (__near__ void*, unsigned int, unsigned int, __near__ __near__ function returning int*)
; ---------------------------------------------------------------

.segment	"CODE"

.proc	_qsort: near

.segment	"CODE"

	jsr     pushax
	ldy     #$05
	lda     (sp),y
	tax
	dey
	lda     (sp),y
	cmp     #$02
	txa
	sbc     #$00
	bcc     L0048
	ldy     #$0A
	jsr     subysp
	ldy     #$11
	lda     (sp),y
	tax
	dey
	lda     (sp),y
	ldy     #$08
	sta     (sp),y
	iny
	txa
	sta     (sp),y
	lda     #$00
	ldy     #$06
	sta     (sp),y
	iny
	sta     (sp),y
	ldy     #$0F
	lda     (sp),y
	tax
	dey
	lda     (sp),y
	sec
	sbc     #$01
	bcs     L004F
	dex
L004F:	jsr     pushax
	ldy     #$0F
	lda     (sp),y
	tax
	dey
	lda     (sp),y
	jsr     tosumulax
	ldy     #$04
	sta     (sp),y
	iny
	txa
	sta     (sp),y
	ldy     #$0D
	lda     (sp),y
	tax
	dey
	lda     (sp),y
	ldy     #$02
	sta     (sp),y
	iny
	txa
	sta     (sp),y
	ldy     #$0B
	lda     (sp),y
	tax
	dey
	lda     (sp),y
	ldy     #$00
	sta     (sp),y
	iny
	txa
	sta     (sp),y
	jsr     _QuickSort
L0048:	jmp     incsp8

.endproc

; ---------------------------------------------------------------
; void __near__ QuickSort (register __near__ unsigned char*, int, int, register unsigned int, __near__ __near__ function returning int*)
; ---------------------------------------------------------------

.segment	"CODE"

.proc	_QuickSort: near

.segment	"CODE"

	ldy     #$08
	ldx     #$04
	jsr     regswap2
	ldy     #$02
	ldx     #$02
	jsr     regswap2
	jsr     decsp4
	jmp     L0004
L0002:	ldy     #$0B
	lda     (sp),y
	tax
	dey
	lda     (sp),y
	clc
	adc     regbank+2
	pha
	txa
	adc     regbank+2+1
	tax
	pla
	ldy     #$02
	jsr     staxysp
	ldy     #$09
	lda     (sp),y
	tax
	dey
	lda     (sp),y
	jsr     stax0sp
	jmp     L000C
L000E:	lda     regbank+2
	ldx     regbank+2+1
	ldy     #$02
	jsr     addeqysp
L0010:	ldy     #$05
	jsr     pushwysp
	ldy     #$03
	lda     (sp),y
	tax
	dey
	lda     (sp),y
	jsr     tosicmp
	beq     L0056
	bpl     L001A
L0056:	ldy     #$07
	jsr     pushwysp
	jsr     decsp4
	ldy     #$11
	lda     (sp),y
	tax
	dey
	lda     (sp),y
	clc
	adc     regbank+4
	pha
	txa
	adc     regbank+4+1
	tax
	pla
	ldy     #$02
	sta     (sp),y
	iny
	txa
	sta     (sp),y
	ldy     #$09
	lda     (sp),y
	tax
	dey
	lda     (sp),y
	clc
	adc     regbank+4
	pha
	txa
	adc     regbank+4+1
	tax
	pla
	ldy     #$00
	sta     (sp),y
	iny
	txa
	sta     (sp),y
	ldy     #$05
	lda     (sp),y
	tax
	dey
	lda     (sp),y
	jsr     callax
	jsr     incsp2
	txa
	bpl     L000E
	jmp     L001A
L0018:	lda     regbank+2
	ldx     regbank+2+1
	jsr     subeq0sp
L001A:	ldy     #$05
	jsr     pushwysp
	ldy     #$03
	lda     (sp),y
	tax
	dey
	lda     (sp),y
	jsr     tosicmp
	beq     L0057
	bpl     L0054
L0057:	ldy     #$07
	jsr     pushwysp
	jsr     decsp4
	ldy     #$11
	lda     (sp),y
	tax
	dey
	lda     (sp),y
	clc
	adc     regbank+4
	pha
	txa
	adc     regbank+4+1
	tax
	pla
	ldy     #$02
	sta     (sp),y
	iny
	txa
	sta     (sp),y
	ldy     #$07
	lda     (sp),y
	tax
	dey
	lda     (sp),y
	clc
	adc     regbank+4
	pha
	txa
	adc     regbank+4+1
	tax
	pla
	ldy     #$00
	sta     (sp),y
	iny
	txa
	sta     (sp),y
	ldy     #$05
	lda     (sp),y
	tax
	dey
	lda     (sp),y
	jsr     callax
	jsr     incsp2
	cpx     #$80
	bcs     L0018
L0054:	ldy     #$05
	jsr     pushwysp
	ldy     #$03
	lda     (sp),y
	tax
	dey
	lda     (sp),y
	jsr     tosicmp
	beq     L0058
	bpl     L000C
L0058:	jsr     decsp4
	ldy     #$07
	lda     (sp),y
	tax
	dey
	lda     (sp),y
	clc
	adc     regbank+4
	pha
	txa
	adc     regbank+4+1
	tax
	pla
	ldy     #$02
	sta     (sp),y
	iny
	txa
	sta     (sp),y
	ldy     #$05
	lda     (sp),y
	tax
	dey
	lda     (sp),y
	clc
	adc     regbank+4
	pha
	txa
	adc     regbank+4+1
	tax
	pla
	ldy     #$00
	sta     (sp),y
	iny
	txa
	sta     (sp),y
	lda     regbank+2
	ldx     regbank+2+1
	jsr     __swap
	lda     regbank+2
	ldx     regbank+2+1
	ldy     #$02
	jsr     addeqysp
	lda     regbank+2
	ldx     regbank+2+1
	jsr     subeq0sp
L000C:	ldy     #$05
	jsr     pushwysp
	ldy     #$03
	lda     (sp),y
	tax
	dey
	lda     (sp),y
	jsr     tosicmp
	jmi     L0010
	jeq     L0010
	ldy     #$01
	lda     (sp),y
	tax
	dey
	lda     (sp),y
	ldy     #$0A
	cmp     (sp),y
	bne     L005B
	txa
	iny
	cmp     (sp),y
	beq     L002C
L005B:	jsr     decsp4
	ldy     #$05
	lda     (sp),y
	tax
	dey
	lda     (sp),y
	clc
	adc     regbank+4
	pha
	txa
	adc     regbank+4+1
	tax
	pla
	ldy     #$02
	sta     (sp),y
	iny
	txa
	sta     (sp),y
	ldy     #$0F
	lda     (sp),y
	tax
	dey
	lda     (sp),y
	clc
	adc     regbank+4
	pha
	txa
	adc     regbank+4+1
	tax
	pla
	ldy     #$00
	sta     (sp),y
	iny
	txa
	sta     (sp),y
	lda     regbank+2
	ldx     regbank+2+1
	jsr     __swap
L002C:	ldy     #$01
	lda     (sp),y
	sta     tmp1
	dey
	lda     (sp),y
	asl     a
	rol     tmp1
	ldx     tmp1
	jsr     pushax
	ldy     #$0A
	lda     (sp),y
	ldy     #$0C
	clc
	adc     (sp),y
	pha
	dey
	lda     (sp),y
	ldy     #$0D
	adc     (sp),y
	tax
	pla
	jsr     tosicmp
	bcc     L0032
	beq     L0032
	ldy     #$0A
	jsr     subysp
	lda     regbank+4
	ldy     #$08
	sta     (sp),y
	iny
	lda     regbank+4+1
	sta     (sp),y
	ldy     #$0B
	lda     (sp),y
	tax
	dey
	lda     (sp),y
	clc
	adc     regbank+2
	pha
	txa
	adc     regbank+2+1
	tax
	pla
	ldy     #$06
	sta     (sp),y
	iny
	txa
	sta     (sp),y
	ldy     #$13
	lda     (sp),y
	tax
	dey
	lda     (sp),y
	ldy     #$04
	sta     (sp),y
	iny
	txa
	sta     (sp),y
	lda     regbank+2
	ldy     #$02
	sta     (sp),y
	iny
	lda     regbank+2+1
	sta     (sp),y
	ldy     #$0F
	lda     (sp),y
	tax
	dey
	lda     (sp),y
	ldy     #$00
	sta     (sp),y
	iny
	txa
	sta     (sp),y
	jsr     _QuickSort
	ldy     #$01
	lda     (sp),y
	tax
	dey
	lda     (sp),y
	sec
	sbc     regbank+2
	pha
	txa
	sbc     regbank+2+1
	tax
	pla
	ldy     #$08
	jmp     L0055
L0032:	ldy     #$0A
	jsr     subysp
	lda     regbank+4
	ldy     #$08
	sta     (sp),y
	iny
	lda     regbank+4+1
	sta     (sp),y
	ldy     #$15
	lda     (sp),y
	tax
	dey
	lda     (sp),y
	ldy     #$06
	sta     (sp),y
	iny
	txa
	sta     (sp),y
	ldy     #$0B
	lda     (sp),y
	tax
	dey
	lda     (sp),y
	sec
	sbc     regbank+2
	pha
	txa
	sbc     regbank+2+1
	tax
	pla
	ldy     #$04
	sta     (sp),y
	iny
	txa
	sta     (sp),y
	lda     regbank+2
	ldy     #$02
	sta     (sp),y
	iny
	lda     regbank+2+1
	sta     (sp),y
	ldy     #$0F
	lda     (sp),y
	tax
	dey
	lda     (sp),y
	ldy     #$00
	sta     (sp),y
	iny
	txa
	sta     (sp),y
	jsr     _QuickSort
	ldy     #$01
	lda     (sp),y
	tax
	dey
	lda     (sp),y
	clc
	adc     regbank+2
	pha
	txa
	adc     regbank+2+1
	tax
	pla
	ldy     #$0A
L0055:	jsr     staxysp
L0004:	ldy     #$0B
	jsr     pushwysp
	ldy     #$0D
	lda     (sp),y
	tax
	dey
	lda     (sp),y
	jsr     tosicmp
	beq     L0059
	jpl     L0002
L0059:	ldy     #$0C
	lda     (sp),y
	sta     regbank+4
	iny
	lda     (sp),y
	sta     regbank+5
	ldy     #$06
	lda     (sp),y
	sta     regbank+2
	iny
	lda     (sp),y
	sta     regbank+3
	ldy     #$0E
	jmp     addysp

.endproc

