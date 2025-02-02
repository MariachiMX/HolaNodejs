# Usa Node.js como imagen base
FROM node:18-alpine

# Establece el directorio de trabajo dentro del contenedor
WORKDIR /app

# Copia los archivos del proyecto al contenedor
COPY package.json ./
COPY server.js ./

# Instala las dependencias
RUN npm install

# Expone el puerto en el que corre la app
EXPOSE 3000

# Comando para ejecutar el servidor
CMD ["node", "server.js"]
