# Usa una imagen base de Python
FROM python:3.11-slim

# Establece el directorio de trabajo
WORKDIR /app

# Copia el archivo de requerimientos al contenedor
COPY requirements.txt requirements.txt

# Instala las dependencias
RUN pip install --no-cache-dir -r requirements.txt

# Copia el contenido de la aplicación al contenedor
COPY . .

# Expone el puerto en el que Flask ejecutará la aplicación
EXPOSE 5000

# Define la variable de entorno para Flask
ENV FLASK_APP=baldo.py

# Comando para ejecutar la aplicación Flask
CMD ["flask", "run", "--host=0.0.0.0"]
