.text
.global machine_switch

machine_switch:
	# address of the new sp is arg1
	# address of the current tcb is arg2
	# need to store all required registered for old tcb
	# restore all required registred from the new tcb
	# then when you return, you should get to the new thread 

	movq	(%rdi), %rdi
	pushq	%rdi

	subq	$72, %rsp
	//movq	%rax, -8(%rsp)
	movq    %rbx, 8(%rsp)
	//movq    %rcx, -24(%rsp)
	//movq    %rdx, -32(%rsp)
	//movq 	%rsp, -40(%rsp)
	movq	%rbp, 16(%rsp)
	//movq	%rdi, -16(%rsp)
	//movq 	%r8,  -72(%rsp)
	//movq    %r9,  -80(%rsp)
	movq	%r10, 24(%rsp)
	movq	%r11, 32(%rsp)
	movq	%r12, 40(%rsp)
	movq	%r13, 48(%rsp)
	movq	%r14, 56(%rsp)
	movq	%r15, 64(%rsp)

	movq	%rsp, (%rsi)
	

	
	movq	%rdi, %rsp
	

	//movq	-8(%rsp), %rax
	movq	8(%rsp), %rbx	
	//movq    -24(%rsp), %rcx
	//movq    -32(%rsp), %rdx
	movq    16(%rsp), %rbp
	//movq	-56(%rsp), %rsi
	//movq	-64(%rsp), %rdi
	//movq	-72(%rsp), %r8
	//movq    -80(%rsp), %r9
	movq    24(%rsp), %r10
	movq    32(%rsp), %r11
	movq    40(%rsp), %r12
	movq    48(%rsp), %r13
	movq    56(%rsp), %r14
	movq    64(%rsp), %r15

	addq	$72, %rsp
	

	ret 

