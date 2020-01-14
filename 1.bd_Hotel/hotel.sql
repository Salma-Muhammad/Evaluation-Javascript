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


-- Listage de la structure de la base pour hotel
CREATE DATABASE IF NOT EXISTS `hotel` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `hotel`;

-- Listage de la structure de la table hotel. chambre
CREATE TABLE IF NOT EXISTS `chambre` (
  `cha_id` int(11) NOT NULL AUTO_INCREMENT,
  `cha_hot_id` int(11) NOT NULL,
  `cha_numero` int(11) NOT NULL,
  `cha_capacite` int(11) NOT NULL,
  `cha_type` int(11) NOT NULL,
  PRIMARY KEY (`cha_id`),
  KEY `cha_hot_id` (`cha_hot_id`),
  CONSTRAINT `chambre_ibfk_1` FOREIGN KEY (`cha_hot_id`) REFERENCES `hotel` (`hot_id`)
) ENGINE=InnoDB AUTO_INCREMENT=64 DEFAULT CHARSET=latin1;

-- Listage des données de la table hotel.chambre : ~63 rows (environ)
/*!40000 ALTER TABLE `chambre` DISABLE KEYS */;
INSERT INTO `chambre` (`cha_id`, `cha_hot_id`, `cha_numero`, `cha_capacite`, `cha_type`) VALUES
	(1, 1, 1, 2, 1),
	(2, 1, 2, 3, 1),
	(3, 1, 3, 2, 1),
	(4, 1, 101, 1, 1),
	(5, 1, 102, 2, 1),
	(6, 1, 103, 3, 1),
	(7, 1, 201, 2, 1),
	(8, 1, 202, 7, 1),
	(9, 1, 203, 1, 1),
	(10, 2, 1, 2, 1),
	(11, 2, 2, 2, 1),
	(12, 2, 3, 1, 1),
	(13, 2, 101, 2, 1),
	(14, 2, 102, 1, 1),
	(15, 2, 103, 3, 1),
	(16, 2, 201, 2, 1),
	(17, 2, 202, 4, 1),
	(18, 2, 203, 4, 1),
	(19, 3, 1, 3, 1),
	(20, 3, 2, 1, 1),
	(21, 3, 3, 2, 1),
	(22, 3, 101, 2, 1),
	(23, 3, 102, 2, 1),
	(24, 3, 103, 2, 1),
	(25, 3, 201, 2, 1),
	(26, 3, 202, 4, 1),
	(27, 3, 203, 4, 1),
	(28, 4, 1, 4, 1),
	(29, 4, 2, 2, 1),
	(30, 4, 3, 4, 1),
	(31, 4, 101, 1, 1),
	(32, 4, 102, 2, 1),
	(33, 4, 103, 2, 1),
	(34, 4, 201, 2, 1),
	(35, 4, 202, 2, 1),
	(36, 4, 203, 3, 1),
	(37, 5, 1, 3, 1),
	(38, 5, 2, 2, 1),
	(39, 5, 3, 2, 1),
	(40, 5, 101, 1, 1),
	(41, 5, 102, 4, 1),
	(42, 5, 103, 1, 1),
	(43, 5, 201, 2, 1),
	(44, 5, 202, 4, 1),
	(45, 5, 203, 4, 1),
	(46, 6, 1, 1, 1),
	(47, 6, 2, 1, 1),
	(48, 6, 3, 1, 1),
	(49, 6, 101, 1, 1),
	(50, 6, 102, 1, 1),
	(51, 6, 103, 1, 1),
	(52, 6, 201, 1, 1),
	(53, 6, 202, 1, 1),
	(54, 6, 203, 1, 1),
	(55, 7, 1, 1, 1),
	(56, 7, 2, 5, 1),
	(57, 7, 3, 5, 1),
	(58, 7, 101, 5, 1),
	(59, 7, 102, 5, 1),
	(60, 7, 103, 5, 1),
	(61, 7, 201, 5, 1),
	(62, 7, 202, 5, 1),
	(63, 7, 203, 5, 1);
/*!40000 ALTER TABLE `chambre` ENABLE KEYS */;

