;
; File generated by cc65 v 2.14.0
;
	.fopt		compiler,"cc65 v 2.14.0"
	.setcpu		"65C02"
	.smart		on
	.autoimport	on
	.case		on
	.debuginfo	off
	.importzp	sp, sreg, regsave, regbank
	.importzp	tmp1, tmp2, tmp3, tmp4, ptr1, ptr2, ptr3, ptr4
	.macpack	longbranch
	.import		_read
	.export		_readdir

; ---------------------------------------------------------------
; __near__ struct dirent* __near__ __fastcall__ readdir (register __near__ struct DIR*)
; ---------------------------------------------------------------

.segment	"CODE"

.proc	_readdir: near

.segment	"CODE"

	jsr     pushax
	ldy     #$00
	ldx     #$04
	jsr     regswap2
	lda     regbank+2
	ldx     regbank+3
	jsr     pushax
L000B:	ldy     #$04
	ldx     #$00
	lda     (regbank+4),y
	sta     ptr1
	stz     ptr1+1
	dey
	lda     (regbank+4),y
	cpx     ptr1+1
	bne     L000E
	cmp     ptr1
	bne     L000E
	jsr     decsp4
	ldy     #$01
	lda     (regbank+4),y
	tax
	lda     (regbank+4)
	iny
	sta     (sp),y
	iny
	txa
	sta     (sp),y
	lda     regbank+4
	ldx     regbank+4+1
	clc
	adc     #$05
	bcc     L0014
	inx
L0014:	sta     (sp)
	ldy     #$01
	txa
	sta     (sp),y
	ldx     #$02
	lda     #$00
	jsr     _read
	cpx     #$02
	bne     L003A
	cmp     #$00
	beq     L0010
L003A:	ldx     #$00
	txa
	jmp     L000A
L0010:	ldy     #$04
	sta     (regbank+4),y
L000E:	lda     regbank+4
	ldx     regbank+4+1
	clc
	adc     #$09
	bcc     L001E
	inx
L001E:	jsr     pushax
	ldy     #$04
	lda     (regbank+4),y
	jsr     pusha0
	ldy     #$02
	lda     (regbank+4),y
	jsr     tosumula0
	jsr     tosaddax
	sta     regbank+2
	stx     regbank+2+1
	lda     regbank+4
	sta     ptr1
	lda     regbank+4+1
	sta     ptr1+1
	ldy     #$04
	lda     #$01
	clc
	adc     (ptr1),y
	sta     (ptr1),y
	lda     (regbank+2)
	jeq     L000B
	lda     regbank+2
	ldx     regbank+2+1
	clc
	adc     #$1A
	bcc     L0024
	inx
L0024:	jsr     pushax
	lda     regbank+2
	ldx     regbank+2+1
	clc
	adc     #$18
	bcc     L0027
	inx
L0027:	jsr     ldeaxi
	ldy     #$00
	jsr     steaxspidx
	lda     #$00
	ldy     #$18
	sta     (regbank+2),y
	ldy     #$10
	lda     (regbank+2),y
	ldy     #$19
	sta     (regbank+2),y
	lda     (regbank+2)
	ldx     #$00
	and     #$0F
	ina
	bne     L0033
	inx
L0033:	clc
	adc     regbank+2
	sta     ptr1
	txa
	adc     regbank+2+1
	sta     ptr1+1
	lda     #$00
	sta     (ptr1)
	lda     regbank+2
	ldx     regbank+2+1
	ina
	bne     L000A
	inx
L000A:	pha
	ldy     #$00
L0038:	lda     (sp),y
	sta     regbank+2,y
	iny
	cpy     #$04
	bne     L0038
	pla
	jmp     incsp4

.endproc

