!
! Questão 09 da Lista de exercícios para sala de aula - Capítulo F90/2
!
program poupanca
    implicit none
    real :: investido, taxa_correcao, correcao, valor_corrigido, taxa_juro, valor_juro, valor_final
    
    write(*, *) "Calculo dos rendimentos de uma caderneta de poupança:"
    write(*, *) 
    write(*, *) "Informe o valor investido, a taxa de correcao e a taxa de juro:"
    read(*, *) investido, taxa_correcao, taxa_juro
    correcao = investido * taxa_correcao / 100
    valor_corrigido = investido + correcao
    valor_juro = valor_corrigido * taxa_juro / 100
    valor_final = valor_corrigido + valor_juro
    write(*, *)
    write(*, *) "Valor investido = R$", investido
    write(*, *) "Taxa de correcao monetaria =", taxa_correcao, "%"
    write(*, *) "Valor da correcao monetaria = R$", correcao
    write(*, *) "Valor corrigido = R$", valor_corrigido
    write(*, *) "Taxa de juros =", taxa_juro, "%"
    write(*, *) "Valor dos juros = R$", valor_juro
    write(*, *) "Valor final corrigido e remunerado = R$", valor_final
    stop
end program poupanca