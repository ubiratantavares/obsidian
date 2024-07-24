program uso_do_kind

	implicit none

    integer, parameter :: simples = 1
    integer, parameter :: dupla = 2
    
	real(kind=simples) :: valor1
    real(kind=dupla) :: valor2
    real(simples) :: temp

	valor1 = 3.14

    valor2 = 100000000.0

    temp = valor1 * valor2

    write(*,*) valor1
    write(*,*) valor2
    write(*,*) temp

end program uso_do_kind
