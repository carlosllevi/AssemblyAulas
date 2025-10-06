#Verificar se é maior de idade
.data
SolicitaIdade: .asciiz "Digite a idade"
Res_ehMaior: "É Maior de idade"
Res_ehMenor: "É Menor de idade"

.text 
li $v0, 4
la $a0, SolicitaIdade
syscall

li $v0, 5
syscall

bgt $a0, 18, ehMaior

li $v0, 4
la $a0, Res_ehMenor
syscall

li $v0, 10
syscall

ehMaior:
 li $v0, 4
 la $a0, Res_ehMaior
 syscall


