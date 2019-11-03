CREATE DATABASE  IF NOT EXISTS `Vproject` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `Vproject`;
-- MySQL dump 10.13  Distrib 8.0.17, for Win64 (x86_64)
--
-- Host: localhost    Database: Vproject
-- ------------------------------------------------------
-- Server version	5.7.27-log

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
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `products` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `price` double NOT NULL,
  `code` int(11) NOT NULL,
  `available_Date` date NOT NULL,
  `expiration_Date` date DEFAULT NULL,
  `is_Available` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `code_UNIQUE` (`code`)
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products`
--

LOCK TABLES `products` WRITE;
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
INSERT INTO `products` VALUES (11,'phone',650,100,'2019-10-12',NULL,0),(12,'laptop',750,150,'2019-10-12',NULL,0),(14,'desktop',850,2000,'2019-10-12',NULL,0),(15,'Mobile',950,2010,'2019-10-12',NULL,0),(16,'Ethernet',5,324,'2019-10-12',NULL,0),(17,'Ethernet',5,3244,'2019-10-12',NULL,0),(19,'Ethernet',5,3234,'2019-10-12',NULL,0),(20,'Ethernet',5,3134,'2019-10-12',NULL,0),(22,'Ethernet',5,2134,'2019-10-12',NULL,1),(23,'Ethernet',5,2534,'2019-10-12',NULL,0),(24,'Ethernet',5,154,'2019-10-12',NULL,0),(25,'Ethernet',5,168,'2019-10-12',NULL,0),(26,'Ethernet',5,1608,'2019-10-12',NULL,0),(27,'Ethernet',5,4565,'2019-10-12',NULL,0),(29,'Ethernet',5,4578,'2019-10-12',NULL,0),(30,'Ethernet',5,7578,'2019-10-12',NULL,0),(31,'Ethernet',5,2345,'2019-10-12',NULL,1),(32,'Ethernet',5,4554,'2019-10-12',NULL,1),(33,'Ethernet',5,4557,'2019-10-12',NULL,0);
/*!40000 ALTER TABLE `products` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-11-03 18:03:25
