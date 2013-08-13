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
-- Table structure for table `changerequest`
--

DROP TABLE IF EXISTS `changerequest`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `changerequest` (
  `changeRequestId` int(11) NOT NULL AUTO_INCREMENT,
  `personId` int(11) DEFAULT NULL,
  `changerequested` varchar(200) DEFAULT NULL,
  `statusFlag` varchar(45) DEFAULT 'N',
  `date` date DEFAULT NULL,
  `time` time DEFAULT NULL,
  PRIMARY KEY (`changeRequestId`),
  UNIQUE KEY `changeRequestId_UNIQUE` (`changeRequestId`)
) ENGINE=InnoDB AUTO_INCREMENT=1236 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `changerequest`
--

LOCK TABLES `changerequest` WRITE;
/*!40000 ALTER TABLE `changerequest` DISABLE KEYS */;
INSERT INTO `changerequest` VALUES (1235,123456790,'Please unenroll from course 272.. am uanbale to do it','N','2010-09-08','00:00:09'),(1236,123456790,'Please give me access','Y','2010-09-08','00:00:09');
/*!40000 ALTER TABLE `changerequest` ENABLE KEYS */;
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
