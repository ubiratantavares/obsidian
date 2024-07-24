!
! Programa para calcular o volume de v�rios cilindros. O programa p�ra quando
! encontra uma altura ou raio igual a zero.
!
PROGRAM cilindros
    IMPLICIT NONE
    REAL :: altura, raio, volume
    
    WRITE (*, *) "Calcula o volume de v�rios cilindros: "
    WRITE (*, *)
    WRITE (*, *) "Informe a altura e o raio do cilindro: "
    READ (*, *) altura, raio
    DO WHILE (altura .ne. 0 .AND. raio .ne. 0)
        volume = altura * 3.14 * raio * raio
        WRITE (*, *) "O volume do cilindro de altura = ", altura, " e raio = ", raio, "� igual a ", volume
        WRITE (*, *) "Informe a altura e o raio do cilindro: "
        READ (*, *) altura, raio
    END DO
    STOP
END PROGRAM cilindros
          
           