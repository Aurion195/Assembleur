			.text									#zone d'instruction	
			.globl main
main:		movl			$0xEFFACE,%eax			#eax = EFFACE
			movb			$0b10,%ah				#eax = EF02CE
			movw			$10,%bx					#eax = EF02CE ; %bx = 000A
			movw			%bx,%ax					#eax = EF000A
			ret
