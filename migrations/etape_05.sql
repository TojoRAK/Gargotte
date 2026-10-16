CREATE TABLE tables(
    id SERIAL PRIMARY KEY,
    nom_table VARCHAR(50)
);
CREATE TABLE serveurs(
    id SERIAL PRIMARY KEY,
    nom_serveur VARCHAR(50)
);

ALTER TABLE commande ADD COLUMN id_table INT REFERENCES tables(id);
ALTER TABLE commande ADD COLUMN id_serveur INT REFERENCES serveurs(id);

INSERT INTO serveurs (nom_serveur) VALUES 
('Njaka Rakoto'),
('Lalao Rasoa');

INSERT INTO tables (nom_table) VALUES 
('Table 01'),
('Table 02'),
('Table 03'),
('Table 04'),
('Table 05'),
('Table 06'),
('Table 07'),
('Table 08');

UPDATE commande set id_serveur = 1 where id_serveur is null;
UPDATE commande set id_serveur = 2 where id = 3;

ALTER TABLE commande ALTER COLUMN id_serveur SET NOT NULL;