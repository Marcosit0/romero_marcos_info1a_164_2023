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
-- Hôte:                         127.0.0.1
-- Version du serveur:           8.0.30 - MySQL Community Server - GPL
-- SE du serveur:                Win64
-- HeidiSQL Version:             12.1.0.6537
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Listage de la structure de la base pour marcos_romero_info1a_m164
DROP DATABASE IF EXISTS `marcos_romero_info1a_m164`;
CREATE DATABASE IF NOT EXISTS `marcos_romero_info1a_m164` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `marcos_romero_info1a_m164`;

-- Listage de la structure de table marcos_romero_info1a_m164. t_categorie
DROP TABLE IF EXISTS `t_categorie`;
CREATE TABLE IF NOT EXISTS `t_categorie` (
  `id_categorie` int NOT NULL AUTO_INCREMENT,
  `nom_categorie` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `date_ins_categorie` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id_categorie`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Les données exportées n'étaient pas sélectionnées.

-- Listage de la structure de table marcos_romero_info1a_m164. t_mois
DROP TABLE IF EXISTS `t_mois`;
CREATE TABLE IF NOT EXISTS `t_mois` (
  `id_mois` int NOT NULL AUTO_INCREMENT,
  `nom_mois` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  PRIMARY KEY (`id_mois`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Les données exportées n'étaient pas sélectionnées.

-- Listage de la structure de table marcos_romero_info1a_m164. t_personne
DROP TABLE IF EXISTS `t_personne`;
CREATE TABLE IF NOT EXISTS `t_personne` (
  `id_personne` int NOT NULL AUTO_INCREMENT,
  `nom_personne` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id_personne`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Les données exportées n'étaient pas sélectionnées.

-- Listage de la structure de table marcos_romero_info1a_m164. t_pers_depense_categorie_moyenne
DROP TABLE IF EXISTS `t_pers_depense_categorie_moyenne`;
CREATE TABLE IF NOT EXISTS `t_pers_depense_categorie_moyenne` (
  `id_pers_depense_categorie` int NOT NULL AUTO_INCREMENT,
  `fk_personne` int DEFAULT NULL,
  `fk_categorie` int DEFAULT NULL,
  `moyenne_mensuelle` int DEFAULT NULL,
  `moyenne_annuelle` int DEFAULT NULL,
  PRIMARY KEY (`id_pers_depense_categorie`),
  KEY `fk_personne` (`fk_personne`),
  KEY `fk_categorie` (`fk_categorie`),
  CONSTRAINT `FK_categorie` FOREIGN KEY (`fk_categorie`) REFERENCES `t_categorie` (`id_categorie`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `FK_personne` FOREIGN KEY (`fk_personne`) REFERENCES `t_personne` (`id_personne`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Les données exportées n'étaient pas sélectionnées.

-- Listage de la structure de table marcos_romero_info1a_m164. t_pers_depense_reel_categorie
DROP TABLE IF EXISTS `t_pers_depense_reel_categorie`;
CREATE TABLE IF NOT EXISTS `t_pers_depense_reel_categorie` (
  `id_pers_dep_reel_cat` int NOT NULL AUTO_INCREMENT,
  `fk_personne` int DEFAULT NULL,
  `fk_categorie` int DEFAULT NULL,
  `montant_reel` int DEFAULT NULL,
  `date_ins_reel` date DEFAULT NULL,
  PRIMARY KEY (`id_pers_dep_reel_cat`),
  KEY `fk_personne` (`fk_personne`),
  KEY `fk_categorie` (`fk_categorie`),
  CONSTRAINT `fk_categorie_reel` FOREIGN KEY (`fk_categorie`) REFERENCES `t_categorie` (`id_categorie`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `fk_personne_reel` FOREIGN KEY (`fk_personne`) REFERENCES `t_personne` (`id_personne`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Les données exportées n'étaient pas sélectionnées.

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
