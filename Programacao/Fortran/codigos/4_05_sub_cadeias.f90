!
! Demonstra a extração de sub-cadeias de uma cadeia de caracteres
!
PROGRAM sub_cadeias
   	IMPLICIT NONE
    CHARACTER :: cadeia*40, parte*4

	! Apresentação da finalidade do programa
    WRITE (*, *) "Demonstração da extração de sub-cadeias de uma cadeia de caracteres:"
    WRITE (*, *)
	! Inicialização da cadeia
    cadeia = "Universidade Federal de Campina Grande"
    ! Extração e apresentação de sub-cadeias
    WRITE (*, *) cadeia(14:31) ! Mostra do caractere de posição 14 da cadeia até o caractere de posição 31
    WRITE (*, *) cadeia(:12) ! Mostra do início da cadeia até o caractere de posição 12
    WRITE (*, *) cadeia(25:) ! Mostra do caractere de posição 25 da cadeia até o final
    WRITE (*, *) "(" // cadeia(14:14) // ")" ! Mostra entre parênteses o caractere de posição 14 da cadeia
    STOP
END PROGRAM sub_cadeias
