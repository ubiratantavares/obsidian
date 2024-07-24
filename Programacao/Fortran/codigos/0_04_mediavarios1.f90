!
! Programa para calcular a m�dia aritm�tica de 4 notas para v�rios alunos,
! perguntando para cada aluno se existe outra m�dia a calcular
!
PROGRAM mediavarios1
    IMPLICIT NONE
    ! Declara��o das vari�veis
    CHARACTER (LEN=1) :: resposta
    REAL :: nota1, nota2, nota3, nota4, media

    ! Apresenta��o da finalidade do programa
    WRITE (*, *) "Programa para calcular a m�dia aritm�tica de 4 notas para v�rios alunos,"
    WRITE (*, *) "perguntando para cada aluno se existe outra m�dia a calcular"
    WRITE (*, *)
    ! Inicializa��o de resposta
    resposta = "S"
    DO WHILE ((resposta == "S") .OR. (resposta == "s")) 
        ! Obten��o das notas
        WRITE (*, *) "Informe as quatro notas do aluno: "
        READ (*, *) nota1, nota2, nota3, nota4
        ! C�lculo da m�dia
        media = (nota1 + nota2 + nota3 + nota4) / 4
        ! Apresenta��o do resultado para o aluno
        WRITE (*, *) "Media calculada =  ", media
        WRITE (*, *)
        WRITE (*, *) "Deseja calcular outra m�dia de aluno (S/N)? "
        READ (*, *) resposta
    END DO
    STOP
END PROGRAM mediavarios1
