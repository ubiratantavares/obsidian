!
! Programa que calcula a soma dos fatoriais de dois números
! usando uma função para o fatorial e outra para soma
!
! Programa principal
PROGRAM soma_2_fatoriais
      IMPLICIT NONE
    ! Declaração das variáveis do programa
    INTEGER :: valor1, valor2, fatorial, soma2
 
    ! Apresentação
    WRITE (*, *) "Mostra a soma do fatorial de dois números:"
    WRITE (*, *)
    ! Leitura dos dois inteiros
    WRITE (*, *) "Informe os dois inteiros:"
    READ (*, *) valor1, valor2
    WRITE (*, *)
    ! Chamada dupla da função fatorial e apresentação da soma
    WRITE (*, *) "A soma dos fatoriais dos dois números eh",&
                 & soma2(fatorial(valor1), fatorial(valor2))
    STOP
END PROGRAM soma_2_fatoriais
!
! Função que calcula o fatorial de um número
!
! Subprograma função
FUNCTION fatorial(numero)
      IMPLICIT NONE
    ! Declarações do retorno, do parâmetro e variável da função
    INTEGER :: numero, fatorial, fator
 
    ! Cálculo do fatorial
    fatorial = 1
    DO fator = numero, 1, -1
            fatorial = fatorial * fator
    END DO
    ! Encerramento da função com retorno do resultado pelo nome
    ! da função
    RETURN
END FUNCTION fatorial
!
! Função que calcula a soma de dois números
!
! Subprograma função
FUNCTION soma2(numero1, numero2)
      IMPLICIT NONE
    ! Declarações do retorno, dos parâmetros da função
    INTEGER :: soma2, numero1, numero2
 
    ! Cálculo da soma dos dois números
    soma2 = numero1 + numero2
    ! Encerramento da função com retorno do resultado pelo nome
    ! da função
    RETURN
END FUNCTION soma2
