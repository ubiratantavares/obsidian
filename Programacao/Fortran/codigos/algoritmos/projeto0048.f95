program projeto0048
	integer i, n, razao
    integer v(5)
    logical pg

    n = 5

    do i = 1, n
		print *, "Digite um numero: "
        read *, v(i)
    end do

    razao = v(2) / v(1)

    pg = .true.
	
	do i = 2, n
		if ((v(i) / v(i-1)) /= razao) then
			pg = .false.
        end if
    end do
	if (pg) then
		print *, "Numeros lidos estao em PG"
    else
		print *, "Numeros lidos nao estao em PG"
    end if	
end program projeto0048