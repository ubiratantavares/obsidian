!
! Programa para receber um inteiro de um dígito e mostrá-lo por extenso
!
PROGRAM extenso
    IMPLICIT NONE
    INTEGER :: digito
   
    WRITE (*, *) "Programa que mostra por extenso o valor de um digito:"
    WRITE (*, *)
    WRITE (*, *) "Informe o digito inteiro: "
    READ (*, *) digito
    IF (digito == 0) THEN
        WRITE (*, *) "Zero"
    ELSE IF (digito == 1) THEN
        WRITE (*, *) "Um"
    ELSE IF (digito == 2) THEN
        WRITE (*, *) "Dois"
    ELSE IF (digito == 3) THEN
        WRITE (*, *) "Treis"
    ELSE IF (digito == 4) THEN
        WRITE (*, *) "Quatro"
    ELSE IF (digito == 5) THEN
        WRITE (*, *) "Cinco"
    ELSE IF (digito == 6) THEN
        WRITE (*, *) "Seis"
    ELSE IF (digito == 7) THEN
         WRITE (*, *) "Sete"
    ELSE IF (digito == 8) THEN
        WRITE (*, *) "Oito"
    ELSE IF (digito == 9) THEN
        WRITE (*, *) "Nove"
    ELSE
        WRITE (*, *) "Digito Inválido!"
    END IF
    STOP
END PROGRAM extenso

