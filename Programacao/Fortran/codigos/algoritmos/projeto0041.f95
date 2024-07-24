program projeto0041
	character(len=80) :: nome
    integer :: codigo
    real :: imposto, salario
    logical :: acabou
    acabou = .false.
    do while (.not. acabou)
		print *, "Nome: "
        read *, nome
        if (nome == " ") then
			acabou = .true.
        else
         	print *, "Codigo: "
            read *, codigo
            print *, "Salario: "
            read *, salario

            if (salario <= 900) then
				imposto = 0.
            else if ((salario > 900) .and. (salario < 1800)) then
				imposto = .15 * salario
            else
              	imposto = .25 * salario 
            end if
         end if
		 print *, "Imposto: ", imposto
         print *, ""
    end do
end program projeto0041