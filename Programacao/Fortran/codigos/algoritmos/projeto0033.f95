program projeto0033
	logical :: acabou
    real :: aChico, aJuca
    integer :: anos
    
    anos = 0
    aChico = 1.5
    aJuca = 1.1
    acabou = .false.
    
    do while (.not. acabou)
		anos = anos + 1
        aChico = aChico + 0.02
        aJuca = aJuca + 0.03
        if (aJuca > aChico) then
          	acabou = .true.
        endif
    enddo  
	print *, "Tempo necessario: ", anos, " anos."
end program projeto0033