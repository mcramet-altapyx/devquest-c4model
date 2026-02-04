# Workshop C4 Model - Kit complet

Bienvenue dans le kit pratique pour apprendre à documenter votre architecture avec le C4 Model et PlantUML.

## 📦 Contenu du workshop

Ce dossier contient tout ce dont vous avez besoin pour démarrer :

### 📄 Fichiers disponibles

| Fichier | Description | Durée |
|---------|-------------|-------|
| **quickstart.md** | Guide de démarrage rapide | 15 min |
| **template.puml** | Template PlantUML commenté et prêt à l'emploi | - |
| **exercise.md** | Exercice pratique guidé (app bibliothèque) | 20 min |
| **solution.puml** | Solution de l'exercice | - |
| **cheatsheet.md** | Référence rapide C4+PlantUML (à imprimer) | - |

## 🚀 Par où commencer ?

### Vous n'avez jamais utilisé PlantUML ?

➡️ **Commencez par [`quickstart.md`](quickstart.md)**

Ce guide vous accompagne pas à pas :
1. Installation de PlantUML (5 min)
2. Création de votre premier diagramme (5 min)
3. Application à votre projet (5 min)

### Vous connaissez déjà PlantUML ?

➡️ **Passez directement à [`exercise.md`](exercise.md)**

Exercice pratique pour créer un diagramme de Contexte complet.

### Vous voulez une référence rapide ?

➡️ **Consultez [`cheatsheet.md`](cheatsheet.md)**

Toute la syntaxe C4-PlantUML sur une page. Idéal à imprimer et garder près de vous.

## 🎯 Objectifs du workshop

À la fin de ce workshop, vous serez capable de :

- ✅ Installer et utiliser PlantUML
- ✅ Créer un diagramme de Contexte (C1)
- ✅ Créer un diagramme de Container (C2)
- ✅ Versionner vos diagrammes dans Git
- ✅ Appliquer les bonnes pratiques du C4 Model

## 📖 Parcours recommandé

### Débutant (1h30)

1. **Quickstart** (15 min)
   - Installation
   - Premier diagramme
   - Application à votre projet

2. **Exercise** (20 min)
   - Exercice guidé complet
   - Validation avec la solution

3. **Template** (10 min)
   - Comprendre le template
   - L'adapter à vos besoins

4. **Cheatsheet** (5 min)
   - Lire la référence
   - Identifier les éléments utiles

5. **Pratique** (40 min)
   - Créer le Context de votre projet
   - Créer le Container de votre projet
   - Commit dans Git

### Intermédiaire (45 min)

Si vous connaissez déjà les bases :

1. **Exercise avancé** (20 min)
   - Faites l'exercice sans regarder la solution
   - Ajoutez les bonus (Container diagram)

2. **Template personnalisé** (15 min)
   - Créez votre propre template d'entreprise
   - Ajoutez vos conventions de nommage

3. **Intégration CI/CD** (10 min)
   - Configurez la génération auto des diagrammes
   - Ajoutez une validation dans vos PRs

## 🛠️ Prérequis techniques

### Installation minimale

- **PlantUML** : Via brew/apt-get ou plantuml.jar
- **Java 8+** : Pour exécuter PlantUML
- **Git** : Pour versionner vos diagrammes

### Installation recommandée

Ajoutez une extension IDE :

