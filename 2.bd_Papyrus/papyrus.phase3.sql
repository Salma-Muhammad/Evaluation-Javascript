/*III LES BESOINS D’AFFICHAGE
1. Quelles sont les commandes du fournisseur 09120 ?*/
SELECT *
FROM entcom
WHERE numfou = 9120

--2. Afficher le code des fournisseurs pour lesquels des commandes ont été passées.
SELECT DISTINCT numfou
FROM entcom


--3. Afficher le nombre de commandes fournisseurs passées, et le nombre de
--fournisseur concernés.
SELECT 
COUNT(numcom) AS 'Nombre de Commandes',
COUNT(DISTINCT numfou) AS 'N° Fournisseur'
FROM entcom


--4. Editer les produits ayant un stock inférieur ou égal au stock d'alerte et dont la
--quantité annuelle est inférieur est inférieure à 1000
--(informations à fournir : n° produit, libellé produit, stock, stock actuel d'alerte,
--quantité annuelle)
SELECT codart AS 'N° produit',
libart AS 'libellé produit',
stkphy AS 'stock',
stkale AS "stock actuel d'alerte",
qteann AS 'Quantité anuelle'
FROM produit
WHERE stkphy<=stkale AND qteann< 1000 


--5. Quels sont les fournisseurs situés dans les départements 75 78 92 77 ?
--L’affichage (département, nom fournisseur) sera effectué par département
--décroissant, puis par ordre alphabétique
SELECT nomfou, posfou
FROM fournis
WHERE posfou LIKE '75%'
OR posfou LIKE '77%'
OR posfou LIKE '78%'
OR posfou LIKE '92%'
ORDER BY posfou DESC, nomfou ASC 


--6. Quelles sont les commandes passées au mois de mars et avril ?
SELECT entcom.numcom AS 'n° de commande',
entcom.datcom AS 'commande en cours', 
ligcom.derliv AS 'commande en délivré'
FROM entcom
JOIN ligcom
ON entcom.numcom = ligcom.numcom
WHERE MONTH(entcom.datcom) = 04
OR  MONTH(derliv) = 03


--7. Quelles sont les commandes du jour qui ont des observations particulières ?
--(Affichage numéro de commande, date de commande)
SELECT numcom AS 'n° commande',
obscom AS 'Observation',
datcom AS 'Date Commande'
FROM entcom
WHERE obscom != ''


--8. Lister le total de chaque commande par total décroissant
--(Affichage numéro de commande et total)
SELECT numcom AS "N° commande", 
SUM(priuni*qtecde) AS "Total"
FROM ligcom
GROUP BY numcom
ORDER BY "Total" DESC;


--9. Lister les commandes dont le total est supérieur à 10 000€ ; on exclura dans le
--calcul du total les articles commandés en quantité supérieure ou égale à 1000.
--(Affichage numéro de commande et total)
SELECT numcom AS "N° commande", 
SUM(priuni*qtecde) AS "Total"
FROM ligcom
WHERE qtecde>=1000 
GROUP BY numcom
HAVING SUM(priuni*qtecde)>10000;


--10.Lister les commandes par nom fournisseur
--(Afficher le nom du fournisseur, le numéro de commande et la date)
SELECT fournis.nomfou AS "Nom fournisseur",
entcom.numcom AS "N° commande", 
entcom.datcom AS "date"
FROM entcom
JOIN fournis
ON fournis.numfou = entcom.numfou;



--11.Sortir les produits des commandes ayant le mot "urgent' en observation?
--(Afficher le numéro de commande, le nom du fournisseur, le libellé du produit et
--le sous total = quantité commandée * Prix unitaire)
SELECT entcom.numcom AS "N° commande",
entcom.obscom AS "Urgent",
fournis.nomfou AS "Nom fournisseur",
produit.libart AS "libellé article",
(ligcom.priuni*ligcom.qtecde) AS "sous total"
FROM entcom
inner JOIN fournis ON entcom.numfou =fournis.numfou
inner JOIN ligcom ON ligcom.numcom =entcom.numcom
inner JOIN produit ON ligcom.codart=produit.codart
WHERE entcom.obscom = "Commande urgente"



--12.Coder de 2 manières différentes la requête suivante :
--Lister le nom des fournisseurs susceptibles de livrer au moins un article
SELECT DISTINCT fournis.nomfou AS "Nom fournisseur"
FROM fournis
INNER JOIN entcom ON fournis.numfou = entcom.numfou
INNER JOIN ligcom ON ligcom.numcom = entcom.numcom
WHERE ligcom.qteliv > 0;


--13.Coder de 2 manières différentes la requête suivante
--Lister les commandes (Numéro et date) dont le fournisseur est celui de la
--commande 70210 :
SELECT
entcom.datcom AS "Date Commande",
entcom.numcom AS "Numero Commande"
FROM entcom
WHERE entcom.numfou = (
	SELECT entcom.numfou
	FROM entcom
	WHERE entcom.numcom= 70210);



--14.Dans les articles susceptibles d’être vendus, lister les articles moins chers (basés
--sur Prix1) que le moins cher des rubans (article dont le premier caractère
--commence par R). On affichera le libellé de l’article et prix1


--15.Editer la liste des fournisseurs susceptibles de livrer les produits dont le stock est
--inférieur ou égal à 150 % du stock d'alerte. La liste est triée par produit puis
--fournisseur



--16.Éditer la liste des fournisseurs susceptibles de livrer les produit dont le stock est
--inférieur ou égal à 150 % du stock d'alerte et un délai de livraison d'au plus 30
--jours. La liste est triée par fournisseur puis produit


--17.Avec le même type de sélection que ci-dessus, sortir un total des stocks par
--fournisseur trié par total décroissant



--18.En fin d'année, sortir la liste des produits dont la quantité réellement commandée
--dépasse 90% de la quantité annuelle prévue.


--19.Calculer le chiffre d'affaire par fournisseur pour l'année 93 sachant que les prix
--indiqués sont hors taxes et que le taux de TVA est 20%.



/*20.Existe-t-il des lignes de commande non cohérentes avec les produits vendus par
les fournisseurs. ?
*/




/*IV LES BESOINS DE MISE A JOUR
1. Application d'une augmentation de tarif de 4% pour le prix 1, 2% pour le prix2
pour le fournisseur 9180*/




--2. Dans la table vente, mettre à jour le prix2 des articles dont le prix2 est null, en
--affectant a valeur de prix.


--3. Mettre à jour le champ obscom en positionnant '*****' pour toutes les commandes
--dont le fournisseur a un indice de satisfaction <5



--4. Suppression du produit I110


--5. Suppression des entête de commande qui n'ont aucune ligne