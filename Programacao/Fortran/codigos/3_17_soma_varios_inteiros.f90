!
! Soma varios inteiros menores ou iguais a 10000 (10 ** 4).
! O programa pára quando encontra um intero maior que 10000.
!
PROGRAM soma_varios_inteiros
    IMPLICIT NONE
    INTEGER :: inteiro, total

    WRITE (*, *) "Soma varios inteiros menores ou iguais a 10000 (10 ** 4): "
    WRITE (*, *)
    total = 0  ! Tem que existir um valor em total para a primeira soma
    WRITE (*, *) "Informe um inteiro a ser somado: "
    READ (*, *) inteiro  ! Leitura do primeiro inteiro a somar - tem que ter um valor para o primeiro teste
    DO WHILE (inteiro <= 10000)
        total = total + inteiro
        WRITE (*, *) "Informe um inteiro a ser somado: "
        READ (*, *) inteiro  ! Leitura do demais inteiros a somar
    END DO
    ! Apresentação do resultado após todas as somas
    WRITE (*, *) "A soma dos inteiros lidos = ", total
    STOP
END PROGRAM soma_varios_inteiros
