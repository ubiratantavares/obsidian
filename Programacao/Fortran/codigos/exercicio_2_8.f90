!
! Exerc�cio 2.8
!
!
! Programa para calcular o peso  ideal de uma pesso a prtir de sua altura,
! para os casos da pessoa ser homem ou mulher, usando as f�rmulas:
!         Peso ideal para homem = 72.7 x altura - 58
!         Peso ideal para mulher = 62.1 x altura - 44.7
!
PROGRAM peso_ideal
    IMPLICIT NONE
    REAL :: altura, peso_ideal_homem, peso_ideal_mulher
    
    ! Apresenta��o da finalidade do programa
    WRITE (*, *) "Programa de c�lculo de peso ideal para um homem ou uma mulher:"
    WRITE (*, *)
    ! Solicita��o da altura
    WRITE (*, *) "Informe a altura da pessoa: "
    READ (*, *) altura
    ! C�lculo do peso ideal, para o caso de ser homem
    peso_ideal_homem = 72.7 * altura - 58
    ! C�lculo do peso ideal, para o caso de ser mulher
    peso_ideal_mulher = 62.1 * altura - 44.7
    ! Apresenta��o dos resultados
    WRITE (*, *) "Altura da pessoa = ", altura
    WRITE (*, *)
    WRITE (*, *) "Se for homem, o peso ideal  = ", peso_ideal_homem
    WRITE (*, *)
    WRITE (*, *) "Se for mulher, o peso ideal = ", peso_ideal_mulher
    STOP
END PROGRAM peso_ideal
