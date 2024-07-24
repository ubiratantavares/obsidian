!
! Programa para calcular a m�dia aritm�tica de 4 notas para v�rios alunos e
! parar quando aparecer uma nota negativa
!
PROGRAM mediavarios2
    IMPLICIT NONE
    ! Declara��o das vari�veis
    REAL :: nota1, nota2, nota3, nota4, media

    ! Apresenta��o da finalidade do programa
    WRITE (*, *) "Programa para calcular a m�dia aritm�tica de 4 notas para v�rios alunos e"
    WRITE (*, *) "parar quando aparecer uma nota negativa"
    WRITE (*, *) 
    ! Obten��o das notas para o primeiro aluno
    WRITE (*, *) "Informe as quatro notas do aluno: "
    READ (*, *) nota1, nota2, nota3, nota4
    DO WHILE ((nota1 >= 0) .AND. (nota2 >= 0) .AND. (nota3 >= 0) .AND. (nota4 >= 0))
        ! C�lculo da m�dia
        media = (nota1 + nota2 + nota3 + nota4) / 4
        ! Apresenta��o do resultado para o aluno
        WRITE (*, *) "Media calculada =  ", media
        ! Obten��o das notas para os demais alunos
        WRITE (*, *)
        WRITE (*, *) "Informe as quatro notas do aluno: "
        READ (*, *) nota1, nota2, nota3, nota4
    END DO
    STOP
END PROGRAM mediavarios2
