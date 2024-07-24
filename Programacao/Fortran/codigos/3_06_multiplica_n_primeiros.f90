!
! Multiplica os N primeiros inteiros positivos - equivale ao cálculo do fatorial de N
!
PROGRAM multiplica_n_primeiros
    IMPLICIT NONE
    INTEGER :: n, produto, inteiro

    ! Apresentação da finalidade do programa
    WRITE (*, *) "Produto os N primeiros inteiros positivos - equivale ao cálculo do fatorial de N:"
    WRITE (*, *)
    ! Leitura do valor de N
    WRITE (*, *) "Informe o valor de N (quantidade dos primeiros&
                & positivos a multiplicar): "
    READ (*, *) n
    produto = 1 ! Tem que ter um valor inicial para multiplicar na primeira vez
    DO inteiro = 1, n, 1
        produto = produto * inteiro  ! Formaçao do produto
    END DO
    ! Após todas as multiplicações serem realizadas, mostra o produto
    WRITE (*, *) "A multiplicação dos N primeiros positivos = ", produto
    STOP
END PROGRAM multiplica_n_primeiros
