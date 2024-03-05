# Utilisez l'image de base Node.js
FROM node:latest

# Définissez le mainteneur de l'image
MAINTAINER Djobbi Oumaima

# Définissez le répertoire de travail dans le conteneur
WORKDIR /app

# Copiez le fichier package.json dans le répertoire de travail
COPY package.json .

# Installez les dépendances du projet
RUN npm install

# Copiez le reste des fichiers nécessaires dans le répertoire de travail de l'image
COPY index.js .
COPY test/test.js ./test/

# Commande par défaut à exécuter lorsque le conteneur démarre
CMD ["npm", "test"]
