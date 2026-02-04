## Bonnes pratiques

### Comment réussir avec C4

---

### ✅ DO : Commencer simple

**Toujours commencer par le Context (C1)**

- Vue d'ensemble en premier
- Validez avec l'équipe
- Puis zoomez si nécessaire

❌ Ne commencez pas par le Component !

---

### ✅ DO : Versionner avec le code

```
my-project/
├── src/
├── docs/
│   └── architecture/
│       ├── context.puml
│       ├── container.puml
│       └── images/
├── README.md
```

**Le diagramme vit avec le code qu'il documente**

---

### ✅ DO : Mettre à jour dans les PRs

```yaml
# .github/workflows/ci.yml
- name: Generate architecture diagrams
  run: |
    cd docs/architecture
    plantuml *.puml
    git add images/*.png
```

**Documentation = partie intégrante du développement**

---

### ✅ DO : Règle du 7±2

Ne dépassez pas **5-9 éléments** par diagramme

Trop d'éléments = illisible

**Solution** : Créer plusieurs vues du même niveau

Exemple : "Context - Vue Utilisateur" et "Context - Vue Admin"

---

### ✅ DO : Indiquer les technologies

Toujours préciser :

- Le langage/framework
- Le protocole de communication
- Le format de données

```plantuml
Container(api, "API", "Node.js, Express")
Rel(web, api, "Calls", "HTTPS/JSON")
```

**Aide à comprendre les contraintes techniques**

---

### ✅ DO : Conventions de nommage

Soyez cohérent :

- **Fichiers** : `<niveau>-<nom>.puml`
  - `context-ecommerce.puml`
  - `container-ecommerce.puml`
  - `component-api.puml`

- **IDs** : snake_case ou camelCase
  - `payment_service` ou `paymentService`

---

### ❌ DON'T : Trop de détails

Ne documentez pas :

- Chaque endpoint API
- Chaque table de la base
- Chaque classe du code

**C4 = Vue d'ensemble, pas documentation exhaustive**

---

### ❌ DON'T : Documentation déconnectée

Ne créez pas :

- Un repo séparé "architecture-docs"
- Un Wiki qui dort dans un coin
- Un PowerPoint sur un drive

**Si c'est loin du code, ça sera obsolète**

---

### ❌ DON'T : Oublier l'audience

Adaptez le niveau de détail :

- **Management** : Context uniquement
- **DevOps** : Context + Container
- **Développeurs** : Tous les niveaux si nécessaire

**Un diagramme = une audience**

---

### ❌ DON'T : Copier-coller sans comprendre

C4 n'est pas un template à remplir

**Réfléchissez** :
- Est-ce niveau nécessaire ?
- Qui va lire ce diagramme ?
- Qu'est-ce que je veux expliquer ?

**C4 = outil au service de votre réflexion**

---

### Checklist qualité

Votre diagramme est bon si :

- [ ] Lisible en 30 secondes
- [ ] Maximum 7 éléments principaux
- [ ] Technologies indiquées
- [ ] Relations claires avec protocoles
- [ ] Légende présente (si nécessaire)
- [ ] Titre explicite
- [ ] Audience identifiée

---

### Les pièges courants

🪤 **"Je vais tout documenter !"**
➡️ Commencez petit, itérez

🪤 **"Personne ne regarde les diagrammes"**
➡️ Intégrez-les dans l'onboarding

🪤 **"C'est obsolète après 2 semaines"**
➡️ Revue dans les PRs architecturales

🪤 **"C'est trop technique pour les PO"**
➡️ Context (C1) est compréhensible par tous

---

### La clé du succès

> "La perfection est atteinte non pas lorsqu'il n'y a plus rien à ajouter, mais lorsqu'il n'y a plus rien à retirer."
>
> — Antoine de Saint-Exupéry

**Moins, mais mieux**

Note: Insister sur la simplicité et l'itération
