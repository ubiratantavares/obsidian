program projeto0008
 	integer :: numero
	print *, "Digite um numero: "
	read *, numero
    if (mod(numero, 5) == 0) then
		print *, "O numero eh multiplo de 5."
    else
		print *, "O numero nao eh multiplo de 5." 
    endif
end program projeto0008