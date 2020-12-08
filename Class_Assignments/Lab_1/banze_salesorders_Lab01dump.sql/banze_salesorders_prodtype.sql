-- MySQL dump 10.13  Distrib 8.0.21, for Win64 (x86_64)
--
-- Host: localhost    Database: banze_salesorders
-- ------------------------------------------------------
-- Server version	8.0.21

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
-- Table structure for table `prodtype`
--

DROP TABLE IF EXISTS `prodtype`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `prodtype` (
  `prodTypeID` int NOT NULL,
  `typeDescription` varchar(25) DEFAULT NULL,
  `BUID` char(1) DEFAULT NULL,
  PRIMARY KEY (`prodTypeID`),
  KEY `BUID_idx` (`BUID`),
  CONSTRAINT `BUID` FOREIGN KEY (`BUID`) REFERENCES `businessunit` (`BUID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `prodtype`
--

LOCK TABLES `prodtype` WRITE;
/*!40000 ALTER TABLE `prodtype` DISABLE KEYS */;
INSERT INTO `prodtype` VALUES (1,'Photo Equipment','A'),(2,'Manufacturing Equip','A'),(3,'Polishing Equipment','A'),(5,'Cleaning Supplies','B'),(6,'Paper Supplies','B'),(7,'Plastic Supplies','B'),(8,'Tray Supplies','B'),(9,'Photo Chemicals','C'),(10,'Flushing Chemicals','C'),(11,'Freezing Chemicals','C'),(12,'Fillers','D'),(13,'Covers','D'),(14,'Lifts','D'),(15,'Jacks','D');
/*!40000 ALTER TABLE `prodtype` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-09-13 15:54:07
