		.text
		.globl main
main:	subl			%eax,%eax			#eax = 0
											#ZF  = 1
											#OF  = 0
											#CF  = 0
		subw			$1,%ax				#eax = 0000FFFF  car on n'est pas dans le registre eax, mais ax, qui est mla moitié du registre											#ZF  = 1
											#ZF  = 0
											#OF  = 0
											#CF  = 1
		addl			$2,%eax				#eax = 00010001
											#ZF  = 0
											#OF  = 0
											#CF  = 0
		addl			$0xFFEFFFF,%eax		#eax = 10000000
											#ZF  = 0
											#OF  = 0
											#CF  = 0
		ret
