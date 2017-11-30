		.data
a:		.quad 15			#C'est une pile de 64 bites, donc c'est des quad
b:		.quad 20
		.globl main
		.text

main:		push a
		push b
		call max			#rax = max(a,b)
		pop %rax			#on dépile la valeur de %rax
		push b
		push a
		call max			#rax = rax(b,a)
		pop %rax
		ret
		
max:		pop %rcx			#On garde l'adresse de retour de la pile
		pop %rax			#On met la valeur de a dans %rax -> depile
		pop %rbx			#On met la valeur de b dans %rbx -> depile
		cmpq %rax,%rbx			#On compare a et b
		jnl bmax			#jnl = jump if not less (saute si plus petit)

amax:		push %rax			#On empile la plus grande valeur
		jmp fin				#On saute à la fin

bmax:		push %rbx			#b est plus grand que a, on empile b

fin:		push %rcx			#On empile la valeur de retour
		ret				#Fin du programme

