
Para automatizar o envio de relatórios diários por e-mail usando Python, você pode seguir estes passos:

1. **Configurar o ambiente**: Certifique-se de ter Python instalado e as bibliotecas necessárias (`smtplib`, `email`, e `schedule`).

2. **Criar o script**: O script Python deve coletar os dados, gerar o relatório e enviá-lo por e-mail.

3. **Agendar o script**: Use a biblioteca `schedule` para agendar a execução do script diariamente.

Aqui está um exemplo completo de como fazer isso:

### Passo 1: Instalar bibliotecas necessárias

Se você ainda não tiver as bibliotecas, instale-as usando pip:

```sh
pip install schedule
```

### Passo 2: Criar o script Python

```python
import smtplib
from email.mime.multipart import MIMEMultipart
from email.mime.text import MIMEText
from email.mime.base import MIMEBase
from email import encoders
import schedule
import time
import os

def enviar_email():
    # Configurações do e-mail
    remetente = "seuemail@example.com"
    senha = "suasenha"
    destinatario = "destinatario@example.com"
    assunto = "Relatório Diário"
    
    # Criar o corpo do e-mail
    corpo_email = """
    Prezado,

    Segue em anexo o relatório diário.

    Atenciosamente,
    Seu Nome
    """
    
    # Criar o e-mail
    msg = MIMEMultipart()
    msg['From'] = remetente
    msg['To'] = destinatario
    msg['Subject'] = assunto
    
    # Anexar o corpo do e-mail
    msg.attach(MIMEText(corpo_email, 'plain'))
    
    # Gerar ou anexar o relatório (exemplo com um arquivo PDF)
    nome_arquivo = "relatorio_diario.pdf"
    caminho_arquivo = os.path.join(os.getcwd(), nome_arquivo)
    
    # Verifique se o arquivo existe
    if os.path.isfile(caminho_arquivo):
        with open(caminho_arquivo, "rb") as anexo:
            parte = MIMEBase('application', 'octet-stream')
            parte.set_payload(anexo.read())
            encoders.encode_base64(parte)
            parte.add_header('Content-Disposition', f'attachment; filename= {nome_arquivo}')
            msg.attach(parte)
    else:
        print(f"Arquivo {nome_arquivo} não encontrado.")
    
    # Configurar servidor SMTP
    try:
        servidor = smtplib.SMTP('smtp.example.com', 587)
        servidor.starttls()
        servidor.login(remetente, senha)
        
        # Enviar o e-mail
        servidor.sendmail(remetente, destinatario, msg.as_string())
        servidor.quit()
        
        print("E-mail enviado com sucesso!")
    except Exception as e:
        print(f"Falha ao enviar e-mail: {e}")

# Agendar o script para ser executado diariamente às 8:00 AM
schedule.every().day.at("08:00").do(enviar_email)

# Manter o script em execução
while True:
    schedule.run_pending()
    time.sleep(60)
```

### Passo 3: Configurar a execução automática do script

Para garantir que o script seja executado diariamente, mesmo quando o sistema for reiniciado, você pode configurar uma tarefa agendada no seu sistema operacional.

#### No Windows

1. Abra o Agendador de Tarefas.
2. Crie uma nova tarefa básica.
3. Defina a tarefa para executar diariamente às 8:00 AM.
4. Configure a tarefa para executar o Python com o caminho para o script.

#### No Linux

1. Abra o crontab com o comando `crontab -e`.
2. Adicione a linha a seguir para executar o script diariamente às 8:00 AM:

```sh
0 8 * * * /usr/bin/python3 /caminho/para/o/seu/script.py
```

#### No MacOS

Siga um processo semelhante ao do Linux, utilizando o `crontab`.

### Nota

- Certifique-se de substituir `seuemail@example.com`, `suasenha`, `destinatario@example.com`, e `smtp.example.com` com suas informações reais.
- Verifique a configuração do seu servidor SMTP. Se você estiver usando o Gmail, por exemplo, use `smtp.gmail.com` e porta `587`, e considere gerar uma senha de aplicativo para maior segurança.

Com isso, você deve ser capaz de automatizar o envio de relatórios diários por e-mail usando Python.