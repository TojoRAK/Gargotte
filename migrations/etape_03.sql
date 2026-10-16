CREATE TABLE commande(
    id SERIAL PRIMARY KEY,
    code VARCHAR(50),
    date_commande DATE
);
CREATE TABLE commande_plat(
    id SERIAL PRIMARY KEY,
    id_commande INT REFERENCES commande(id),
    id_plat INT REFERENCES plat(id),
    quantite INT
);

INSERT INTO commande(code, date_commande) VALUES 
('CMD001', '2026-10-16'),
('CMD002', '2026-10-16');

INSERT INTO commande_plat (id_commande, id_plat, quantite) VALUES 
(1,2,1),
(1,7,1),
(2,3,1),
(2,6,1);
