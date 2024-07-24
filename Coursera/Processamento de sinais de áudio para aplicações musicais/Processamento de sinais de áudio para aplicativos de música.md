
# Semana 1 - Introdução

Introdução ao curso, ao campo do Processamento de Sinais de Áudio e à matemática básica necessária para iniciar o curso. Demonstrações introdutórias de alguns dos aplicativos e ferramentas de software a serem usados. Introdução ao Python e ao pacote sms-tools, a principal ferramenta de programação do curso.

### Objetivos de aprendizagem

---

- Relembrar o conteúdo, a abordagem e a dinâmica do curso
- Recordar conceitos matemáticos básicos
- Usar aplicativos básicos de software de áudio
- Empregar o ambiente básico do software python

## Palestras de boas-vindas

## Aulas teóricas

## Palestras de demonstração

## Palestras de programação

## Atribuições

## Material adicional


# Semana 2 - Transformada de Fourier

A equação da Transformada Discreta de Fourier; exponenciais complexos; produto escalar na DFT; DFT de senoides complexos; DFT de senoides reais; e DFT inversa. Demonstrações sobre como analisar um som usando a DFT; introdução ao Freesound.org. Geração de senoides e implementação da DFT em Python.

### Objetivos de aprendizagem

---

- Definir a Transformada Discreta de Fourier
- Resolver a DFT de sinais simples
- Analisar sons usando a DFT
- Criar pequenas funções python para sintetizar senoides e analisá-las

## Aulas teóricas

## Palestras de demonstração

## Palestras de programação

## Atribuições

## Material adicional

# Semana 3 - Teoremas de Fourier

Linearidade, deslocamento, simetria, convolução; conservação de energia e decibéis; desdobramento de fase; preenchimento zero; transformada rápida de Fourier e janelamento de fase zero; e análise/síntese. Demonstração da análise de sinais periódicos simples e de sons complexos; demonstração de ferramentas de análise de espectro. Implementação do cálculo do espectro de um fragmento de som usando Python e apresentação das funções dftModel implementadas no pacote sms-tools.

### Objetivos de aprendizagem

---

- Definir as propriedades da transformada de Fourier
- Analisar sinais periódicos e sons complexos usando a análise de espectro
- Criar código Python para explorar as propriedades DFT
## Aulas teóricas

## Palestras de demonstração

## Palestras de programação

## Atribuições

## Material adicional

# Semana 4 - Transformada de Fourier de curto prazo

Equação STFT; janela de análise; tamanho da FFT e tamanho do salto; compromisso tempo-frequência; STFT inverso. Demonstração de ferramentas para calcular o espectrograma de um som e sobre como analisar um som usando-as. Implementação do janelamento de sons usando Python e apresentação das funções STFT do pacote sms-tools, explicando como usá-las.

### Objetivos de aprendizagem

---

- Definir a transformada de Fourier de curto prazo
- Discutir o uso do STFT para analisar e sintetizar sons
- Usar o software STFT para analisar sons
- Calcular Use o Python para estudar várias características do STFT

## Aulas teóricas

## Palestras de demonstração

## Palestras de programação

## Atribuições

## Material adicional


# Semana 5 - Modelo Senoidal


Equação do modelo senoidal; ondas senoidais em um espectro; ondas senoidais como picos espectrais; ondas senoidais variáveis no tempo em um espectrograma; síntese senoidal. Demonstração da interface do modelo senoidal do pacote sms-tools e seu uso na análise e síntese de sons. Implementação da detecção de picos espectrais e da síntese senoidal usando Python e apresentação das funções sineModel do pacote sms-tools, explicando como usá-las.

### Objetivos de aprendizagem

---

- Definir o modelo senoidal
- Interpretar Como usar o modelo sinuosoidal para analisar e sintetizar sons
- Usar a implementação Python do modelo senoidal

## Aulas teóricas

## Palestras de demonstração

## Palestras de programação

## Atribuições

## Material adicional



# Semana 6 - Modelo Harmônico

Equação do modelo harmônico; sinusóides-parciais-harmônicos; sinais polifônicos-monofônicos; detecção de harmônicos; detecção de f0 nos domínios do tempo e da frequência. Demonstrações do algoritmo de detecção de pitch, da interface do modelo harmônico do pacote sms-tools e de seu uso na análise e síntese de sons. Implementação da detecção da frequência fundamental no domínio da frequência usando o algoritmo TWM em Python e apresentação das funções harmonicModel do pacote sms-tools, explicando como usá-las.

