program projeto0032
	logical :: acabou
    integer :: anos
    real :: A, B
    
    anos = 0.
    A = 5
    B = 7
    acabou = .false.
    
    do while (.not. acabou)
		anos = anos + 1
        A = 1.03 * A
        B = 1.02 * B
        if (A > B) then
          	acabou = .true.
        endif
    enddo  
	print *, "Tempo necessario: ", anos, " anos."
end program projeto0032