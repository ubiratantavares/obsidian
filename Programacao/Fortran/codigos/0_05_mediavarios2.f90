!
! Programa para calcular a média aritmética de 4 notas para vários alunos e
! parar quando aparecer uma nota negativa
!
PROGRAM mediavarios2
    IMPLICIT NONE
    ! Declaração das variáveis
    REAL :: nota1, nota2, nota3, nota4, media

    ! Apresentação da finalidade do programa
    WRITE (*, *) "Programa para calcular a média aritmética de 4 notas para vários alunos e"
    WRITE (*, *) "parar quando aparecer uma nota negativa"
    WRITE (*, *) 
    ! Obtenção das notas para o primeiro aluno
    WRITE (*, *) "Informe as quatro notas do aluno: "
    READ (*, *) nota1, nota2, nota3, nota4
    DO WHILE ((nota1 >= 0) .AND. (nota2 >= 0) .AND. (nota3 >= 0) .AND. (nota4 >= 0))
        ! Cálculo da média
        media = (nota1 + nota2 + nota3 + nota4) / 4
        ! Apresentação do resultado para o aluno
        WRITE (*, *) "Media calculada =  ", media
        ! Obtenção das notas para os demais alunos
        WRITE (*, *)
        WRITE (*, *) "Informe as quatro notas do aluno: "
        READ (*, *) nota1, nota2, nota3, nota4
    END DO
    STOP
END PROGRAM mediavarios2
