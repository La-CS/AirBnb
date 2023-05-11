CREATE TABLE recettes (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    titre VARCHAR(255),
    description VARCHAR(255),
    difficulte INTEGER,
    date DATETIME,
    ingredients VARCHAR(255),
    nom_createur VARCHAR(255),
    prenom_createur VARCHAR(255)
);


CREATE TABLE recette_photo (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    img_link VARCHAR(255),
    recette_id INTEGER,
    FOREIGN KEY (recette_id) REFERENCES recettes(id)
);

CREATE TABLE categories (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    name VARCHAR(255)
);

CREATE TABLE recettes_categories (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    recette_id INTEGER,
    categorie_id INTEGER,
    FOREIGN KEY (categorie_id) REFERENCES categories(id),
    FOREIGN KEY (recette_id) REFERENCES recettes(id)
);


