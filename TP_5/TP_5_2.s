#Tri bulle

		.data
Tab:		.quad 10					#Nb d'élément dans le tableau
		.float 2.0,7.0,12.0,3.0,5.0,1.0,10.0,3.0,4.0,1.0
		.text
		.globl main

main:		push $Tab
		call Tribulle

Tribulle:	movq 8(%rsp),%rsi					#on met la taille du tableau dans rsi
		cmpq $2,(%rsi)
		jb Fin						#on compare la taille du tableau		
Iteration:	push 8(%rsp)
		call Tripartiel
		pop %rax					#valeur de retour
		cmpq $0,%rax
		jne Iteration					#tant que le taleau n'est pas vide
Fin:		ret $8

Tripartiel:	movq 8(%rsp),%rsi				#Rsi pointe sur la taille du tableau
		movq (%rsi),%rcx				#Taille du tablea
		subq $1,%rcx					#indice du dernier éléments
		addq $8,%rsi					#rsi pointe sur les derniers élément du tableau
		movq $0,(%rsp)					#Valeur de retour, 0 = false

Boucle:		flds (%rsi,%rcx,4)				#st(0) = T[i]
		flds -4(%rsi,%rcx,4)				#st(1) = T[i-1]
		fcomi %st(1)
		jb Suite

Permutation:	fstp (%rsi,%rcx,4)				#on copie T[i-1] dans %bx
		fstp -4(%rsi,%rcx,4)
		movq $1,8(%rsp)					#Permutation = true

Suite:		subq $1,%rcx
		jnz Boucle

