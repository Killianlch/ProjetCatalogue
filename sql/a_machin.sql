CREATE TABLE Category (
                          id SERIAL PRIMARY KEY,
                          name VARCHAR(255) NOT NULL
);

-- Création de la table Tag
CREATE TABLE Tag (
                     id SERIAL PRIMARY KEY,
                     name VARCHAR(255) NOT NULL
);

-- Création de la table Article
CREATE TABLE Article (
                         id SERIAL PRIMARY KEY,
                         name VARCHAR(255) NOT NULL,
                         description TEXT,
                         image_url VARCHAR(255),
                         category_id INT,
                         FOREIGN KEY (category_id) REFERENCES Category(id)
);

-- Table de liaison entre Article et Tag pour la relation many-to-many
CREATE TABLE Article_Tag (
                             article_id INT,
                             tag_id INT,
                             PRIMARY KEY (article_id, tag_id),
                             FOREIGN KEY (article_id) REFERENCES Article(id),
                             FOREIGN KEY (tag_id) REFERENCES Tag(id)
);

-- Création de la table Stock pour la gestion des quantités et des emplacements
CREATE TABLE Stock (
                       id SERIAL PRIMARY KEY,
                       article_id INT,
                       location_address VARCHAR(255) NOT NULL,
                       quantity INT NOT NULL,
                       FOREIGN KEY (article_id) REFERENCES Article(id)
);

-- Création de la table Client
CREATE TABLE Client (
                        id SERIAL PRIMARY KEY,
                        name VARCHAR(255) NOT NULL,
                        email VARCHAR(255) NOT NULL
);

-- Création de la table Location
CREATE TABLE Location (
                          id SERIAL PRIMARY KEY,
                          client_id INT,
                          article_id INT,
                          start_date DATE NOT NULL,
                          rental_duration INT NOT NULL,
                          FOREIGN KEY (client_id) REFERENCES Client(id),
                          FOREIGN KEY (article_id) REFERENCES Article(id)
);