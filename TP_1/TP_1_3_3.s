#Signé, 2 valeur avec CMP		

			.data
a:			.quad 12
b:			.quad 3
m:			.quad 0				#m = max(a,b) ;

			.text
			
			.globl main
main:		movl a, %eax		#On déplace la valeur de a dans le registre
			cmp b,%eax			#On compare la valeur de B avec le registre rax
			jg amax				#Si a est au-dessus de B, on saute à amax

amax:		movl %eax,m			#On déplace la valeur max dans m
bmax:		movl b,%eax			#On déplace la valeur de b dans le registre
			movl %eax,m			#on déplace la valeur max contenu dans le registre dans m

	ret