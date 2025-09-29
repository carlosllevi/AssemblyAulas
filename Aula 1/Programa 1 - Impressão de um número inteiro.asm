#Programa 1 - Impressão de um número inteiro 

.data #Área de declar~ção de variáveis
	numero: .word 35
	
.text #Área para a escrita do programa

	# imprimir o número
	li $v0, 1 #Impressão de um número inteiro
	lw $a0, numero #Carrega para o $a0 o endereço da variável "numero" para a impressão
	syscall #Executa
	
#Vai finalizar, também sem o comando "çi $v0, 10" pois não acontecerá mmais nada