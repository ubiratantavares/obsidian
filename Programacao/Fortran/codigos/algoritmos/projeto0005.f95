program projeto0005
	integer :: numero
	print *, "Digite o numero: "
	read *, numero	
	if (mod(numero, 2) == 0) then
		print *, "Numero par."
	else
		print *, "Numero impar."
    endif
end program projeto0005