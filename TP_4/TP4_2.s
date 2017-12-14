		.data
Polynome:	.double 1.0, 3.0, 2.0
Racine1:	.double 0.0
Racine2:	.double 0.0
quatre:		.float 4.0
deux:		.float 2.0
		
		.text
		.globl main

main:		push $Polynome
		Call Racines
		pop %rax
		movq %rax, Racine1
		movq %rax
		movq %rax, Racine2
		ret

Racines:	pop %rbp
		movq 8(%rsp),%rsi			#rsi pointe sur le polynome
		fldl (%rsi)				#st(0) = a
		flds deux				
		flmup %st(0),%st(1)
		push %rsi
		call Discriminant			#meme fonction que dans le 1
		fldl (%rsp)
		addq $16,%rsp				
		fsqrt
		fldl 8(%rsi)
		fldz
		fsubz %st(1),%st(0)			
		fsub %st(2),%st(0)
		fdiv %st(3),%st(0)
		subq $8,%rsp
		fstp (%rsp)
		fldz
		fsubp %st(0), %st(1)
		faddp %st(0), %st(1)
		fdivp %st(0), %st(1)
		subq $8, %rsp
		fstp (%rsp)
		push %rbp
		ret
