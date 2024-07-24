program projeto0049
	integer i, num, positivos, negativos, nulos
    real v(100)
	
	print *, "Quantos numeros serao digitados? "
    read *, num
    print *, ""

    do i = 1, num
		print *, "Entre com um numero: "
        read *, v(i)
    end do

    positivos = 0
    negativos = 0
    nulos = 0

    do i = 1, num 
		if (v(i) > 0) then
			positivos = positivos + 1
        else if (v(i) < 0) then
        	negativos = negativos + 1
        else 
          	nulos = nulos + 1
        end if
    end do

    print *, ""
    print *, "Positivos: ", positivos
    print *, "Negativos: ", negativos
    print *, "Nulos: ", nulos    
end program projeto0049