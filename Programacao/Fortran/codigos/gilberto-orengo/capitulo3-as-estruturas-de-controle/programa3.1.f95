! Programa 3.1 - Exemplo com operadores logicos
program logica
	implicit none
    logical :: a, b, c = .TRUE.

    a = 5 > 7
    b = 5 < 7

    if (c) then
      write(*,*) '.TRUE. ou verdadeiro'
    else 
      write(*,*) '.FALSE. ou falso'
    end if

    write(*,*) 'Resultados de 5 > 7 e 5 < 7: ', a, b
    

end program logica