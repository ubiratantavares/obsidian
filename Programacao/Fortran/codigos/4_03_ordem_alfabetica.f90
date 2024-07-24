!
! Programa que lê 10 nomes e mostra a último nome em ordem alfabética
!
PROGRAM ordem_alfabetica
    IMPLICIT NONE
    CHARACTER (LEN = 15) :: nome, ultimo
    INTEGER :: vezes
 
	! Apresentação da finalidade do programa
    WRITE(*, *) "Lê 10 nomes e mostra o último nome em&
                & ordem alfabética"
    WRITE(*, *)
    ! Preenche ultimo com espaços em branco
    ultimo = ""
    ! Solicitação da digitação dos nomes
    WRITE(*, *) "Informe os 10 nomes: "
    DO vezes = 1, 10, 1 ! Repete 10 vezes
        READ (*, *) nome
        ! Testa se encontrou um nome maior em ordem alfabetica
        IF (nome .GT. ultimo) THEN
             ultimo = nome ! Armazena nome como o maior em ordem alfabética
        END IF
    END DO
    ! Apresentação do maior nome em ordem alfabética
    WRITE(*, *)
    WRITE(*, *) "A último nome em ordem alfabética é ", ultimo
    STOP
END PROGRAM ordem_alfabetica