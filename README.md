# C4 Model pour non-architectes - Devquest 2026

[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)

Slides et ressources pour la conférence **"Introduction à un mindset architecture via C4 Model"** présentée à Devquest 2026.

## 🎯 À propos de ce talk

Ce talk vise à rendre l'architecture logicielle accessible à tous les développeurs, pas uniquement aux "architectes". Vous découvrirez comment documenter simplement votre architecture avec le C4 Model et PlantUML.

### Objectifs

À la fin de ce talk, vous serez capable de :

- ✅ Comprendre les 4 niveaux du C4 Model
- ✅ Créer vos premiers diagrammes d'architecture
- ✅ Versionner votre documentation avec Git
- ✅ Appliquer les bonnes pratiques
- ✅ Démarrer dès demain sur votre projet

### Approche

**Pratique et actionnable** : Vous repartirez avec des outils concrets et un plan d'action pour démarrer immédiatement.

## 📊 Voir les slides

### En ligne (recommandé)

Les slides sont hébergés sur GitHub Pages :

👉 **[Voir les slides](https://votre-username.github.io/devquest/)**

_(Mettez à jour ce lien une fois déployé)_

### En local

```bash
# Cloner le repository
git clone https://github.com/votre-username/devquest.git
cd devquest

# Ouvrir dans un navigateur
open index.html
# ou
python -m http.server 8000
# puis ouvrir http://localhost:8000
```

## 🏗️ Structure du projet

```
devquest/
├── index.html              # Page principale Reveal.js
├── css/
│   └── custom.css         # Styles personnalisés
├── slides/                # Contenu des slides (Markdown)
│   ├── 00-intro.md
│   ├── 01-why-architecture.md
│   ├── 02-c4-model-intro.md
│   ├── 03-level1-context.md
│   ├── 04-level2-container.md
│   ├── 05-level3-component.md
│   ├── 06-level4-code.md
│   ├── 07-diagrams-as-code.md
│   ├── 08-hands-on-demo.md
│   ├── 09-tools-comparison.md
│   ├── 10-best-practices.md
│   ├── 11-action-plan.md
│   └── 12-resources.md
├── diagrams/              # Sources PlantUML (.puml)
│   ├── example-context.puml
│   ├── example-container.puml
│   ├── example-component.puml
│   ├── generate.sh
│   └── README.md
├── images/                # Diagrammes générés (PNG)
├── workshop/              # Kit pratique pour les participants
│   ├── README.md
│   ├── quickstart.md
│   ├── template.puml
│   ├── exercise.md
│   ├── solution.puml
│   └── cheatsheet.md
└── README.md             # Ce fichier
```

## 🚀 Démarrage rapide

### Pour suivre le workshop

Tout est dans le dossier [`workshop/`](workshop/) !

1. **Débutant ?** ➡️ Commencez par [`workshop/quickstart.md`](workshop/quickstart.md)
2. **Exercice pratique** ➡️ Suivez [`workshop/exercise.md`](workshop/exercise.md)
3. **Référence rapide** ➡️ Imprimez [`workshop/cheatsheet.md`](workshop/cheatsheet.md)

### Pour générer les diagrammes

```bash
# Prérequis : installer PlantUML
brew install plantuml  # macOS
# ou
sudo apt-get install plantuml  # Linux

# Générer tous les diagrammes
cd diagrams
./generate.sh
```

Les images PNG seront créées dans `images/`.

## 🛠️ Technologies utilisées

### Présentation

- **[Reveal.js](https://revealjs.com/)** - Framework de présentation HTML
- **CSS personnalisé** - Thème adapté au C4 Model
- **Markdown** - Format des slides pour facilité d'édition

### Diagrammes

- **[PlantUML](https://plantuml.com/)** - Génération de diagrammes
- **[C4-PlantUML](https://github.com/plantuml-stdlib/C4-PlantUML)** - Bibliothèque C4 pour PlantUML
- **Architecture as Code** - Diagrammes versionnés avec Git

### Hébergement

- **GitHub Pages** - Hébergement gratuit des slides
- **GitHub Actions** (optionnel) - CI/CD pour génération auto

## 📖 Contenu du talk

### 1. Introduction (5 min)
- Problématique : documentation obsolète ou inexistante
- Objectifs du talk

### 2. Pourquoi documenter l'architecture ? (5 min)
- L'architecture, c'est quoi ?
- Les bénéfices d'une bonne documentation

### 3. Introduction au C4 Model (10 min)
- Les 4 niveaux : Context, Container, Component, Code
- L'analogie de la carte
- Pourquoi ça marche ?

### 4. Les niveaux en détail (15 min)
- Niveau 1 : Context - Vue globale
- Niveau 2 : Container - Applications et services
- Niveau 3 : Component - Modules internes
- Niveau 4 : Code - Détails (optionnel)

### 5. Architecture as Code (10 min)
- Pourquoi versionner les diagrammes ?
- Démo live avec PlantUML

### 6. Comparaison des outils (5 min)
- PlantUML vs Mermaid vs Structurizr

### 7. Bonnes pratiques (5 min)
- Ce qu'il faut faire et éviter
- La règle du 7±2

### 8. Plan d'action (5 min)
- Comment démarrer dès demain
- Roadmap sur 1 mois

## 🎁 Ressources pour les participants

### Templates prêts à l'emploi

- [`workshop/template.puml`](workshop/template.puml) - Template PlantUML commenté
- Exemples complets dans `diagrams/`

### Guides pratiques

- [`workshop/quickstart.md`](workshop/quickstart.md) - Démarrage en 15 minutes
- [`workshop/exercise.md`](workshop/exercise.md) - Exercice guidé
- [`workshop/cheatsheet.md`](workshop/cheatsheet.md) - Référence rapide

### Exemples concrets

Système e-commerce avec les 3 niveaux :
- `diagrams/example-context.puml` - Niveau Context
- `diagrams/example-container.puml` - Niveau Container
- `diagrams/example-component.puml` - Niveau Component

## 🔧 Développement local

### Éditer les slides

Les slides sont en Markdown dans `slides/`. Éditez-les avec votre éditeur préféré.

### Prévisualiser

```bash
# Option 1 : Ouvrir directement
open index.html

# Option 2 : Serveur HTTP simple
python -m http.server 8000
# puis http://localhost:8000

# Option 3 : Live reload avec npm
npm install -g live-server
live-server
```

### Modifier les diagrammes

1. Éditez les fichiers `.puml` dans `diagrams/`
2. Régénérez les PNG :
   ```bash
   cd diagrams
   ./generate.sh
   ```
3. Rechargez la présentation

### Extensions recommandées

**VS Code**
- PlantUML
- Reveal.js Preview

**IntelliJ IDEA**
- PlantUML Integration

## 🌐 Déploiement sur GitHub Pages

### Méthode 1 : Configuration manuelle

1. Pushez votre code sur GitHub
2. Allez dans **Settings > Pages**
3. Source : **Deploy from a branch**
4. Branch : **main** / folder: **/ (root)**
5. Cliquez sur **Save**

Vos slides seront disponibles à :
```
https://votre-username.github.io/devquest/
```

### Méthode 2 : Avec GitHub Actions (avancé)

Un workflow est fourni dans `.github/workflows/deploy.yml` pour :
- Générer automatiquement les diagrammes
- Déployer sur GitHub Pages

## 📚 Ressources complémentaires

### C4 Model

- **Site officiel** : https://c4model.com
- **Livre** : "Software Architecture for Developers" par Simon Brown
- **Exemples** : https://c4model.com/#examples

### PlantUML

- **Documentation** : https://plantuml.com/guide
- **C4-PlantUML** : https://github.com/plantuml-stdlib/C4-PlantUML
- **Serveur en ligne** : https://www.plantuml.com/plantuml/

### Articles

- [Blog OCTO - C4 Model as Code](https://blog.octo.com/diagrammes-d'architecture-as-code-avec-c4model--comment-ca-marche) (source d'inspiration)

## ❓ FAQ

### Puis-je réutiliser ces slides pour ma propre conférence ?

Oui ! Ce projet est sous licence MIT. Vous pouvez l'utiliser, le modifier et le redistribuer librement. Un crédit serait apprécié 😊

### Comment adapter les slides à mon contexte ?

1. Forkez le repo
2. Modifiez les fichiers Markdown dans `slides/`
3. Remplacez les exemples de diagrammes
4. Personnalisez le CSS si nécessaire

### Les diagrammes ne s'affichent pas

Vérifiez que :
- Les fichiers PNG sont bien dans `images/`
- Le script `generate.sh` a été exécuté
- Les chemins dans les slides sont corrects

### Puis-je utiliser Mermaid au lieu de PlantUML ?

Oui ! Mermaid supporte C4 Model. La syntaxe est différente mais les concepts restent les mêmes.

## 🤝 Contribution

Les contributions sont les bienvenues !

- 🐛 Reportez les bugs via les Issues
- 💡 Proposez des améliorations
- 🔀 Soumettez des Pull Requests

## 👤 Auteur

**Matthieu Cramet**

- Twitter : [@votre_twitter](https://twitter.com/votre_twitter)
- LinkedIn : [votre-profil](https://linkedin.com/in/votre-profil)
- GitHub : [@votre-username](https://github.com/votre-username)

## 📄 Licence

Ce projet est sous licence MIT - voir le fichier [LICENSE](LICENSE) pour plus de détails.

## 🙏 Remerciements

- **Simon Brown** pour avoir créé le C4 Model
- **PlantUML** et la communauté C4-PlantUML
- **OCTO Technology** pour l'article qui a inspiré ce talk
- **Devquest** pour l'opportunité de présenter

## ⭐ Support

Si ce projet vous a été utile, n'hésitez pas à :
- ⭐ Mettre une étoile sur GitHub
- 🐦 Partager sur Twitter
- 💬 Donner votre feedback

---

**Slides créés avec ❤️ pour Devquest 2026**
