!
! Programa que calcula a média de quatro notas para um aluno e emite mensagem
! informando se ele foi ou não aprovado
!
PROGRAM aprovado
    IMPLICIT NONE
    ! Declaração das variáveis
    REAL :: nota1, nota2, nota3, nota4, media
   
    ! Apresentação da finalidade do programa
    WRITE (*, *) "Verifica se uma aluno foi ou não aprovado a a partir de 4 notas:"
    WRITE (*, *)
    ! Obtenção das notas
    WRITE (*, *) "Informe as quatro notas do aluno: "
    READ (*, *) nota1, nota2, nota3, nota4
    ! Cálculo da média
    media = (nota1 + nota2 + nota3 + nota4) / 4
    ! Apresentação do resultado
    IF (media >= 7) THEN
        WRITE (*, *) "O aluno foi aprovado com a média ", media
    ELSE
        WRITE (*, *) "A média do aluno foi ", media, " e o aluno não foi aprovado!"
    END IF
    STOP
END PROGRAM aprovado
  