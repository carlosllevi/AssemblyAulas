# Programa 1 - Operações Aritmétias 2

.data
	solicitaN1: .asciiz "Digite o primeiro número: "
	solicitaN2: .asciiz "Digite o segundo número: "
	msgAdicao: .asciiz "O valor da adição é:"
	msgSubtracao: .asciiz "O valor da Subtração é:"
	msgMultiplicação: .asciiz "O valor da Multipliação é:"
	msgQuociente: .asciiz "O valor do Quociente é:"
	msgResto: .asciiz "O valor do resto é:"
	
.text

	#Imprime a mensagme slicitando o primeiro número
	li $v0, 4 #Imprime char e strings
	la $a0, solicitaN1 
	syscall
	
	#Leitura
	li $v0, 5
	syscall
	
	#Copia p outro registrador
	move $t0, $v0
	
	#Imprime a mensagme slicitando o segundo número
	li $v0, 4 #Imprime char e strings
	la $a0, solicitaN2 
	syscall
	
	#Leitura
	li $v0, 5
	syscall
	
	move $t1, $v0
	
	add $t2, $t1, $t0 #Adiciona ao registrador $t2 a soma de $t1 e $t0
	sub $t3, $t1, $t0 #Adiciona ao registrador $t3 a subtração de $t1 e $t0
	mul $t4, $t1, $t0 #Adiciona ao registrador $t4 a multiplicação de $t1 e $t0
	div $t0, $t1 #divide o $t0 por $t1
	mfhi $t5 #Move ao registrador $t5 o resto da div $t1 e $t0
	mflo $t6 #Move ao registrador $t6 o quociente da div $t1 e $t0
	
	#Imprimir resultados
	#Mensagem 1:
	li $v0, 4 #Imprime char e strings
	la $a0, msgAdicao 
	syscall
	
	li $v0, 1 #Imprime um numero inteiro
	move $a0, $t2 #COpia para $a0 o valor de $t2
	syscall
	
	#Mensagem 2:
	li $v0, 4 #Imprime char e strings
	la $a0, msgSubtracao 
	syscall
	
	li $v0, 1 #Imprime um numero inteiro
	move $a0, $t3 #COpia para $a0 o valor de $t3
	syscall
	
	#Mensagem 3:
	li $v0, 4 #Imprime char e strings
	la $a0, msgMultiplicação
	syscall
	
	li $v0, 1 #Imprime um numero inteiro
	move $a0, $t4 #COpia para $a0 o valor de $t3
	syscall
	
	#Mensagem 4:
	li $v0, 4 #Imprime char e strings
	la $a0, msgResto
	syscall
	
	li $v0, 1 #Imprime um numero inteiro
	move $a0, $t5 #COpia para $a0 o valor de $t3
	syscall
	
	#Mensagem 5:
	li $v0, 4 #Imprime char e strings
	la $a0, msgQuociente
	syscall
	
	li $v0, 1 #Imprime um numero inteiro
	move $a0, $t6 #COpia para $a0 o valor de $t3
	syscall
	
