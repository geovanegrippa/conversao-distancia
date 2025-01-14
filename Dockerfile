# Use uma imagem base oficial do Python
FROM python:3.11-slim

# Define o diretório de trabalho no contêiner
WORKDIR /app

# Copia os arquivos do projeto para o contêiner
COPY . /app

# Instala as dependências necessárias
RUN pip install --no-cache-dir -r requirements.txt

# Exponha a porta que será usada pela aplicação
EXPOSE 5000

# Comando para iniciar a aplicação
CMD ["python", "app.py"]