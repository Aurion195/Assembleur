#Non signé, 2 valeur avec SUB

			.data
a:			.quad 12
b:			.quad 3
m:			.quad 0				#m = max(a,b) ;
		
			.globl main
			.text
main:		movb a,%al 	#valeur al = a
			subb b,%al	#valeur bl = b
	
			jc bmax
	
amax: 		addb b,%al	#a est max si al>bl
			jmp Fin
bmax:		movb b,%al	#bl vaut maintenant b
			jmp Fin
Fin:		movb %al,m
			ret
