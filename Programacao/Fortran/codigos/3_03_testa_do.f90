!
! Demonstra o funcionamento do comando de repetiçao DO e o comportamento da
! variável de controle associada a ele
!
PROGRAM testa_DO
    IMPLICIT NONE
    INTEGER :: variavel_de_controle, inicio, fim, incremento

    ! Apresentação da finalidade do programa
    WRITE (*, *) "Demonstra o funcionamento do comando de repetiçao DO e o comportamento da"
    WRITE (*, *) " variável de controle associada a ele:"
    WRITE (*, *)
    ! Solicitação dos valores para a variável de controle do DO
    WRITE (*, *) "Informe o valor inicial da variavel de controle: "
    READ (*, *) inicio ! Valor inicial para a variável de controle
    WRITE (*, *) "Informe o valor limite da variavel de controle: "
    READ (*, *) fim ! Valor final para a variável de controle
    WRITE (*, *) "Informe o valor do incremento da variavel de controle: "
    READ (*, *) incremento ! Valor de incremento para a variável de controle
    ! Funcionamento do DO:
    ! Na primeira vez: a variavel de controle recebe o valor de inicio
    ! Em todas as veses: verifica se a variável de controle não atingio ou superou o valor de fim
    DO variavel_de_controle = inicio, fim, incremento
        WRITE(*,*) "Valor da variavel de controle durante a repetição = ", variavel_de_controle
    END DO  ! A cada retorno: soma o valor de incremento a variável de controle
    WRITE(*,*) "Valor da variavel de controle apos o DO = ", variavel_de_controle
    STOP
END PROGRAM testa_DO
