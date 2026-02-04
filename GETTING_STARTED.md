# Guide de démarrage - Devquest C4 Model Talk

Bienvenue ! Ce guide vous aide à démarrer rapidement avec votre présentation.

## 🚀 Démarrage ultra-rapide (5 minutes)

### 1. Visualiser les slides

```bash
# Option 1 : Serveur Python (recommandé)
npm run start
# puis ouvrir http://localhost:8000

# Option 2 : Directement dans le navigateur
open index.html
```

### 2. Naviguer dans la présentation

- **Flèches** : Naviguer entre les slides
- **Espace** : Avancer
- **ESC** ou **O** : Vue d'ensemble
- **S** : Ouvrir les notes du présentateur
- **F** : Mode plein écran

### 3. Personnaliser (optionnel)

```bash
# Éditez vos informations
code slides/00-intro.md        # Présentation personnelle
code README.md                 # URLs et contacts

# Visualisez les changements
# Rechargez simplement le navigateur (Cmd+R ou F5)
```

## 📐 Générer les diagrammes (optionnel)

Si vous voulez voir ou modifier les diagrammes :

### Installation de PlantUML

```bash
# macOS
brew install plantuml

# Ubuntu/Debian
sudo apt-get install plantuml

# Vérifier l'installation
plantuml -version
```

### Génération

```bash
# Générer tous les diagrammes
cd diagrams
./generate.sh

# Les PNG sont créés dans images/
ls -la ../images/
```

## 🎯 Préparer votre talk

### Checklist avant le jour J

- [ ] Tester la présentation en local
- [ ] Vérifier que tous les slides s'affichent
- [ ] Générer les diagrammes (si modifiés)
- [ ] Personnaliser l'intro avec vos infos
- [ ] Préparer les notes de présentateur (touches 'S')
- [ ] Imprimer la cheatsheet pour les participants
- [ ] Tester sur l'ordinateur de présentation

### Répétition

```bash
# Lancer la présentation
npm run start

# Mode présentateur (notes visibles)
# Appuyez sur 'S' dans la présentation
```

## 📦 Partager avec les participants

### Pendant le talk

Les participants peuvent suivre en direct :
- Si déployé sur GitHub Pages : partagez l'URL
- En local : partagez via réseau local

### Après le talk

Les participants ont accès à :
- `workshop/quickstart.md` - Guide de démarrage (15 min)
- `workshop/exercise.md` - Exercice pratique
- `workshop/template.puml` - Template à réutiliser
- `workshop/cheatsheet.md` - Référence rapide

Partagez le repo GitHub ou un ZIP du projet.

## 🌐 Déployer sur GitHub Pages

### Étape 1 : Push sur GitHub

```bash
git add .
git commit -m "Initial commit - C4 Model talk"
git branch -M main
git remote add origin https://github.com/votre-username/devquest.git
git push -u origin main
```

### Étape 2 : Activer GitHub Pages

1. Aller sur votre repo GitHub
2. **Settings** > **Pages**
3. Source : **Deploy from a branch**
4. Branch : **main** / folder: **/ (root)**
5. **Save**

Attendez quelques minutes, puis vos slides seront disponibles à :
```
https://votre-username.github.io/devquest/
```

### Étape 3 : Mettre à jour le README

Éditez `README.md` et remplacez :
```markdown
👉 **[Voir les slides](https://votre-username.github.io/devquest/)**
```

## 🎨 Personnalisation avancée

### Changer le thème

Éditez `index.html` ligne 19 :

```html
<!-- Thèmes disponibles : white, black, league, beige, night, serif, simple -->
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/reveal.js@5.0.4/dist/theme/white.css" id="theme">
```

### Modifier les couleurs

Éditez `css/custom.css` :

```css
:root {
    --primary-color: #2E86AB;      /* Bleu principal */
    --secondary-color: #06A77D;    /* Vert secondaire */
    --accent-color: #F24236;       /* Rouge accent */
}
```

### Ajouter des slides

1. Créez `slides/XX-nouveau.md`
2. Ajoutez dans `index.html` :

```html
<section data-markdown="slides/XX-nouveau.md"
         data-separator="^\r?\n---\r?\n$"
         data-separator-vertical="^\r?\n--\r?\n$">
</section>
```

## 💡 Astuces de présentation

### Pendant le talk

1. **Mode présentateur** : Appuyez sur 'S'
   - Montre les notes
   - Affiche le timer
   - Prévisualise le slide suivant

2. **Vue d'ensemble** : Appuyez sur 'O' ou ESC
   - Voir tous les slides
   - Navigation rapide

3. **Zoom** : Alt+Click sur un élément
   - Zoomer sur un diagramme
   - Mettre en évidence

### Gérer le timing

Durée recommandée par section :
- Intro : 5 min
- Pourquoi : 5 min
- C4 Intro : 10 min
- Les niveaux : 15 min
- As Code + Démo : 15 min
- Best practices : 5 min
- Plan d'action : 5 min

**Total : 60 min + 10-15 min Q&A**

## 📚 Ressources utiles

### Documentation

- **Workshop complet** : `workshop/README.md`
- **Quickstart PlantUML** : `workshop/quickstart.md`
- **Référence C4** : `workshop/cheatsheet.md`

### Liens externes

- [C4 Model officiel](https://c4model.com)
- [C4-PlantUML GitHub](https://github.com/plantuml-stdlib/C4-PlantUML)
- [Article OCTO](https://blog.octo.com/diagrammes-d'architecture-as-code-avec-c4model--comment-ca-marche)

## 🆘 Problèmes courants

### Les slides ne s'affichent pas

```bash
# Vérifier que le serveur tourne
curl http://localhost:8000

# Si erreur, relancer
npm run start
```

### Les diagrammes sont manquants

```bash
# Vérifier que PlantUML est installé
plantuml -version

# Générer les diagrammes
cd diagrams && ./generate.sh
```

### Erreur CORS en local

Utilisez toujours un serveur HTTP (pas `file://`) :
```bash
npm run start
```

## ✅ Checklist finale

Avant votre talk :

- [ ] Présentation testée en local
- [ ] Diagrammes générés et visibles
- [ ] Informations personnelles mises à jour
- [ ] Notes de présentateur préparées
- [ ] Repo GitHub créé (optionnel)
- [ ] GitHub Pages activé (optionnel)
- [ ] Cheatsheet imprimée pour participants
- [ ] Timing répété

## 🎉 Vous êtes prêt !

**Commande de démarrage** :
```bash
npm run start
```

**Puis ouvrez** : http://localhost:8000

**Bon talk à Devquest !** 🚀
