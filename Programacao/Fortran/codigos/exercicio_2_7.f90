!
! Exerc�cio 2.7
!
!
! Programa que leia um valor inteiro de quatro d�gitos,
! representando um n�mero bin�rio (composto de 0's e 1's) e
! mostra o valor decimal correspondente a esse bin�rio
!
PROGRAM binarioParaDecimal
   IMPLICIT NONE
   INTEGER :: binario, decimal, bit_3, bit_2, bit_1, bit_0
   
   ! Apresenta��o da finalidade do programa
   WRITE (*, *) "Convers�o de um inteiro de at� quatro d�gitos na base bin�ria"
   WRITE (*, *) "para um inteiro na base decimal:"
   WRITE (*, *)
   ! Entrada dos dados
   WRITE (*, *) "Informe um valor inteiro de at� quatro d�gitos: "
   READ (*, *) binario
   ! Impress�o do valor binario lido
   WRITE (*, *) "Valor do inteiro binario =      ", binario
   WRITE (*, *)
   ! Separa��o dos d�gitos bin�rios
   bit_3 = binario / 1000
   binario = MOD(binario, 1000)
   bit_2 = binario / 100
   binario = MOD(binario, 100)
   bit_1 = binario / 10
   binario = MOD(binario, 10)
   bit_0 = binario
   ! Convers�o para decimal
   decimal = bit_3 * 2 ** 3 + bit_2 * 2 ** 2 + bit_1 * 2 ** 1 + bit_0 * 2 ** 0
   ! Impress�o do valor decimal convertido
   WRITE (*, *) "Valor convertido para decimal = ", decimal
   STOP
END PROGRAM binarioParaDecimal
