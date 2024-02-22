# Dockerfile
FROM python:3.10-alpine

# Establecer el directorio de trabajo
WORKDIR /app

# Copiar los archivos de requerimientos
COPY requirements.txt .

# Instalar las dependencias
RUN pip install --upgrade pip
RUN pip install -r requirements.txt


# Copiar el resto de los archivos de la aplicación
COPY . .

# Exponer el puerto en el que se ejecutará la aplicación
EXPOSE  5003

# Comando para ejecutar la aplicación
CMD ["python", "src/app.py"]
