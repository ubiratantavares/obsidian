!
! Programa que calcula a área de um gramado de uma praça que contém:
!       - forma retangular
!       - uma quadra de esportes retangular
!       - um lago circular
!       - uma calçada em torno do gramado
!
PROGRAM gramado
   IMPLICIT NONE
   ! DEFINIÇÃO DAS VARIÁVEIS
   REAL :: largura_praca, comprimento_praca, largura_calcada, largura_quadra
   REAL :: comprimento_quadra, diametro_lago, areaLago, areaQuadra, areaCalcada
   REAL :: areaPraca, areaGramado
 
   ! LEITURA DAS MEDIDAS A SEREM INFORMADAS
   WRITE (*, *) "Calculo da área do gramado de uma praça que contém:"
   WRITE (*, *) "       - forma retangular"
   WRITE (*, *) "       - uma quadra de esportes retangular"
   WRITE (*, *) "       - um lago circular"
   WRITE (*, *) "       - uma calçada em torno do gramado"
   WRITE (*, *)
   ! Leitura dos dados da praça
   WRITE (*, *) "Informe a largura da praça: "
   READ (*, *) largura_praca
   WRITE (*, *) "Informe o comprimento da praça: "
   READ (*, *) comprimento_praca
   WRITE (*, *) "Informe a largura da calçada: "
   READ (*, *) largura_calcada
   WRITE (*, *) "Informe a largura da quadra: "
   READ (*, *) largura_quadra
   WRITE (*, *) "Informe o comprimento da quadra: "
   READ (*, *) comprimento_quadra
   WRITE (*, *) "Informe o diametro do lago: "
   READ (*, *) diametro_lago
 
   ! Cálculos
   areaPraca = largura_praca * comprimento_praca
   areaCalcada = largura_calcada * (2 * (comprimento_praca + (largura_praca - 2 * largura_calcada)))
   areaQuadra = largura_quadra * comprimento_quadra
   areaLago = 3.14159 * (diametro_lago/2) ** 2
   areaGramado = areaPraca - areaCalcada - areaQuadra - areaLago
 
   ! Impressão dos resultados
   WRITE (*, *) "Areas calculadas:"
   WRITE (*, *)
   WRITE (*, *) "Area da Praca:  ", areaPraca
   WRITE (*, *) "Area da Calcada:", areaCalcada
   WRITE (*, *) "Area da Quadra: ", areaQuadra
   WRITE (*, *) "Area do Lago:   ", areaLago
   WRITE (*, *)
   WRITE (*, *) "Area do Gramado:", areaGramado
   STOP
   END PROGRAM gramado
   
