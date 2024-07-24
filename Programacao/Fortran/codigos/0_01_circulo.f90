!
! Programa que calcula a área de um círculo a partir de seu raio
!
PROGRAM circulo                         ! Diretiva de cabeçalho do programa
    IMPLICIT NONE                        ! Nenhuma declaraçao implícita
    ! Declaraçao das variáveis
    REAL :: raio, area
   
    ! Apresentaçao da finalidade do programa
    WRITE (*, *) "Programa que calcula a área de um círculo a partir de seu raio"
    WRITE (*, *)
    ! Entrada de dados pelo teclado
    WRITE (*, *) "Informe o raio do circulo para calculo da area:"
    READ (*, *) raio
    ! Cálculo da área do círculo
    area = 3.14159 * raio ** 2
    ! Saída do resultado
    WRITE (*, *) "A area do circulo de raio ", raio, " eh ", area
    STOP                                 ! Comando de parada da execuçao do programa
END PROGRAM circulo                     ! Diretiva de fim de programa

   