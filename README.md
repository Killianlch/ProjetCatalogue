# ProjetCatalogue

## Description

Ce projet est une application Spring Boot qui utilise PostgreSQL et MongoDB pour la gestion des articles et des locations. L'application expose des services REST et SOAP pour interagir avec les données.

## Prérequis

- Docker
- Docker Compose
- Java 21
- Maven

## Installation et Exécution

### 1. Cloner le dépôt

```sh
git clone https://github.com/Killianlch/ProjetCatalogue.git
cd ProjetCatalogue
```

### 2. Démarrer les conteneurs Docker

Dans le répertoire racine du projet, exécutez la commande suivante :

```sh
docker-compose up
```

Cette commande va démarrer les services PostgreSQL, MongoDB et l'application Spring Boot.

### 3. Accéder à l'application

- L'application Spring Boot sera accessible à l'adresse : `http://localhost:8080`.

### 4. Tester les services

#### Services REST

- Utilisez un outil comme Postman pour tester les endpoints REST.

#### Services SOAP

- Utilisez un outil comme SOAP UI pour tester les endpoints SOAP.

## Documentation des Endpoints

### REST Endpoints

- **GET** `/articles` - Récupère la liste de tous les articles.
- **POST** `/articles` - Crée un nouvel article.
- **GET** `/articles/{id}` - Récupère un article par son ID.
- **PUT** `/articles/{id}` - Met à jour un article par son ID.
- **DELETE** `/articles/{id}` - Supprime un article par son ID.

### SOAP Endpoints

- **SOAP** `/ws/articles` - Gestion des articles via SOAP.
- **SOAP** `/ws/rentals` - Gestion des locations via SOAP.


## Dépendances Maven

Assurez-vous que votre fichier `pom.xml` inclut les dépendances suivantes :

```xml
<dependencies>
    <!-- Spring Boot Starter Data JPA -->
    <dependency>
        <groupId>org.springframework.boot</groupId>
        <artifactId>spring-boot-starter-data-jpa</artifactId>
    </dependency>

    <!-- PostgreSQL Driver -->
    <dependency>
        <groupId>org.postgresql</groupId>
        <artifactId>postgresql</artifactId>
        <scope>runtime</scope>
    </dependency>

    <!-- Spring Boot Starter Data MongoDB -->
    <dependency>
        <groupId>org.springframework.boot</groupId>
        <artifactId>spring-boot-starter-data-mongodb</artifactId>
    </dependency>

    <!-- Spring Boot Starter Web -->
    <dependency>
        <groupId>org.springframework.boot</groupId>
        <artifactId>spring-boot-starter-web</artifactId>
    </dependency>

    <!-- Spring Boot Starter Web Services -->
    <dependency>
        <groupId>org.springframework.boot</groupId>
        <artifactId>spring-boot-starter-web-services</artifactId>
    </dependency>

    <!-- Spring Boot Starter Test -->
    <dependency>
        <groupId>org.springframework.boot</groupId>
        <artifactId>spring-boot-starter-test</artifactId>
        <scope>test</scope>
    </dependency>
</dependencies>
```
## Licence
Ce projet est sous licence MIT. Voir le fichier [LICENSE](/LICENSE) pour plus de détails.
