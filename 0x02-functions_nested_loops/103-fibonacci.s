	.file	"103-fibonacci.c"
	.text
	.section	.rodata
.LC0:
	.string	"%ld\n"
	.text
	.globl	main
	.type	main, @function
main:
.LFB0:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movl	$0, -28(%rbp)
	movq	$1, -24(%rbp)
	movq	$2, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.L2
.L4:
	movq	-24(%rbp), %rax
	addq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	andl	$1, %eax
	testq	%rax, %rax
	jne	.L3
	movq	-16(%rbp), %rax
	addq	%rax, -8(%rbp)
.L3:
	movq	-16(%rbp), %rax
	subq	-24(%rbp), %rax
	movq	%rax, -24(%rbp)
	addl	$1, -28(%rbp)
.L2:
	movq	-16(%rbp), %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	cmpq	$3999999, %rax
	jle	.L4
	movq	-8(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC0(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	$0, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE0:
	.size	main, .-main
	.ident	"GCC: (Ubuntu 9.4.0-1ubuntu1~20.04.1) 9.4.0"
	.section	.note.GNU-stack,"",@progbits
	.section	.note.gnu.property,"a"
	.align 8
	.long	 1f - 0f
	.long	 4f - 1f
	.long	 5
0:
	.string	 "GNU"
1:
	.align 8
	.long	 0xc0000002
	.long	 3f - 2f
2:
	.long	 0x3
3:
	.align 8
4:
