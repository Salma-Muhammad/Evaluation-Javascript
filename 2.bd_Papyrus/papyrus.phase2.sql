-- --------------------------------------------------------
-- Hôte :                        127.0.0.1
-- Version du serveur:           5.7.24 - MySQL Community Server (GPL)
-- SE du serveur:                Win64
-- HeidiSQL Version:             10.2.0.5599
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


-- Listage de la structure de la base pour papyrus
CREATE DATABASE IF NOT EXISTS `papyrus` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `papyrus`;

-- Listage de la structure de la table papyrus. entcom
CREATE TABLE IF NOT EXISTS `entcom` (
  `numcom` int(10) NOT NULL AUTO_INCREMENT,
  `obscom` varchar(50) DEFAULT NULL,
  `datcom` datetime DEFAULT CURRENT_TIMESTAMP,
  `numfou` int(11) NOT NULL,
  PRIMARY KEY (`numcom`),
  KEY `FK_entcom_fournis` (`numfou`),
  CONSTRAINT `FK_entcom_fournis` FOREIGN KEY (`numfou`) REFERENCES `fournis` (`numfou`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Listage des données de la table papyrus.entcom : ~0 rows (environ)
/*!40000 ALTER TABLE `entcom` DISABLE KEYS */;
/*!40000 ALTER TABLE `entcom` ENABLE KEYS */;

-- Listage de la structure de la table papyrus. fournis
CREATE TABLE IF NOT EXISTS `fournis` (
  `numfou` int(11) NOT NULL,
  `nomfou` varchar(25) NOT NULL,
  `ruefou` varchar(50) NOT NULL,
  `posfou` char(5) NOT NULL,
  `vilfou` varchar(30) NOT NULL,
  `confou` varchar(15) NOT NULL,
  `satisf` tinyint(4) NOT NULL,
  PRIMARY KEY (`numfou`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Listage des données de la table papyrus.fournis : ~0 rows (environ)
/*!40000 ALTER TABLE `fournis` DISABLE KEYS */;
/*!40000 ALTER TABLE `fournis` ENABLE KEYS */;

-- Listage de la structure de la table papyrus. ligcom
CREATE TABLE IF NOT EXISTS `ligcom` (
  `numlig` tinyint(3) NOT NULL,
  `qtecde` int(10) NOT NULL,
  `priuni` varchar(50) NOT NULL,
  `qteliv` int(10) DEFAULT NULL,
  `derliv` datetime(6) NOT NULL,
  `numcom` int(10) NOT NULL,
  `codart` varchar(50) NOT NULL,
  PRIMARY KEY (`numlig`),
  KEY `numcom` (`numcom`),
  KEY `FK_ligcom_produit` (`codart`),
  CONSTRAINT `FK_ligcom_produit` FOREIGN KEY (`codart`) REFERENCES `produit` (`codart`),
  CONSTRAINT `ligcom_ibfk_1` FOREIGN KEY (`numcom`) REFERENCES `entcom` (`numcom`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Listage des données de la table papyrus.ligcom : ~0 rows (environ)
/*!40000 ALTER TABLE `ligcom` DISABLE KEYS */;
/*!40000 ALTER TABLE `ligcom` ENABLE KEYS */;

-- Listage de la structure de la table papyrus. produit
CREATE TABLE IF NOT EXISTS `produit` (
  `codart` varchar(4) NOT NULL,
  `libart` varchar(30) NOT NULL,
  `unimes` varchar(5) NOT NULL,
  `stkale` int(10) NOT NULL,
  `stkphy` int(10) NOT NULL,
  `qteann` int(10) NOT NULL,
  PRIMARY KEY (`codart`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Listage des données de la table papyrus.produit : ~15 rows (environ)
/*!40000 ALTER TABLE `produit` DISABLE KEYS */;
INSERT INTO `produit` (`codart`, `libart`, `unimes`, `stkale`, `stkphy`, `qteann`) VALUES
	('B001', 'Bande magn?tique 1200', 'unite', 20, 87, 240),
	('B002', 'Bande magn?tique 6250', 'unite', 20, 12, 410),
	('D035', 'CD R slim 80 mm', 'B010', 40, 42, 150),
	('D050', 'CD R-W 80mm', 'B010', 50, 4, 0),
	('I100', 'Papier 1 ex continu', 'B1000', 100, 557, 3500),
	('I105', 'Papier 2 ex continu', 'B1000', 75, 5, 2300),
	('I108', 'Papier 3 ex continu', 'B500', 200, 557, 3500),
	('I110', 'Papier 4 ex continu', 'B400', 10, 12, 63),
	('P220', 'Pr?-imprim? commande', 'B500', 500, 2500, 24500),
	('P230', 'Pr?-imprim? facture', 'B500', 500, 250, 12500),
	('P240', 'Pr?-imprim? bulletin paie', 'B500', 500, 3000, 6250),
	('P250', 'Pr?-imprim? bon livraison', 'B500', 500, 2500, 24500),
	('P270', 'Pr?-imprim? bon fabrication', 'B500', 500, 2500, 24500),
	('R080', 'ruban Epson 850', 'unite', 10, 2, 120),
	('R132', 'ruban impl 1200 lignes', 'unite', 25, 200, 182);
/*!40000 ALTER TABLE `produit` ENABLE KEYS */;

-- Listage de la structure de la table papyrus. vente
CREATE TABLE IF NOT EXISTS `vente` (
  `numfou` int(11) NOT NULL,
  `codart` varchar(50) NOT NULL,
  `delliv` int(11) NOT NULL,
  `qte1` int(11) NOT NULL,
  `prix1` int(11) NOT NULL,
  `qte2` int(10) NOT NULL,
  `prix2` int(11) NOT NULL,
  `qte3` int(10) NOT NULL,
  `prix3` int(11) NOT NULL,
  KEY `FK_vente_fournis` (`numfou`),
  KEY `FK_vente_produit` (`codart`),
  CONSTRAINT `FK_vente_fournis` FOREIGN KEY (`numfou`) REFERENCES `fournis` (`numfou`),
  CONSTRAINT `FK_vente_produit` FOREIGN KEY (`codart`) REFERENCES `produit` (`codart`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Listage des données de la table papyrus.vente : ~0 rows (environ)
/*!40000 ALTER TABLE `vente` DISABLE KEYS */;
/*!40000 ALTER TABLE `vente` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
