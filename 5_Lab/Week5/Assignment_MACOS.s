	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 15, 0	sdk_version 15, 2
	.globl	_main                           ; -- Begin function main
	.p2align	2
_main:                                  ; @main
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #64
	.cfi_def_cfa_offset 64
	mov	w0, #0                          ; =0x0
	str	wzr, [sp, #60]
	add	x8, sp, #59
	str	x8, [sp, #48]
	mov	w8, #97                         ; =0x61
	strb	w8, [sp, #59]
	ldr	x9, [sp, #48]
	mov	w8, #98                         ; =0x62
	strb	w8, [x9]
	add	x8, sp, #46
	str	x8, [sp, #32]
	mov	w8, #4660                       ; =0x1234
	strh	w8, [sp, #46]
	ldr	x9, [sp, #32]
	mov	w8, #9029                       ; =0x2345
	strh	w8, [x9]
	add	x8, sp, #28
	str	x8, [sp, #16]
	mov	w8, #22136                      ; =0x5678
	movk	w8, #4660, lsl #16
	str	w8, [sp, #28]
	ldr	x9, [sp, #16]
	mov	w8, #26505                      ; =0x6789
	movk	w8, #9029, lsl #16
	str	w8, [x9]
	add	x8, sp, #8
	str	x8, [sp]
	mov	x8, #52719                      ; =0xcdef
	movk	x8, #37035, lsl #16
	movk	x8, #22136, lsl #32
	movk	x8, #4660, lsl #48
	str	x8, [sp, #8]
	ldr	x9, [sp]
	mov	x8, #57073                      ; =0xdef1
	movk	x8, #2748, lsl #16
	movk	x8, #26505, lsl #32
	movk	x8, #9029, lsl #48
	str	x8, [x9]
	add	sp, sp, #64
	ret
	.cfi_endproc
                                        ; -- End function
.subsections_via_symbols
