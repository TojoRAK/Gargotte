CREATE TABLE client (
    id SERIAL PRIMARY KEY,
    nom_client VARCHAR
);

INSERT INTO client (nom_client) VALUES 
('Jean'),
('Marie');

ALTER TABLE commande ADD COLUMN id_client INT REFERENCES client(id);

INSERT INTO commande(code, date_commande, id_client) VALUES 
('CMD003', '2026-10-16', 1);

INSERT INTO commande_plat (id_commande, id_plat, quantite) VALUES 
(3,5,1),
(3,7,1);