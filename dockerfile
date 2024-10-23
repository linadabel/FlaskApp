# Dockerfile
FROM python:3.13-slim

# Définir le répertoire de travail
WORKDIR /app

# Copier les fichiers nécessaires dans le conteneur
COPY requirements.txt .

# Installer les dépendances
RUN pip install -r requirements.txt

# Copier le code de l'application
COPY app.py app.py

# Exposer le port 5000 pour l'application Flask
EXPOSE 5000

# Commande pour exécuter l'application
CMD ["python", "app.py"]
