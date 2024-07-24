program projeto0055
    integer i, MAX, opcao, codigo
    integer c(10)      ! codigo do produto
    character*15 d(10)    ! descricao do produto
    integer q(10)      ! quantidade do produto
    real vc(10)        ! valor de compra
    real vv(10)        ! valor de venda
    logical acabou, achou

    MAX = 2

    print *, "CADASTRO DE PRODUTOS"

    do i = 1, MAX
       print *, "Codigo: "
       read *, c(i)
       print *, "Descricao: "
       read *, d(i)
       print *, "Quantidade: "
       read *, q(i)
       print *, "Valor de compra: "
       read *, vc(i)
       print *, "Valor de venda: "
       read *, vv(i)
    end do
    
    acabou = .false.

    do while (.not. acabou)    
       print *, ""
       print *, "Entre com a sua opcao: "
       print *, "0 : Terminar"
       print *, "1 : Listar todos os produtos"
       print *, "2 : Selecionar um produto"
       print *, "Opcao: "
       read *, opcao

       call system("cls")
       
       if (opcao == 0) then
         acabou = .true.
       else if (opcao == 1) then
         print *, ""
         print *, "Codigo        Descricao       Quantidade     Valor de compra       Valor de Venda"
         do i = 1, MAX
            print *, "  ", c(i), "    ", d(i) , "          ", q(i), "        ", vc(i), "        ", vv(i)
         end do
       else if (opcao == 2) then
         print *, ""
         print *, "Entre com o codigo do produto: "
         read *, codigo
         achou = .false.
         do i = 1, MAX
           if (codigo == c(i)) then
             achou = .true.
             exit
           end if
         end do
         print *, ""
         if (achou) then
           print *, "DADOS DO PRODUTO"
           print *, ""
           print *, "Codigo: ", c(codigo)
           print *, "Descricao: ", d(codigo)
           print *, "Quantidade: ", q(codigo)
           print *, "Valor de compra: ", vc(codigo)
           print *, "Valor de venda: ", vv(codigo)
         else
           print *, "Produto nao cadastrado"
         end if
       else
         print *, "Opcao invalida!"
       end if
    end do
end program projeto0055