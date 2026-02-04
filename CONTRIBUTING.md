# Contribution Guidelines

Merci de votre intérêt pour améliorer ce projet ! Voici comment contribuer.

## Comment contribuer

### Signaler un bug ou proposer une amélioration

1. Vérifiez d'abord si un ticket similaire n'existe pas déjà
2. Ouvrez une [nouvelle issue](https://github.com/votre-username/devquest/issues/new)
3. Décrivez clairement le problème ou la suggestion

### Proposer des modifications

1. **Forkez** le projet
2. **Créez une branche** : `git checkout -b feature/ma-super-feature`
3. **Commitez** vos changements : `git commit -m "feat: ajoute une super feature"`
4. **Pushez** vers la branche : `git push origin feature/ma-super-feature`
5. **Ouvrez une Pull Request**

## Structure du projet

- `slides/` - Contenu des slides en Markdown
- `diagrams/` - Sources PlantUML des diagrammes
- `workshop/` - Kit pratique pour les participants
- `css/` - Styles personnalisés
- `index.html` - Configuration Reveal.js

## Conventions

### Commits

Utilisez les préfixes conventionnels :

- `feat:` - Nouvelle fonctionnalité
- `fix:` - Correction de bug
- `docs:` - Documentation
- `style:` - Formatage, style (pas de changement de code)
- `refactor:` - Refactoring
- `chore:` - Maintenance

### Slides

- Fichiers Markdown dans `slides/`
- Numérotés de 00 à 12
- Utilisez des titres clairs
- Gardez le contenu concis

### Diagrammes

- Fichiers `.puml` dans `diagrams/`
- Nommez explicitement : `example-context.puml`
- Incluez des commentaires
- Testez la génération avant de commiter

## Tests

Avant de soumettre une PR :

1. Testez la présentation localement : `npm run start`
2. Vérifiez que tous les slides s'affichent correctement
3. Générez les diagrammes : `npm run generate-diagrams`
4. Vérifiez que les liens fonctionnent

## Style guide

- **Markdown** : Utilisez la syntaxe GitHub Flavored Markdown
- **Code** : Indentez avec 4 espaces
- **PlantUML** : Suivez les conventions C4-PlantUML

## Licence

En contribuant, vous acceptez que vos contributions soient sous licence MIT.

## Questions ?

N'hésitez pas à ouvrir une issue pour toute question !
