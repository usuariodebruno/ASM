.text 

main:
	addi $2, $zero, 5 #add ordem de servi�o 
	syscall #ler numero
	add $s0, $zero, $2 #$s0 <- $2
	sll $4, $2, 1 #deslocar um a esquerda  armazenar em $4 para imprimir
	addi $2, $zero, 1 #Ordem de servi�o em $2
	syscall #imprimir 
