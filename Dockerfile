# Usa una imagen base con Python
FROM python:3.9.5

# Establece el directorio de trabajo dentro del contenedor
WORKDIR /app

# Copia todos los archivos del proyecto al contenedor
COPY . /app

# Instala las dependencias desde requirements.txt
RUN pip install --no-cache-dir --upgrade pip \
    && pip install --no-cache-dir -r requirements.txt

# Expone el puerto en el que correrá Flask
EXPOSE 5000

# Comando para iniciar la aplicación Flask
CMD ["python", "main.py"]
