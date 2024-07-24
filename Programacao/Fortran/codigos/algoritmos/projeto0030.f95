program projeto0030
	logical :: acabou
    integer :: num
    acabou = .false.
    do while (.not. acabou)
		print *, "Entre com o numero: "
        read *, num
        if (num == -999) then
          	acabou = .true.
        else
        	print *, 3*num
        endif
     enddo      
end program projeto0030