CREATE TABLE category (
                          id SERIAL PRIMARY KEY,
                          name VARCHAR(255) NOT NULL
);

CREATE TABLE tag (
                     id SERIAL PRIMARY KEY,
                     name VARCHAR(255) NOT NULL
);

CREATE TABLE article (
                         id SERIAL PRIMARY KEY,
                         name VARCHAR(255) NOT NULL,
                         category_id INTEGER REFERENCES category(id),
                         description TEXT,
                         image_url VARCHAR(255)
);

CREATE TABLE article_tag (
                             article_id INTEGER REFERENCES article(id),
                             tag_id INTEGER REFERENCES tag(id),
                             PRIMARY KEY (article_id, tag_id)
);
