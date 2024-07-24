module mod_proc1

	implicit none

    contains
		subroutine sub1(a, b, c, x, error)
			implicit none
            real, dimension(3), intent(in) :: a
            real,  intent(in) :: b, c
            real, intent(out) :: x
            logical, intent(out) :: error

        end subroutine sub1
        
    

end module mod_proc1
