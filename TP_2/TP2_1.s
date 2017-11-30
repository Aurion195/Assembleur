		.data
chaine1:	.string			"Hello !"			#On crée une chaine de caractere
chaine2:	.string			".........."			#On veut copier la chaine de caractere 1 dans la chaine de caractere 2
		
		.text
		.globl main

main:		movq $chaine1, %rsi					#Rsi pointe sur le 1er element de la chaine 1
		movq $chaine2, %rdi					#rdi pointe sur le 1er élément de la chaine 2
Copie:		movb (%rsi), %al					#On copie le caractère courant dans al
		movb %al, (%rdi)					#al -> caractere courant de la derstination
		addq $1, %rsi
		addq $1, %rdi
		cmpb $0, %al
		jne Copie
		ret	
