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
-- Table structure for table `product`
--

DROP TABLE IF EXISTS `product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product` (
  `prodID` int NOT NULL,
  `description` varchar(50) DEFAULT NULL,
  `price 1` decimal(10,2) DEFAULT NULL,
  `price2` decimal(10,2) DEFAULT NULL,
  `prodTypeID` int DEFAULT NULL,
  `unitCost` decimal(10,2) DEFAULT NULL,
  `supplierID` int DEFAULT NULL,
  PRIMARY KEY (`prodID`),
  KEY `prodTypeID_idx` (`prodTypeID`),
  KEY `supplierID_idx` (`supplierID`),
  CONSTRAINT `prodTypeID` FOREIGN KEY (`prodTypeID`) REFERENCES `prodtype` (`prodTypeID`),
  CONSTRAINT `supplierID` FOREIGN KEY (`supplierID`) REFERENCES `supplier` (`supplierID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product`
--

LOCK TABLES `product` WRITE;
/*!40000 ALTER TABLE `product` DISABLE KEYS */;
INSERT INTO `product` VALUES (1,'Enumerator Polishing Equipment',164.97,142.53,3,135.40,8),(2,'Tailor Jacks',509.78,429.74,15,399.66,3),(3,'Sortie Covers',248.21,213.21,13,206.81,9),(4,'Embodying Cleaning Supplies',250.91,213.52,5,207.11,4),(5,'Automobiles Fillers',283.83,227.63,12,218.52,8),(6,'Planetesimal Manufacturing Equip',347.28,307.00,2,285.51,6),(7,'Commendation Fillers',436.33,380.04,12,364.84,9),(8,'Septembers Manufacturing Equip',584.33,522.98,2,517.75,9),(9,'Millimeters Flushing Chemicals',295.56,251.82,10,241.75,7),(10,'Defeated Tray Supplies',559.74,476.90,8,448.29,8),(11,'Sulkiness Covers',354.30,289.82,13,272.43,5),(12,'Travelings Photo Chemicals',274.39,242.01,9,225.07,8),(13,'Coward Covers',429.79,348.99,13,328.05,9),(14,'Engle Photo Chemicals',429.94,346.10,9,342.64,3),(15,'Disposed Fillers',158.84,138.03,12,132.51,9),(16,'Enhanced Covers',460.96,384.44,13,361.37,5),(17,'Optima Cleaning Supplies',288.41,255.53,5,242.75,8),(18,'Miniaturizing Manufacturing Equip',456.24,379.59,2,353.02,8),(19,'Hesitating Jacks',124.46,100.07,15,96.07,6),(20,'Flake Photo Equipment',232.26,204.39,1,194.17,2),(21,'Denigrating Polishing Equipment',565.95,454.46,3,427.19,6),(22,'Whippers Covers',488.61,410.43,13,389.91,1),(23,'Decided Tray Supplies',233.30,202.27,8,198.22,5),(24,'Bandage Manufacturing Equip',298.00,267.01,2,253.66,2),(25,'Chalmers Polishing Equipment',289.17,242.61,3,223.20,8),(26,'Subclasses Polishing Equipment',282.51,239.00,3,236.61,10),(27,'Pinnings Plastic Supplies',337.17,302.44,7,287.32,10),(28,'Wonderingly Covers',547.21,467.32,13,453.30,7),(29,'Bluest Fillers',507.35,428.20,12,398.23,3),(30,'Detectives Jacks',283.32,248.47,15,236.05,1),(31,'Simplifier Tray Supplies',408.81,349.12,8,328.17,10),(32,'Chartable Photo Equipment',410.17,347.41,1,312.67,3),(33,'Consumable Tray Supplies',395.70,347.42,8,337.00,6),(34,'Sailors Manufacturing Equip',340.48,290.43,2,278.81,5),(35,'Chromium Photo Equipment',565.50,457.49,1,425.47,9),(36,'Bomber Photo Equipment',461.34,400.44,1,380.42,8),(37,'Concentrators Polishing Equipment',584.57,524.94,3,482.94,4),(38,'Syntax Polishing Equipment',226.72,190.90,3,177.54,5),(39,'Overlays Plastic Supplies',301.08,254.41,7,241.69,7),(40,'Insensitivity Manufacturing Equip',200.71,180.44,2,169.61,6),(41,'Consideration Tray Supplies',172.56,146.85,8,139.51,8),(42,'Carelessly Freezing Chemicals',559.67,467.88,11,425.77,5),(43,'Blazed Covers',495.00,416.79,13,404.29,7),(44,'Birthdays Manufacturing Equip',196.56,173.17,2,161.05,6),(45,'Slacking Jacks',495.04,399.99,15,387.99,5),(46,'Distantly Paper Supplies',518.49,436.05,6,418.61,6),(47,'Significants Freezing Chemicals',141.55,113.24,11,104.18,5),(48,'Patriarchal Cleaning Supplies',351.54,284.75,5,264.82,2),(49,'Visage Flushing Chemicals',567.75,507.57,10,466.96,7),(50,'Restarts Paper Supplies',524.38,448.34,6,425.92,1),(51,'Reflection Lifts',497.85,447.57,14,438.62,9),(52,'Identical Freezing Chemicals',578.07,465.92,11,447.28,2),(53,'Ruffle Freezing Chemicals',476.38,394.92,11,379.12,4),(54,'Honeymoon Photo Chemicals',326.13,292.21,9,271.76,7),(55,'Bumblers Plastic Supplies',545.31,466.24,7,447.59,6),(56,'Allis Polishing Equipment',201.77,176.35,3,160.48,8),(57,'South Tray Supplies',241.30,205.10,8,203.05,2),(58,'Characterization Plastic Supplies',231.68,185.58,7,168.88,9),(59,'Tonnage Plastic Supplies',368.75,315.65,7,309.34,7),(60,'Habitually Manufacturing Equip',509.30,419.15,2,394.00,3),(61,'Courthouses Manufacturing Equip',285.62,243.63,2,231.45,6),(62,'Substances Flushing Chemicals',507.34,409.93,10,397.63,3),(63,'Weeks Polishing Equipment',198.83,174.18,3,168.95,7),(64,'Berwick Fillers',583.85,487.51,12,463.13,5),(65,'Extinguisher Manufacturing Equip',120.39,98.36,2,90.49,2),(66,'Exemplar Freezing Chemicals',198.40,160.90,11,152.85,9),(67,'Occlusion Manufacturing Equip',199.88,177.29,2,164.88,7),(68,'Loaves Polishing Equipment',425.59,361.33,3,354.10,7),(69,'Hits Tray Supplies',439.53,359.10,8,341.14,3),(70,'Escape Manufacturing Equip',584.38,523.60,2,507.89,3),(71,'Simulations Photo Equipment',318.38,255.66,1,245.43,3),(72,'Anthem Tray Supplies',134.92,112.39,8,109.02,9),(73,'Cosgrove Jacks',298.87,267.79,15,254.40,7),(74,'Flanker Fillers',271.44,236.15,12,219.62,5),(75,'Deferrable Freezing Chemicals',145.03,124.44,11,113.24,2),(76,'Scrounge Jacks',301.58,251.22,15,248.71,5),(77,'Vastest Photo Equipment',498.08,442.30,1,420.19,2),(78,'Measured Photo Chemicals',318.06,270.67,9,254.43,4),(79,'Siena Plastic Supplies',155.03,136.43,7,132.34,3),(80,'Temporally Plastic Supplies',477.53,408.29,7,371.54,9),(81,'Palm Polishing Equipment',122.39,105.38,3,103.27,3),(82,'Numerals Covers',102.87,88.98,13,83.64,2),(83,'Horses Lifts',487.30,402.51,14,366.28,10),(84,'Unjust Paper Supplies',222.48,182.21,6,176.74,7),(85,'Disallow Manufacturing Equip',165.24,145.91,2,144.45,5),(86,'Soya Cleaning Supplies',406.93,345.89,5,345.89,1),(87,'Suing Manufacturing Equip',482.16,426.71,2,401.11,6),(88,'Vestiges Tray Supplies',231.45,192.10,8,186.34,10),(89,'Travel Paper Supplies',129.85,108.81,6,103.37,10),(90,'Curiouser Cleaning Supplies',419.36,364.42,5,338.91,5),(91,'Scribble Plastic Supplies',492.40,405.74,7,397.63,1),(92,'Behind Tray Supplies',166.65,138.99,8,129.26,7),(93,'Bellowing Polishing Equipment',502.57,451.31,3,446.80,6),(94,'Beliefs Freezing Chemicals',566.64,483.91,11,454.88,4),(95,'Duplicator Polishing Equipment',544.28,465.36,3,432.78,7),(96,'Drafty Cleaning Supplies',107.13,92.67,5,88.96,3),(97,'Stickiest Paper Supplies',575.92,502.78,6,467.59,3),(98,'Barrels Flushing Chemicals',135.10,116.59,10,108.43,1),(99,'Richards Freezing Chemicals',529.35,475.36,11,470.61,5),(100,'Pervasively Manufacturing Equip',374.14,334.86,2,308.07,8);
/*!40000 ALTER TABLE `product` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-09-13 15:54:06
