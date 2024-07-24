program area

	use circulo, ONLY : raio
    
	implicit none

	interface
   		function areaCirculo(r)
     		real , intent(in) :: r
   		end function areaCirculo
	end interface

	write(*, '(A)', ADVANCE = "NO") "Digite o raio do circulo:  "
	read(*,*) raio


	write(*,100) "Area do circulo com raio", raio, " eh", &
            areaCirculo(raio)
	100 format (A, 2x, F6.2, A, 2x, F11.2)

	contains
	function areaCirculo(r)

		use circulo, ONLY : pi

		implicit none
    
		real :: areaCirculo
		real, intent(IN) :: r

		areaCirculo = pi * r * r

	end function areaCirculo    

end program area


