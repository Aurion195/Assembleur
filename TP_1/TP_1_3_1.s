#Non signé, 2 valeur avec CMP

			.data
a:			.quad 5
b:			.quad 3
m:			.quad 0				#m = max(a,b) ;

			.text
			.globl main
main:		movl a, %eax		#On déplace la valeur de a dans le registre
			cmp b,%eax			#On compare la valeur de B avec le registre rax
			ja amax				#Si a est au-dessus de B, on saute à amax

bmax:		movl b,%eax			#On déplace la valeur de b dans le registre
amax:		movl %eax,m			#On déplace la valeur max dans m

	ret
