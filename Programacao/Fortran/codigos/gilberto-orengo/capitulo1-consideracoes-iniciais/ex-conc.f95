program ex_conc
	character(len=15) :: total1
    character(len=7) :: total2
    character(len=9) :: parte1
    character(len=6) :: parte2

    parte1 = 'Gilberto '
    parte2 = 'Orengo'

    total1 = parte1//parte2
    total2 = parte1(1:1)//parte2

    write(*,*) 'A primeira concatenacao eh: ', total1
    write(*,*) 'A segunda concatenacao eh: ', total2
end program ex_conc
