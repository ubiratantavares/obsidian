program projeto0029
    integer :: i, j
    do i = 1, 10
		do j = 1, i
			write (*, "(A)", ADVANCE='NO') '*'
        end do
        print *
    end do
end program projeto0029