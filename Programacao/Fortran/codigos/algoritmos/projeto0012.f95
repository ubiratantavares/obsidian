program projeto0012
 	real :: salario
	print *, "Digite o salario: "
	read *, salario
    if (salario <= 500.) then
    	print *, "Faixa A"
    else if (salario > 500. .and. salario <= 1000.) then
      	print *, "Faixa B"
    else 
      	print *, "Faixa C"
    end if
end program projeto0012