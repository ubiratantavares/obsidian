!
! Soma os dez primeiros inteiros positivos
!
PROGRAM soma_10_primeiros
    IMPLICIT NONE
    INTEGER :: inteiro, total

    ! Apresentação da finalidade do programa
    WRITE (*, *) "Soma os dez primeiros inteiros positivos: "
    WRITE (*, *)
    total = 0  ! Tem que ter um valor inicial para somar na primeira vez
    DO inteiro = 1, 10, 1  ! A variável de controle gera os 10 primeiros inteiros positivos
        total = total + inteiro  ! Cada valor da variável de controle é somado ao total
    END DO
    ! Após todas as somas serem realizadas, mostra o total
    WRITE (*, *) "A soma dos 10 primeiros positivos = ", total
    STOP
END PROGRAM soma_10_primeiros
