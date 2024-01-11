CREATE DATABASE  IF NOT EXISTS `testdb` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `testdb`;
-- MySQL dump 10.13  Distrib 8.0.31, for Win64 (x86_64)
--
-- Host: localhost    Database: testdb
-- ------------------------------------------------------
-- Server version	8.0.31

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `commentaire`
--

DROP TABLE IF EXISTS `commentaire`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `commentaire` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `contenu` varchar(255) DEFAULT NULL,
  `id_recette` bigint DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `commentaire`
--

LOCK TABLES `commentaire` WRITE;
/*!40000 ALTER TABLE `commentaire` DISABLE KEYS */;
INSERT INTO `commentaire` VALUES (1,'Pas mal',2),(2,'Trop belle',6),(3,'Mauvaise palt',6),(4,NULL,NULL),(5,NULL,NULL),(6,NULL,NULL),(7,NULL,11),(8,'jolie',11),(9,'Pas mal',11),(10,'Ohh',11),(11,'Jolie',2),(12,'OOh',2),(13,'Supper',6),(14,'joli',42),(15,'Pas mal',42),(16,NULL,2),(17,'j\'adore',2);
/*!40000 ALTER TABLE `commentaire` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cv`
--

DROP TABLE IF EXISTS `cv`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cv` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `offre_id` bigint DEFAULT NULL,
  `user_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKd396giu34gb4qkw8oe1gm8diq` (`offre_id`),
  KEY `FKq1uw3pyveaumh2hq2md9istwe` (`user_id`),
  CONSTRAINT `FKd396giu34gb4qkw8oe1gm8diq` FOREIGN KEY (`offre_id`) REFERENCES `offre` (`id`),
  CONSTRAINT `FKq1uw3pyveaumh2hq2md9istwe` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cv`
--

LOCK TABLES `cv` WRITE;
/*!40000 ALTER TABLE `cv` DISABLE KEYS */;
INSERT INTO `cv` VALUES (1,2,44),(2,6,44),(3,11,46),(4,NULL,NULL),(5,NULL,NULL),(6,NULL,NULL);
/*!40000 ALTER TABLE `cv` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `favori`
--

DROP TABLE IF EXISTS `favori`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `favori` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `offre_id` bigint DEFAULT NULL,
  `user_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKsq8k0mtgivigfdgpphm5wmo1p` (`offre_id`),
  KEY `FKo5w77hcauyohf9ddld1gj4gbi` (`user_id`),
  CONSTRAINT `FKo5w77hcauyohf9ddld1gj4gbi` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`),
  CONSTRAINT `FKsq8k0mtgivigfdgpphm5wmo1p` FOREIGN KEY (`offre_id`) REFERENCES `offre` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `favori`
--

LOCK TABLES `favori` WRITE;
/*!40000 ALTER TABLE `favori` DISABLE KEYS */;
INSERT INTO `favori` VALUES (1,2,44);
/*!40000 ALTER TABLE `favori` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `offre`
--

DROP TABLE IF EXISTS `offre`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `offre` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `description` varchar(255) DEFAULT NULL,
  `titre` varchar(255) DEFAULT NULL,
  `ingredients` varchar(255) DEFAULT NULL,
  `preparation` varchar(255) DEFAULT NULL,
  `categorie` varchar(255) DEFAULT NULL,
  `file_name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=43 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `offre`
--

LOCK TABLES `offre` WRITE;
/*!40000 ALTER TABLE `offre` DISABLE KEYS */;
INSERT INTO `offre` VALUES (2,'Vous avez promis d’épater vos amis et votre famille pour votre prochain dîner de fêtes ? Concoctez-leur cette recette exquise de coquilles de Saint-Jacques gratinées aux petits légumes. Avec leur dressage à même la coquille et leur délicat parfum de vin ','Coquilles Saint Jacques gratinées','lait,oil','Vous avez promis d’épater vos amis et votre famille pour votre prochain dîner de fêtes ? Concoctez-leur cette recette exquise ','petit-déjeuner','c1.jpg'),(6,'Vous avez promis d’épater vos amis et votre famille pour votre prochain dîner de fêtes ? Concoctez-leur cette recette exquise de coquilles de Saint-Jacques gratinées aux petits légumes. Avec leur dressage à même la coquille et leur délicat parfum de vin ','Mont d\'or chaud','oil,lait','Vous avez promis d’épater vos amis et votre famille pour votre prochain dîner de fêtes ? Concoctez-leur cette recette exquise de coquilles de Saint-Jacques gratinées aux petits légumes. Avec leur dressage à même la coquille et leur délicat parfum de vin ','déjeuner','c3.jpg'),(11,'Les profils demandés sont des full stack #JAVA/ANGULAR, respectant les normes et les bonnes pratiques de l\'agilité.','Poêlée de navets','oil,lait','Vous avez promis d’épater vos amis et votre famille pour votre prochain dîner de fêtes ? Concoctez-leur cette recette exquise de coquilles de Saint-Jacques gratinées aux petits légumes. Avec leur dressage à même la coquille et leur délicat parfum de vin ','déjeuner','c2.jpg'),(13,'Vous avez promis d’épater vos amis et votre famille pour votre prochain dîner de fêtes ? Concoctez-leur cette recette exquise de coquilles de Saint-Jacques gratinées aux petits légumes. Avec leur dressage à même la coquille et leur délicat parfum de vin ','Ananas rôti minceur','oil,lait','Vous avez promis d’épater vos amis et votre famille pour votre prochain dîner de fêtes ? Concoctez-leur cette recette exquise de coquilles de Saint-Jacques gratinées aux petits légumes. Avec leur dressage à même la coquille et leur délicat parfum de vin ','petit-déjeuner','c4.jpg'),(14,'backend developper','Crepe ',NULL,NULL,NULL,'gallery-korean-roll.jpg'),(33,NULL,'ddd',NULL,NULL,NULL,'gallery-potato-chilly.jpg'),(34,NULL,NULL,NULL,NULL,NULL,'lunch-banner-menupage-m-min-1.jpg'),(35,'backend developper','Crepe2 ',NULL,NULL,NULL,'our-speciality-item1.jpg'),(36,'ingredient','ingredient','ingredient','ingredient','déjeuner','c3.jpg'),(37,'Panna cotta litchi framboises\nUne part de bûche de Noël aux fruits exotiques\nBûche de Noël aux fruits ','Poire Belle Héléne','backend developper','backend developper','dîner','c4.jpg'),(41,'Salade','Salade','Salade','Salade',NULL,'c3.jpg'),(42,'Panna cotta litchi framboises Une part de bûche de Noël aux fruits exotiques Bûche de Noël aux fruits ','Gâteau aux pommes moelleux','oil,lait','Panna cotta litchi framboises\nUne part de bûche de Noël aux fruits exotiques\nBûche de Noël aux fruits ','petit-déjeuner','breakfast-banner-menupage-1024x483-min.jpg');
/*!40000 ALTER TABLE `offre` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `recetteimage`
--

DROP TABLE IF EXISTS `recetteimage`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `recetteimage` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `description` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `pic_byte` blob,
  `titre` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `recetteimage`
--

LOCK TABLES `recetteimage` WRITE;
/*!40000 ALTER TABLE `recetteimage` DISABLE KEYS */;
INSERT INTO `recetteimage` VALUES (1,'eee','drisimage.jpg',_binary '36859','fff','image/jpeg'),(2,NULL,NULL,NULL,NULL,NULL),(3,NULL,NULL,NULL,NULL,NULL),(4,NULL,NULL,NULL,NULL,NULL),(5,NULL,NULL,NULL,NULL,NULL),(6,NULL,NULL,NULL,NULL,NULL),(7,NULL,NULL,NULL,NULL,NULL),(8,NULL,NULL,NULL,NULL,NULL),(9,NULL,NULL,NULL,NULL,NULL),(10,NULL,NULL,NULL,NULL,NULL),(11,NULL,NULL,NULL,NULL,NULL),(12,NULL,NULL,NULL,NULL,NULL),(13,NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `recetteimage` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `roles`
--

DROP TABLE IF EXISTS `roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `roles` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roles`
--

LOCK TABLES `roles` WRITE;
/*!40000 ALTER TABLE `roles` DISABLE KEYS */;
INSERT INTO `roles` VALUES (1,'ROLE_USER'),(2,'ROLE_MODERATOR'),(3,'ROLE_ADMIN');
/*!40000 ALTER TABLE `roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_roles`
--

DROP TABLE IF EXISTS `user_roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_roles` (
  `user_id` bigint NOT NULL,
  `role_id` int NOT NULL,
  PRIMARY KEY (`user_id`,`role_id`),
  KEY `FKh8ciramu9cc9q3qcqiv4ue8a6` (`role_id`),
  CONSTRAINT `FKh8ciramu9cc9q3qcqiv4ue8a6` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`),
  CONSTRAINT `FKhfh9dx7w3ubf1co1vdev94g3f` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_roles`
--

LOCK TABLES `user_roles` WRITE;
/*!40000 ALTER TABLE `user_roles` DISABLE KEYS */;
INSERT INTO `user_roles` VALUES (44,1),(46,1),(17,2),(39,2),(40,2),(3,3);
/*!40000 ALTER TABLE `user_roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `email` varchar(50) DEFAULT NULL,
  `password` varchar(120) DEFAULT NULL,
  `username` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UKr43af9ap4edm43mmtq01oddj6` (`username`),
  UNIQUE KEY `UK6dotkott2kjsp8vw4d0m25fb7` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (3,'admin@gmail.com','$2a$10$9gMPnl2WzW2NRbSFYy2TAuMcYqkZTkrWYYeCSkmt.tN/qRytr7y6C','admin'),(17,'mod4@gmail.com','$2a$10$jbB6K/gkoF77q53p9lN8luQS/ZMwcG.Agz6yBLB02siLptB2gdc/.','mod4'),(39,'mod@gmail.com','$2a$10$cb7UThm15lW9koLbOjkna.0xh.VQCQx9MYOC5q.DIva74p/RcRcFO','admin1'),(40,'mod1@gmail.com','$2a$10$ddolCz3S27D/s2fGiXI3sOOZdJZ2iCC12ecss23SH/BrML0I2/YL2','mod1'),(44,'imane.imane@gmail.com','$2a$10$bSX5vaer9hlurRpRgnWpsulCsBlS9QGgod3aYOgC5CiBk5gEchqZ.','imane'),(46,'adam@gmail.com','$2a$10$TL5WT55yhwpzo/VbRjZ2ZerXbbIeWYji3WfX8ks6HXA96fNEc5bdm','adam');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-01-05 20:55:09
