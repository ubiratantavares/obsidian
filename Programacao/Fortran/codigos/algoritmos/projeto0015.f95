program projeto0015
 	integer :: i, soma
    soma = 0
	do i = 25, 100
    	if (mod(i, 2) == 0) then
        	soma = soma + i
        end if 
    end do
	print *, soma
end program projeto0015