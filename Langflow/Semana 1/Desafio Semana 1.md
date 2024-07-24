Prompt Engineering

**🗓️** **Objetivo**

Criar uma implementação no Langflow que processe um arquivo de texto fornecido, extraia o conteúdo do artigo e gere um resumo conciso e abrangente.

**✅ Requisitos**

1. O resumo deve ser o mais sucinto possível (curto em número de caracteres).
    
2. O resumo deve ser rico em conteúdo, contendo definições e vocabulário dos tópicos principais.
    
3. A saída do chat deve exibir apenas o resumo do artigo.
    
4. É obrigatório utilizar pelo menos um componente `Prompt` e um componente `LLM`.
    

🔎 **Flow de referência**

O projeto abaixo será utilizado como referência para criação do resumo e avaliação. A figura abaixo ilustra o flow com o objetivo do desafio, onde o output será criar um resumo do conteúdo do arquivo:

![[fig1.avif]]

A ilustração abaixo demonstra como o resumo será avaliado, onde você pode simular o score do seu projeto:![[fig2.avif]]Ao rodar o flow com todos o componentes conectados você verá um output com o resumo do texto extraído e o score de avaliação.

Abaixo estão o flow de referência e o arquivo com conteúdo a resumir:


