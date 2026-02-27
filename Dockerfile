# Dockerfile minimal pour PHP sur Render
FROM php:8.2-cli

# Copier tout le code dans le container
COPY . /app
WORKDIR /app

# Exposer le port que Render attend
EXPOSE 10000

# Lancer le serveur PHP intégré
CMD ["php", "-S", "0.0.0.0:10000"]
