#Programa 0 - Hello World!

.data #Área de declaração de variáveis
	msg: .asciiz "Hello World!"
	
.text #Área para escrita do programa

	#Imprimindo a Mensagem
	li $v0, 4 #Impressão de caracteres e strings
	la $a0, msg #Carrega para o registrador $a0 o endereço da variável "msg" para impressão 
	syscall #Executar o programa
	
	#Finaliza o programa
	li $v0, 10 