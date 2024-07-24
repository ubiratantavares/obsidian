!
! Demonstra a concatenação de cadeias de caracteres
!
PROGRAM concatena
   	IMPLICIT NONE
    CHARACTER :: cadeia*30, parte*4

	! Apresentação da finalidade do programa
    WRITE (*, *) "Demonstra os efeitos do operador de concatenaçãoo de cadeias de caracteres:"
    WRITE (*, *)
	! Inicialização da cadeia parte
    parte = "João"
    ! Concatenação de vária cadeias inicializando a cadeia cadeia
    cadeia = parte // " " // "Costa"
    ! Apresentação do resultado da concatenação
    WRITE (*, *) cadeia
    STOP
END PROGRAM concatena
