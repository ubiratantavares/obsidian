program projeto0047
	integer i, n, maior, menor
    integer v(10)
    n = 10
    do i = 1, n
		print *, "Entre com um numero: "
        read *, v(i)
    end do

    maior = v(1)
    menor = v(1)

    do i = 2, n
		if (v(i) > maior) then
			maior = v(i)
        end if
        if (v(i) < menor) then
			menor = v(i)
        end if        
	end do

    print *, "O maior elemento do vetor: ", maior
    print *, "O menor elemento do vetor: ", menor    
end program projeto0047