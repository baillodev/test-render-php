# Test Render PHP

Projet minimal pour déployer une app PHP sur [Render](https://render.com) via Docker.

## Structure

```
├── Dockerfile   # Image Docker avec PHP 8.2
├── index.php    # Point d'entrée de l'app
└── README.md
```

## Lancer en local

```bash
docker build -t test-render-php .
docker run -d --name test-render-php --network host test-render-php
```

Ouvrir http://localhost:10000

Pour arrêter :

```bash
docker rm -f test-render-php
```

## Déployer sur Render

1. Pusher le repo sur GitHub
2. Créer un **Web Service** sur Render
3. Connecter le repo — Render détecte le Dockerfile automatiquement
4. Le port 10000 est déjà configuré, rien à changer
