## Démo Live

### Créons notre premier diagramme !

---

### Scénario : Application de bibliothèque

Créons le diagramme **Context** pour une app de gestion de bibliothèque.

**Acteurs** :
- 📚 Lecteur : Emprunte et réserve des livres
- 👨‍💼 Bibliothécaire : Gère le catalogue et les retours

**Systèmes externes** :
- 💳 Système de paiement (amendes)

---

### Étape 1 : Structure de base

```plantuml
@startuml
!include https://raw.githubusercontent.com/.../C4_Context.puml

LAYOUT_WITH_LEGEND()
title Bibliothèque - Contexte

@enduml
```

On inclut la bibliothèque C4 et on définit le titre

---

### Étape 2 : Ajouter les acteurs

```plantuml
Person(lecteur, "Lecteur",
  "Emprunte et réserve des livres")

Person(biblio, "Bibliothécaire",
  "Gère le catalogue et les retours")
```

**Syntaxe** : `Person(id, "Nom", "Description")`

---

### Étape 3 : Ajouter les systèmes

```plantuml
System(app, "Système Bibliothèque",
  "Gestion des emprunts et du catalogue")

System_Ext(payment, "Système de Paiement",
  "Traite les paiements d'amendes")
```

**System** = Votre système

**System_Ext** = Système externe

---

### Étape 4 : Ajouter les relations

```plantuml
Rel(lecteur, app,
  "Consulte et emprunte", "HTTPS")

Rel(biblio, app,
  "Gère le catalogue", "HTTPS")

Rel(app, payment,
  "Traite les amendes", "HTTPS/JSON")
```

**Syntaxe** : `Rel(de, vers, "Action", "Protocole")`

---

### Résultat complet

```plantuml
@startuml
!include https://raw.githubusercontent.com/.../C4_Context.puml
LAYOUT_WITH_LEGEND()
title Bibliothèque - Contexte

Person(lecteur, "Lecteur", "Emprunte des livres")
Person(biblio, "Bibliothécaire", "Gère le catalogue")
System(app, "Système Bibliothèque", "Gestion des emprunts")
System_Ext(payment, "Paiement", "Traite les amendes")

Rel(lecteur, app, "Consulte", "HTTPS")
Rel(biblio, app, "Gère", "HTTPS")
Rel(app, payment, "Traite amendes", "HTTPS/JSON")
@enduml
```

---

### Générer le diagramme

**Option 1** : Serveur en ligne
```
https://www.plantuml.com/plantuml/
```

**Option 2** : Local
```bash
plantuml bibliotheque-context.puml
```

**Option 3** : Extension IDE
- VS Code : PlantUML extension
- IntelliJ : PlantUML Integration

---

### ✨ Vous venez de créer votre premier diagramme C4 !

En moins de 5 minutes :

✅ Diagramme professionnel

✅ Versionnable dans Git

✅ Facilement modifiable

✅ Peut être généré automatiquement

**Et maintenant ?** ➡️ Explorons les outils disponibles

Note: Encourager l'audience à essayer pendant ou après le talk
