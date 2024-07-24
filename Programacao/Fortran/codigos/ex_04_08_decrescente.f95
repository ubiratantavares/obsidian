!
! Escrever os inteiros de 10 a 30 em ordem decrescente
!
PROGRAM decrescente
    IMPLICIT NONE
    INTEGER :: inteiro
    
    WRITE (*, *) "Escreve os inteiros de 10 a 30 em ordem decrescente:"
    WRITE (*, *)
    DO inteiro = 30, 10, -1
         WRITE (*, *) inteiro
    END DO
    STOP
END PROGRAM decrescente
