!
! Programa que calcula a m�dia de quatro notas para um aluno
!
PROGRAM media4
    IMPLICIT NONE
    ! Declara��o das vari�veis
    REAL :: nota1, nota2, nota3, nota4, media
   
    ! Apresenta��o da finalidade do programa
    WRITE (*, *) "Programa que calcula a m�dia de quatro notas para um aluno"
    WRITE (*, *)
    ! Obten��o das notas
    WRITE (*, *) "Informe as quatro notas do aluno: "
    READ (*, *) nota1, nota2, nota3, nota4
    ! C�lculo da m�dia
    media = (nota1 + nota2 + nota3 + nota4) / 4
    ! Apresenta��o do resultado
    WRITE (*, *) "Media calculada =  ", media
    STOP
END PROGRAM media4
  