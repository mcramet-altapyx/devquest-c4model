## Architecture as Code

### Versionner vos diagrammes comme du code

---

### Le problème des outils visuels

🖱️ **Draw.io, Lucidchart, PowerPoint...**

❌ Difficile à versionner (fichiers binaires)

❌ Pas de diff/merge dans Git

❌ Pas de revue de code possible

❌ Se désynchronise rapidement du code

---

### La solution : "Diagrams as Code"

✅ **Écrire** vos diagrammes en texte

✅ **Versionner** dans Git avec votre code

✅ **Reviewer** dans les Pull Requests

✅ **Générer** automatiquement les images

> "If it's not in Git, it doesn't exist"

---

### Exemple PlantUML

```plantuml
@startuml
!include C4_Context.puml

Person(user, "Client")
System(shop, "E-Commerce")
System_Ext(payment, "Stripe")

Rel(user, shop, "Achète")
Rel(shop, payment, "Paie", "HTTPS")
@enduml
```

➡️ Génère un PNG automatiquement !

---

### Avantages

**Versionning** : Voir l'évolution de l'architecture

```bash
git log diagrams/context.puml
git diff HEAD~1 diagrams/context.puml
```

**Review** : Commenter les changements d'archi

```
"Pourquoi ajouter Redis ici ?"
"Cette dépendance vers Kafka est-elle nécessaire ?"
```

---

### Living Documentation

Avec Architecture as Code :

1. 💻 Vous modifiez le code
2. 📝 Vous mettez à jour le diagramme .puml
3. 🔄 CI/CD génère l'image PNG
4. 📚 Documentation toujours à jour !

**Bonus** : Le diagramme vit dans la même PR que le code

---

### Les 3 outils principaux

Nous allons les comparer :

1. 🌱 **PlantUML** (le plus mature)
2. 🧜 **Mermaid** (intégré GitHub/GitLab)
3. 🏛️ **Structurizr** (modèle centralisé)

➡️ Slide suivante pour la comparaison

Note: Introduire les outils avant la démo
