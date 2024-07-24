program projeto0006
	real :: nota1, nota2, media
	print *, "Digite a nota 1: "
	read *, nota1
    print *, "Digite a nota 2: "
    read *, nota2
    media = (nota1 + nota2) / 2.0	
	if (media >= 5.0) then
		print *, "Aprovado(a)."
	else
		print *, "Reprovado(a)."
    endif
end program projeto0006