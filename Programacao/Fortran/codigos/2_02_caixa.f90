!
! Este programa calcula a área da base e o volumede uma caixa
! de dimensões quaisquer
!
PROGRAM caixa
    IMPLICIT NONE ! Nenhuma declaração implicita
    ! Definição das variáveis
    REAL :: largura, comprimento, altura , area_base, volume
 
    ! Apresentação da finalida de do programa
    WRITE (*, *) "Cálculo da Area da base e do volume de uma caixa:"
    WRITE (*, *)

    ! Leitura das dimensões da base da caixa
    WRITE (*, *) "Informe as dimensões da base da caixa &
                 &(largura, comprimento): "
    READ (*, *) largura , comprimento
    WRITE (*, *)
   
    ! Cálculo da área da base da caixa
    AREA_BASE = largura * comprimento
   
    ! Leitura da altura da caixa
    WRITE (*, *) "Informe a altura da caixa: "
    READ (*, *) altura
   
    ! Cálculo do volume da caixa
    volume = area_base * altura
   
    ! Impressão dos resultados
    WRITE (*, *) "Dimensões da caixa: "
    WRITE (*, *) "     - Largura:     ", largura
    WRITE (*, *) "     - Comprimento: ", comprimento
    WRITE (*, *) "     - Altura:      ", altura
    WRITE (*, *)
    WRITE (*, *) "Area da base da caixa: ", area_base
    WRITE (*, *)
    WRITE (*, *) "Volume da caixa:       ", volume
    STOP
END PROGRAM caixa
   