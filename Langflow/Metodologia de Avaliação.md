A avaliação da qualidade do resumo será realizada em duas etapas:

1. **Score Inicial**: computa-se a `similaridade contextual` com o artigo original.
    
2. **Score Final**: aplica-se um `fator de redução` para penalizar resumos longos, diminuindo o Score Inicial.
    
**Similaridade Contextual**

- Mede-se a similaridade contextual entre trechos relevantes do texto original e o resumo utilizando **cosine similarity**.
    
- Vetores de embeddings são gerados tanto para o texto original quanto para o resumo.
    
- Quanto mais similares os dois vetores, maior a pontuação inicial.
    
```Python
embedding1 = np.array(embedding_model.embed_query(text1))
embedding2 = np.array(embedding_model.embed_query(text2))

# Calculate cosine similarity
dot_product = np.dot(embedding1, embedding2)
norm1 = np.linalg.norm(embedding1)
norm2 = np.linalg.norm(embedding2)
similarity = dot_product / (norm1 * norm2)
```


**Ajuste pelo Comprimento do Resumo**

- Após calcular a pontuação inicial, aplica-se uma penalização para resumos mais longos.
    
- Resumos mais curtos recebem uma menor penalização, resultando em uma pontuação final mais alta.
    
- Esta parte incentiva a concisão, favorecendo resumos que sejam tanto informativos quanto breves.
    
```Python
max_chars = 10000 # Limite máximo de caracteres
min_score = 0.0 # Score mínimo 
max_score = 1.0 # Score máximo
tamanho_resumo = len(resumo)
if tamanho_resumo >= max_chars: 
	score_final = min_score
else: 
	fator_reducao = (max_chars - tamanho_resumo) / max_chars 

score_final = score_inicial * fator_reducao 
score_final = max(min_score, min(max_score, score_final))
```


Lembre-se que a geração de texto por modelos de linguagem pode não ser reproduzível. 

Seu score oficial não necessariamente será exatamente o mesmo da simulação.