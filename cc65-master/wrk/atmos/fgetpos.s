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
	.export		_fgetpos
	.import		_ftell

; ---------------------------------------------------------------
; int __near__ __fastcall__ fgetpos (__near__ struct _FILE*, __near__ unsigned long*)
; ---------------------------------------------------------------

.segment	"CODE"

.proc	_fgetpos: near

.segment	"CODE"

	jsr     pushax
	jsr     pushw0sp
	ldy     #$05
	lda     (sp),y
	tax
	dey
	lda     (sp),y
	jsr     _ftell
	ldy     #$00
	jsr     steaxspidx
	ldy     #$01
	lda     (sp),y
	tax
	dey
	lda     (sp),y
	jsr     ldeaxi
	jsr     pusheax
	ldx     #$FF
	stx     sreg
	stx     sreg+1
	txa
	jsr     tosneeax
	beq     L0005
	ldx     #$00
	txa
	jmp     incsp4
L0005:	ldx     #$FF
	txa
	jmp     incsp4

.endproc
