CREATE TABLE produit (
	codart CHAR (4) NOT NULL ,
	libart VARCHAR (30) NOT NULL ,
	stkale INT(10) NOT NULL,
	stkphy INT(10) NOT NULL,
	qteann INT (10) NOT NULL,
	unimes CHAR(5) NOT NULL, 
	PRIMARY KEY (codart),
	);
	
CREATE TABLE fournis (
	numfou VARCHAR(25)  DEFAULT NULL,
	nomfou VARCHAR (25) NOT NULL,
	ruefou VARCHAR (50)  NOT NULL,
	posfou CHAR (5) NOT NULL,
	vilfou VARCHAR (30) NOT NULL,
	confou VARCHAR (15) NOT NULL,
	satisf TINYINT (3) BETWEEN '1' AND '10',
	PRIMARY KEY (numfou),
	);
papyrus2
CREATE TABLE entcom (
	numcom INT (10) AUTO_INCREMENT NOT NULL,
	obscom VARCHAR(50),
	datcom DATE(10) DEFAULT DATETIME NOT NULL,
	numfou VARCHAR (25) DEFAULT NULL  ,
	PRIMARY KEY (numcom),
	FOREIGN KEY (numfou) REFERENCES fournis(numfou)
	);

CREATE TABLE ligcom(
	numlig TINYINT (3) NOT NULL,
	qtecde INT(10) NOT NULL,
	priuni VARCHAR (50) NOT NULL,
	qteliv INT (10),
	derliv DATETIME (6) NOT NULL,
	numcom INT(10) NOT NULL,
	codart CHAR(4) NOT NULL,
	PRIMARY KEY (numlig),
	FOREIGN KEY (numcom) REFERENCES entcom(numcom),
	FOREIGN KEY (codart) REFERENCES produit(codart)
	);

CREATE TABLE vente (
	delliv SMALLINT (5) NOT NULL,
	qte1 INT(10) NOT NULL,
	prix1 VARCHAR (50) NOT NULL,
	qte2 INT(10),
	prix2 VARCHAR (50),
	qte3 INT(10),
	prix3 VARCHAR (50),
	numfou VARCHAR(25) NOT NULL,
	codart CHAR(4) NOT NULL,
	FOREIGN KEY (numfou) REFERENCES fournis(numfou),
	FOREIGN KEY (codart) REFERENCES produit(codart)
	);

