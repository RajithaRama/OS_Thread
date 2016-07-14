.text
.global machine_switch

machine_switch:
	# address of the new sp is arg1
	# address of the current tcb is arg2
	# need to store all required registered for old tcb
	# restore all required registred from the new tcb
	# then when you return, you should get to the new thread 
	
	movq	%rdi, (%rsp)
	//push 	(%rdi)
	movq	%rax, -8(%rsp)
	movq    %rbx, -16(%rsp)
	movq    %rcx, -24(%rsp)
	movq    %rdx, -32(%rsp)
	movq 	%rsp, -40(%rsp)
	movq	%rbp, -48(%rsp)
	movq    %rsi, -56(%rsp)
	movq	%rdi, -64(%rsp)
	movq 	%r8,  -72(%rsp)
	movq    %r9,  -80(%rsp)
	movq	%r10, -88(%rsp)
	movq	%r11, -96(%rsp)
	movq	%r12, -104(%rsp)
	movq	%r13, -112(%rsp)
	movq	%r14, -120(%rsp)
	movq	%r15, -128(%rsp)

	movq	%rsp, (%rsi)

	movq	(%rdi), %rsp
	
	movq	-8(%rsp), %rax
	movq	-16(%rsp), %rbx	
	movq    -24(%rsp), %rcx
	movq    -32(%rsp), %rdx
	movq    -48(%rsp), %rbp
	movq	-56(%rsp), %rsi
	movq	-64(%rsp), %rdi
	movq	-72(%rsp), %r8
	movq    -80(%rsp), %r9
	movq    -88(%rsp), %r10
	movq    -96(%rsp), %r11
	movq    -104(%rsp), %r12
	movq    -112(%rsp), %r13
	movq    -120(%rsp), %r14
	movq    -128(%rsp), %r15
	

	ret 

