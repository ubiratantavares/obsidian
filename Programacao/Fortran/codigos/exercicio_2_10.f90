!
! Exercício 2.10
!
! Programa para calcular para um aluno, pelo nosso método de avaliação (ver na página WEB):
!          - a média parcial
!          - a nota mínima para a final
!          - a média final
! a partir da:
!          - média dos mini-testes (30%)
!          - média das listas de exercícios (20%)
!          - média das provas (50%)
!          - nota da prova final
!
PROGRAM avaliacao_ICC
    IMPLICIT NONE
    ! Declaração das variáveis
    REAL :: minitestes, exercicios, provas, final, media_parcial, falta_final, media_final
   
    ! Apresentação da finalidade do programa
    WRITE (*, *) "Programa que a avaliaçao do semestre de um aluno de ICC:"
    WRITE (*, *)
    ! Obtenção das notas
    WRITE (*, *) "Informe a média dos minitestes do aluno: "
    READ (*, *) minitestes
    WRITE (*, *) "Informe a média das listas de exercícios do aluno: "
    READ (*, *) exercicios
    WRITE (*, *) "Informe a média das provas do aluno: "
    READ (*, *) provas
    WRITE (*, *) "Informe a nota da prova final do aluno: "
    READ (*, *) final
    ! Cálculo da média parcial
    media_parcial = 0.3 * minitestes + 0.2 * exercicios + 0.5 * provas
    ! Cálculo do valor mínimo para passar na prova final
    falta_final = (50 - 6 * media_parcial) / 4
    ! Cálculo da média final
    media_final = media_parcial * 0.6 + final * 0.4
    ! Apresentação do resultado
    WRITE (*, *) "Media dos minitestes =  ", minitestes
    WRITE (*, *)
    WRITE (*, *) "Media das listas de exercícios =  ", exercicios
    WRITE (*, *)
    WRITE (*, *) "Media das provas =  ", provas
    WRITE (*, *)
    WRITE (*, *) "Media Parcial =  ", media_parcial
    WRITE (*, *)
    WRITE (*, *) "Nota mínima para passar na final =  ", falta_final
    WRITE (*, *)
    WRITE (*, *) "Nota da prova final =  ", final
    WRITE (*, *)
    WRITE (*, *) "Média Final =  ", media_final
    STOP
END PROGRAM avaliacao_ICC
  