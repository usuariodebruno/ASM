#calcular m�dia semestral do aluno (Int)

.text 

main:
	#1 - ler um numero e armazena-lo
	addi $v0, $zero, 5 #ordem de servi�o: ler entrada
	syscall	
mult2:
	add $t0, $zero, $v0 # $t0 <- $v0  - armazenando numero
	sll $t0, $t0, 1 #multiplicar por dois
	
armazenar:
	#2 - ler outro numero e armazena-lo
	addi $v0, $zero, 5 #ordem de servi�o 
	syscall	
	add $t1, $zero, $v0 # $t1 <- $v0 armazenando segundo numero
	
mult3:
	add $t2, $zero $t1 #copiando valor de $t1
	sll $t1, $t1, 1 #multiplicando por 2
	add $t2, $t1, $t2 #somando numero multiplicado mais ele originalmente (multiplicando por 3) e armazenando em $t2

armz:	
	add $t3, $t0, $t2 #adicionado soma das notas multiplicadas em $t3
	addi $t4, $zero, 5 #registrando
div: 
	div $t3, $t4  #dividindo notas pela soma dos pesos 5
	mflo $a0 #armazenando resuldado em LO (inteiro) da divis�o na var de visualiza��o
	
	
	addi $v0, $zero, 1 #ordem de servi�o: imprimir 
	syscall
over:
	addi $v0, $zero, 10
	syscall
	