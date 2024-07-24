program projeto0023
 	integer :: num1, num2, i, soma = 0
	print *, "Entre com o numero 1: "
    read *, num1
    print *, "Entre com o numero 2: "
    read *, num2
    do i = 1, num1
    	soma = soma + num2    
    end do	
	print *, num1, " x ", num2, " = ", soma
end program projeto0023