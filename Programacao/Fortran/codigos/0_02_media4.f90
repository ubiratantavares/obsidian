!
! Programa que calcula a média de quatro notas para um aluno
!
PROGRAM media4
    IMPLICIT NONE
    ! Declaração das variáveis
    REAL :: nota1, nota2, nota3, nota4, media
   
    ! Apresentação da finalidade do programa
    WRITE (*, *) "Programa que calcula a média de quatro notas para um aluno"
    WRITE (*, *)
    ! Obtenção das notas
    WRITE (*, *) "Informe as quatro notas do aluno: "
    READ (*, *) nota1, nota2, nota3, nota4
    ! Cálculo da média
    media = (nota1 + nota2 + nota3 + nota4) / 4
    ! Apresentação do resultado
    WRITE (*, *) "Media calculada =  ", media
    STOP
END PROGRAM media4
  