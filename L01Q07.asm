.text 

main: 
	addi $v0, $zero, 5 #ordem de servi�o: entrada
	syscall #ler
	addi $t0, $zero, 10 #divisor 10 no primeiro registrador de variavel 
	div $v0, $t0 #dividindo valor de entrada por $t0[10]
	
alocando:
	mfhi $t7 #realocando ultimo algarismo do numero de entrada (resto - ultimo algarismo) 
	mflo $t1 #realocando resultado inteiro da divisao 
	
	div $t1, $t0 #divis�o do novo inteiro por $t0(10)
	
	mfhi $t6 #realocando ultimo algarismo do novo numero (resto - penutimo algarismo) 
	mflo $t1 #realocando resultado inteiro da divisao 
	
	div $t1, $t0  #divis�o do novo inteiro por $t0(10)
	
	mfhi $t5 #realocando ultimo algarismo do numero de novo numero (resto - segundo) 	
	mflo $t1 #realocando resultado inteiro da divisao 
	
	div $t1, $t0  #divis�o do novo inteiro por $t0(10)
	
	mfhi $t4 #realocando ultimo algarismo do numero de novo numero (resto - primeiro) 	
	mflo $t1 #realocando resultado inteiro da divisao	
out:	
	add $a0, $zero, $t4 #imprimindo	
	addi $v0, $zero, 1 #ordem de servi�o
	syscall
	
	add $a0, $zero, $t5 #imprimindo	
	addi $v0, $zero, 1 #ordem de servi�o
	syscall
	
	add $a0, $zero, $t6 #imprimindo	
	addi $v0, $zero, 1 #ordem de servi�o
	syscall
	
	add $a0, $zero, $t7 #imprimindo	
	addi $v0, $zero, 1 #ordem de servi�o
	syscall
	
	
over:  
	addi $v0, $zero, 10 #finalizar programa
	syscall
	
	
