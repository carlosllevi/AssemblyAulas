# Condicionais para numeros INTEIROS
# BEQ $f1, $f2, Label 1 -> Branch if equal 
# BNE $f1, $f2, Label 2 -> Branch if not equal
# BGT $f1, $f2, Label 3 -> Branch if greater than
# BGE $f1, $f2, Label 4 - Brnch if greater or equal
# BLT $f1, $f2, Label 5 -> Branch if less than
# BLE  $f1, $f2, Label6 -> Branch if less or equal
.data 
 SolicitaNum : .asciiz "Digite o número: "
 Res_Positivo: .asciiz "O numero é positivo"
 Res_Negativo: .asciiz "O numero é negativo"
 Res_Zero: .asciiz "O numero é igual a zero"
 
.text 

 #Solicita o número
 li $v0, 4
 la $a0, SolicitaNum
 syscall

 # Lê o número
 li $v0, 5
 syscall
 
 #Condicionais
 bgt $v0, $zero, positivo #Se $v0 > $zero, executa a labrl  "Positivo"
 blt $v0, $zero, negativo #Se $v0 < $zero, executa a label "Negativo"
 beq $v0, $zero, zero #Se $v0 = $zero, executa a label "Zero"
 
 #Criação das labels 
 
 positivo: #Cria a label positivo
  li $v0, 4
  la $a0, Res_Positivo
  syscall
  li $v0, 10 #Finalização obrigatória!!
  syscall
  
  zero: #Cria a label zero
  li $v0, 4
  la $a0, Res_Zero
  syscall
  li $v0, 10 #Finalização obrigatória!!
  syscall
  