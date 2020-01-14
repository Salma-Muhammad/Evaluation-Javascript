/*Jointures*/

--Rechercher le prénom des employés et le numéro de la région de leur
--département. 
SELECT prenom, noregion
FROM employe
INNER JOIN dept
ON nodep = nodept


--Rechercher le numéro du département, le nom du département, le
--nom des employés classés par numéro de département (renommer les
--tables utilisées). 

SELECT dept.nodept AS 'Numero du departement', 
dept.nom AS 'Nom du departement', 
employe.nom AS 'Nom de l employé'
FROM employe
INNER JOIN dept 
ON employe.nodep = dept.nodept
ORDER BY  nodept


--Rechercher le nom des employés du département 'Distribution'.
SELECT dept.nodept AS 'Numero du departement', 
dept.nom AS 'Nom du departement', 
employe.nom AS "Nom de l'employé"
FROM employe
INNER JOIN dept 
ON dept.nom ='distribution'
ORDER BY  nodept



--Rechercher le nom et le salaire des employés qui gagnent plus que
--leur patron, et le nom et le salaire de leur patron
SELECT a.nom AS 'Nom Employés',
a.salaire AS 'Salaire Employés', 
a.noemp AS 'N° Employés', 
a.nosup AS 'n° supérieur' , 
b.nom AS 'Nom Patron' , 
b.salaire AS 'Salaire Patron',
b.noemp AS 'N° Employés',
b.nosup AS 'n° supérieur'
FROM employe AS  a
JOIN employe AS  b
ON a.nosup = b.noemp
WHERE a.salaire> b.salaire 


/*Sous-requêtes
Rechercher le nom et le titre des employés qui ont le même titre que
Amartakaldire.*/

--1er façon
SELECT nom, titre
FROM employe
WHERE titre="représentant" 
--sinon 
SELECT nom, titre
FROM employe
WHERE titre IN(
	SELECT titre
	FROM employe 
	WHERE nom = "amartakaldire");


--Rechercher le nom, le salaire et le numéro de département des
--employés qui gagnent plus qu'un seul employé du département 31,
--classés par numéro de département et salaire.
SELECT nom, salaire, nodep
FROM employe
WHERE salaire > ANY (
	SELECT nodep 
	FROM employe 
	WHERE nodep = 31)
ORDER BY nodep, salaire

--Rechercher le nom, le salaire et le numéro de département des
--employés qui gagnent plus que tous les employés du département 31,
--classés par numéro de département et salaire. 
SELECT nom, salaire, nodep
FROM employe
WHERE salaire > ALL (
	SELECT nodep 
	FROM employe 
	WHERE nodep = 31)
AND nodep <> 31 -- supprimer le depatement  31
ORDER BY nodep, salaire


--Rechercher le nom et le titre des employés du service 31 qui ont un
--titre que l'on trouve dans le département 32.
SELECT nom, titre
FROM employe
WHERE nodep =31 AND titre IN  (
	SELECT titre
	FROM employe 
	WHERE nodep = 32);


--Rechercher le nom et le titre des employés du service 31 qui ont un
--titre l'on ne trouve pas dans le département 32.
SELECT nom, titre
FROM employe
WHERE nodep =31 AND titre NOT IN  (
	SELECT titre
	FROM employe 
	WHERE nodep = 32);


--Rechercher le nom, le titre et le salaire des employés qui ont le même
--titre et le même salaire que Fairant. 
SELECT nom, titre, salaire
FROM employe
WHERE salaire =  (
	SELECT salaire
	FROM employe 
	WHERE nom = "fairent")
AND titre = (
	SELECT titre
	FROM employe 
	WHERE nom = "fairent")


--Rechercher le numéro de département, le nom du département, le
--nom des employés, en affichant aussi les départements dans lesquels
--il n'y a personne, classés par numéro de département.
SELECT dept.nodept AS "N° du Département",
dept.nom AS "Nom du Departement", 
employe.nom AS "Nom des employés" 
FROM dept
LEFT JOIN employe ON nodept = nodept
ORDER BY nodep 


-- moyenne 
SELECT AVG(salaire) AS  "Moyenne des salaires"
 FROM employe
 WHERE titre = 'Secrétaire';

--max
SELECT MAX(salaire) AS "salaire max"
FROM employe;

--min 
SELECT MIN(salaire) AS "salaire min"
FROM employe;

/*Les groupes
1. Calculer le nombre d'employés de chaque titre.*/
SELECT titre, 
COUNT(nom) AS Nb_employe 
FROM employe
GROUP BY titre


--2. Calculer la moyenne des salaires et leur somme, par région.
SELECT dept.noregion, 
SUM(employe.salaire) AS "Somme de salaire", 
AVG(employe.salaire) AS "moyenne des salaires"
FROM employe
INNER JOIN dept 
ON  employe.nodep = dept.nodept
GROUP BY dept.noregion;


--3. Afficher les numéros des départements ayant au moins 3 employés.
SELECT nodep, COUNT(nom) AS nb_employés
FROM employe
GROUP BY nodep
HAVING COUNT(nom) >=3


--4. Afficher les lettres qui sont l'initiale d'au moins trois employés.
-- ça ne fonctionne pas 
SELECT nom,
SUBSTRING(nom,1,0) AS Initiales,
COUNT(Initiales) AS nb_Initiales
FROM employe
GROUP BY Initiales
HAVING nb_Initiales >=3;


--5. Rechercher le salaire maximum et le salaire minimum parmi tous les
--salariés et l'écart entre les deux.
SELECT 
MIN(salaire) AS 'salaire_min',
MAX(salaire) AS 'salaire_max',
MAX(salaire)-MIN(salaire) AS "Ecart entre salaire"
FROM employe


--6. Rechercher le nombre de titres différents.
SELECT 
COUNT(distinct titre) AS nb_titre
FROM employe


--7. Pour chaque titre, compter le nombre d'employés possédant ce titre.
SELECT titre ,
COUNT(titre) AS  nb_employe
FROM employe
GROUP BY titre


--8. Pour chaque nom de département, afficher le nom du département et
--le nombre d'employés.
SELECT dept.nom AS "Nom du département",
COUNT(employe.noemp) AS  nb_employe
FROM employe
INNER JOIN dept ON employe.nodep = dept.nodept
GROUP BY dept.nom


--9. Rechercher les titres et la moyenne des salaires par titre dont la
--moyenne est supérieure à la moyenne des salaires des Représentants.
SELECT titre ,
AVG(salaire) AS moyenne
FROM employe
GROUP BY titre
HAVING AVG(salaire) > (
	SELECT AVG(salaire)
	FROM employe
	WHERE titre = "représentant");


--10.Rechercher le nombre de salaires renseignés et le nombre de taux de
--commission renseignés. 
SELECT 
COUNT(salaire) AS nb_salaire,
COUNT(tauxcom) AS nb_taux  
FROM employe;