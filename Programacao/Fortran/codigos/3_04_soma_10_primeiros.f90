!
! Soma os dez primeiros inteiros positivos
!
PROGRAM soma_10_primeiros
    IMPLICIT NONE
    INTEGER :: inteiro, total

    ! Apresenta��o da finalidade do programa
    WRITE (*, *) "Soma os dez primeiros inteiros positivos: "
    WRITE (*, *)
    total = 0  ! Tem que ter um valor inicial para somar na primeira vez
    DO inteiro = 1, 10, 1  ! A vari�vel de controle gera os 10 primeiros inteiros positivos
        total = total + inteiro  ! Cada valor da vari�vel de controle � somado ao total
    END DO
    ! Ap�s todas as somas serem realizadas, mostra o total
    WRITE (*, *) "A soma dos 10 primeiros positivos = ", total
    STOP
END PROGRAM soma_10_primeiros
