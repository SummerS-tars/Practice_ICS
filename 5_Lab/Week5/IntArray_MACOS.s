	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 15, 0	sdk_version 15, 2
	.globl	_main                           ; -- Begin function main
	.p2align	2
_main:                                  ; @main
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #80
	stp	x29, x30, [sp, #64]             ; 16-byte Folded Spill
	add	x29, sp, #64
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	adrp	x8, ___stack_chk_guard@GOTPAGE
	ldr	x8, [x8, ___stack_chk_guard@GOTPAGEOFF]
	ldr	x8, [x8]
	stur	x8, [x29, #-8]
	str	wzr, [sp, #28]
	adrp	x9, l___const.main.arr@PAGE
	add	x9, x9, l___const.main.arr@PAGEOFF
	ldr	q0, [x9]
	add	x8, sp, #32
	str	q0, [sp, #32]
	ldr	w9, [x9, #16]
	str	w9, [sp, #48]
	mov	x9, x8
	str	x9, [sp, #16]
	ldr	w9, [sp, #44]
	str	w9, [sp, #12]
	mov	w9, #1                          ; =0x1
	str	w9, [sp, #8]
	ldr	w9, [sp, #8]
	add	w9, w9, #2
	ldr	w8, [x8, w9, sxtw #2]
	str	w8, [sp, #4]
	ldr	x8, [sp, #16]
	ldr	w8, [x8, #12]
	str	w8, [sp]
	ldur	x9, [x29, #-8]
	adrp	x8, ___stack_chk_guard@GOTPAGE
	ldr	x8, [x8, ___stack_chk_guard@GOTPAGEOFF]
	ldr	x8, [x8]
	subs	x8, x8, x9
	cset	w8, eq
	tbnz	w8, #0, LBB0_2
	b	LBB0_1
LBB0_1:
	bl	___stack_chk_fail
LBB0_2:
	mov	w0, #0                          ; =0x0
	ldp	x29, x30, [sp, #64]             ; 16-byte Folded Reload
	add	sp, sp, #80
	ret
	.cfi_endproc
                                        ; -- End function
	.section	__TEXT,__const
	.p2align	2, 0x0                          ; @__const.main.arr
l___const.main.arr:
	.long	1                               ; 0x1
	.long	2                               ; 0x2
	.long	3                               ; 0x3
	.long	4                               ; 0x4
	.long	5                               ; 0x5

.subsections_via_symbols
