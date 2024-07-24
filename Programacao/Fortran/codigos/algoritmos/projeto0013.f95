program projeto0013
 	real :: salario, imposto
	print *, "Digite o salario: "
	read *, salario
    if (salario <= 500.) then
    	imposto = 0.
    else if (salario > 500. .and. salario <= 1000.) then
      	imposto = (0.15 * salario) - 75.
    else 
      	imposto = (0.25 * salario) - 175.
    end if
    print *
    print *, "Imposto de renda a pagar: ", imposto
end program projeto0013