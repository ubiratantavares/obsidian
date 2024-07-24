!
! Calcula o peso ideal de uma pessoa a partir de seu sexo e altura
!
PROGRAM peso_ideal_pessoa
    IMPLICIT NONE
    CHARACTER (LEN = 1) :: sexo
    REAL :: altura, peso_ideal
 
    ! Apresentação da finalidade do programa
    WRITE (*, *) "Calcula o peso ideal de uma pessoa: "
    WRITE (*, *)
    ! Leitura do valor de N
    WRITE (*, *) "Informe o sexo (M/F) e a altura desta pessoa: "
    READ (*, *) sexo, altura
    IF (sexo == "M" .OR. sexo == "m") THEN
        peso_ideal = 72.7 * altura - 58
    ELSE
        peso_ideal = 62.1 * altura - 44.7
    END IF
    ! mostra o peso ideal calculado
    WRITE(*, *) "O peso ideal desta possoa = ", peso_ideal
    STOP 
END PROGRAM peso_ideal_pessoa
