## Niveau 3 : Component

### Zoom sur un container

---

### C'est quoi un Component ?

Un **Component** est un module logique à l'intérieur d'un container :

- 🎮 **Controller** : Gère les requêtes HTTP
- 💼 **Service** : Contient la logique métier
- 💾 **Repository** : Accède aux données
- 🔧 **Helper/Utils** : Fonctions utilitaires

**Note** : Pas forcément = fichier, plutôt une responsabilité

---

### Exemple : API E-Commerce

![Diagramme Component](images/example-component.png)

Note: Zoomer sur l'API pour montrer ses composants internes

---

### Quand l'utiliser ?

✅ Onboarding d'un nouveau développeur

✅ Refactoring d'un container complexe

✅ Design review avant développement

✅ Documenter les patterns utilisés

**Audience** : Développeurs de l'équipe

---

### Patterns courants

**MVC** : Model-View-Controller

**Layered** : Controller → Service → Repository

**Hexagonal** : Ports & Adapters

**Clean Architecture** : Use Cases, Entities, Adapters

➡️ C4 s'adapte à votre architecture !

---

### Conseil

⚠️ **Ne faites pas systématiquement un diagramme Component**

Créez-le uniquement si :

- Le container est complexe
- Il y a confusion dans l'équipe
- Vous planifiez un refactoring

**Principe** : Juste ce qu'il faut, pas plus

---

### Du Container au Component

```
Container (C2)              Component (C3)
┌─────────────┐            ┌──────────────────────────┐
│             │            │ ┌────────┐  ┌─────────┐ │
│     API     │    ──>     │ │Control │  │ Service │ │
│   Node.js   │            │ └────────┘  └─────────┘ │
│             │            │     ┌──────────────┐    │
└─────────────┘            │     │  Repository  │    │
                           │     └──────────────┘    │
                           └──────────────────────────┘
```

On "ouvre" l'API pour voir son organisation interne
