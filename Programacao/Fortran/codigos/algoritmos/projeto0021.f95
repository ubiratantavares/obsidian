program projeto0021
 	integer :: base, expoente, potencia, i
	print *, "Digite o valor da base: "
    read *, base
    print *, "Digite o valor do expoente: "
    read *, expoente
    potencia = 1
    do i = 1, expoente
		potencia = potencia * base
    end do	
	print *
    print *, "Potencia: ", potencia
end program projeto0021