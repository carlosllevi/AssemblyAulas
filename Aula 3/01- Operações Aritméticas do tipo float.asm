# Programa 1 - Operações Aritmétias do tipo float

.data
	solicitaN1: .asciiz "Digite o primeiro número: "
	solicitaN2: .asciiz "Digite o segundo número: "
	msgAdicao: .asciiz "O valor da adição é:"
	msgSubtracao: .asciiz "O valor da Subtração é:"
	msgMultiplicacao: .asciiz "O valor da Multipliação é:"
	msgDivisao: .asciiz "O valor da Divisão é:"
	
.text

	#Imprime a mensagme slicitando o primeiro número
	li $v0, 4 #Imprime char e strings
	la $a0, solicitaN1 
	syscall
	
	#Leitura
	li $v0, 6 #Lê um numero do tipo float e armazena em $f0
	syscall
	
	#Copia p outro registrador
	mov.s $f1, $f0
	
	#Imprime a mensagme slicitando o segundo número
	li $v0, 4 #Imprime char e strings
	la $a0, solicitaN2 
	syscall
	
	#Leitura
	li $v0, 6 #Lê um numero do tipo float e armazena em $f0
	syscall
	
	mov.s $f2, $f0
	
	add.s $f3, $f1, $f2 #Adiciona ao registrador $f3 a soma de $f1 e $f2
	sub.s $f4, $f1, $f2 #Adiciona ao registrador $t3 a subtração de $f1 e $f2
	mul.s $f5, $f1, $f2 #Adiciona ao registrador $t4 a multiplicação de $f1 e $f2
	div.s $f6, $f1, $f2 #Adiciona ao registrador $4 divide o $f1 e $f2
	
	#Imprimir resultados
	#Mensagem 1:
	li $v0, 4 #Imprime char e strings
	la $a0, msgAdicao 
	syscall
	
	li $v0, 2 #Imprime um numero float
	mov.s $f12, $f3 #COpia para $a0 o valor de $t2
	syscall
	
	#Mensagem 2:
	li $v0, 4 #Imprime char e strings
	la $a0, msgSubtracao 
	syscall
	
	li $v0, 2 #Imprime um numero float
	mov.s $f12, $f4 #COpia para $a0 o valor de $t3
	syscall
	
	#Mensagem 3:
	li $v0, 4 #Imprime char e strings
	la $a0, msgMultiplicacao
	syscall
	
	li $v0, 2 #Imprime um numero float
	mov.s $f12, $f5 #COpia para $a0 o valor de $t3
	syscall
	
	#Mensagem 4:
	li $v0, 4 #Imprime char e strings
	la $a0, msgDivisao
	syscall
	
	li $v0, 2 #Imprime um numero float
	mov.s $f12, $f6 #COpia para $a0 o valor de $t3
	syscall
	
	li $v0, 10
	
	#Obs so imprime no f2
	
