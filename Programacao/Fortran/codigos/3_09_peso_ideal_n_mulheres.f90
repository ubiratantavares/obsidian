!
! Calcula o peso ideal de N mulheres
!
PROGRAM peso_ideal_n_mulheres
    IMPLICIT NONE
    INTEGER :: n, contador
    REAL :: altura, peso_ideal
 
    ! Apresentação da finalidade do programa
    WRITE (*, *) "Calcula o peso ideal de N mulheres: "
    WRITE (*, *)
    ! Leitura do valor de N
    WRITE (*, *) "Informe o valor de N (quantidade de mulheres): "
    READ (*, *) n
    DO contador = 1, n, 1  ! Repete N vezes
        ! Obtem a altura de uma mulher
        WRITE(*, *) "Qual a altura desta mulher? "
        READ(*, *) altura
        ! Calcula o peso ideal de uma mulher
        peso_ideal = 62.1 * altura - 44.7
        ! mostra o peso ideal calculado
        WRITE(*, *) "O peso ideal desta mulher = ", peso_ideal
    END DO
    STOP  ! Pára após as N repetições
END PROGRAM peso_ideal_n_mulheres
