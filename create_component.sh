#!/bin/bash

# Demande à l'utilisateur de saisir un nom pour le dossier
echo "Entrez le nom du composant à créer : "
read folder_name

# Demande à l'utilisateur où créer le composant
echo "Où voulez-vous créer ce composant ?"
echo "1. components (src/components)"
echo "2. layout (src/layout)"
echo "3. pages (src/pages)"
read -p "Veuillez choisir une option (1/2/3) : " choice

case $choice in
    1)
        base_path="src/components"
        ;;
    2)
        base_path="src/layout"
        ;;
    3)
        base_path="src/pages"
        ;;
    *)
        echo "Option invalide. Le composant sera créé dans src/components par défaut."
        base_path="src/components"
        ;;
esac

# Chemin complet du dossier à créer
folder_path="$base_path/$folder_name"

# Crée le dossier avec le nom saisi par l'utilisateur dans le chemin spécifié
mkdir -p "$folder_path"

# Se déplace dans le dossier nouvellement créé
cd "$folder_path"

# Crée les fichiers index.jsx et index.scss
touch index.jsx index.scss

# Affiche un message pour indiquer que les fichiers ont été créés
echo "Composant \"$folder_name\" créé avec succès dans \"$base_path\"."
echo "Fichiers \"index.jsx\" et \"index.scss\" ajoutés."
