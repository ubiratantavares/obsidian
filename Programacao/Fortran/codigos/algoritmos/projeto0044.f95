program projeto0044
	integer estoque, litros, conta
    logical acabou
    estoque = 50000
    conta = 0
    acabou = .false.
    do while (.not. acabou) 
		print *, "Informe quantidade de litros: "
        read *, litros
        if (estoque >= litros) then
			estoque = estoque - litros
            conta = conta + 1
        else if (estoque == 0) then
			print *, "Estoque vazio."
            acabou = .true.
        else 
          	print *, "Estoque insuficiente para abastecer veiculo. "
        end if
     end do
     print *, "Quantidade de veiculos abastecidos: ", conta

end program projeto0044