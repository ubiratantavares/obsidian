program projeto0042
	real maiorNota, totalVendido, valorNota, precoUnitario, media
	integer i, nnotas, qtd
    logical acabou
	maiorNota = 0.
    totalVendido = 0.
    print *, "Quantidade de notas fiscais: "
    read *, nnotas
    do i = 1, nnotas
		print *, "Nota fiscal ", i
        print *, ""
        valorNota = 0.
        acabou = .false.		
		do while (.not. acabou)
			print *, "Quantidade do produto: "
            read *, qtd
            if (qtd == 0) then
				acabou = .true.
            else 
              	print *, "Preco unitario do produto: "
                read *, precoUnitario
                valorNota = valorNota + qtd * precoUnitario
            end if
            print *, ""
        end do
		if (valorNota > maiorNota) then
			maiorNota = valorNota
        end if
        totalVendido = totalVendido + valorNota        
    end do
    media = totalVendido/nnotas
    print *, "Valor da maior nota fiscal: ", maiorNota
    print *, "Total vendido pela mercearia: ", totalVendido
    print *, "Valor medio por nota fiscal: ", media
end program projeto0042