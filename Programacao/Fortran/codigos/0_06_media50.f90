!
! Programa para calcular a média aritmética de 4 notas para 50 alunos
!
PROGRAM media50
    IMPLICIT NONE
    ! Declaração das variáveis
    REAL :: nota1, nota2, nota3, nota4, media
    INTEGER :: numAlunos

    ! Apresentação da finalidade do programa
    WRITE (*, *) "Programa para calcular a média aritmética de 4 notas para 50 alunos"
    WRITE (*, *) 
    numAlunos = 1  ! Inicialização do contador
    DO WHILE (numAlunos <= 50) ! Teste do limite do contador
        ! Obtenção das notas para os alunos
        WRITE (*, *) "Informe as quatro notas do aluno: "
        READ (*, *) nota1, nota2, nota3, nota4
        ! Cálculo da média
        media = (nota1 + nota2 + nota3 + nota4) / 4
        ! Apresentação do resultado para o aluno
        WRITE (*, *) "Media calculada =  ", media
        WRITE (*, *)
        numAlunos = numAlunos + 1 ! Atualização do contador
    END DO
    STOP
END PROGRAM media50
