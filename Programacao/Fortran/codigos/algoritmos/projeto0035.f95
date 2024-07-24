program projeto0035
	integer :: quant, num
	logical :: acabou
	real :: preco, total    

	total = 0.
    acabou = .false.
    
    do while (.not. acabou)
     	print *, "Digite o  numero do produto: ",
        read *, num,
        if (num < 0) then
			acabou = .true.
        else 
          	print *, "Digite o preco: ",
            read *, preco
            print *, "Digite a quantidade: ",
            read *, quant
            print *, ""
            total = total + preco * quant
        endif
    enddo
    print *, ""
	print *, "Preco total dos produtos: ", total
    print *, ""
end program projeto0035