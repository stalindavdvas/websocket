# Utilizar la imagen oficial de Node.js como base
FROM node:18

# Establecer el directorio de trabajo en el contenedor
WORKDIR /app

# Copiar el archivo package.json y package-lock.json
COPY package*.json ./

# Instalar las dependencias de la aplicación
RUN npm install

# Copiar el resto de los archivos de la aplicación
COPY . .

# Exponer el puerto que usa la aplicación WebSocket
EXPOSE 3000

# Comando para iniciar la aplicación
CMD ["npm", "start"]
