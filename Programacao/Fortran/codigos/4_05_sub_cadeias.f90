!
! Demonstra a extra��o de sub-cadeias de uma cadeia de caracteres
!
PROGRAM sub_cadeias
   	IMPLICIT NONE
    CHARACTER :: cadeia*40, parte*4

	! Apresenta��o da finalidade do programa
    WRITE (*, *) "Demonstra��o da extra��o de sub-cadeias de uma cadeia de caracteres:"
    WRITE (*, *)
	! Inicializa��o da cadeia
    cadeia = "Universidade Federal de Campina Grande"
    ! Extra��o e apresenta��o de sub-cadeias
    WRITE (*, *) cadeia(14:31) ! Mostra do caractere de posi��o 14 da cadeia at� o caractere de posi��o 31
    WRITE (*, *) cadeia(:12) ! Mostra do in�cio da cadeia at� o caractere de posi��o 12
    WRITE (*, *) cadeia(25:) ! Mostra do caractere de posi��o 25 da cadeia at� o final
    WRITE (*, *) "(" // cadeia(14:14) // ")" ! Mostra entre par�nteses o caractere de posi��o 14 da cadeia
    STOP
END PROGRAM sub_cadeias
