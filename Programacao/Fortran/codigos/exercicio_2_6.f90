!
! Exerc�cio 2.6
!
!
! Programa que le um valor inteiro de at� cinco d�gitos e o separa em
! seus d�gitos componentes:
! dezena de milhar, unidade de milhar, centena, dezena e unidade
!
PROGRAM separadigitos
   IMPLICIT NONE
   INTEGER :: valor, dezena_de_milhar, unidade_de_milhar, centena, dezena, unidade
   
   ! Apresenta��o da finalidade do programa
   WRITE (*, *) "Separa��o dos d�gitos de um inteiro de at� cinco d�gitos: "
   WRITE (*, *)
   ! Entrada dos dados
   WRITE (*, *) "Informe um valor inteiro de at� cinco d�gitos: "
   READ (*, *) valor
   ! Impress�o do valor original
   WRITE (*, *) "Valor do inteiro lido = ", valor
   WRITE (*, *)
   ! Separa��o dos d�gitos
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
   WRITE (*, *) "O valor do d�gito da dezena de milhar �  ", dezena_de_milhar
   WRITE (*, *) "O valor do d�gito da unidade de milhar � ", unidade_de_milhar
   WRITE (*, *) "O valor do d�gito das centena �          ", centena
   WRITE (*, *) "O valor do d�gito das dezenas �          ", dezena
   WRITE (*, *) "O valor do d�gito das unidades �         ", unidade
   STOP
END PROGRAM separadigitos
