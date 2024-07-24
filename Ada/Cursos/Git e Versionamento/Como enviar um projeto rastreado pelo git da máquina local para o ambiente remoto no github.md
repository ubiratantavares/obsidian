Para enviar um projeto rastreado pelo Git de sua máquina local para um repositório remoto no GitHub, siga os seguintes passos:

### Pré-requisitos

1. **Ter uma conta no GitHub.**
2. **Ter Git instalado na sua máquina local.** Para instalar o Git, você pode usar o comando:
   ```bash
   sudo apt-get install git
   ```
3. **Ter criado um repositório no GitHub.** 

### Passos

1. **Navegue até o diretório do seu projeto local:**
   ```bash
   cd /caminho/para/seu/projeto
   ```

2. **Inicialize o repositório Git (caso ainda não tenha feito):**
   ```bash
   git init
   ```

3. **Adicione os arquivos do projeto ao índice do Git:**
   ```bash
   git add .
   ```

4. **Faça um commit inicial:**
   ```bash
   git commit -m "Primeiro commit"
   ```

5. **Adicione o repositório remoto.** Você precisa adicionar a URL do seu repositório GitHub como um repositório remoto. A URL pode ser encontrada na página do seu repositório GitHub, sob o botão "Code". Pode ser algo como `https://github.com/username/repo.git` ou `git@github.com:username/repo.git` (se você estiver usando SSH):
   ```bash
   git remote add origin https://github.com/username/repo.git
   ```

6. **Envie o commit para o repositório remoto no GitHub:**
   ```bash
   git push -u origin master
   ```

### Exemplos Práticos

**Criando um repositório no GitHub:**

1. Vá para [github.com](https://github.com) e faça login na sua conta.
2. Clique no ícone de **+** no canto superior direito e selecione **New repository**.
3. Digite um nome para o repositório e clique em **Create repository**.

**Usando HTTPS:**

```bash
cd /caminho/para/seu/projeto
git init
git add .
git commit -m "Primeiro commit"
git remote add origin https://github.com/username/repo.git
git push -u origin master
```

**Usando SSH:**

Primeiro, configure a chave SSH no GitHub, se ainda não o fez. Você pode seguir [este guia](https://docs.github.com/en/authentication/connecting-to-github-with-ssh) para isso.

```bash
cd /caminho/para/seu/projeto
git init
git add .
git commit -m "Primeiro commit"
git remote add origin git@github.com:username/repo.git
git push -u origin master
```

### Notas

- **Autenticação:** Dependendo da configuração do seu GitHub, você pode precisar autenticar ao enviar o commit para o repositório remoto. Se estiver usando HTTPS, pode ser necessário digitar seu nome de usuário e token de acesso pessoal. Para SSH, certifique-se de que sua chave SSH está configurada corretamente.
- **Branch Principal:** O comando `git push -u origin master` assume que a branch principal do seu repositório local é `master`. Alguns repositórios podem usar `main` como a branch principal. Nesse caso, substitua `master` por `main`.