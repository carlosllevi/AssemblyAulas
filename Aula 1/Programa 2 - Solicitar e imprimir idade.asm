#Programa 2 - Solicitar e imprimir idade 

.data #Área de declar~ção de variáveis
	SolicitaIdade: .asciiz "Digite a sua idade"
	ImprimeIdade : .asciiz "Sua idade é"
	
.text #Área para a escrita do programa
	
	#Solicitando a idade
	li $v0, 4 #Imprime char e strings
	la $a0, SolicitaIdade #Carrega para o $a0 o endereço da variável "SolicitaIdade" para a impressão
	syscall
	
	#Leitura da idade 
	li $v0, 5 # Lê o número digitado e armazena em $v0
	syscall
	
	move $t0, $v0 #Copia para o $t0 o valor de $v0 
	
	#Mensagem informando a idade
	li $v0, 4 #Imprime char e strings
	la $a0, ImprimeIdade #Carrega para o $a0 o endereço da variável "ImprimeIdade" para a impressão
	syscall
	
	# imprimir o número
	li $v0, 1 #Impressão de um número inteiro
	move $a0, $t0 #Copia para o $a0 o valor de $t0
	syscall #Executa
	
	#Finalizando 
	li $v0, 10