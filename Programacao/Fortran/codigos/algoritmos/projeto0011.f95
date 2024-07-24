program projeto0011
 	integer :: n1, n2, n3
	print *, "Digite numero 1: "
	read *, n1
	print *, "Digite numero 2: "
	read *, n2
	print *, "Digite numero 3: "
	read *, n3
    print *
    if (n1 < n2 .and. n2 < n3) then
    	print *, n1, n2, n3
    else if (n1 < n3 .and. n3 < n2) then
      	print *, n1, n3, n2
    else if (n2 < n1 .and. n1 < n3) then
      	print *, n2, n1, n3
    else if (n3 < n1 .and. n1 < n2) then
      	print *, n3, n1, n2
	else if (n2 < n3 .and. n3 < n1) then
    	print *, n2, n3, n1
    else 
      	print *, n3, n2, n1
    end if
end program projeto0011