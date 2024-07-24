!
! Variar o parâmetros do DO e observar o comportamento decrescente
!
PROGRAM sequencia_decrescente
    IMPLICIT NONE
    INTEGER :: inteiro
    
    WRITE (*, *) "Escreve uma sequencia de inteiros em ordem decrescente:"
    WRITE (*, *)
    DO inteiro = 30, 5, -3
         WRITE (*, *) inteiro
    END DO
    STOP
END PROGRAM sequencia_decrescente
