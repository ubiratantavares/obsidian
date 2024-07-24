program projeto0045
	integer i, n
    integer v(10)
	n = 10
    do i = 1, n
		print *, "Entre com um numero: "
        read *, v(i)
    end do
    print *, ""
    print *, "Numero 30 encontrado nas posicoes: "
    do i = 1, n
		if (v(i) == 30) then
			print *, i
        end if
     end do    
end program projeto0045