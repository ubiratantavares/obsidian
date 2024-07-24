!
! Programa que calcula o IMC de uma pessoa a partir de seus peso e altura
!
PROGRAM calculaimc                       ! Diretiva de cabe�alho do programa
    IMPLICIT NONE                        ! Nenhuma declara�ao impl�cita
    ! Declara�ao das vari�veis
    REAL :: peso, altura, imc
   
    ! Apresenta�ao da finalidade do programa
    WRITE (*, *) "Programa que calcula o IMC de uma pessoa a partir de suus peso e altura"
    WRITE (*, *)
    ! Entrada de dados pelo teclado
    WRITE (*, *) "Informe o peso e altura da pessoa: "
    READ (*, *) peso, altura
    ! C�lculo da �rea do c�rculo
    imc = peso / altura ** 2
    ! Sa�da do resultado
    WRITE (*, *) "IMC da pessoa = ", imc
    STOP                                 ! Comando de parada da execu�ao do programa
END PROGRAM calculaimc                   ! Diretiva de fim de programa

   