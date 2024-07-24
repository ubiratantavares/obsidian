program projeto0039
	real :: valorArrecadado, mensalidade, desconto, totalBolsas
    integer :: matricula, creditos, bolsa
    logical :: acabou

	valorArrecadado = 0.
    totalBolsas = 0.
	acabou = .false.

    do while ( .not. acabou )
		print *, "Digite o numero da matricula do aluno: "
        read *, matricula
		if (matricula == 0) then
			acabou = .true.
        else 
          	print *, "Digite o numero de creditos cursados: "
            read *, creditos
            print *, ""
            print *, "Percentual da Bolsa de Estudo"
            print *, "(0) - 20%"
            print *, "(1) - 50%"
            print *, "(2) - 100%"
            print *, ""
            print *, "Digite o percentual da bolsa: "
            read *, bolsa
            mensalidade = creditos * 15.
            if (bolsa == 0) then
				desconto = 0.2 * mensalidade
            else if (bolsa == 1) then
     			desconto = 0.5 * mensalidade
            else
                desconto = mensalidade
            end if
            valorArrecadado = valorArrecadado + mensalidade - desconto
            totalBolsas = totalBolsas + desconto		
		end if
        print *, ""        
    end do
    print *, "Valor total arrecadado: ", valorArrecadado
    print *, "Valor total em bolsas: ", totalBolsas
end program projeto0039