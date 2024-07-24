program projeto0018
 	integer :: numero, i
    logical :: primo
	print *, "Entre com o numero: "
    read *, numero
    primo = .TRUE.
    do i = 2, numero - 1
      if (mod(numero, i) == 0) then
        primo = .FALSE.
        print *, i
		exit
      end if
    end do
    if (primo) then
      print *, "numero primo."
    else 
      print *, "numero nao primo."
    end if
end program projeto0018