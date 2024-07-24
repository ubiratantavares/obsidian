program projeto0037
	real :: salario, abono, totalSalario, maiorAbono
    logical :: acabou
    integer :: mat, nivel, matMaiorAbono
    maiorAbono = 0.
    acabou = .false.
    do while (.not. acabou) 
		print *, "Digite a matricula do funcionario: "
        read *, mat
        if (mat < 0) then
			acabou = .true.
        else 
          	print *, "Digite o salario do funcionario: "
            read *, salario
            print *, ""
            print *, "Indice de peodutividade"
            print *, ""
            print *, "(1) - Excelente"
            print *, "(2) - Bom"
            print *, "(3) - Regular"
            print *, ""
            print *, "Digite o indice: "
            read *, nivel
            if (nivel == 1) then
            	abono = 0.8 * salario
            else if (nivel == 2) then
              	abono = 0.5 * salario
            else if (nivel == 3) then
              	abono = 0.3 * salario
            else 
              	abono = 0.
            end if
        	totalSalario = salario + abono
        	print *, "Salario a ser pago", totalSalario,
        	if (abono > maiorAbono) then
        		maiorAbono = abono
            	matMaiorAbono = mat
        	end if            
        end if
        print *, ""
    enddo
    print *, "O maior abono foi pago ao funcionario: ", matMaiorAbono,
end program projeto0037