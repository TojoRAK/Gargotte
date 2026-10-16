CREATE TABLE categorie(
    id SERIAL PRIMARY KEY,
    nom_categorie VARCHAR(50)
);

INSERT INTO categorie(nom_categorie) VALUES
('Plat malagasy'),
('Plat chinois'),
('Soupe'),
('Dessert'),
('Boisson');

ALTER TABLE plat ADD COLUMN id_categorie INT REFERENCES categorie(id);

UPDATE plat set id_categorie = 1 WHERE id = 1;
UPDATE plat set id_categorie = 1 WHERE id = 2;
UPDATE plat set id_categorie = 1 WHERE id = 3;
UPDATE plat set id_categorie = 2 WHERE id = 4;
UPDATE plat set id_categorie = 3 WHERE id = 5;
UPDATE plat set id_categorie = 4 WHERE id = 6;
UPDATE plat set id_categorie = 5 WHERE id = 7;

ALTER TABLE plat ALTER COLUMN id_categorie SET NOT NULL;
