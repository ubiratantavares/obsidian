!
! Verifica se um n�mero inteiro � par ou �mpar
!
PROGRAM par_impar
    IMPLICIT NONE
    INTEGER :: numero
    
    WRITE (*, *) "Informe o numero a analizar!"
    READ (*, *) numero
    IF (MOD(numero, 2) == 0) THEN
        WRITE (*, *) "O numero lido � par!"
    ELSE
        WRITE (*, *) "O numero lido � impar!"
    END IF
    STOP
END PROGRAM par_impar
