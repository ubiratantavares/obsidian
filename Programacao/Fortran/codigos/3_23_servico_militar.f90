!
! Programa que a partir do sexo e da idade de uma pessoa, a indica para o serviço
! militar (idade = 17 e sexo = M)
! ou
!
PROGRAM alistamento_militar
   IMPLICIT NONE
   CHARACTER (LEN = 1) :: sexo
   INTEGER :: idade
   
   WRITE (*, *) "Informe o sexo e a idade da pessoa: "
   READ (*, *) sexo, idade
   IF ((sexo == "M" .OR. sexo == "m") .AND. idade == 17) THEN
      WRITE (*, *) "Aliste-se no servico militar!"
   END IF
   STOP
END PROGRAM alistamento_militar

