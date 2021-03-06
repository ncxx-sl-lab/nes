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
	.export		_bsearch

; ---------------------------------------------------------------
; __near__ void* __near__ __fastcall__ bsearch (__near__ const void*, __near__ const void*, unsigned int, unsigned int, __near__ __near__ function returning int*)
; ---------------------------------------------------------------

.segment	"CODE"

.proc	_bsearch: near

.segment	"CODE"

	jsr     pushax
	jsr     decsp4
	jsr     push0
	jsr     push0
	ldy     #$0D
	lda     (sp),y
	tax
	dey
	lda     (sp),y
	sec
	sbc     #$01
	bcs     L0005
	dex
L0005:	jsr     pushax
	jmp     L0008
L0006:	ldy     #$00
	lda     (sp),y
	ldy     #$02
	clc
	adc     (sp),y
	pha
	dey
	lda     (sp),y
	ldy     #$03
	adc     (sp),y
	tax
	pla
	jsr     asrax1
	ldy     #$08
	jsr     staxysp
	ldy     #$0D
	jsr     pushwysp
	jsr     decsp4
	ldy     #$19
	jsr     pushwysp
	ldy     #$13
	jsr     pushwysp
	ldy     #$17
	lda     (sp),y
	tax
	dey
	lda     (sp),y
	jsr     tosumulax
	jsr     tosaddax
	ldy     #$02
	sta     (sp),y
	iny
	txa
	sta     (sp),y
	ldy     #$19
	lda     (sp),y
	tax
	dey
	lda     (sp),y
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
	ldy     #$06
	jsr     staxysp
	cpx     #$80
	bcc     L0013
	ldy     #$09
	lda     (sp),y
	tax
	dey
	lda     (sp),y
	clc
	adc     #$01
	bcc     L0017
	inx
L0017:	ldy     #$02
	jsr     staxysp
	jmp     L0008
L0013:	ldy     #$09
	lda     (sp),y
	tax
	dey
	lda     (sp),y
	sec
	sbc     #$01
	bcs     L001B
	dex
L001B:	jsr     stax0sp
	ldy     #$06
	lda     (sp),y
	iny
	ora     (sp),y
	bne     L0008
	ldy     #$04
	lda     #$01
	sta     (sp),y
	lda     #$00
	iny
	sta     (sp),y
L0008:	ldy     #$05
	jsr     pushwysp
	ldy     #$03
	lda     (sp),y
	tax
	dey
	lda     (sp),y
	jsr     tosicmp
	jmi     L0006
	jeq     L0006
	ldy     #$05
	lda     (sp),y
	dey
	ora     (sp),y
	beq     L0023
	ldy     #$13
	jsr     pushwysp
	ldy     #$07
	jsr     pushwysp
	ldy     #$11
	lda     (sp),y
	tax
	dey
	lda     (sp),y
	jsr     tosumulax
	jsr     tosaddax
	jmp     L0001
L0023:	tax
L0001:	ldy     #$14
	jmp     addysp

.endproc

