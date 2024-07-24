program projeto0009
 	integer :: n1, n2, n3, maior
	print *, "Digite numero 1: "
	read *, n1
	print *, "Digite numero 2: "
	read *, n2
	print *, "Digite numero 3: "
	read *, n3
    if (n1 > n2 .and. n1 > n3) then
      maior = n1
    else if (n2 > n1 .and. n2 > n3) then
      maior = n2
    else 
      maior = n3
    end if
	print *, "O maior numero lido", maior
end program projeto0009