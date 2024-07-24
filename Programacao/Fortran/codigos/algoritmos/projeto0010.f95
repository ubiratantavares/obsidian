program projeto0010
 	integer :: n1, n2, n3, menor
	print *, "Digite numero 1: "
	read *, n1
	print *, "Digite numero 2: "
	read *, n2
	print *, "Digite numero 3: "
	read *, n3
    if (n1 < n2 .and. n1 < n3) then
      menor = n1
    else if (n2 < n1 .and. n2 < n3) then
      menor = n2
    else 
      menor = n3
    end if
	print *, "O menor numero lido", menor
end program projeto0010