#Calcular tempo de experimento científico em HH:MM:SS
#Entrada: int em segundos
# Saida: HH:MM:SS
 
.text 

main: 
	addi $8, $0 , 3600
	addi $9, $0 , 60

segundos:	
	addi $2, $0, 5
	syscall	
	add $13, $0, $2

calc: 
	div $13, $8 #calulando horas 
	mflo $10 #horas
	mul $25, $10, $8 #multiplicando para ter horas em segundos
	
	sub $13, $13, $25 #subtraindo horas em segudos dos segundos totais
	
	
	div $13 $9 #calculando minutos
	mflo $11 #minutos
	mul $24, $11, $9 #multiplicando para ter horas em segundos
	
	sub $13, $13, $24 #subtraindo minutos em segudos dos segundos totais
		
	
print: 

	add $4, $0, $10
	addi $2 $0, 1
	syscall 
	
	addi $4, $0, ':'
	addi $2, $0, 11
	syscall 
	
	add $4, $0, $11
	addi $2 $0, 1
	syscall 
	
	addi $4, $0, ':'
	addi $2, $0, 11
	syscall 
	
	add $4, $0, $13
	addi $2 $0, 1
	syscall

over: 
	addi $2, $0, 10
	syscall
	

	
	
	
	