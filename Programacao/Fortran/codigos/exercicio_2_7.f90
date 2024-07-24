!
! Exercício 2.7
!
!
! Programa que leia um valor inteiro de quatro dígitos,
! representando um número binário (composto de 0's e 1's) e
! mostra o valor decimal correspondente a esse binário
!
PROGRAM binarioParaDecimal
   IMPLICIT NONE
   INTEGER :: binario, decimal, bit_3, bit_2, bit_1, bit_0
   
   ! Apresentação da finalidade do programa
   WRITE (*, *) "Conversão de um inteiro de até quatro dígitos na base binária"
   WRITE (*, *) "para um inteiro na base decimal:"
   WRITE (*, *)
   ! Entrada dos dados
   WRITE (*, *) "Informe um valor inteiro de até quatro dígitos: "
   READ (*, *) binario
   ! Impressão do valor binario lido
   WRITE (*, *) "Valor do inteiro binario =      ", binario
   WRITE (*, *)
   ! Separação dos dígitos binários
   bit_3 = binario / 1000
   binario = MOD(binario, 1000)
   bit_2 = binario / 100
   binario = MOD(binario, 100)
   bit_1 = binario / 10
   binario = MOD(binario, 10)
   bit_0 = binario
   ! Conversão para decimal
   decimal = bit_3 * 2 ** 3 + bit_2 * 2 ** 2 + bit_1 * 2 ** 1 + bit_0 * 2 ** 0
   ! Impressão do valor decimal convertido
   WRITE (*, *) "Valor convertido para decimal = ", decimal
   STOP
END PROGRAM binarioParaDecimal
