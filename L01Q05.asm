.text 

main: 
	addi $v0, $zero, 5 #ordem de serviço: entrada
	syscall #ler
	addi $t0, $zero, 10 #divisor 10 no primeiro registrador de variavel 
	div $v0, $t0 #dividindo valor de entrada por $t0(10)
	
alocando:
	mfhi $t7 #realocando ultimo algarismo do numero de entrada (resto) 
	mflo $t1 #realocando resultado inteiro da divisao
	
	div $t1, $t0 #divisão do novo inteiro por $t0(10)
	
	mfhi $t6 #realocando ultimo algarismo do novo numero (resto) 
	mflo $t1 #realocando resultado inteiro da divisao
	
	div $t1, $t0  #divisão do novo inteiro por $t0(10)
	
	mfhi $t5 #realocando ultimo algarismo do numero de novo numero (resto) 
soma:	
	add $t1, $t7, $t6 #somando todos algarismos
	add $a0, $t1, $t5
	
out: 
	addi $v0, $zero, 1 #imprimir
	syscall
over:  
	addi $v0, $zero, 10 #finalizar programa
	syscall
	
	