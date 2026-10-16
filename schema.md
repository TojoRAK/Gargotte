### Pieges

#### Etape 1
- J'ai choisi INT pour le prix car il est précisé que le montant est en ariary sans centimes

#### Etape 2
- Ajouter une colonne categorie VARCHAR(50) dans plats est sensible à l'erreur. 
Par exemple, un utilisateur peut saisir sans faire exprès un plat avec catégorie 'Dessert' et un autre plat 'Desert' à cause d'un faute de frappe et dans ce cas, le résultat du nombre de plats par catégorie est faussé  

## SCHEMA

- plat(**id**, nom_plat, prix, id_categorie) *(modifié)*
- categorie(**id**,nom_categorie) *(nouveau)*