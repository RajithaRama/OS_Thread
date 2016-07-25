.text
.global machine_switch

machine_switch:
	# address of the new sp is arg1
	# address of the current tcb is arg2
	# need to store all required registered for old tcb
	# restore all required registred from the new tcb
	# then when you return, you should get to the new thread 

	
	sub	$72, %rsp

	mov     %rbx, 8(%rsp)
	mov	%rbp, 16(%rsp)
	mov	%r10, 24(%rsp)
	mov	%r11, 32(%rsp)
	mov	%r12, 40(%rsp)
	mov	%r13, 48(%rsp)
	mov	%r14, 56(%rsp)
	mov	%r15, 64(%rsp)

	mov	%rsp, (%rsi)
		
	mov	(%rdi), %rsp
	
	mov	8(%rsp), %rbx	
	mov    16(%rsp), %rbp
	mov    24(%rsp), %r10
	mov    32(%rsp), %r11
	mov    40(%rsp), %r12
	mov    48(%rsp), %r13
	mov    56(%rsp), %r14
	mov    64(%rsp), %r15

	add	$72, %rsp
	
	ret 

