INSERT INTO Category (name) VALUES
                                ('Livres'),
                                ('Électronique'),
                                ('Vêtements');

-- Insertion de données dans la table Tag
INSERT INTO Tag (name) VALUES
                           ('Nouveau'),
                           ('Promotion'),
                           ('Populaire'),
                           ('Limitée');

-- Insertion de données dans la table Article
INSERT INTO Article (name, description, image_url, category_id) VALUES
                                                                    ('Le Petit Prince', 'Un livre de Saint-Exupéry', 'http://example.com/petitprince.jpg', 1),
                                                                    ('iPhone 13', 'Un smartphone de Apple', 'http://example.com/iphone13.jpg', 2),
                                                                    ('T-shirt Rouge', 'Un t-shirt confortable', 'http://example.com/tshirtrouge.jpg', 3);

-- Insertion de données dans la table Article_Tag
INSERT INTO Article_Tag (article_id, tag_id) VALUES
                                                 (1, 1), -- Le Petit Prince - Nouveau
                                                 (2, 2), -- iPhone 13 - Promotion
                                                 (2, 3), -- iPhone 13 - Populaire
                                                 (3, 4); -- T-shirt Rouge - Limitée

-- Insertion de données dans la table Stock
INSERT INTO Stock (article_id, location_address, quantity) VALUES
                                                               (1, 'Entrepôt A', 50),
                                                               (1, 'Entrepôt B', 30),
                                                               (2, 'Entrepôt A', 20),
                                                               (3, 'Entrepôt C', 100);

-- Insertion de données dans la table Client
INSERT INTO Client (name, email) VALUES
                                     ('Alice Dupont', 'alice@example.com'),
                                     ('Bob Martin', 'bob@example.com');

-- Insertion de données dans la table Location
INSERT INTO Location (client_id, article_id, start_date, rental_duration) VALUES
                                                                              (1, 1, '2024-05-01', 30), -- Alice loue Le Petit Prince
                                                                              (2, 2, '2024-05-05', 15); -- Bob loue iPhone 13