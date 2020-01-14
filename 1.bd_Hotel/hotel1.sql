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


-- Listage de la structure de la base pour hotel1
CREATE DATABASE IF NOT EXISTS `hotel1` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `hotel1`;

-- Listage de la structure de la table hotel1. chambre
CREATE TABLE IF NOT EXISTS `chambre` (
  `capacité_chambre` int(11) DEFAULT NULL,
  `degre_confort` int(11) DEFAULT NULL,
  `exposition` varchar(50) DEFAULT NULL,
  `type_chambre` varchar(50) DEFAULT NULL,
  `num_chambre` int(11) NOT NULL,
  `num_hotel` int(11) DEFAULT NULL,
  PRIMARY KEY (`num_chambre`),
  KEY `chambre_ibfk1` (`num_hotel`),
  CONSTRAINT `chambre_ibfk1` FOREIGN KEY (`num_hotel`) REFERENCES `hotel` (`num_hotel`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Listage des données de la table hotel1.chambre : ~27 rows (environ)
/*!40000 ALTER TABLE `chambre` DISABLE KEYS */;
INSERT INTO `chambre` (`capacité_chambre`, `degre_confort`, `exposition`, `type_chambre`, `num_chambre`, `num_hotel`) VALUES
	(1, 5, 'plein sud', 'studio', 1, 1),
	(5, 5, 'ouest', 'f5', 2, 1),
	(4, 5, 'est', 'f3', 3, 1),
	(2, 9, 'soleil', 'f2', 4, 2),
	(1, 5, 'plein nord', 'studio', 5, 2),
	(1, 7, 'plein sud', 'studio', 6, 2),
	(5, 5, 'ouest', 'f5', 7, 3),
	(4, 8, 'est', 'f3', 8, 3),
	(2, 5, 'soleil', 'f2', 9, 3),
	(1, 5, 'plein nord', 'studio', 10, 4),
	(1, 10, 'plein sud', 'studio', 11, 4),
	(5, 5, 'ouest', 'f5', 12, 4),
	(4, 5, 'est', 'f3', 13, 5),
	(2, 9, 'soleil', 'f2', 14, 5),
	(1, 5, 'plein nord', 'studio', 15, 5),
	(1, 5, 'plein sud', 'studio', 16, 6),
	(5, 5, 'ouest', 'f5', 17, 6),
	(4, 2, 'est', 'f3', 18, 6),
	(2, 5, 'soleil', 'f2', 19, 7),
	(1, 6, 'plein nord', 'studio', 20, 7),
	(1, 5, 'plein sud', 'studio', 21, 7),
	(5, 5, 'ouest', 'f5', 22, 8),
	(4, 5, 'est', 'f3', 23, 8),
	(2, 4, 'soleil', 'f2', 24, 8),
	(5, 5, 'ouest', 'f5', 25, 9),
	(4, 5, 'est', 'f3', 26, 9),
	(2, 4, 'soleil', 'f2', 27, 9);
/*!40000 ALTER TABLE `chambre` ENABLE KEYS */;

-- Listage de la structure de la table hotel1. clients
CREATE TABLE IF NOT EXISTS `clients` (
  `num_client` int(11) NOT NULL,
  `nom_client` varchar(50) DEFAULT NULL,
  `prenom_client` varchar(50) DEFAULT NULL,
  `adresse_client` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`num_client`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Listage des données de la table hotel1.clients : ~0 rows (environ)
/*!40000 ALTER TABLE `clients` DISABLE KEYS */;
/*!40000 ALTER TABLE `clients` ENABLE KEYS */;

-- Listage de la structure de la table hotel1. hotel
CREATE TABLE IF NOT EXISTS `hotel` (
  `num_hotel` int(11) NOT NULL,
  `capacité_hotel` int(11) DEFAULT NULL,
  `categorie_hotel` varchar(50) DEFAULT NULL,
  `nom_hotel` varchar(50) DEFAULT NULL,
  `adresse_hotel` varchar(50) DEFAULT NULL,
  `num_station` int(11) DEFAULT NULL,
  PRIMARY KEY (`num_hotel`),
  KEY `hotel_station_ibfk1` (`num_station`),
  CONSTRAINT `hotel_station_ibfk1` FOREIGN KEY (`num_station`) REFERENCES `station` (`num_station`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Listage des données de la table hotel1.hotel : ~9 rows (environ)
/*!40000 ALTER TABLE `hotel` DISABLE KEYS */;
INSERT INTO `hotel` (`num_hotel`, `capacité_hotel`, `categorie_hotel`, `nom_hotel`, `adresse_hotel`, `num_station`) VALUES
	(1, 50, '3 etoiles', 'hotel1', 'adresse1', 140),
	(2, 30, '4 etoiles', 'hotel2', 'adresse2', 140),
	(3, 3, '1 etoiles', 'hotel3', 'adresse3', 140),
	(4, 50, '3 etoiles', 'hotel4', 'adresse4', 141),
	(5, 30, '4 etoiles', 'hotel5', 'adresse5', 141),
	(6, 3, '1 etoiles', 'hotel6', 'adresse6', 141),
	(7, 50, '3 etoiles', 'hotel7', 'adresse7', 142),
	(8, 30, '4 etoiles', 'hotel8', 'adresse8', 142),
	(9, 3, '1 etoiles', 'hotel9', 'adresse9', 142);
/*!40000 ALTER TABLE `hotel` ENABLE KEYS */;

-- Listage de la structure de la table hotel1. reservation
CREATE TABLE IF NOT EXISTS `reservation` (
  `num_chambre` int(11) NOT NULL,
  `num_client` int(11) NOT NULL,
  `date_debut` int(11) DEFAULT NULL,
  `date_fin` int(11) DEFAULT NULL,
  `date_reservation` int(11) DEFAULT NULL,
  `montant_arrhes` int(11) DEFAULT NULL,
  `prix_total` int(11) DEFAULT NULL,
  PRIMARY KEY (`num_chambre`,`num_client`),
  KEY `reservation__ibfk2` (`num_client`),
  CONSTRAINT `reservation__ibfk1` FOREIGN KEY (`num_chambre`) REFERENCES `chambre` (`num_chambre`),
  CONSTRAINT `reservation__ibfk2` FOREIGN KEY (`num_client`) REFERENCES `clients` (`num_client`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Listage des données de la table hotel1.reservation : ~0 rows (environ)
/*!40000 ALTER TABLE `reservation` DISABLE KEYS */;
/*!40000 ALTER TABLE `reservation` ENABLE KEYS */;

-- Listage de la structure de la table hotel1. station
CREATE TABLE IF NOT EXISTS `station` (
  `num_station` int(11) NOT NULL,
  `nom_station` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`num_station`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Listage des données de la table hotel1.station : ~3 rows (environ)
/*!40000 ALTER TABLE `station` DISABLE KEYS */;
INSERT INTO `station` (`num_station`, `nom_station`) VALUES
	(140, 'Shell'),
	(141, 'Vosges'),
	(142, 'Jura');
/*!40000 ALTER TABLE `station` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
