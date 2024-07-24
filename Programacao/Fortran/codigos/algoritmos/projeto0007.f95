program projeto0007
	integer :: numero
	print *, "Digite um numero: "
	read *, numero
	if (numero >= 1 .and. numero <= 12) then
		print *, "O numero esta entre 1 e 12."
	else
		print *, "O numero nao esta entre 1 e 12."
    endif
end program projeto0007