### Objetivos de aprendizagem

---

- Definir modelo harmônico
- Interpretar Como usar o modelo harmônico para analisar e sintetizar sons
- Use a implementação Python do modelo harmônico


## Aulas teóricas

## Palestras de demonstração

## Palestras de programação

## Atribuições

## Material adicional



# Semana 7 - Modelo senoidal mais residual

Sinais estocásticos; modelo estocástico; aproximação estocástica de sons; modelo senoidal/harmônico mais residual; subtração residual; modelo senoidal/harmônico mais estocástico; modelo estocástico de residual. Demonstrações das interfaces do modelo estocástico, harmônico mais residual e harmônico mais estocástico do pacote sms-tools e de seu uso na análise e síntese de sons. Apresentação das funções stochasticModel, hprModel e hpsModel implementadas no pacote sms-tools, explicando como usá-las.

### Objetivos de aprendizagem

---

- Definir modelo senoidal mais residual
- Interpretar Como usar o modelo senoidal mais residual para analisar e sintetizar sons
- Aplicar Use a implementação Python do modelo senoidal mais residual


## Aulas teóricas

## Palestras de demonstração

## Palestras de programação

## Atribuições

## Material adicional


# Semana 8 - Transformações sonoras


Filtragem e transformação usando a transformada de Fourier de tempo curto; escalonamento de frequência e tempo usando o modelo senoidal; transformações de frequência usando o modelo harmônico mais residual; escalonamento e transformação de tempo usando o modelo harmônico mais estocástico. Demonstrações das várias interfaces de transformação do pacote sms-tools e do Audacity. Apresentação das funções stftTransformations, sineTransformations e hpsTransformations implementadas no pacote sms-tools, explicando como usá-las.

### Objetivos de aprendizagem

---

- Definir modelos de transformação de som
- Interpretar os modelos de transformação de som conforme eles são aplicados aos sons
- Usar implementações Python de modelos de transformação sólidos



## Aulas teóricas

## Palestras de demonstração

## Palestras de programação

## Atribuições

## Material adicional



# Semana 9 - Descrição de som e música

Extração de recursos de áudio usando métodos de análise espectral; descrição de sons, coleções de sons, gravações de música e coleções de música. Agrupamento e classificação de sons. Demonstração de vários plugins do SonicVisualiser para descrever sinais de som e música e demonstração de alguns recursos avançados do freesound.org. Apresentação da Essentia, uma biblioteca C++ para descrição de som e música, explicando como usá-la a partir do Python. Programação com a API do Freesound em Python para baixar coleções de sons e estudá-las.

### Objetivos de aprendizagem

---

- Definir diferentes técnicas de análise para descrever sons
- Interpretar Como usar várias técnicas de análise de som
- Usar implementações Python de técnicas de análise em aplicações práticas


## Aulas teóricas

## Palestras de demonstração

## Palestras de programação

## Atribuições

## Material adicional


	

# Semana 10 - Tópicos de conclusão

Processamento de sinais de áudio além deste curso. Além do processamento de sinais de áudio. Revisão dos tópicos do curso. Onde obter mais informações sobre os tópicos deste curso. Apresentação do MTG-UPF. Demonstração do Dunya, um navegador da Web para explorar várias coleções de música de áudio, e do AcousticBrainz, uma iniciativa colaborativa para coletar e compartilhar dados de música.

### Objetivos de aprendizagem

---

- Recordar Visão geral do curso
- Give_examples De perspectivas relacionadas e complementares do curso
- Aplicar as técnicas aprendidas no curso em aplicações práticas

## Aulas teóricas

## Palestras de demonstração

## Palestras de programação

## Atribuições

## Material adicional


# Semana 10 - Tópicos de conclusão: escolhas de lições

### Objetivos de aprendizagem

---

- Recordar Visão geral do curso
- Give_examples De perspectivas relacionadas e complementares do curso
- Aplicar as técnicas aprendidas no curso em aplicações práticas


## Peça musical

## Descrição da música com a Essentia

## Tamanho da janela - multi-resolução

