     program ler_arq		! este programa lê series temporais
     real var1(104), var2(104), x(104), y(104), z(104)
     ! arquivos de entrada
     open(10, file='serie1.asc', status='old')
     open(11, file='serie2.asc', status='old')
     ! arquivo de saida
     open(12, file='soma.asc', status='new')
     ! leitura de dados
     do i = 1, 104
          read(10,*) var1(i)
          read(10,*) var2(i)
          x(i) = var1(i)
          y(i) = var2(i)
          z(i) = x(i) + y(i)
          write(12,*) z(i)
     end do
     close(10)
     close(11)
     close(12)
     stop
     end
     