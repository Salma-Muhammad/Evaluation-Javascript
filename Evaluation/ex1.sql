DROP DATABASE IF EXIST EvalSQL;

CREATE DATABASE EvalSQL;
USE EvalSQL;



CREATE TABLE `Client`(
cli_num INT NOT NULL AUTO_INCREMENT  ,
cli_nom VARCHAR(50),
cli_adresse VARCHAR(50),
cli_tel VARCHAR(30),
PRIMARY KEY (cli_num) 

);
CREATE TABLE Produit (
pro_num INT NOT NULL AUTO_INCREMENT ,
pro_libelle VARCHAR (50),
pro_description VARCHAR(50),
PRIMARY KEY (pro_num)
);
CREATE TABLE Commande (
com_num INT NOT NULL AUTO_INCREMENT ,
cli_num INT NOT null,
com_date DATETIME ,
com_obs VARCHAR (50),
PRIMARY KEY (com_num),
FOREIGN KEY (cli_num) REFERENCES `Client` (cli_num) 
);
CREATE TABLE est_compose (
com_num INT NOT NULL,
pro_num INT NOT NULL,
est_qte INT,
PRIMARY KEY (com_num, pro_num),
CONSTRAINT est_compose_ibfk_1  FOREIGN KEY (com_num) REFERENCES Commande (com_num),
CONSTRAINT est_compose_ibfk_2 FOREIGN KEY  (pro_num) REFERENCES Produit (pro_num)
);
CREATE INDEX index_nom ON `Client` (cli_nom);