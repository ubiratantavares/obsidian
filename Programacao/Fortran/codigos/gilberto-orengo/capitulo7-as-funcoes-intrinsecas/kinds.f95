program kinds

! Determinar os tipos de parametos de simples e dupla precisao num dado computador e compilador
	
	implicit none

    ! Escreve na tela os tipos de parametros
    write(*, '(" O KIND para precisao simples eh ", I2)') kind(0.0)
    write(*, '(" O KIND para precisao dupla eh ", I2)') kind(0.0D0)

 end program kinds
    