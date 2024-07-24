program projeto0026
 	integer :: xy, zw, i
    do i = 1000, 9999
    	xy = i / 100
        zw = mod(i, 100)
        if ((xy + zw) * (xy + zw) == i) then
			print *, i
        endif
    end do	
end program projeto0026