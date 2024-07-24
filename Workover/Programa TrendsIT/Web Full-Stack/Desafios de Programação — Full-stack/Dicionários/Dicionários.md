
## 1. Enunciado

[Enunciado](https://youtu.be/C69AfnqF0bY)

### 1.1 Entrada

* Número N indicando quantas disciplinas serão informadas
* N linhas com: 
	* Nome da disciplina
	* Nota
	* Peso
### 1.2 Saída

* Nome da disciplina de menor nota e a respectiva nota (1 casa decimal)
* Nome da disciplina de maior nota e a respectiva nota (1 casa decimal)
* Média ponderada das notas (2 casas decimais)
### 1.3 Exemplo

* Entrada: 
	* 4
	* Matemática 9.9 2
	* Física 10 2
	* Português 8 1
	* Geografia 7 1
* Saída:
	* Menor: Geografia 7.0
	* Maior: Física 10.0
	* Média: 9.13


## 2. Dica

[Dica](https://youtu.be/jEugpUsne_Y)


# 3. Resolução

## 3.1 Script disciplina.py

```python
class Disciplina:

  def __init__(self, nome="", nota=0.0, peso=1):
    self.nome = nome
    self.nota = nota
    self.peso = peso

  def get_nome(self):
    return self.nome

  def get_nota(self):
    return self.nota

  def set_nota(self, nota):
    self.nota = nota

  def get_peso(self):
    return self.peso

  def __str__(self):
    return f"{self.nome}, {self.nota}"
```

## 3.2 Script relatorio.py

```Python
class Relatorio:

  def __init__(self, disciplinas):
    self.disciplinas = disciplinas

  def get_menor(self):
    menor = Disciplina()
    menor.set_nota(float('inf'))
    for disciplina in self.disciplinas.values():
      if disciplina.get_nota() < menor.get_nota():
        menor = disciplina
    return menor

  def get_maior(self):
    maior = Disciplina()
    maior.set_nota(float('-inf'))
    for disciplina in self.disciplinas.values():
      if disciplina.get_nota() > maior.get_nota():
        maior = disciplina
    return maior

  def get_media_ponderada(self):
    soma_notas, soma_pesos = 0, 0
    for disciplina in self.disciplinas.values():
      soma_notas += disciplina.get_nota() * disciplina.get_peso()
      soma_pesos += disciplina.get_peso()
    media_ponderada = soma_notas / soma_pesos
    return media_ponderada

  def imprimir(self):
    menor, maior, media = self.get_menor(), self.get_maior(), self.get_menor()
    print(f"\nMenor: {menor.get_nome()} {menor.get_nota():.1f}")
    print(f"Maior: {maior.get_nome()} {maior.get_nota():.1f}")
    print(f"Média: {media:.2f}")
```

## 3.3 Script principal.py

```Python
disciplinas = {}
n = int(input("Quantas disciplinas serão informadas: "))
for i in range(n):
  nome = input("\nNome da disciplina: ")
  nota = float(input("Nota: "))
  peso = int(input("Peso: "))
  disciplina = Disciplina(nome, nota, peso)
  disciplinas[i] = disciplina
rel = Relatorio(disciplinas)
rel.imprimir_relatorio()
```
