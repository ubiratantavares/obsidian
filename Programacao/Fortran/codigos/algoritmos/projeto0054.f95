program projeto0054
	integer i, j, MAX_TP, MAX_SO
    integer TP(25), SO(20) 

    MAX_TP = 25
    MAX_SO = 20
   
	print *, "ALUNOS DE TECNICAS DE PROGRAMACAO"
    do i = 1, MAX_TP
		print *, "Matricula: "        
        read *, TP(i)
    end do
	
	print *, ""

    print *, "ALUNOS DE SISTEMAS OPERACIONAIS"
    do i = 1, MAX_SO
		print *, "Matricula: "        
        read *, SO(i)
    end do

    do i = 1, MAX_TP
       do j = 1, MAX_SO
          if (TP(i) == SO(j)) then
             print *, TP(i)
             exit
          endif
       end do
    end do
end program projeto0054