!
! Demonstra o funcionamento do comando de repeti�ao DO e o comportamento da
! vari�vel de controle associada a ele
!
PROGRAM testa_DO
    IMPLICIT NONE
    INTEGER :: variavel_de_controle, inicio, fim, incremento

    ! Apresenta��o da finalidade do programa
    WRITE (*, *) "Demonstra o funcionamento do comando de repeti�ao DO e o comportamento da"
    WRITE (*, *) " vari�vel de controle associada a ele:"
    WRITE (*, *)
    ! Solicita��o dos valores para a vari�vel de controle do DO
    WRITE (*, *) "Informe o valor inicial da variavel de controle: "
    READ (*, *) inicio ! Valor inicial para a vari�vel de controle
    WRITE (*, *) "Informe o valor limite da variavel de controle: "
    READ (*, *) fim ! Valor final para a vari�vel de controle
    WRITE (*, *) "Informe o valor do incremento da variavel de controle: "
    READ (*, *) incremento ! Valor de incremento para a vari�vel de controle
    ! Funcionamento do DO:
    ! Na primeira vez: a variavel de controle recebe o valor de inicio
    ! Em todas as veses: verifica se a vari�vel de controle n�o atingio ou superou o valor de fim
    DO variavel_de_controle = inicio, fim, incremento
        WRITE(*,*) "Valor da variavel de controle durante a repeti��o = ", variavel_de_controle
    END DO  ! A cada retorno: soma o valor de incremento a vari�vel de controle
    WRITE(*,*) "Valor da variavel de controle apos o DO = ", variavel_de_controle
    STOP
END PROGRAM testa_DO
