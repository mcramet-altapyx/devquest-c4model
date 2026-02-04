# Exercice pratique : Modéliser une application de bibliothèque

## Objectif

Créer un diagramme de **Contexte (C1)** pour une application de gestion de bibliothèque en utilisant PlantUML et C4 Model.

## Durée estimée

⏱️ 15-20 minutes

## Contexte métier

Vous travaillez pour une bibliothèque municipale qui souhaite moderniser son système de gestion. L'application doit permettre :

- Aux **lecteurs** de consulter le catalogue, réserver et emprunter des livres
- Aux **bibliothécaires** de gérer le catalogue, les emprunts et les retours
- Au système d'envoyer des notifications par email (rappels de retour)
- Au système de traiter les amendes via un service de paiement externe

## Spécifications techniques

### Acteurs

1. **Lecteur**
   - Peut rechercher des livres
   - Peut réserver un livre
   - Peut voir ses emprunts en cours
   - Reçoit des rappels par email

2. **Bibliothécaire**
   - Gère le catalogue (ajout/suppression de livres)
   - Enregistre les emprunts et les retours
   - Consulte l'historique

### Système principal

- **Application Bibliothèque**
  - Application web de gestion de bibliothèque
  - Gère les emprunts, les réservations et le catalogue

### Systèmes externes

1. **Service Email** (ex: SendGrid)
   - Envoie les notifications et rappels
   - Confirmations de réservation

2. **Système de Paiement** (ex: Stripe)
   - Traite les paiements d'amendes pour retards
   - Gère les transactions financières

## Votre mission

### Étape 1 : Préparation (2 min)

1. Créez un fichier `bibliotheque-context.puml`
2. Copiez la structure de base du template fourni

### Étape 2 : Identifier les éléments (3 min)

Listez sur papier :
- Les acteurs (Person)
- Le système principal (System)
- Les systèmes externes (System_Ext)

### Étape 3 : Créer le diagramme (5 min)

Complétez le fichier PlantUML avec :

```plantuml
@startuml
!include https://raw.githubusercontent.com/plantuml-stdlib/C4-PlantUML/master/C4_Context.puml

LAYOUT_WITH_LEGEND()
title Application Bibliothèque - Contexte

' TODO: Ajoutez vos acteurs ici
' Person(...)

' TODO: Ajoutez votre système principal ici
' System(...)

' TODO: Ajoutez les systèmes externes ici
' System_Ext(...)

' TODO: Ajoutez les relations ici
' Rel(...)

@enduml
```

### Étape 4 : Générer le diagramme (2 min)

**Option A : PlantUML local**
```bash
plantuml bibliotheque-context.puml
```

**Option B : Serveur en ligne**
1. Allez sur https://www.plantuml.com/plantuml/
2. Collez votre code
3. Cliquez sur "Submit"

**Option C : Extension IDE**
- VS Code : Aperçu automatique
- IntelliJ : Alt+D (ou Cmd+D sur Mac)

### Étape 5 : Validation (3 min)

Vérifiez que votre diagramme :
- [ ] A un titre clair
- [ ] Contient 2 acteurs (Lecteur, Bibliothécaire)
- [ ] Contient 1 système principal (Application Bibliothèque)
- [ ] Contient 2 systèmes externes (Email, Paiement)
- [ ] Les relations sont claires et indiquent le protocole
- [ ] Est lisible en moins de 30 secondes

## Conseils

💡 **Nommage des identifiants**
- Utilisez des noms courts : `lecteur`, `app_biblio`, `service_email`
- Pas d'espaces ni d'accents

💡 **Relations**
- Indiquez toujours le protocole : HTTPS, SMTP, API
- Décrivez l'action : "Emprunte des livres", "Envoie des rappels"

💡 **Simplicité**
- Ne sur-documentez pas
- Focus sur les interactions principales

## Pour aller plus loin (bonus)

Si vous avez terminé en avance :

### Bonus 1 : Diagramme Container (C2)

Zoomez sur l'application Bibliothèque et identifiez :
- Frontend : Application web (React/Vue)
- Backend : API REST (Node.js/Python)
- Database : PostgreSQL
- Cache : Redis (pour les recherches)

### Bonus 2 : Variante

Créez une variante du Context avec :
- Un système externe supplémentaire : Service SMS pour notifications urgentes
- Un nouvel acteur : Gestionnaire de la bibliothèque (reporting)

## Solution

Une solution complète est disponible dans `solution.puml`.

**Mais essayez d'abord par vous-même !** 🚀

## Questions fréquentes

**Q : Dois-je inclure la base de données dans le Context ?**
R : Non, la base de données est interne au système. Elle apparaîtra au niveau Container (C2).

**Q : Combien de relations dois-je créer ?**
R : Créez uniquement les relations principales. Pour cet exercice, 5-6 relations suffisent.

**Q : Puis-je utiliser Mermaid au lieu de PlantUML ?**
R : Oui ! La syntaxe sera légèrement différente mais le concept reste le même.

## Feedback

Une fois terminé :
- Partagez votre diagramme avec un collègue
- Demandez-lui s'il comprend en moins de 30 secondes
- Itérez si nécessaire

**Bon courage !** 💪
