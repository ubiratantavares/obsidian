!
! Soma os N primeiros inteiros positivos
!
PROGRAM soma_n_primeiros
    IMPLICIT NONE
    INTEGER :: n, inteiro, total

    ! Apresentação da finalidade do programa
    WRITE (*, *) "Soma os N primeiros inteiros positivos: "
    WRITE (*, *)
    ! Leitura do valor de N
    WRITE (*, *) "Informe o valor de N (quantidade dos primeiros&
                & positivos a somar): "
    READ (*, *) n
    total = 0  ! Tem que ter um valor inicial para somar na primeira vez
    DO inteiro = 1, n, 1  !  Neste caso, n = número de repetições do DO
        total = total + inteiro  ! Cada valor da variável de controle é somado ao total
    END DO
    ! Após todas as somas serem realizadas, mostra o total
    WRITE (*, *) "A soma dos N primeiros positivos = ", total
    STOP
END PROGRAM soma_n_primeiros


