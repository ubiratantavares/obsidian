!
! Programa que l� 10 nomes e mostra a �ltimo nome em ordem alfab�tica
!
PROGRAM ordem_alfabetica
    IMPLICIT NONE
    CHARACTER (LEN = 15) :: nome, ultimo
    INTEGER :: vezes
 
	! Apresenta��o da finalidade do programa
    WRITE(*, *) "L� 10 nomes e mostra o �ltimo nome em&
                & ordem alfab�tica"
    WRITE(*, *)
    ! Preenche ultimo com espa�os em branco
    ultimo = ""
    ! Solicita��o da digita��o dos nomes
    WRITE(*, *) "Informe os 10 nomes: "
    DO vezes = 1, 10, 1 ! Repete 10 vezes
        READ (*, *) nome
        ! Testa se encontrou um nome maior em ordem alfabetica
        IF (nome .GT. ultimo) THEN
             ultimo = nome ! Armazena nome como o maior em ordem alfab�tica
        END IF
    END DO
    ! Apresenta��o do maior nome em ordem alfab�tica
    WRITE(*, *)
    WRITE(*, *) "A �ltimo nome em ordem alfab�tica � ", ultimo
    STOP
END PROGRAM ordem_alfabetica