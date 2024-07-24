!
! Exerc�cio 2.10
!
! Programa para calcular para um aluno, pelo nosso m�todo de avalia��o (ver na p�gina WEB):
!          - a m�dia parcial
!          - a nota m�nima para a final
!          - a m�dia final
! a partir da:
!          - m�dia dos mini-testes (30%)
!          - m�dia das listas de exerc�cios (20%)
!          - m�dia das provas (50%)
!          - nota da prova final
!
PROGRAM avaliacao_ICC
    IMPLICIT NONE
    ! Declara��o das vari�veis
    REAL :: minitestes, exercicios, provas, final, media_parcial, falta_final, media_final
   
    ! Apresenta��o da finalidade do programa
    WRITE (*, *) "Programa que a avalia�ao do semestre de um aluno de ICC:"
    WRITE (*, *)
    ! Obten��o das notas
    WRITE (*, *) "Informe a m�dia dos minitestes do aluno: "
    READ (*, *) minitestes
    WRITE (*, *) "Informe a m�dia das listas de exerc�cios do aluno: "
    READ (*, *) exercicios
    WRITE (*, *) "Informe a m�dia das provas do aluno: "
    READ (*, *) provas
    WRITE (*, *) "Informe a nota da prova final do aluno: "
    READ (*, *) final
    ! C�lculo da m�dia parcial
    media_parcial = 0.3 * minitestes + 0.2 * exercicios + 0.5 * provas
    ! C�lculo do valor m�nimo para passar na prova final
    falta_final = (50 - 6 * media_parcial) / 4
    ! C�lculo da m�dia final
    media_final = media_parcial * 0.6 + final * 0.4
    ! Apresenta��o do resultado
    WRITE (*, *) "Media dos minitestes =  ", minitestes
    WRITE (*, *)
    WRITE (*, *) "Media das listas de exerc�cios =  ", exercicios
    WRITE (*, *)
    WRITE (*, *) "Media das provas =  ", provas
    WRITE (*, *)
    WRITE (*, *) "Media Parcial =  ", media_parcial
    WRITE (*, *)
    WRITE (*, *) "Nota m�nima para passar na final =  ", falta_final
    WRITE (*, *)
    WRITE (*, *) "Nota da prova final =  ", final
    WRITE (*, *)
    WRITE (*, *) "M�dia Final =  ", media_final
    STOP
END PROGRAM avaliacao_ICC
  