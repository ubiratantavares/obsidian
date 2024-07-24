program projeto0043
	integer i, num, produto
    logical acabou

    i = 0
    produto = 0
    acabou = .false.
    print *, "Digite um numero: "
    read *, num

    do while (.not. acabou) 
		produto = i * (i + 1) * (i + 2)
		if (produto >= num) then
			acabou = .true.
        end if
        i = i + 1
    end do
    if (produto == num) then
      print *, "Numero triangular."
    else
      print *, "Numero nao triangular."
    end if
end program projeto0043