program projeto0053
	integer i, j, MAX
    integer v(10)

    MAX = 10

    do i = 1, MAX
		print *, "Entre com o numero: "
        read *, v(i)
    end do

    do i = 1, MAX
       do j = 1, (i - 1)
          if (v(i) == v(j)) then
             v(j) = 0
          end if
       end do
    end do

    do i = 1, MAX 
       print *, v(i)
    end do
end program projeto0053