-- Listage de la structure de la table hotel. client
CREATE TABLE IF NOT EXISTS `client` (
  `cli_id` int(11) NOT NULL AUTO_INCREMENT,
  `cli_nom` varchar(50) DEFAULT NULL,
  `cli_prenom` varchar(50) DEFAULT NULL,
  `cli_adresse` varchar(50) DEFAULT NULL,
  `cli_ville` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`cli_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

-- Listage des données de la table hotel.client : ~7 rows (environ)
/*!40000 ALTER TABLE `client` DISABLE KEYS */;
INSERT INTO `client` (`cli_id`, `cli_nom`, `cli_prenom`, `cli_adresse`, `cli_ville`) VALUES
	(1, 'Doe', 'John', '', 'LA'),
	(2, 'Homme', 'Josh', '', 'Palm Desert'),
	(3, 'Paul', 'Weller', '', 'Londre'),
	(4, 'White', 'Jack', '', 'Detroit'),
	(5, 'Claypool', 'Les', '', 'San Francisco'),
	(6, 'Squire', 'Chris', '', 'Londre'),
	(7, 'Wood', 'Ronnie', '', 'Londre');
/*!40000 ALTER TABLE `client` ENABLE KEYS */;

-- Listage de la structure de la table hotel. hotel
CREATE TABLE IF NOT EXISTS `hotel` (
  `hot_id` int(11) NOT NULL AUTO_INCREMENT,
  `hot_sta_id` int(11) NOT NULL,
  `hot_nom` varchar(50) NOT NULL,
  `hot_categorie` int(11) NOT NULL,
  `hot_adresse` varchar(50) NOT NULL,
  `hot_ville` varchar(50) NOT NULL,
  PRIMARY KEY (`hot_id`),
  KEY `hot_sta_id` (`hot_sta_id`),
  CONSTRAINT `hotel_ibfk_1` FOREIGN KEY (`hot_sta_id`) REFERENCES `station` (`sta_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

-- Listage des données de la table hotel.hotel : ~7 rows (environ)
/*!40000 ALTER TABLE `hotel` DISABLE KEYS */;
INSERT INTO `hotel` (`hot_id`, `hot_sta_id`, `hot_nom`, `hot_categorie`, `hot_adresse`, `hot_ville`) VALUES
	(1, 1, 'Le Magnifique', 3, 'rue du bas', 'Pralo'),
	(2, 1, 'Hotel du haut', 1, 'rue du haut', 'Pralo'),
	(3, 2, 'Le Narval', 3, 'place de la liberation', 'Vonten'),
	(4, 2, 'Les Pissenlis', 4, 'place du 14 juillet', 'Bretou'),
	(5, 2, 'RR Hotel', 5, 'place du bas', 'Bretou'),
	(6, 2, 'La Brique', 2, 'place du haut', 'Bretou'),
	(7, 3, 'Le Beau Rivage', 3, 'place du centre', 'Toras');
/*!40000 ALTER TABLE `hotel` ENABLE KEYS */;

-- Listage de la structure de la table hotel. reservation
CREATE TABLE IF NOT EXISTS `reservation` (
  `res_id` int(11) NOT NULL AUTO_INCREMENT,
  `res_cha_id` int(11) NOT NULL,
  `res_cli_id` int(11) NOT NULL,
  `res_date` datetime NOT NULL,
  `res_date_debut` datetime NOT NULL,
  `res_date_fin` datetime NOT NULL,
  `res_prix` decimal(6,2) NOT NULL,
  `res_arrhes` decimal(6,2) DEFAULT NULL,
  PRIMARY KEY (`res_id`),
  KEY `res_cha_id` (`res_cha_id`),
  KEY `res_cli_id` (`res_cli_id`),
  CONSTRAINT `reservation_ibfk_1` FOREIGN KEY (`res_cha_id`) REFERENCES `chambre` (`cha_id`),
  CONSTRAINT `reservation_ibfk_2` FOREIGN KEY (`res_cli_id`) REFERENCES `client` (`cli_id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

-- Listage des données de la table hotel.reservation : ~8 rows (environ)
/*!40000 ALTER TABLE `reservation` DISABLE KEYS */;
INSERT INTO `reservation` (`res_id`, `res_cha_id`, `res_cli_id`, `res_date`, `res_date_debut`, `res_date_fin`, `res_prix`, `res_arrhes`) VALUES
	(1, 1, 1, '2017-01-10 00:00:00', '2017-07-01 00:00:00', '2017-07-15 00:00:00', 2400.00, 800.00),
	(2, 2, 2, '2017-01-10 00:00:00', '2017-07-01 00:00:00', '2017-07-15 00:00:00', 3400.00, 100.00),
	(3, 1, 3, '2017-01-10 00:00:00', '2017-07-01 00:00:00', '2017-07-15 00:00:00', 400.00, 50.00),
	(4, 2, 4, '2017-01-10 00:00:00', '2017-07-01 00:00:00', '2017-07-15 00:00:00', 7200.00, 1800.00),
	(5, 3, 5, '2017-01-10 00:00:00', '2017-07-01 00:00:00', '2017-07-15 00:00:00', 1400.00, 450.00),
	(6, 4, 6, '2017-01-10 00:00:00', '2017-07-01 00:00:00', '2017-07-15 00:00:00', 2400.00, 780.00),
	(7, 4, 6, '2017-01-10 00:00:00', '2017-07-01 00:00:00', '2017-07-15 00:00:00', 500.00, 80.00),
	(8, 4, 1, '2017-01-10 00:00:00', '2017-07-01 00:00:00', '2017-07-15 00:00:00', 40.00, 0.00);
/*!40000 ALTER TABLE `reservation` ENABLE KEYS */;

-- Listage de la structure de la table hotel. station
CREATE TABLE IF NOT EXISTS `station` (
  `sta_id` int(11) NOT NULL AUTO_INCREMENT,
  `sta_nom` varchar(50) NOT NULL,
  `sta_altitude` int(11) DEFAULT NULL,
  PRIMARY KEY (`sta_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

-- Listage des données de la table hotel.station : ~3 rows (environ)
/*!40000 ALTER TABLE `station` DISABLE KEYS */;
INSERT INTO `station` (`sta_id`, `sta_nom`, `sta_altitude`) VALUES
	(1, 'La Montagne', 2500),
	(2, 'Le Sud', 200),
	(3, 'La Plage', 10);
/*!40000 ALTER TABLE `station` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
