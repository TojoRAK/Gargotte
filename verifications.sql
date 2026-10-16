-- ETAPE 1 : LES PLATS DU PLUS CHER AU MOINS CHER
SELECT * FROM plat ORDER BY prix DESC;

-- ETAPE 2 : NOMBRE DE PLATS PAR CATEGORIE
SELECT c.id, COUNT(p.*)   FROM plat p RIGHT JOIN categorie c ON c.id = p.id_categorie  GROUP BY c.id;

-- ETAPE 3 : MONTANT TOTAL DE CHAQUE COMMANDE 

SELECT 
    SUM(cp.quantite * p.prix), c.code
FROM commande_plat cp
JOIN commande c ON c.id = cp.id_commande
JOIN plat p ON p.id = cp.id_plat
GROUP BY cp.id_commande, c.code;   