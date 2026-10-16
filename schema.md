### Pieges

#### Etape 1
- J'ai choisi INT pour le prix car il est précisé que le montant est en ariary sans centimes

#### Etape 2
- Ajouter une colonne categorie VARCHAR(50) dans plats est sensible à l'erreur. 
Par exemple, un utilisateur peut saisir sans faire exprès un plat avec catégorie 'Dessert' et un autre plat 'Desert' à cause d'un faute de frappe et dans ce cas, le résultat du nombre de plats par catégorie est faussé  

#### Etape 3
- J'ai placé la quantite dans commande_plat

#### Etape 4
- Non ma clé étrangère n'est pas `NOT NULL` car une commande n'est pas forcément associée à un client habitué.
- Il faut utiliser LEFT JOIN pour ne perdre aucune commande 

#### Etape 5
- Une table et un commande sont deux choses différentes car on peut passer une commande sans avoir besoin de table

## SCHEMA

- plat(**id**, nom_plat, prix, #id_categorie) 
- categorie(**id**,nom_categorie) 
- commande(**id**, code, date_commande. #id_client?, #id_table?, #id_serveur) *(modifié)*
- commande_plat(**id**, #id_commande, #id_plat, quantite) 
- client(**id**, nom_client) 
- tables(**id**, nom_table) *(nouveau)*
- serveurs(**id**, nom_serveur) *(nouveau)*