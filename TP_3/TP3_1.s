		.text
		.globl main

main:		push $1					#push = empiler dans la pile
		push $2
		push $3
		pop %rax				#pop = depiler en dehors de la pile
		pop %rbx
		pop %rcx
		
		ret
