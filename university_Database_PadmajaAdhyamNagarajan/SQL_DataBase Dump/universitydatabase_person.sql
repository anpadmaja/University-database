CREATE DATABASE  IF NOT EXISTS `universitydatabase` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `universitydatabase`;
-- MySQL dump 10.13  Distrib 5.6.11, for Win64 (x86_64)
--
-- Host: localhost    Database: universitydatabase
-- ------------------------------------------------------
-- Server version	5.6.11

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `person`
--

DROP TABLE IF EXISTS `person`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `person` (
  `personId` int(11) NOT NULL AUTO_INCREMENT,
  `firstName` varchar(45) NOT NULL,
  `lastName` varchar(45) NOT NULL,
  `addressLine` varchar(45) NOT NULL,
  `state` varchar(45) NOT NULL,
  `city` varchar(45) NOT NULL,
  `zip` int(11) NOT NULL,
  `emailId` varchar(45) NOT NULL,
  `password` varchar(45) DEFAULT NULL,
  `flag` char(1) NOT NULL,
  PRIMARY KEY (`personId`),
  UNIQUE KEY `personId_UNIQUE` (`personId`)
) ENGINE=InnoDB AUTO_INCREMENT=123456803 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `person`
--

LOCK TABLES `person` WRITE;
/*!40000 ALTER TABLE `person` DISABLE KEYS */;
INSERT INTO `person` VALUES (123456789,'Admin','admin','201s','hd','fh',98765,'admin.admin','Test1234','A'),(123456790,'Sandeep Rao','Boinpally','201s','ca','sanjose',95112,'SandeepRao.Boinpally@cmpe273.edu','Test1234','S'),(123456791,'Hari Vardhan','Pyaram','201s','Ca','San jose',96111,'HariVardhan.Pyaram@cmpe273.edu','Test1234','S'),(123456792,'Dinesh','Reddy','201344sasdj','Ca','Sanjose',98764,'Dinesh.Reddy@cmpe273.edu','Test1234','S'),(123456793,'Ravi','Chandra','123hslkad, 4th strete','Washington','san jose',23238,'Ravi.Chandra@cmpe273.edu','Test1234','S'),(123456794,'Akilesh','akula','281 fj dja ','hskfhao','san jose',21372,'Akilesh.akula@cmpe273.edu','Test1234','S'),(123456795,'Student','Student','232 dfh','ca','san hose',32682,'Student.Student@cmpe273.edu','Test1234','S'),(123456796,'sandy','boina','2091fsd','fjsdlka','sahdf',82341,'sandy.boina@cmpe273.edu','Test1234','S'),(123456797,'Sandy','Sndy','102jsf afals','fjalkf','jflkas',26172,'Sandy.Sndy@cmpe273.edu','Test1234','S'),(123456798,'sandy','rao','dals fasjlk fajl','fs sflksf fslkfj ','afhsdf sfhlsjf sfhksl',12352,'sandy.rao@cmpe273.edu','Test1234','S'),(123456799,'Sandy','Sandy','1928','chks','dhka',23531,'SandySandy@cmpe273.edu','Test1234','I'),(123456800,'haroi','vardhan','dha27 348 ','fhak','jdlakdj',21365,'haroivardhan@cmpe273.edu','Test1234','I'),(123456801,'padmaja','an','hfdka 343','fajk','dhkja',12315,'padmajaan@cmpe273.edu','Test1234','I'),(123456802,'jaismeen','kaur','dhfakus 2342','fhak','hfdka',12351,'jaismeenkaur@cmpe273.edu','Test1234','I');
/*!40000 ALTER TABLE `person` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2013-05-08 23:48:56
