#Calcular o quadrado de um numero

.text 
main: 
	#ler numero
	addi $v0, $zero, 5 # ordem de serviço 5; ler.
	syscall
	add $s0, $zero, $v0 # $s0 <- $av0
	
divisao: 
	mul $4, $s0, $s0 # $4 <- $s0 * $s0 (Quadrado)  
	addi $v0, $zero, 1 # ordem de serviço 1; escrita
	syscall