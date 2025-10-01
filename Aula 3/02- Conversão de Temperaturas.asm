# Programa 2 - Conversão de temperaturas
#Formúlas:
# Celsius - Farenheit
# F=(C*1.8)+32
#Celsius - Kelvin
#K = C=273.15
.data
	SolicitaCelsius: .asciiz "Digite a temperatura em celsius: "
	msgF: .asciiz "A temperatura em Farenheit: "
	msgK: .asciiz "A temperatura em Kelvin: "
	const1.8: .float 1.8
	const32: .float 32
	const273.15: .float 273.15 
.text

	#Solicitando a temperatura em Celsius
	li $v0, 4 #Imprime char e strings
	la $a0, SolicitaCelsius
	syscall
	
	#Leitura
	li $v0, 6 #Lê um numero do tipo float e armazena em $f0
	syscall
	
	#Copia p outro registrador
	mov.s $f1, $f0
	
	#Registrador $f1 armazena o valor de celsius !!!
	
	#Convertendo Celsius p/Fareheit:
	l.s $f2, const1.8 #transfere para o registrador f2 o valor da variavel const1.8
	l.s $f3, const32  #transfere para o registrador f3 o valor da variavel const32
	mul.s $f4, $f1, $f2
	add.s $f5, $f4, $f3 #Resultado em Fareneit
	
	#Convertendo Celsius p/Kelvin:
	l.s $f6, const273.15
	add.s $f7, $f1, $f6 #Resultado em Kevin
	
	#Imprime a mensagem da temperatura em Farenheit
	li $v0, 4 #Imprime char e strings
	la $a0, msgF
	syscall
	
	#Imprime o valor da temperatura em Farenheit
	li $v0, 2 #Imprime float
	mov.s $f12, $f5
	syscall
	
	#Imprime a mensagem da temperatura em Kelvin
	li $v0, 4 #Imprime char e strings
	la $a0, msgK
	syscall
	
	#Imprime o valor da temperatura em Kelvin
	li $v0, 2 #Imprime float
	mov.s $f12, $f7
	syscall
	
	li $v0, 10
	
	
	
