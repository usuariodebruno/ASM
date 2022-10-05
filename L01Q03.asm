#Calcular multiplicação de dois numeros(in)

main: 
	addi $v0, $zero, 5 #ordem de serviço ler 
	syscall
	add $t0, $zero, $v0 # $t0 <- $v0 
	
	addi $v0, $zero, 5 #ordem de serviço ler 
	syscall
	add $t1, $zero, $v0 # $t1 <- $v0 
	
multiplicacao:
	mul $4, $t0, $t1
	
imprimir:
	addi $v0 $zero, 1 #ordem de serviço de escrita
	syscall
	
