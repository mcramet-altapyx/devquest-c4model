# Diagrammes C4 - PlantUML

Ce répertoire contient les fichiers source PlantUML (`.puml`) pour les diagrammes C4 de la présentation.

## Prérequis

Pour générer les diagrammes, vous devez installer PlantUML :

### macOS
```bash
brew install plantuml
```

### Ubuntu/Debian
```bash
sudo apt-get install plantuml
```

### Windows
Téléchargez `plantuml.jar` depuis [https://plantuml.com/download](https://plantuml.com/download) et installez Java.

### Alternative : Serveur en ligne
Vous pouvez utiliser le serveur PlantUML en ligne : [https://www.plantuml.com/plantuml/](https://www.plantuml.com/plantuml/)

## Génération des diagrammes

Pour générer tous les diagrammes PNG :

```bash
cd diagrams
./generate.sh
```

Les images seront créées dans le répertoire `images/`.

## Structure des diagrammes

### example-context.puml
Diagramme de **Contexte (C1)** : Vue d'ensemble du système e-commerce avec ses acteurs et systèmes externes.

### example-container.puml
Diagramme de **Container (C2)** : Décomposition du système en conteneurs (applications, bases de données, services).

### example-component.puml
Diagramme de **Component (C3)** : Zoom sur l'API REST avec ses composants internes (controllers, services, repositories).

## Syntaxe C4-PlantUML

Les diagrammes utilisent la bibliothèque [C4-PlantUML](https://github.com/plantuml-stdlib/C4-PlantUML) qui fournit des macros pour le C4 Model.

### Exemple de syntaxe Context

```plantuml
@startuml
!include https://raw.githubusercontent.com/plantuml-stdlib/C4-PlantUML/master/C4_Context.puml

Person(user, "Utilisateur", "Description")
System(system, "Mon Système", "Description du système")
System_Ext(external, "Système Externe", "Description")

Rel(user, system, "Utilise", "HTTPS")
Rel(system, external, "Appelle", "API REST")
@enduml
```

## Édition

Pour éditer les diagrammes :

1. Ouvrez un fichier `.puml` dans votre éditeur de texte
2. Modifiez le contenu
3. Exécutez `./generate.sh` pour régénérer les PNG
4. Rechargez la présentation pour voir les changements

## Extensions recommandées

### VS Code
- [PlantUML](https://marketplace.visualstudio.com/items?itemName=jebbs.plantuml) - Prévisualisation en temps réel

### IntelliJ IDEA
- [PlantUML Integration](https://plugins.jetbrains.com/plugin/7017-plantuml-integration)

## Ressources

- [Documentation C4-PlantUML](https://github.com/plantuml-stdlib/C4-PlantUML)
- [Guide PlantUML](https://plantuml.com/guide)
- [C4 Model officiel](https://c4model.com/)
