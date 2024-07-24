!
! Exercício 2.6
!
!
! Programa que le um valor inteiro de até cinco dígitos e o separa em
! seus dígitos componentes:
! dezena de milhar, unidade de milhar, centena, dezena e unidade
!
PROGRAM separadigitos
   IMPLICIT NONE
   INTEGER :: valor, dezena_de_milhar, unidade_de_milhar, centena, dezena, unidade
   
   ! Apresentação da finalidade do programa
   WRITE (*, *) "Separação dos dígitos de um inteiro de até cinco dígitos: "
   WRITE (*, *)
   ! Entrada dos dados
   WRITE (*, *) "Informe um valor inteiro de até cinco dígitos: "
   READ (*, *) valor
   ! Impressão do valor original
   WRITE (*, *) "Valor do inteiro lido = ", valor
   WRITE (*, *)
   ! Separação dos dígitos
   dezena_de_milhar = valor / 10000
   valor = MOD(valor, 10000)
   unidade_de_milhar = valor / 1000
   valor = MOD(valor, 1000)
   centena = valor / 100
   valor = MOD(valor, 100)
   dezena = valor / 10
   valor = MOD(valor, 10)
   unidade = valor
   ! Resultados do programa
   WRITE (*, *) "O valor do dígito da dezena de milhar é  ", dezena_de_milhar
   WRITE (*, *) "O valor do dígito da unidade de milhar é ", unidade_de_milhar
   WRITE (*, *) "O valor do dígito das centena é          ", centena
   WRITE (*, *) "O valor do dígito das dezenas é          ", dezena
   WRITE (*, *) "O valor do dígito das unidades é         ", unidade
   STOP
END PROGRAM separadigitos
