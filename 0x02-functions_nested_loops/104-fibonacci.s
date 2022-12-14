	.file	"104-fibonacci.c"
	.text
	.section	.rodata
.LC0:
	.string	"%lu, "
.LC1:
	.string	"%lu%lu"
.LC2:
	.string	", "
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
	subq	$80, %rsp
	movq	$0, -72(%rbp)
	movq	$1, -64(%rbp)
	movl	$0, -76(%rbp)
	jmp	.L2
.L3:
	movq	-72(%rbp), %rdx
	movq	-64(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC0(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	movq	-64(%rbp), %rax
	movq	%rax, -72(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -64(%rbp)
	addl	$1, -76(%rbp)
.L2:
	cmpl	$91, -76(%rbp)
	jle	.L3
	movq	-72(%rbp), %rax
	movabsq	$-2601111570856684097, %rdx
	mulq	%rdx
	movq	%rdx, %rax
	shrq	$33, %rax
	movq	%rax, -56(%rbp)
	movq	-64(%rbp), %rax
	movabsq	$-2601111570856684097, %rdx
	mulq	%rdx
	movq	%rdx, %rax
	shrq	$33, %rax
	movq	%rax, -40(%rbp)
	movq	-72(%rbp), %rcx
	movabsq	$-2601111570856684097, %rdx
	movq	%rcx, %rax
	mulq	%rdx
	shrq	$33, %rdx
	movabsq	$10000000000, %rax
	imulq	%rdx, %rax
	subq	%rax, %rcx
	movq	%rcx, %rax
	movq	%rax, -48(%rbp)
	movl	$93, -76(%rbp)
	jmp	.L4
.L7:
	movq	-56(%rbp), %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -24(%rbp)
	movq	-48(%rbp), %rdx
	movq	-32(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -16(%rbp)
	movq	-48(%rbp), %rdx
	movq	-32(%rbp), %rax
	addq	%rax, %rdx
	movabsq	$9999999999, %rax
	cmpq	%rax, %rdx
	jbe	.L5
	addq	$1, -24(%rbp)
	movq	-16(%rbp), %rcx
	movabsq	$-2601111570856684097, %rdx
	movq	%rcx, %rax
	mulq	%rdx
	shrq	$33, %rdx
	movabsq	$10000000000, %rax
	imulq	%rdx, %rax
	subq	%rax, %rcx
	movq	%rcx, %rax
	movq	%rax, -16(%rbp)
.L5:
	movq	-16(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC1(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	cmpl	$98, -76(%rbp)
	je	.L6
	leaq	.LC2(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
.L6:
	movq	-40(%rbp), %rax
	movq	%rax, -56(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -48(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -40(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -32(%rbp)
	addl	$1, -76(%rbp)
.L4:
	cmpl	$98, -76(%rbp)
	jle	.L7
	movl	$10, %edi
	call	putchar@PLT
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
