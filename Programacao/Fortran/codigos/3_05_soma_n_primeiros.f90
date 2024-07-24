!
! Soma os N primeiros inteiros positivos
!
PROGRAM soma_n_primeiros
    IMPLICIT NONE
    INTEGER :: n, inteiro, total

    ! Apresenta��o da finalidade do programa
    WRITE (*, *) "Soma os N primeiros inteiros positivos: "
    WRITE (*, *)
    ! Leitura do valor de N
    WRITE (*, *) "Informe o valor de N (quantidade dos primeiros&
                & positivos a somar): "
    READ (*, *) n
    total = 0  ! Tem que ter um valor inicial para somar na primeira vez
    DO inteiro = 1, n, 1  !  Neste caso, n = n�mero de repeti��es do DO
        total = total + inteiro  ! Cada valor da vari�vel de controle � somado ao total
    END DO
    ! Ap�s todas as somas serem realizadas, mostra o total
    WRITE (*, *) "A soma dos N primeiros positivos = ", total
    STOP
END PROGRAM soma_n_primeiros


