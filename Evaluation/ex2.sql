/*Evaluation SQL: Base De Données Northwind
Ecrivez les requêtes permettant d'obtenir les résultats suivant:



1 -Liste des contacts français:*/
SELECT CompanyName AS Société ,
ContactName AS Contact,
ContactTitle AS Fonction,
Phone AS Téléphone
FROM customers
WHERE Country = "france";


--2 -Produits vendus par le fournisseur «Exotic Liquids»
SELECT ProductName AS Produit,
UnitPrice AS Prix
FROM products
JOIN suppliers ON suppliers.SupplierID = products.SupplierID
WHERE suppliers.CompanyName = "Exotic Liquids";


--3 -Nombre de produits vendus par les fournisseurs Français dans l’ordre décroissant:
SELECT suppliers.CompanyName AS Fournisseur,
COUNT(products.ProductID) AS "Nb produits"
FROM suppliers
JOIN products 
ON products.SupplierID = suppliers.SupplierID
WHERE suppliers.Country = "France"
GROUP BY suppliers.SupplierID
ORDER BY "Nb produits" DESC;

--4 -Liste des clients Français ayant plus de 10 commande :
SELECT
customers.CompanyName AS `Client`,
COUNT(orders.CustomerID) AS `Nb commandes`
FROM customers
JOIN orders
ON orders.CustomerID = customers.CustomerID
WHERE customers.Country = "France"
GROUP BY customers.CompanyName
HAVING `Nb commandes` > 10 
ORDER BY `Nb commandes` ASC;


--5 -Liste des clients ayant un chiffre d’affaires > 30.000:
SELECT customers.CompanyName AS `Client`,
SUM(`order details`.UnitPrice * `order details`.Quantity) AS `CA`,
customers.Country AS `Pays`
FROM customers
JOIN orders ON orders.CustomerID = customers.CustomerID
JOIN `order details` ON `order details`.OrderID = orders.OrderID
GROUP BY customers.CustomerID
HAVING `CA` > 30000
ORDER BY `CA` ASC;


--6 –Liste des pays dont les clients ont passé commande de produits fournis par «Exotic Liquids»:
SELECT DISTINCT  orders.ShipCountry AS `Pays`-- distint permet d'effacer les doublons
FROM orders
JOIN `order details`
ON `order details`.OrderID = orders.OrderID
JOIN products
ON products.ProductID = `order details`.ProductID
JOIN suppliers 
ON suppliers.SupplierID = products.SupplierID
WHERE suppliers.CompanyName = "Exotic Liquids"
ORDER BY `Pays`;


--7 –Montant des ventes de 1997
SELECT 
SUM(`order details`.Quantity*`order details`.UnitPrice) AS ` Montant vente 97`
FROM `order details`
JOIN orders
ON orders.OrderID = `order details`.OrderID
WHERE orders.OrderDate
LIKE '1997%';


--8 –Montant des ventes de 1997 mois par mois : 
SELECT MONTH(orders.OrderDate) AS `Mois 97`,
SUM(`order details`.Quantity*`order details`.UnitPrice) AS ` Montant vente 97`
FROM `order details`
JOIN orders
ON orders.OrderID = `order details`.OrderID
WHERE orders.OrderDate
LIKE '1997%'
GROUP BY `Mois 97`
ORDER BY `Mois 97` ASC;


--9 –Depuis quelle date le client «Du monde entier» n’a plus commandé?
SELECT orders.ShipName AS `Nom`,
MAX(orders.OrderDate) AS `Date de dernière commande`
FROM customers
JOIN orders  ON customers.CustomerID = orders.CustomerID
WHERE orders.ShipName = "Du monde entier";


--10 –Quel est le délai moyen de livraison en jours?
SELECT 
ROUND(AVG(DATEDIFF(orders.ShippedDate,orders.OrderDate))) AS "Délai moyen de livraison en jours"
FROM orders;
--DATEDIFF permet de déterminer l’intervalle entre 2 dates
--AVG fait la moyenne des date
--Round permet d'arrondir le résultat 