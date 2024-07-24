program projeto0051
	integer i, n, chave
    integer v(10)

    n = 10

    do i = 1, n
		print *, "Entre com um numero: "
        read *, v(i)
    end do

    chave = v(n)

    conta = 0

    do i = 1, n
		if (v(i) == chave) then
			conta = conta + 1
        end if        
    end do
	print *, "O numero ", chave, " apareceu ", conta , " vezes."

    
end program projeto0051