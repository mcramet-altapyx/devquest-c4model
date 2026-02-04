# Quickstart C4 Model avec PlantUML

Guide de démarrage rapide pour créer votre premier diagramme C4 en 15 minutes.

## ⚡ Installation (5 min)

### macOS

```bash
# Installer PlantUML via Homebrew
brew install plantuml

# Vérifier l'installation
plantuml -version
```

### Linux (Ubuntu/Debian)

```bash
# Installer PlantUML
sudo apt-get update
sudo apt-get install plantuml

# Vérifier l'installation
plantuml -version
```

### Windows

1. Téléchargez `plantuml.jar` depuis [https://plantuml.com/download](https://plantuml.com/download)
2. Installez Java si ce n'est pas déjà fait : [https://www.java.com/download/](https://www.java.com/download/)
3. Testez :
```cmd
java -jar plantuml.jar -version
```

### Alternative : Aucune installation

Utilisez le serveur en ligne : [https://www.plantuml.com/plantuml/](https://www.plantuml.com/plantuml/)

## 📝 Créer votre premier diagramme (5 min)

### 1. Créez un fichier `my-first-diagram.puml`

```plantuml
@startuml
!include https://raw.githubusercontent.com/plantuml-stdlib/C4-PlantUML/master/C4_Context.puml

LAYOUT_WITH_LEGEND()
title Mon Premier Système - Contexte

Person(user, "Utilisateur", "Personne qui utilise l'application")
System(app, "Mon Application", "Système principal que je développe")
System_Ext(external, "Service Externe", "API tierce (ex: API météo)")

Rel(user, app, "Utilise", "HTTPS")
Rel(app, external, "Consulte", "HTTPS/JSON")

@enduml
```

### 2. Générez l'image

```bash
# Génère my-first-diagram.png dans le même dossier
plantuml my-first-diagram.puml
```

### 3. Visualisez le résultat

Ouvrez le fichier `my-first-diagram.png` généré.

**Félicitations ! Vous venez de créer votre premier diagramme C4 !** 🎉

## 🎯 Appliquez à votre projet (5 min)

### Étape 1 : Identifiez les éléments

Prenez 2 minutes pour répondre :

1. **Qui** utilise votre système ? (acteurs)
   - _Exemple : Clients, Admins, Support_

2. **Quel** est votre système principal ?
   - _Exemple : Application e-commerce_

3. **Quels** systèmes externes utilisez-vous ?
   - _Exemple : Stripe (paiement), SendGrid (email)_

### Étape 2 : Créez votre diagramme

Copiez le template et remplacez :

```plantuml
@startuml
!include https://raw.githubusercontent.com/plantuml-stdlib/C4-PlantUML/master/C4_Context.puml

LAYOUT_WITH_LEGEND()
title [VOTRE PROJET] - Contexte

' Vos acteurs
Person(acteur1, "Nom", "Description")

' Votre système
System(mon_systeme, "Nom du système", "Ce qu'il fait")

' Systèmes externes
System_Ext(externe1, "Nom", "Description")

' Relations
Rel(acteur1, mon_systeme, "Action", "Protocole")
Rel(mon_systeme, externe1, "Action", "Protocole")

@enduml
```

### Étape 3 : Générez et partagez

```bash
# Générer
plantuml mon-projet-context.puml

# Commiter dans Git
git add docs/architecture/mon-projet-context.puml
git add docs/architecture/mon-projet-context.png
git commit -m "docs: add context diagram"
```

## 📁 Organisation recommandée

```
mon-projet/
├── README.md
├── docs/
│   └── architecture/
│       ├── README.md
│       ├── context.puml
│       ├── container.puml (plus tard)
│       └── images/
│           ├── context.png
│           └── container.png
├── src/
└── ...
```

## 🔧 Configuration IDE (optionnel mais recommandé)

### VS Code

1. Installez l'extension : [PlantUML](https://marketplace.visualstudio.com/items?itemName=jebbs.plantuml)
2. Ouvrez un fichier `.puml`
3. Appuyez sur `Alt+D` pour prévisualiser

### IntelliJ IDEA / WebStorm

1. Installez le plugin : **PlantUML Integration**
2. Ouvrez un fichier `.puml`
3. Cliquez sur l'icône de prévisualisation dans la toolbar

### Sublime Text

1. Installez via Package Control : **PlantUML**
2. Raccourci : `Ctrl+Shift+P` → "PlantUML: Preview"

## 🚀 Prochaines étapes

Maintenant que vous maîtrisez le Context (C1) :

### Créer un Container diagram (C2)

```plantuml
@startuml
!include https://raw.githubusercontent.com/plantuml-stdlib/C4-PlantUML/master/C4_Container.puml

LAYOUT_WITH_LEGEND()
title Mon Système - Container

Person(user, "Utilisateur")

System_Boundary(system, "Mon Système") {
    Container(webapp, "Application Web", "React", "Interface utilisateur")
    Container(api, "API", "Node.js", "Logique métier")
    ContainerDb(db, "Database", "PostgreSQL", "Stocke les données")
}

Rel(user, webapp, "Utilise", "HTTPS")
Rel(webapp, api, "Appelle", "HTTPS/JSON")
Rel(api, db, "Lit/Écrit", "SQL")

@enduml
```

## 📚 Ressources

### Documentation
- [C4 Model officiel](https://c4model.com)
- [C4-PlantUML GitHub](https://github.com/plantuml-stdlib/C4-PlantUML)
- [PlantUML Language Reference](https://plantuml.com/guide)

### Exemples
- Consultez le dossier `diagrams/` de ce repo
- [C4-PlantUML exemples](https://github.com/plantuml-stdlib/C4-PlantUML/tree/master/samples)

### Communauté
- [PlantUML Forum](https://forum.plantuml.net/)
- [C4 Model discussions](https://github.com/c4model/c4model.github.io/discussions)

## ❓ Troubleshooting

### Erreur "plantuml: command not found"

**macOS/Linux :**
```bash
# Vérifiez que Homebrew/apt-get a bien installé
which plantuml
```

**Windows :**
Utilisez Java directement :
```cmd
java -jar C:\chemin\vers\plantuml.jar fichier.puml
```

### Erreur "Unable to load C4 library"

Vérifiez votre connexion internet - PlantUML télécharge la bibliothèque C4 depuis GitHub.

**Alternative hors-ligne :**
Téléchargez les fichiers C4 localement et changez l'include :
```plantuml
!include ./C4_Context.puml
```

### Le diagramme est trop petit/grand

Ajoutez un facteur de scale :
```plantuml
scale 1.5
```

## ✅ Checklist de validation

Votre diagramme est prêt si :

- [ ] Il a un titre clair
- [ ] Tous les éléments ont une description
- [ ] Les relations indiquent le protocole
- [ ] Il contient 5-9 éléments maximum
- [ ] Il est lisible en moins de 30 secondes
- [ ] Il est versionné dans Git

## 🎓 Récapitulatif

| Action | Commande |
|--------|----------|
| Installer | `brew install plantuml` (macOS) |
| Créer | Éditez un fichier `.puml` |
| Générer | `plantuml fichier.puml` |
| Visualiser | Ouvrez le `.png` généré |
| Versionner | `git add` + `git commit` |

**Temps total : ~15 minutes**

**Vous êtes maintenant prêt à documenter votre architecture !** 🚀
