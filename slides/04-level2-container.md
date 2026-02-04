## Niveau 2 : Container

### Zoom sur les applications

---

### C'est quoi un "Container" ?

⚠️ Pas Docker ! Dans C4, un Container est :

- Une **application web** (React, Angular)
- Une **API** (Node.js, Django, Spring)
- Une **base de données** (PostgreSQL, MongoDB)
- Un **service** (worker, batch, microservice)

**En résumé** : Une unité de déploiement

---

### Exemple : E-Commerce

![Diagramme Container](images/example-container.png)

Note: Expliquer chaque container

---

### Quand l'utiliser ?

✅ Documenter votre architecture technique

✅ Planifier une migration cloud

✅ Comprendre les flux de données

✅ Préparer une revue d'architecture

**Audience** : Équipe technique, DevOps

---

### Les éléments clés

- **Web Application** : Interface utilisateur (frontend)
- **API/Service** : Logique métier (backend)
- **Database** : Stockage des données
- **Cache** : Redis, Memcached
- **Message Queue** : RabbitMQ, Kafka

**Conseil** : Indiquez la technologie de chaque container

---

### Relations importantes

Notez toujours :

- 📡 **Le protocole** : HTTP, gRPC, SQL, Redis Protocol
- 📦 **Le format** : JSON, XML, Protocol Buffers
- 🔒 **La sécurité** : HTTPS, authentification

**Exemple** : `"Appelle" (HTTPS/JSON, Bearer Token)`

---

### Du Context au Container

```
Context (C1)         Container (C2)
┌─────────────┐      ┌─────────────────────────┐
│             │      │ ┌─────┐  ┌─────┐       │
│   Système   │ ──>  │ │ Web │  │ API │       │
│  E-Commerce │      │ └─────┘  └─────┘       │
│             │      │     ┌──────────┐        │
└─────────────┘      │     │    DB    │        │
                     │     └──────────┘        │
                     └─────────────────────────┘
```

On "ouvre" le système pour voir l'intérieur

Note: Montrer la progression logique
