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
-- Table structure for table `student`
--

DROP TABLE IF EXISTS `student`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `student` (
  `studentId` int(11) NOT NULL,
  `departmentId` int(11) NOT NULL,
  `admitSemester` varchar(45) NOT NULL,
  `currentSemester` int(11) DEFAULT NULL,
  `onCampusJob` binary(1) DEFAULT NULL,
  `degreePursuing` varchar(45) DEFAULT NULL,
  `estimatedYearOfGraduation` int(11) DEFAULT NULL,
  `GPA` float DEFAULT NULL,
  `year` year(4) DEFAULT NULL,
  PRIMARY KEY (`studentId`),
  KEY `personId1_idx` (`studentId`),
  KEY `departmentId1_idx` (`departmentId`),
  CONSTRAINT `departmentId1` FOREIGN KEY (`departmentId`) REFERENCES `department` (`departmentId`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `personId1` FOREIGN KEY (`studentId`) REFERENCES `person` (`personId`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `student`
--

LOCK TABLES `student` WRITE;
/*!40000 ALTER TABLE `student` DISABLE KEYS */;
INSERT INTO `student` VALUES (123456790,100,'spring 2013',1,NULL,'masters',2012,3.8,NULL),(123456791,101,'spring 2013',1,NULL,'masters',2013,3.5,NULL),(123456792,102,'fall 2013',2,NULL,'Bachelors',2014,3.9,NULL),(123456793,103,'fall 2010',3,NULL,'masters',2015,4,NULL),(123456794,104,'spring 2010',2,NULL,'masters',2016,4,NULL),(123456795,101,'spring 2181',3,NULL,'masters',2017,3.4,NULL),(123456796,102,'spring 2014',3,NULL,'fjlksaf',2018,3.4,NULL),(123456797,103,'spring 2019',3,NULL,'masters',2019,3.5,NULL),(123456798,100,'SPring 2103',4,NULL,'jadlksfjlajsf',2020,3.8,NULL);
/*!40000 ALTER TABLE `student` ENABLE KEYS */;
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
