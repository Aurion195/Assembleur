#Signé, avec max(a, b, c) ;

			.data
a:			.quad 12
b:			.quad 3
c:			.quad 5
m:			.quad 0				#m = max(a,b,c) ;
			
			.text
			
			.globl main
main:		movl a, %eax		#On déplace la valeur de a dans le registre
			movl c, %ebx		#On déplace la valeur de c dans le répertoire
			cmp b,%eax			#On compare la valeur de B avec le registre rax
			jg amax				#Si a est au-dessus de B, on saute à amax

amax:		cmp a,
			movl %eax,m			#On déplace la valeur max dans m
bmax:		movl b,%eax			#On déplace la valeur de b dans le registre
			movl %eax,m			#on déplace la valeur max contenu dans le registre dans m

	ret