program testa_module

	use teste

    implicit none

    real, parameter :: pi = 3.141892


    do i = 1, 5
	    valores(i) = pi * i

    end do
    
    call sub1


    contains 
    	subroutine sub1
			use teste
			implicit none
            write(*,*) valores
        end subroutine sub1

end program testa_module