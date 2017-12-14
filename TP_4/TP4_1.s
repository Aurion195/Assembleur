		.data
Polynome:	.double 1.0, 3.0, 2.0			#x2 + 3x + 2
Dis:		.double 0.0
quatre:		.float	4.0

		.text
		.globl main

main:		push $Polynome				#On empile l'adresse du polynome
		call Discriminant			#On apelle la procédure
		Pop %rax				#On met le résultat dans le registre %rax
		movq %rax, Dis				#On mouve le résultat vers le double Dis
		ret

Discriminant:	movq 8(%rsp),%rsi			#Adresse du polynome ! toujours en 1er
		fldl 16(%rsi)				#On charge c en 1er, %st(0) = c
		fldl (%rsi)				#%st(1) = a
		fmulp %st(0),%st(1)			#On multiplie a par c et on dépile a
		flds quatre
		fmulp %st(0),%st(1)				# = 4 * a * c
		fldl 8(%rsi)				#On charge b %st(0) = b
		fmul %st(0),%st(0)			#b * b
		fsubp %st(0),%st(1)			#on soustrait et on dépile
		fstpl 8(%rsp)				#ecrase les parametres du polynomes pour mettre la solution, mettre l car c'est des float
		ret	
