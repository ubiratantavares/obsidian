program projeto0003

	implicit none
	real :: distancia, velocidade, tempo

	print *, "Digite a distancia (Km): "
	read *, distancia
	print *, "Digite a velocidade media (Km/h): "
	read *, velocidade

	tempo = distancia / velocidade

	print *, "O tempo de viagem (h): ", tempo

end program projeto0003