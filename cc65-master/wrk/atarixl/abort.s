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
	.import		_stderr
	.import		_fputs
	.export		_abort
	.import		_exit
	.import		_raise

.segment	"RODATA"

L0005:
	.byte	$41,$42,$4E,$4F,$52,$4D,$41,$4C,$20,$50,$52,$4F,$47,$52,$41,$4D
	.byte	$20,$54,$45,$52,$4D,$49,$4E,$41,$54,$49,$4F,$4E,$9B,$00

; ---------------------------------------------------------------
; void __near__ abort (void)
; ---------------------------------------------------------------

.segment	"CODE"

.proc	_abort: near

.segment	"CODE"

	ldx     #$00
	txa
	jsr     _raise
	lda     #<(L0005)
	ldx     #>(L0005)
	jsr     pushax
	lda     _stderr
	ldx     _stderr+1
	jsr     _fputs
	ldx     #$00
	lda     #$03
	jmp     _exit

.endproc

