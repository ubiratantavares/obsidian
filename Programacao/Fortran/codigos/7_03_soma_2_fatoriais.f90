!
! Programa que calcula a soma dos fatoriais de dois n�meros
! usando uma fun��o para o fatorial e outra para soma
!
! Programa principal
PROGRAM soma_2_fatoriais
      IMPLICIT NONE
    ! Declara��o das vari�veis do programa
    INTEGER :: valor1, valor2, fatorial, soma2
 
    ! Apresenta��o
    WRITE (*, *) "Mostra a soma do fatorial de dois n�meros:"
    WRITE (*, *)
    ! Leitura dos dois inteiros
    WRITE (*, *) "Informe os dois inteiros:"
    READ (*, *) valor1, valor2
    WRITE (*, *)
    ! Chamada dupla da fun��o fatorial e apresenta��o da soma
    WRITE (*, *) "A soma dos fatoriais dos dois n�meros eh",&
                 & soma2(fatorial(valor1), fatorial(valor2))
    STOP
END PROGRAM soma_2_fatoriais
!
! Fun��o que calcula o fatorial de um n�mero
!
! Subprograma fun��o
FUNCTION fatorial(numero)
      IMPLICIT NONE
    ! Declara��es do retorno, do par�metro e vari�vel da fun��o
    INTEGER :: numero, fatorial, fator
 
    ! C�lculo do fatorial
    fatorial = 1
    DO fator = numero, 1, -1
            fatorial = fatorial * fator
    END DO
    ! Encerramento da fun��o com retorno do resultado pelo nome
    ! da fun��o
    RETURN
END FUNCTION fatorial
!
! Fun��o que calcula a soma de dois n�meros
!
! Subprograma fun��o
FUNCTION soma2(numero1, numero2)
      IMPLICIT NONE
    ! Declara��es do retorno, dos par�metros da fun��o
    INTEGER :: soma2, numero1, numero2
 
    ! C�lculo da soma dos dois n�meros
    soma2 = numero1 + numero2
    ! Encerramento da fun��o com retorno do resultado pelo nome
    ! da fun��o
    RETURN
END FUNCTION soma2
