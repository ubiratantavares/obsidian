program projeto0022
 	integer :: L1, L2, C
    real:: F
	print *, "Digite o limite inferior: "
    read *, L1
    print *, "Digite o limite superior: "
    read *, L2
	print *, "Temp Celsius-Fahrenheit"
    do C = L1, L2
    	F = 1.8 * C + 32.    
		print *, " ", C, "  ", F
    end do	
end program projeto0022