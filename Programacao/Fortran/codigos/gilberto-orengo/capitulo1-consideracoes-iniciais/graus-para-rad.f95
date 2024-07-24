! Programa que converte angulos em graus para radianos
program graus_para_rad
    
	implicit none
	! Declaracao das variaveis
	real :: theta, ang_rad
	real, parameter :: pi=3.14159265

    write(*,*) "Digite um angulo em graus: "
    read(*,*) theta
    
    ang_rad = theta*pi/180.0
    
    write(*,*) 'O angulo ', theta, ' (graus) = ', ang_rad,' (radianos)'
    write(*,*)
    write(*,*) 'cos(', theta, ') = ', cos(ang_rad)
    
end program graus_para_rad
    

