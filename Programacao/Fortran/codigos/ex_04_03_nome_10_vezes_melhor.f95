!
! Escrever 10 vezes o nome completo na tela do monitor
!
PROGRAM nome_completo_10_vezes_melhor
    IMPLICIT NONE
    INTEGER :: contador
    
    WRITE (*, *) "Escreve 10 vezes o nome completo do aluno:"
    WRITE (*, *)
    DO contador = 1, 10, 1
        WRITE (*, *) "Meu Nome Completo"
    END DO
    STOP
END PROGRAM nome_completo_10_vezes_melhor
