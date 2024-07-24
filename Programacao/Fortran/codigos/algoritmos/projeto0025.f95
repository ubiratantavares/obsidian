program projeto0025
 	integer :: num, i, fat = 1
	print *, "Entre com o numero do fatorial: "
    read *, num
    do i = 1, num
    	fat = fat * i
    end do	
	print *, "Fatorial de ", num, " = ", fat
end program projeto0025