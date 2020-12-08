-- MySQL dump 10.13  Distrib 8.0.21, for Win64 (x86_64)
--
-- Host: localhost    Database: banze_201
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
-- Table structure for table `customer_dim`
--

DROP TABLE IF EXISTS `customer_dim`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customer_dim` (
  `Customer_SK` int NOT NULL AUTO_INCREMENT,
  `Name` varchar(45) DEFAULT NULL,
  `Country` varchar(45) DEFAULT NULL,
  `State` varchar(45) DEFAULT NULL,
  `City` varchar(45) DEFAULT NULL,
  `Street Address` varchar(45) DEFAULT NULL,
  `Zip` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`Customer_SK`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `financial_sales_fact`
--

DROP TABLE IF EXISTS `financial_sales_fact`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `financial_sales_fact` (
  `Customer_SK` int NOT NULL,
  `Product_SK` int NOT NULL,
  `Supplier_SK` int NOT NULL,
  `SalesDate_SK` int NOT NULL,
  `OrdersDate_SK` int NOT NULL,
  `SalesMethod_SK` int NOT NULL,
  `Total_Sales_amount` int DEFAULT NULL,
  `Total_Orders_amout` int DEFAULT NULL,
  `Gross_Profit` int DEFAULT NULL,
  `Invoice_Number (DD)` int DEFAULT NULL,
  `Total_days` int DEFAULT NULL,
  PRIMARY KEY (`Customer_SK`,`Product_SK`,`Supplier_SK`,`SalesDate_SK`,`OrdersDate_SK`,`SalesMethod_SK`),
  KEY `Product_SK_idx` (`Product_SK`),
  KEY `Supplier_SK_idx` (`Supplier_SK`),
  KEY `SalesMethod_SK_idx` (`SalesMethod_SK`),
  KEY `SalesDate_SK_idx` (`SalesDate_SK`),
  KEY `OrdersDate_SK_idx` (`OrdersDate_SK`),
  CONSTRAINT `Customer_SK` FOREIGN KEY (`Customer_SK`) REFERENCES `customer_dim` (`Customer_SK`),
  CONSTRAINT `OrdersDate_SK` FOREIGN KEY (`OrdersDate_SK`) REFERENCES `ordersdate_dim` (`OrdersDate_SK`),
  CONSTRAINT `Product_SK` FOREIGN KEY (`Product_SK`) REFERENCES `product_dim` (`Product_SK`),
  CONSTRAINT `SalesDate_SK` FOREIGN KEY (`SalesDate_SK`) REFERENCES `salesdate_dim` (`SalesDate_SK`),
  CONSTRAINT `SalesMethod_SK` FOREIGN KEY (`SalesMethod_SK`) REFERENCES `salesmethod_junk_dim` (`SalesMethod_SK`),
  CONSTRAINT `Supplier_SK` FOREIGN KEY (`Supplier_SK`) REFERENCES `supplier_dim` (`Supplier_SK`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ordersdate_dim`
--

DROP TABLE IF EXISTS `ordersdate_dim`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ordersdate_dim` (
  `OrdersDate_SK` int NOT NULL AUTO_INCREMENT,
  `OrdersDate_Fiscal_Year` year DEFAULT NULL,
  `OrdersDate_Fiscal_Quarter` char(2) DEFAULT NULL,
  `OrdersDate_Fiscal_Month` varchar(10) DEFAULT NULL,
  `OrdersDate_Fiscal_Week` int DEFAULT NULL,
  `OrdersDate_Fiscal_Date` date DEFAULT NULL,
  `OrdersDate_Calendar_Year` year DEFAULT NULL,
  `OrdersDate_Calendar_Quarter` char(2) DEFAULT NULL,
  `OrdersDate_Calendar_Month` varchar(10) DEFAULT NULL,
  `OrdersDate_Calendar_Week` int DEFAULT NULL,
  `OrdersDate_Calendar_Date` date DEFAULT NULL,
  PRIMARY KEY (`OrdersDate_SK`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `product_dim`
--

DROP TABLE IF EXISTS `product_dim`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product_dim` (
  `Product_SK` int NOT NULL AUTO_INCREMENT,
  `Business_Unit` varchar(45) DEFAULT NULL,
  `Product_Category` varchar(45) DEFAULT NULL,
  `Product_Item` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`Product_SK`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `salesdate_dim`
--

DROP TABLE IF EXISTS `salesdate_dim`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `salesdate_dim` (
  `SalesDate_SK` int NOT NULL AUTO_INCREMENT,
  `SalesDate_Fiscal_Year` year DEFAULT NULL,
  `SalesDate_Fiscal_Quarter` char(2) DEFAULT NULL,
  `SalesDate_Fiscal_Month` varchar(10) DEFAULT NULL,
  `SalesDate_Fiscal_Week` int DEFAULT NULL,
  `SalesDate_Fiscal_Date` date DEFAULT NULL,
  `SalesDate_Calendar_Year` year DEFAULT NULL,
  `SalesDate_Calendar_Quarter` char(2) DEFAULT NULL,
  `SalesDate_Calendar_Month` varchar(10) DEFAULT NULL,
  `SalesDate_Calendar_Week` int DEFAULT NULL,
  `SalesDate_Calendar_Date` date DEFAULT NULL,
  PRIMARY KEY (`SalesDate_SK`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `salesmethod_junk_dim`
--

DROP TABLE IF EXISTS `salesmethod_junk_dim`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `salesmethod_junk_dim` (
  `SalesMethod_SK` int NOT NULL AUTO_INCREMENT,
  `Payment_Method` varchar(45) DEFAULT NULL,
  `Order_Method` varchar(45) DEFAULT NULL,
  `Shipping_Type` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`SalesMethod_SK`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `supplier_dim`
--

DROP TABLE IF EXISTS `supplier_dim`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `supplier_dim` (
  `Supplier_SK` int NOT NULL AUTO_INCREMENT,
  `Name` varchar(45) DEFAULT NULL,
  `Country` varchar(45) DEFAULT NULL,
  `State` varchar(45) DEFAULT NULL,
  `City` varchar(45) DEFAULT NULL,
  `Street_Address` varchar(45) DEFAULT NULL,
  `Zip` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`Supplier_SK`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-10-16 22:38:08
