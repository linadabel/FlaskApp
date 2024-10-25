# Utilisation de l'image Python officielle
FROM python:3.13-slim

# Définition du répertoire de travail dans le conteneur
WORKDIR /app

# Copie des fichiers nécessaires dans le conteneur
COPY requirements.txt requirements.txt
COPY app.py app.py

# Installation des dépendances Flask
RUN pip install --no-cache-dir -r requirements.txt

# Exposition du port 5000
EXPOSE 5000

# Lancement de l'application
CMD ["python", "app.py"]
