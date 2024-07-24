program projeto0016
 	integer :: inicio, fim, i
    print *, "Entre com os limites do intervalo: "
    read *, inicio, fim
	do i = inicio, fim
    	if (mod(i, 5) == 0) then
        	print *, i
        end if 
    end do
end program projeto0016