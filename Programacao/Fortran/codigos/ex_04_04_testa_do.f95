!
! Variar os parâmetros do DO e observar o comportamento das repetições
!
PROGRAM testa_do
    IMPLICIT NONE
    INTEGER :: contador
    
    WRITE (*, *) "Variar os parametros do DO e observar o comportamento das repeticoes:"
    WRITE (*, *)
    DO contador = 5, 10, 2
        WRITE (*, *) "Valor da variavel contador dentro do DO eh", contador
    END DO
    WRITE (*, *)
    WRITE (*, *) "Valor da variavel contador apos o Do ser encerrado eh", contador
    STOP
END PROGRAM testa_do
