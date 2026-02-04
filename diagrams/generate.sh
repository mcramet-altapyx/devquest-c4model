#!/bin/bash

# Script pour générer les diagrammes PNG depuis les fichiers PlantUML
# Utilise PlantUML pour convertir les .puml en PNG

set -e

echo "🎨 Génération des diagrammes C4 avec PlantUML..."

# Vérifier si PlantUML est disponible
if ! command -v plantuml &> /dev/null
then
    echo "❌ PlantUML n'est pas installé."
    echo ""
    echo "📦 Installation recommandée :"
    echo "  - macOS: brew install plantuml"
    echo "  - Ubuntu/Debian: apt-get install plantuml"
    echo "  - Ou télécharger plantuml.jar depuis https://plantuml.com/download"
    echo ""
    echo "💡 Alternative : utiliser le serveur en ligne"
    echo "  https://www.plantuml.com/plantuml/"
    exit 1
fi

# Créer le répertoire images s'il n'existe pas
mkdir -p ../images

# Générer tous les diagrammes
for file in *.puml; do
    if [ -f "$file" ]; then
        echo "  ⏳ Génération de $file..."
        plantuml "$file" -o ../images -tpng
        echo "  ✅ $file généré"
    fi
done

echo ""
echo "✨ Tous les diagrammes ont été générés dans le dossier images/"
echo ""
echo "📝 Pour voir les diagrammes, ouvrez les fichiers PNG dans images/"
