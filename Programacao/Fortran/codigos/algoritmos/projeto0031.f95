program projeto0031
	logical :: acabou
    integer :: n
    real :: num, soma, media
    
    soma = 0.
    n = 0
    acabou = .false.
    
    do while (.not. acabou)
		print *, "Entre com o numero: "
        read *, num
        if (num < 0) then
          	acabou = .true.
        else
          	soma = soma + num
            n = n + 1
        endif
    enddo  
	if (n .ne. 0) then
    	media = soma / n
        print *, "Media = ", media
    endif    
end program projeto0031