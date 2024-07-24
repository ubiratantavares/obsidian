program projeto0038
	integer :: maisMultas, cart, numMultas, maiorInfrator, i
	real :: totalArrecadado, valor, somaMotorista
    logical :: acabou

    maisMultas = 0
    totalArrecadado = 0.
    acabou = .false.

    do while (.not. acabou)
		somaMotorista = 0.	
      	print *, "Digite o numero da carteira do motorista: ",
        read *, cart
        if (cart == 0) then
			acabou = .true.
        else 
          	print *, "Digite o numero de multas: "
            read *, numMultas
            do i = 1, numMultas
				print *, "Digite o valor da multa: "
                read *, valor
                somaMotorista = somaMotorista + valor
            end do
            print *, ""
            print *, "Valor total das multas: " , somaMotorista
            if (numMultas > maisMultas) then
				maisMultas = numMultas
                maiorInfrator = cart
            end if
        end if
        totalArrecadado = totalArrecadado + somaMotorista
        print *, ""
    end do        
    print *, "Total arrecadado: ", totalArrecadado
    print *, "Maior infrator: ", maiorInfrator
end program projeto0038