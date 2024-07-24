program projeto0040
    integer :: ss, os, wa, ffc, bp, diretor
    logical :: acabou
    character :: genero
    character(len=80) :: filme

    ss = 0
    os = 0
    wa = 0
    ffc = 0
    bp = 0
    acabou = .false.
    
    do while (.not. acabou)
		print *, "Genero do Filme"
		print *, ""
        print *, "[A]ventura"
        print *, "[C]omedia"
        print *, "[D]rama"
        print *, ""
        print *, "Escolha o genero: "
        read *, genero
        if ((genero /= "C") .and. (genero /= "D") .and. (genero /= "A")) then
			acabou = .true.
        else
        	print *, ""
            print *, "Titulo do filme: "
            read *, filme
            print *, ""
            print *, "Diretor"
            print *, ""
         	print *, "[1] - Steven Spielberg"
        	print *, "[2] - Oliver Stone"
            print *, "[3] - Woddy Allen"
            print *, "[4] - Francis Ford Copolla"
            print *, "[5] - Brian de Palma"
            print *, ""
            print *, "Escolha o diretor: "
            read *, diretor
            if (genero == "C") then
				if (diretor == 1) then
					ss = ss + 1
                else if (diretor == 2) then
					os = os + 1
                else if (diretor == 3) then
                  	wa = wa + 1
                else if (diretor == 4) then
                  	ffc = ffc + 1
                else if (diretor == 5) then
                	bp = bp + 1  
            	end if
            end if
        end if
        print *, ""        
    end do
    print *, "Quantidade de Comedias por Diretor"
    print *, ""
    print *, "Steven Spielberg: ", ss
    print *, "Oliver Stone: ", os
    print *, "Woddy Allen: ", wa
    print *, "Francis Ford Copolla: ", ffc
    print *, "Brian de Palma: ", bp
end program projeto0040