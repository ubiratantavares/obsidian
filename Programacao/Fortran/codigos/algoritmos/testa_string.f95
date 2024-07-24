program teste

   character(len=*), parameter :: string = 'abcdefgh'
   character(5) a
   character(5) b 
   character(20) c
   character(20) d
   character(8) linha
   integer pos
         
   a = string(1:1)
   
   b = string(3:3)

   
   c = string // string(3:5)    ! operador de concatenacao de variaveis do tipo caracter

   d = string(1:1) // string(2:4)
   
   print *, a
   print *, b
   print *, c
   print *, d

   ! funcoes para string
   print *, adjustl(a)     ! adjustl(string)   => ajusta a string à esquerda
   print *, adjustr(a)     ! adjustr(string)   => ajusta a string à direita
   print *, len(a)         ! len(string)       => tamanho da string sem excluir os espacos em branco
   print *, repeat(a, 10)  ! repeat(string, i) => repete a string i vezes
   print *, trim(a)        ! trim(string)      => remove brancos a direita
   print *, len_trim(a)    ! len_trim(string)  => tamanho da string excluindo os espacos em branco   
   print *, lge(a, b)      ! retorna o valor true se a segue b na sequencia estabelecida pela tabela ASCII ou a iguala.  (a >= b)
   print *, lgt(a, b)      ! retorna o valor true se a segue b na sequencia estabelecida pela tabela ASCII. (a > b)
   print *, lle(a, b)      ! retorna o valor true se a precede b na sequencia estabelecida pela tabela ASCII, ou a iguala (a <= b)
   print *, llt(a, b)      ! retorna o valor true se a precede b na sequencia estabelecida pela tabela ASCII. (a < b)
   print *, index(d, b, back = .true.)    ! index(string, substring, [back]) => retorna um valor do tipo inteiro, o qual consiste na posicao inicial da substring
   print *, scan(b, d)     ! scan(string, set, [back])  => Retorna um valor inteiro padrao correspondente a posicao de um caractere de string que esteja em set
                           ! ou zero se nao houver tal caractere
   print *, verify(b, d)   ! verify(string, set, [back]) => Retorna o valor inteiro padrao 0 se cada caractere em STRING aparece em
                           ! SET, ou a posicao de um caractere de STRING que nao esteja em SET.

   print *, achar(65)      ! retorna o caracter da tabela ASCII correspondente ao inteiro i
   print *, iachar('b')    ! retorna um numero inteiro, que indica a posicao do caracter na tebala ASCII
   
   pos = 4   
   linha = string(1:pos-1) // "D" // string(pos:8) 
   print *, linha
   
end program teste
