!
! Programa que calcula o IMC de uma pessoa a partir de seus peso e altura
!
PROGRAM calculaimc                       ! Diretiva de cabeçalho do programa
    IMPLICIT NONE                        ! Nenhuma declaraçao implícita
    ! Declaraçao das variáveis
    REAL :: peso, altura, imc
   
    ! Apresentaçao da finalidade do programa
    WRITE (*, *) "Programa que calcula o IMC de uma pessoa a partir de suus peso e altura"
    WRITE (*, *)
    ! Entrada de dados pelo teclado
    WRITE (*, *) "Informe o peso e altura da pessoa: "
    READ (*, *) peso, altura
    ! Cálculo da área do círculo
    imc = peso / altura ** 2
    ! Saída do resultado
    WRITE (*, *) "IMC da pessoa = ", imc
    STOP                                 ! Comando de parada da execuçao do programa
END PROGRAM calculaimc                   ! Diretiva de fim de programa

   