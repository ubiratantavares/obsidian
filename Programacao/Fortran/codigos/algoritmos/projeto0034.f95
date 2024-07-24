program projeto0034
	logical :: acabou
	integer :: num, fat, i    

    acabou = .false.
    
    do while (.not. acabou)
     	print *, ""
    	print *, "Entre com o numero: "
        read *, num,
        if (num < 1) then
			acabou = .true.
        else 
			fat = 1
			do i = 1, num
				fat = fat * i
            end do
			print *, "Fatorial de ", num, " = ", fat
        endif
    enddo  
end program projeto0034