program projeto0046
	integer i, n, soma, contaInv
    integer nota(10)
    real media
    n = 10
    do i = 1, n
		print *, "Entre com um numero: "
        read *, nota(i)
    end do
    soma = 0
    contaInv = 0      
    do i = 1, n
		if ((nota(i) < 0) .or. (nota(i) > 10)) then
			print *, i
            contaInv = contaInv + 1
        else 
          	soma = soma + nota(i)
        end if
    end do
    media = soma / (n - contaInv)
    print *, ""
    print *, "Media das notas validas: ", media
    print *, "Quantidade de notas invalidas: ", contaInv    
end program projeto0046