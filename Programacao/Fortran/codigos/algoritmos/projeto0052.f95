program projeto0052
	integer i, n, delta, maior
    integer v(10)

    n = 10

    do i = 1, n
		print *, "Entre com o numero: "
        read *, v(i)
    end do

    maior = v(2) - v(1)

    do i = 3, n 
		delta = v(i) - v(i-1)
        if (delta > maior) then
          maior = delta
       end if
    end do
	print *, "Maior diferenca: ", maior    
end program projeto0052