! Programa 2.4 - Exemplo do uso de formatos

program format1
	implicit none
    real :: a = 123.45, b = 6789.10, c = 0.000778

    write(*, 100) a
	write(*, 200) a
	write(*, 300) a
    write(*, 400) a
    write(*, 500) a
    write(*, 600) a
    write(*, 700) a, b, c

100 format('0', E11.5)
200 format('0', F6.2)	
300 format('1', E12.6)
400 format(' ', E10.2)
500 format(' ', E15.5E6)
600 format(' ', ES10.2)
700 format('+', 3ES10.2)

end program format1