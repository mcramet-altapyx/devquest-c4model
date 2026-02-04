# C4 Model + PlantUML - Cheatsheet

Guide de référence rapide pour créer des diagrammes C4 avec PlantUML.

---

## 📋 Structure de base

```plantuml
@startuml
!include https://raw.githubusercontent.com/.../C4_Context.puml
LAYOUT_WITH_LEGEND()
title Titre du Diagramme

' Votre code ici

@enduml
```

**Changez l'include selon le niveau :**
- Context : `C4_Context.puml`
- Container : `C4_Container.puml`
- Component : `C4_Component.puml`

---

## 🎭 Niveau 1 : Context

### Éléments disponibles

| Élément | Syntaxe | Usage |
|---------|---------|-------|
| **Person** | `Person(id, "Nom", "Description")` | Utilisateur humain |
| **System** | `System(id, "Nom", "Description")` | Votre système |
| **System_Ext** | `System_Ext(id, "Nom", "Description")` | Système externe |

### Exemple complet

```plantuml
@startuml
!include https://raw.githubusercontent.com/.../C4_Context.puml
LAYOUT_WITH_LEGEND()
title Mon Système - Context

Person(user, "Utilisateur", "Utilise l'app")
System(app, "Mon App", "Système principal")
System_Ext(external, "API Externe", "Service tiers")

Rel(user, app, "Utilise", "HTTPS")
Rel(app, external, "Appelle", "HTTPS/JSON")
@enduml
```

---

## 📦 Niveau 2 : Container

### Éléments disponibles

| Élément | Syntaxe | Usage |
|---------|---------|-------|
| **Container** | `Container(id, "Nom", "Tech", "Description")` | App/Service |
| **ContainerDb** | `ContainerDb(id, "Nom", "Tech", "Description")` | Base de données |
| **Container_Ext** | `Container_Ext(id, "Nom", "Tech", "Desc")` | Container externe |

### Exemple complet

```plantuml
@startuml
!include https://raw.githubusercontent.com/.../C4_Container.puml
LAYOUT_WITH_LEGEND()
title Mon Système - Container

Person(user, "Utilisateur")

System_Boundary(system, "Mon Système") {
    Container(web, "Web App", "React", "Interface utilisateur")
    Container(api, "API", "Node.js", "Logique métier")
    ContainerDb(db, "Database", "PostgreSQL", "Stocke les données")
}

Rel(user, web, "Utilise", "HTTPS")
Rel(web, api, "Appelle", "HTTPS/JSON")
Rel(api, db, "Lit/Écrit", "SQL")
@enduml
```

---

## 🧩 Niveau 3 : Component

### Éléments disponibles

| Élément | Syntaxe | Usage |
|---------|---------|-------|
| **Component** | `Component(id, "Nom", "Tech", "Description")` | Module logique |
| **ComponentDb** | `ComponentDb(id, "Nom", "Tech", "Desc")` | Composant DB |

### Exemple complet

```plantuml
@startuml
!include https://raw.githubusercontent.com/.../C4_Component.puml
LAYOUT_WITH_LEGEND()
title API - Component

Container(web, "Web App", "React")
ContainerDb(db, "Database", "PostgreSQL")

Container_Boundary(api, "API") {
    Component(controller, "Controller", "Express", "Gère les routes")
    Component(service, "Service", "Class", "Logique métier")
    Component(repo, "Repository", "Class", "Accès données")
}

Rel(web, controller, "Appelle", "HTTPS/JSON")
Rel(controller, service, "Utilise")
Rel(service, repo, "Utilise")
Rel(repo, db, "Requête", "SQL")
@enduml
```

---

## 🔗 Relations

### Syntaxe de base

```plantuml
Rel(de, vers, "Description", "Technologie")
```

### Variantes

| Syntaxe | Direction | Usage |
|---------|-----------|-------|
| `Rel(a, b, "...", "...")` | Auto | Relation standard |
| `Rel_D(a, b, "...", "...")` | Down | Force vers le bas |
| `Rel_U(a, b, "...", "...")` | Up | Force vers le haut |
| `Rel_L(a, b, "...", "...")` | Left | Force vers la gauche |
| `Rel_R(a, b, "...", "...")` | Right | Force vers la droite |

### Exemples de technologies

```plantuml
Rel(user, app, "Utilise", "HTTPS")
Rel(api, db, "Requête", "SQL/TCP")
Rel(app, external, "Appelle", "gRPC")
Rel(service, queue, "Publie", "AMQP")
Rel(api, cache, "Lit/Écrit", "Redis Protocol")
```

---

## 🎨 Layout et positionnement

### Layout automatique

```plantuml
LAYOUT_WITH_LEGEND()          ' Ajoute une légende
LAYOUT_TOP_DOWN()             ' Disposition verticale
LAYOUT_LEFT_RIGHT()           ' Disposition horizontale
```

### Positionnement manuel

