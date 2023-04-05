-- OM 2021.02.17
-- FICHIER MYSQL POUR FAIRE FONCTIONNER LES EXEMPLES
-- DE REQUETES MYSQL
-- Database: marcos_romero_info1a_m164

-- Destruction de la BD si elle existe.
-- Pour être certain d'avoir la dernière version des données

DROP DATABASE IF EXISTS marcos_romero_info1a_m164;

-- Création d'un nouvelle base de donnée

CREATE DATABASE IF NOT EXISTS marcos_romero_info1a_m164;

-- Utilisation de cette base de donnée

USE marcos_romero_info1a_m164;
-- --------------------------------------------------------
-- --------------------------------------------------------
-- Hôte :                        127.0.0.1
-- Version du serveur:           5.1.72-community - MySQL Community Server (GPL)
-- SE du serveur:                Win32
-- HeidiSQL Version:             10.2.0.5599
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


-- Listage de la structure de la base pour marcos_romero_info1a_m164
CREATE DATABASE IF NOT EXISTS `marcos_romero_info1a_m164` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `marcos_romero_info1a_m164`;

-- Listage de la structure de la table marcos_romero_info1a_m164. id_personnne
CREATE TABLE IF NOT EXISTS `id_personnne` (
  `ENom` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- Listage des données de la table marcos_romero_info1a_m164.id_personnne : 0 rows
/*!40000 ALTER TABLE `id_personnne` DISABLE KEYS */;
/*!40000 ALTER TABLE `id_personnne` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
