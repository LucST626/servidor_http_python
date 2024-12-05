# 1. Usar la imagen oficial de Node.js como base
FROM python:3.9-slim

# 2. Establecer el directorio de trabajo en el contenedor
WORKDIR /app

# 3. Copiar package.json y package-lock.json (si existe) al contenedor
COPY . /app

# 6. Exponer el puerto en el que la app va a correr
EXPOSE 3000

# 7. Definir el comando para iniciar la app (usando nodemon para desarrollo)
CMD ["python3","-m", "http.server", "8000"]

# Crea la imagen
# docker build -t node.app .

# Ejecutarla
# docker run -p 3000:3000 node-app