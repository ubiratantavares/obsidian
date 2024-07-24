!
! Programa que calcula a m�dia de quatro notas para um aluno e emite mensagem
! informando se ele foi ou n�o aprovado
!
PROGRAM aprovado
    IMPLICIT NONE
    ! Declara��o das vari�veis
    REAL :: nota1, nota2, nota3, nota4, media
   
    ! Apresenta��o da finalidade do programa
    WRITE (*, *) "Verifica se uma aluno foi ou n�o aprovado a a partir de 4 notas:"
    WRITE (*, *)
    ! Obten��o das notas
    WRITE (*, *) "Informe as quatro notas do aluno: "
    READ (*, *) nota1, nota2, nota3, nota4
    ! C�lculo da m�dia
    media = (nota1 + nota2 + nota3 + nota4) / 4
    ! Apresenta��o do resultado
    IF (media >= 7) THEN
        WRITE (*, *) "O aluno foi aprovado com a m�dia ", media
    ELSE
        WRITE (*, *) "A m�dia do aluno foi ", media, " e o aluno n�o foi aprovado!"
    END IF
    STOP
END PROGRAM aprovado
  