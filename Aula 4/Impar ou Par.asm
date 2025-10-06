# Impar ou Par
.data
SolicitaNum: .asciiz "Digite o número:"
Res_Par: .asciiz "O número é par"
Res_Impar: .asciiz "O número é ímpar"

.text 

#Solicita o número
li $v0, 4
la $a0, SolicitaNum
syscall

#Lê o número 
li $v0, 5
syscall

#Divisão do númeor lido por 2

li $t0, 2

div $v0, $t0 #DIvide $v0 por $t0

mfhi $t1 # COpia o valor de hi para $t1

# Condicionaç
 beq $t1, 0, par # Se $t1 = 0, executa a label "par"
 
 #Execução caso a condção não seja atendida
 li $v0, 4
 la $a0, Res_Impar
 syscall
 
 # FInaliza o programa
 li $v0, 10
 syscall
 
#Execução caso a condição seja atendida
par:
 li $v0, 4
 la $a0, Res_Par
 syscall