```plantuml
Lay_D(element1, element2)     ' element2 en dessous de element1
Lay_U(element1, element2)     ' element2 au-dessus de element1
Lay_L(element1, element2)     ' element2 à gauche de element1
Lay_R(element1, element2)     ' element2 à droite de element1
```

---

## 🎯 Bonnes pratiques

### ✅ DO

```plantuml
' Noms d'identifiants clairs
Person(customer, "Client", "Achète des produits")

' Descriptions concises
System(app, "E-Commerce", "Plateforme de vente en ligne")

' Technologies explicites
Container(api, "API", "Node.js, Express", "Backend REST")

' Protocoles indiqués
Rel(web, api, "Appelle", "HTTPS/JSON")
```

### ❌ DON'T

```plantuml
' Identifiants avec espaces ou caractères spéciaux
Person(client final, "Client")      ❌

' Descriptions trop longues
System(app, "Système", "Notre application fait ceci et cela et encore ça...")  ❌

' Pas de technologie
Container(api, "API", "", "Backend")  ❌

' Pas de protocole
Rel(web, api, "Appelle")  ❌
```

---

## 🛠️ Commandes utiles

### Génération

```bash
# Générer un PNG
plantuml diagram.puml

# Générer un SVG
plantuml -tsvg diagram.puml

# Générer plusieurs fichiers
plantuml *.puml

# Générer dans un dossier spécifique
plantuml diagram.puml -o ../images/
```

### Options avancées

```bash
# Changer l'échelle
plantuml -scale 1.5 diagram.puml

# Format spécifique
plantuml -tpng diagram.puml
plantuml -tsvg diagram.puml
plantuml -tpdf diagram.puml

# Mode verbose
plantuml -v diagram.puml
```

---

## 🎨 Personnalisation

### Thèmes

```plantuml
!theme cerulean-outline    ' Thème bleu
!theme sketchy-outline     ' Style dessiné à la main
!theme mars                ' Thème rouge/orange
```

### Couleurs personnalisées

```plantuml
' Changer la couleur d'un élément
Person(user, "User", "Description", $tags="custom")
AddElementTag("custom", $bgColor="#FF6B6B", $fontColor="#FFFFFF")
```

---

## 📐 Règles du C4 Model

### Règle du 7±2

Maximum **5-9 éléments** par diagramme.

Si plus :
- Créez plusieurs vues du même niveau
- Ou zoomez au niveau suivant

### Progression des niveaux

```
Context (C1)
    ↓ zoom sur le système
Container (C2)
    ↓ zoom sur un container
Component (C3)
    ↓ zoom sur un composant (optionnel)
Code (C4)
```

### Audience par niveau

| Niveau | Audience | Fréquence |
|--------|----------|-----------|
| Context | Tous | Toujours |
| Container | Tech/Ops | Toujours |
| Component | Devs | Si complexe |
| Code | Devs | Rarement |

---

## 🔍 Éléments avancés

### Boundary (regroupement)

```plantuml
System_Boundary(boundary_id, "Label") {
    Container(app1, "App 1", "Tech")
    Container(app2, "App 2", "Tech")
}
```

### Enterprise Boundary

```plantuml
Enterprise_Boundary(enterprise, "Mon Entreprise") {
    System(system1, "Système 1")
    System(system2, "Système 2")
}
```

### Deployment Diagram

```plantuml
Deployment_Node(server, "Serveur Production", "Linux") {
    Container(app, "Application", "Docker")
}
```

---

## 🚨 Troubleshooting rapide

| Problème | Solution |
|----------|----------|
| Diagramme pas généré | Vérifiez la syntaxe, cherchez les erreurs |
| Layout bizarre | Utilisez `Lay_*` pour forcer le positionnement |
| Texte coupé | Ajoutez `\n` pour sauts de ligne dans les descriptions |
| Trop d'éléments | Divisez en plusieurs vues |
| Erreur include | Vérifiez votre connexion internet |

---

## 📚 Ressources rapides

| Ressource | Lien |
|-----------|------|
| **C4 Model** | https://c4model.com |
| **C4-PlantUML** | https://github.com/plantuml-stdlib/C4-PlantUML |
| **PlantUML** | https://plantuml.com |
| **Serveur en ligne** | https://www.plantuml.com/plantuml/ |
| **Exemples** | https://github.com/plantuml-stdlib/C4-PlantUML/tree/master/samples |

---

## ⚡ Template minimal

Copiez-collez pour démarrer rapidement :

```plantuml
@startuml
!include https://raw.githubusercontent.com/plantuml-stdlib/C4-PlantUML/master/C4_Context.puml
LAYOUT_WITH_LEGEND()
title Titre

Person(user, "User", "Description")
System(system, "System", "Description")

Rel(user, system, "Uses", "HTTPS")
@enduml
```

---

**Imprimez cette page et gardez-la près de votre clavier !** 📄
