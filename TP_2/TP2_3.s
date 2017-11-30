		.data
s1:		.string	"Hello"
s2:		.string	"Helle"
	
		.globl main
		.text

main:	
		movq $s1,%rsi 		#si pointe sur le 1er caractère de s
		movq $s2,%rdi		#pointe sur 1er caractère de s2 

parcours:
		addq $1,%rsi		#incrémente caractère de s1/rsi(pointe le carac suivant)
		addq $1,%rdi		#incrément caractère de s2(pointe carac suivant de s2
	

		cmpb $0,%al		#si la valeur dans le registre 1octet %al=0, alors on fait un jump vers FIN
		jne parcours 		#si comparaison est fausse (donc si %al!=0) alors réexecute la boucle parcours pour passer au caractère suivant
		ret

