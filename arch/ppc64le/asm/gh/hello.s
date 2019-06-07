.data
zone:
	.string "Bonjour!\n"

.text
	.global _start
    	.align 3
_start:
    	.quad   ._start,.TOC.@tocbase,0
	.global ._start

._start:
	li 0, 4
	li 3, 1
	lis 4, zone@ha		# load the address of the label zone:
	addi 4, 4, zone@l	# in r3 (2 steps)
	li 5, 9
	sc

	li 0, 1
	li 3, 111		# Set the return code : 111 chosen here (r3 <-111)
	sc

