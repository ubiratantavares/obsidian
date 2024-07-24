program projeto0019
 	integer :: num1, num2

	print *, "Entre com os numeros: "
    read *, num1, num2

    do i = 1, num1
      if (mod(num1, i) == 0 .and. mod(num2, i) == 0) then
        print *, i
      end if
    end do
end program projeto0019