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
	.import		_malloc
	.import		_free
	.import		_memcmp
	.import		_open
	.import		_close
	.import		_read
	.export		_tgi_load_vectorfont
	.import		_tgi_error

; ---------------------------------------------------------------
; __near__ const struct tgi_vectorfont* __near__ __fastcall__ tgi_load_vectorfont (__near__ const unsigned char*)
; ---------------------------------------------------------------

.segment	"CODE"

.proc	_tgi_load_vectorfont: near

.segment	"RODATA"

L000B:
	.byte	$54
	.byte	$43
	.byte	$48
	.byte	$00

.segment	"CODE"

	jsr     pushax
	jsr     decsp8
	jsr     push0
	jsr     decsp3
	lda     #$02
	sta     _tgi_error
	jsr     decsp4
	ldy     #$12
	lda     (sp),y
	tax
	dey
	lda     (sp),y
	ldy     #$02
	sta     (sp),y
	iny
	txa
	sta     (sp),y
	lda     #$01
	sta     (sp)
	tay
	dea
	sta     (sp),y
	ldy     #$04
	jsr     _open
	ldy     #$05
	jsr     staxysp
	cpx     #$80
	jcs     L0019
	jsr     decsp4
	ldy     #$0A
	lda     (sp),y
	tax
	dey
	lda     (sp),y
	ldy     #$02
	sta     (sp),y
	iny
	txa
	sta     (sp),y
	lda     sp
	ldx     sp+1
	clc
	adc     #$0B
	bcc     L001E
	inx
L001E:	sta     (sp)
	ldy     #$01
	txa
	sta     (sp),y
	ldx     #$00
	lda     #$06
	jsr     _read
	cpx     #$00
	jne     L0019
	cmp     #$06
	jne     L0019
	jsr     decsp4
	lda     sp
	ldx     sp+1
	clc
	adc     #$0B
	bcc     L0026
	inx
L0026:	ldy     #$02
	sta     (sp),y
	iny
	txa
	sta     (sp),y
	lda     #<(L000B)
	sta     (sp)
	ldy     #$01
	lda     #>(L000B)
	sta     (sp),y
	ldx     #$00
	lda     #$04
	jsr     _memcmp
	cpx     #$00
	jne     L0019
	cmp     #$00
	jne     L0019
	ldy     #$0C
	lda     (sp),y
	tax
	dey
	lda     (sp),y
	jsr     _malloc
	ldy     #$03
	jsr     staxysp
	cpx     #$00
	bne     L002E
	cmp     #$00
	bne     L002E
	lda     #$08
	sta     _tgi_error
	jmp     L0019
L002E:	jsr     decsp4
	ldy     #$0A
	lda     (sp),y
	tax
	dey
	lda     (sp),y
	ldy     #$02
	sta     (sp),y
	iny
	txa
	sta     (sp),y
	ldy     #$08
	lda     (sp),y
	tax
	dey
	lda     (sp),y
	sta     (sp)
	ldy     #$01
	txa
	sta     (sp),y
	ldy     #$10
	lda     (sp),y
	tax
	dey
	lda     (sp),y
	jsr     _read
	ldy     #$0B
	cmp     (sp),y
	bne     L0059
	txa
	iny
	cmp     (sp),y
	beq     L0033
L0059:	ldy     #$04
	lda     (sp),y
	tax
	dey
	lda     (sp),y
	jsr     _free
	jmp     L0019
L0033:	ldy     #$06
	lda     (sp),y
	tax
	dey
	lda     (sp),y
	jsr     _close
	ldy     #$04
	lda     (sp),y
	tax
	dey
	lda     (sp),y
	clc
	adc     #$20
	bcc     L003E
	inx
L003E:	inx
	ldy     #$01
	jsr     staxysp
	lda     #$00
L0056:	sta     (sp)
	cmp     #$5F
	bcs     L0058
	ldy     #$04
	lda     (sp),y
	tax
	dey
	lda     (sp),y
	clc
	adc     #$62
	bcc     L0049
	inx
L0049:	sta     ptr1
	stx     ptr1+1
	ldx     #$00
	lda     (sp)
	asl     a
	bcc     L0057
	inx
	clc
L0057:	adc     ptr1
	pha
	txa
	adc     ptr1+1
	tax
	pla
	jsr     pushax
	sta     ptr1
	stx     ptr1+1
	ldy     #$01
	lda     (ptr1),y
	tax
	lda     (ptr1)
	sta     ptr1
	stx     ptr1+1
	ldy     #$04
	lda     (sp),y
	tax
	dey
	lda     (sp),y
	clc
	adc     ptr1
	pha
	txa
	adc     ptr1+1
	tax
	pla
	ldy     #$00
	jsr     staxspidx
	clc
	lda     #$01
	adc     (sp)
	bra     L0056
L0058:	stz     _tgi_error
	ldy     #$04
	lda     (sp),y
	tax
	dey
	lda     (sp),y
	bra     L0009
L0019:	ldy     #$06
	lda     (sp),y
	bmi     L004F
	ldy     #$06
	lda     (sp),y
	tax
	dey
	lda     (sp),y
	jsr     _close
L004F:	ldx     #$00
	txa
L0009:	ldy     #$0F
	jmp     addysp

.endproc

