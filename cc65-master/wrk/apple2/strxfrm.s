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
	.import		_strlen
	.import		_strncpy
	.export		_strxfrm

; ---------------------------------------------------------------
; unsigned int __near__ __fastcall__ strxfrm (__near__ unsigned char*, __near__ const unsigned char*, unsigned int)
; ---------------------------------------------------------------

.segment	"CODE"

.proc	_strxfrm: near

.segment	"CODE"

	jsr     pushax
	jsr     decsp4
	ldy     #$09
	lda     (sp),y
	tax
	dey
	lda     (sp),y
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
	jsr     _strncpy
	ldy     #$03
	lda     (sp),y
	tax
	dey
	lda     (sp),y
	jsr     _strlen
	jmp     incsp6

.endproc

