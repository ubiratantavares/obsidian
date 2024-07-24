!
! Programa para calcular a média aritmética de 4 notas para vários alunos,
! perguntando para cada aluno se existe outra média a calcular
!
PROGRAM mediavarios1
    IMPLICIT NONE
    ! Declaração das variáveis
    CHARACTER (LEN=1) :: resposta
    REAL :: nota1, nota2, nota3, nota4, media

    ! Apresentação da finalidade do programa
    WRITE (*, *) "Programa para calcular a média aritmética de 4 notas para vários alunos,"
    WRITE (*, *) "perguntando para cada aluno se existe outra média a calcular"
    WRITE (*, *)
    ! Inicialização de resposta
    resposta = "S"
    DO WHILE ((resposta == "S") .OR. (resposta == "s")) 
        ! Obtenção das notas
        WRITE (*, *) "Informe as quatro notas do aluno: "
        READ (*, *) nota1, nota2, nota3, nota4
        ! Cálculo da média
        media = (nota1 + nota2 + nota3 + nota4) / 4
        ! Apresentação do resultado para o aluno
        WRITE (*, *) "Media calculada =  ", media
        WRITE (*, *)
        WRITE (*, *) "Deseja calcular outra média de aluno (S/N)? "
        READ (*, *) resposta
    END DO
    STOP
END PROGRAM mediavarios1
