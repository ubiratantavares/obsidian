!
! Programa para calcular a m�dia aritm�tica de 4 notas para 50 alunos
!
PROGRAM media50
    IMPLICIT NONE
    ! Declara��o das vari�veis
    REAL :: nota1, nota2, nota3, nota4, media
    INTEGER :: numAlunos

    ! Apresenta��o da finalidade do programa
    WRITE (*, *) "Programa para calcular a m�dia aritm�tica de 4 notas para 50 alunos"
    WRITE (*, *) 
    numAlunos = 1  ! Inicializa��o do contador
    DO WHILE (numAlunos <= 50) ! Teste do limite do contador
        ! Obten��o das notas para os alunos
        WRITE (*, *) "Informe as quatro notas do aluno: "
        READ (*, *) nota1, nota2, nota3, nota4
        ! C�lculo da m�dia
        media = (nota1 + nota2 + nota3 + nota4) / 4
        ! Apresenta��o do resultado para o aluno
        WRITE (*, *) "Media calculada =  ", media
        WRITE (*, *)
        numAlunos = numAlunos + 1 ! Atualiza��o do contador
    END DO
    STOP
END PROGRAM media50
