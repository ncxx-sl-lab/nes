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
	.export		_localeconv
	.export		_setlocale

.segment	"DATA"

_EmptyString:
	.byte	$00
_lc:
	.addr	_EmptyString
	.addr	L0003
	.addr	_EmptyString
	.addr	_EmptyString
	.addr	_EmptyString
	.addr	_EmptyString
	.addr	_EmptyString
	.addr	_EmptyString
	.addr	_EmptyString
	.addr	_EmptyString
	.byte	$FF
	.byte	$FF
	.byte	$FF
	.byte	$FF
	.byte	$FF
	.byte	$FF
	.byte	$FF
	.byte	$FF

.segment	"RODATA"

L0003:
	.byte	$2E,$00
L0022:
	.byte	$43,$00

; ---------------------------------------------------------------
; __near__ struct lconv* __near__ localeconv (void)
; ---------------------------------------------------------------

.segment	"CODE"

.proc	_localeconv: near

.segment	"CODE"

	lda     #<(_lc)
	ldx     #>(_lc)
	rts

.endproc

; ---------------------------------------------------------------
; __near__ unsigned char* __near__ __fastcall__ setlocale (int, __near__ const unsigned char*)
; ---------------------------------------------------------------

.segment	"CODE"

.proc	_setlocale: near

.segment	"CODE"

	jsr     pushax
	ldy     #$00
	lda     (sp),y
	iny
	ora     (sp),y
	beq     L002A
	lda     (sp),y
	sta     ptr1+1
	dey
	lda     (sp),y
	sta     ptr1
	lda     (ptr1),y
	cmp     #$43
	bne     L0026
	iny
	lda     (sp),y
	sta     ptr1+1
	dey
	lda     (sp),y
	sta     ptr1
	iny
	lda     (ptr1),y
	beq     L002A
	jmp     L002C
L0026:	iny
L002C:	lda     (sp),y
	sta     ptr1+1
	dey
	lda     (sp),y
	sta     ptr1
	lda     (ptr1),y
	beq     L002A
	ldx     #$00
	txa
	jmp     incsp4
L002A:	lda     #<(L0022)
	ldx     #>(L0022)
	jmp     incsp4

.endproc
