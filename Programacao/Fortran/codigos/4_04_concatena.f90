!
! Demonstra a concatena��o de cadeias de caracteres
!
PROGRAM concatena
   	IMPLICIT NONE
    CHARACTER :: cadeia*30, parte*4

	! Apresenta��o da finalidade do programa
    WRITE (*, *) "Demonstra os efeitos do operador de concatena��oo de cadeias de caracteres:"
    WRITE (*, *)
	! Inicializa��o da cadeia parte
    parte = "Jo�o"
    ! Concatena��o de v�ria cadeias inicializando a cadeia cadeia
    cadeia = parte // " " // "Costa"
    ! Apresenta��o do resultado da concatena��o
    WRITE (*, *) cadeia
    STOP
END PROGRAM concatena