- **VS Code** : [PlantUML Extension](https://marketplace.visualstudio.com/items?itemName=jebbs.plantuml)
- **IntelliJ** : [PlantUML Integration](https://plugins.jetbrains.com/plugin/7017-plantuml-integration)
- **Sublime** : PlantUML via Package Control

### Alternative : Aucune installation

Utilisez le serveur PlantUML en ligne :
- https://www.plantuml.com/plantuml/

## 📝 Structure du workshop

```
workshop/
├── README.md           ← Vous êtes ici
├── quickstart.md       ← Démarrage rapide (15 min)
├── template.puml       ← Template commenté à réutiliser
├── exercise.md         ← Exercice pratique guidé
├── solution.puml       ← Solution de l'exercice
└── cheatsheet.md       ← Référence rapide (à imprimer)
```

## 🎓 Exercice pratique

### Scénario

Vous devez créer le diagramme de Contexte pour une **application de bibliothèque**.

### Ce que vous allez apprendre

- Identifier les acteurs (Lecteur, Bibliothécaire)
- Modéliser le système principal
- Ajouter les systèmes externes (Email, Paiement)
- Créer les relations avec les bons protocoles

### Instructions détaillées

Voir [`exercise.md`](exercise.md) pour le guide complet.

## 🏆 Validation des acquis

Vous avez réussi le workshop si vous pouvez :

- [ ] Créer un diagramme Context en moins de 10 minutes
- [ ] Générer l'image PNG depuis le fichier .puml
- [ ] Expliquer la différence entre Context et Container
- [ ] Commiter vos diagrammes dans Git
- [ ] Utiliser le template pour votre projet réel

## 💡 Conseils pour réussir

### 1. Commencez simple

Ne créez pas immédiatement les 4 niveaux. Démarrez avec un Context basique.

### 2. Itérez

Votre premier diagramme ne sera pas parfait. C'est normal ! Montrez-le à votre équipe et améliorez-le.

### 3. Respectez la règle du 7±2

Maximum 5-9 éléments par diagramme. Si vous en avez plus, créez plusieurs vues.

### 4. Versionez tout

Commitez vos `.puml` ET vos `.png` dans Git. Les diagrammes doivent vivre avec le code.

### 5. Documentez les choix

Ajoutez des commentaires dans vos fichiers `.puml` pour expliquer les décisions importantes.

## 🔗 Ressources complémentaires

### Documentation officielle

- **C4 Model** : https://c4model.com
- **C4-PlantUML** : https://github.com/plantuml-stdlib/C4-PlantUML
- **PlantUML** : https://plantuml.com

### Exemples et inspiration

- **Exemples C4-PlantUML** : https://github.com/plantuml-stdlib/C4-PlantUML/tree/master/samples
- **Real World Examples** : https://c4model.com/#examples

### Livres

- **Software Architecture for Developers** par Simon Brown
- **Visualising Software Architecture** par Simon Brown (gratuit PDF)

### Vidéos

- Chaîne YouTube "C4 Model"
- Conférences de Simon Brown (InfoQ, NDC, Devoxx)

## ❓ Questions fréquentes

### Puis-je utiliser Mermaid au lieu de PlantUML ?

Oui ! Mermaid supporte C4 Model de manière expérimentale. La syntaxe est légèrement différente mais les concepts restent les mêmes.

### Dois-je créer les 4 niveaux pour chaque système ?

Non ! La plupart des projets se contentent de Context (C1) et Container (C2). Component (C3) uniquement si nécessaire, et Code (C4) rarement.

### Comment intégrer C4 dans notre workflow agile ?

- Ajoutez les diagrammes dans vos Definition of Done
- Reviewez-les dans les PRs importantes
- Mettez-les à jour lors des rétrospectives
- Utilisez-les dans l'onboarding

### Et pour une architecture microservices ?

Créez un Context global, puis un Container par domaine/bounded context. Les microservices apparaissent comme des Containers.

### Combien de temps pour maintenir les diagrammes ?

Avec Architecture as Code et des bonnes pratiques : **~15 minutes par mois**.

## 🎁 Bonus

### Scripts utiles

**Générer tous les diagrammes d'un coup**

```bash
#!/bin/bash
# generate-all.sh
for file in docs/architecture/*.puml; do
    plantuml "$file" -o images/
done
echo "✅ Tous les diagrammes générés"
```

**Vérifier les diagrammes dans CI**

```yaml
# .github/workflows/docs.yml
name: Generate Diagrams
on: [push]
jobs:
  diagrams:
    runs-on: ubuntu-latest
    steps:
      - uses: actions/checkout@v2
      - name: Install PlantUML
        run: sudo apt-get install -y plantuml
      - name: Generate diagrams
        run: cd docs/architecture && plantuml *.puml
      - name: Commit diagrams
        run: |
          git config user.name "Bot"
          git add docs/architecture/images/
          git commit -m "docs: update diagrams" || echo "No changes"
```

### Templates avancés

Consultez le dossier `../diagrams/` pour des exemples plus complets :
- E-commerce (Context, Container, Component)
- Avec commentaires détaillés
- Bonnes pratiques appliquées

## 🤝 Contribution

Vous avez des suggestions pour améliorer ce workshop ?

- Ouvrez une issue sur GitHub
- Proposez une Pull Request
- Partagez vos retours d'expérience

## 📬 Support

Besoin d'aide ?

1. Consultez d'abord [`cheatsheet.md`](cheatsheet.md)
2. Relisez [`quickstart.md`](quickstart.md)
3. Regardez les exemples dans `../diagrams/`
4. Posez votre question dans les issues GitHub

## 🎉 Prêt à commencer ?

➡️ **Commencez par [`quickstart.md`](quickstart.md)**

Ou allez directement à l'exercice : [`exercise.md`](exercise.md)

**Bon workshop !** 🚀
