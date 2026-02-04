## Niveau 1 : Context

### La vue d'ensemble

---

### C'est quoi ?

Le diagramme de **Contexte** montre :

- 🧑 **Les acteurs** : Qui utilise le système ?
- 📦 **Le système** : Votre application (boîte noire)
- 🔗 **Les systèmes externes** : Avec quoi il communique ?

**Audience** : Tout le monde (tech et non-tech)

**Objectif** : Comprendre le "big picture" en 30 secondes

---

### Exemple : E-Commerce

```plantumlcode
@startuml
!includeurl https://raw.githubusercontent.com/plantuml-stdlib/C4-PlantUML/master/C4_Context.puml

Person(pf, "Individual User", "Accesses via web browser")
Person(pj, "Business User", "Accesses via API")

System(sistema, "Financial Analysis System", "Generates financial reports for individuals and companies")

System_Ext(serasa, "Credit Bureau", "External data source")
System_Ext(rf, "Tax Authority", "External data source")
System_Ext(bcb, "Central Bank", "External data source")

pf --> sistema : Uses via browser
pj --> sistema : Uses via API

sistema --> serasa : Queries credit score
sistema --> rf : Retrieves tax data
sistema --> bcb : Retrieves financial data

@enduml
```

Note: Expliquer le diagramme en détail

---

### Quand l'utiliser ?

✅ Présenter votre projet à des nouveaux

✅ Identifier les dépendances externes

✅ Aligner l'équipe sur la vision globale

✅ Préparer une migration ou refonte

**Durée de création** : 15-30 minutes

---

### Les éléments clés

- **Person** : Utilisateur humain (client, admin, etc.)
- **System** : Votre système (boîte noire)
- **External System** : Systèmes tiers (paiement, email, etc.)
- **Relations** : Qui appelle qui, avec quelle techno

**Règle d'or** : Maximum 5-7 éléments pour rester lisible

---

### Exercice mental

Pensez à votre projet actuel :

1. Qui sont les utilisateurs ?
2. Quel est le système principal ?
3. Quels systèmes externes sont utilisés ?

➡️ Vous venez de créer votre diagramme Context mentalement !

Note: Faire participer l'audience
