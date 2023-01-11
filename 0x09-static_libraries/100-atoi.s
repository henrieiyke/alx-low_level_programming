	.file	"100-atoi.c"
	.text
	.globl	_atoi
	.type	_atoi, @function
_atoi:
.LFB0:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)
	movl	$1, -8(%rbp)
	movl	$0, -4(%rbp)
	movb	$0, -9(%rbp)
	jmp	.L2
.L7:
	movq	-24(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$45, %al
	jne	.L3
	negl	-8(%rbp)
.L3:
	movq	-24(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$47, %al
	jle	.L4
	movq	-24(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$57, %al
	jg	.L4
	movb	$1, -9(%rbp)
	movl	-4(%rbp), %edx
	movl	%edx, %eax
	sall	$2, %eax
	addl	%edx, %eax
	addl	%eax, %eax
	movl	%eax, %edx
	movq	-24(%rbp), %rax
	movzbl	(%rax), %eax
	movsbl	%al, %eax
	addl	%edx, %eax
	subl	$48, %eax
	movl	%eax, -4(%rbp)
	jmp	.L5
.L4:
	cmpb	$0, -9(%rbp)
	jne	.L10
.L5:
	addq	$1, -24(%rbp)
.L2:
	movq	-24(%rbp), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	jne	.L7
	jmp	.L6
.L10:
	nop
.L6:
	cmpl	$0, -8(%rbp)
	jns	.L8
	negl	-4(%rbp)
.L8:
	movl	-4(%rbp), %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE0:
	.size	_atoi, .-_atoi
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
