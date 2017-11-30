                .data
chaine1:        .string                 "Word !"                       	#On crée une chaine de caractere
chaine2:        .string                 "Hello !"			#On veut copier la chaine de caractere 1 dans la chaine de caractere 2
chaine3:	.string			"...................."

                .text
                .globl main

main:           movq $chaine1, %rsi					#rsi pointe sur la chaine 1
		movq $chaine2, %rdi					#rdi pointe sur la chaine 2

cherchefin:	cmpb $0, (%rdi)
		je copie
		addq $1, %rdi
		jmp cherchefin

copie:		movb (%rsi), %al
		movb %al, (%rsi)
		addq $1, %rsi
		addq $1, %rdi
		cmpb $0, %al
		jne copie

		ret
