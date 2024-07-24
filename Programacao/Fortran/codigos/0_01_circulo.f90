!
! Programa que calcula a �rea de um c�rculo a partir de seu raio
!
PROGRAM circulo                         ! Diretiva de cabe�alho do programa
    IMPLICIT NONE                        ! Nenhuma declara�ao impl�cita
    ! Declara�ao das vari�veis
    REAL :: raio, area
   
    ! Apresenta�ao da finalidade do programa
    WRITE (*, *) "Programa que calcula a �rea de um c�rculo a partir de seu raio"
    WRITE (*, *)
    ! Entrada de dados pelo teclado
    WRITE (*, *) "Informe o raio do circulo para calculo da area:"
    READ (*, *) raio
    ! C�lculo da �rea do c�rculo
    area = 3.14159 * raio ** 2
    ! Sa�da do resultado
    WRITE (*, *) "A area do circulo de raio ", raio, " eh ", area
    STOP                                 ! Comando de parada da execu�ao do programa
END PROGRAM circulo                     ! Diretiva de fim de programa

   