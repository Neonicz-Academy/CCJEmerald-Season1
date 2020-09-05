-- MySQL dump 10.13  Distrib 8.0.21, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: bpms_db
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
-- Table structure for table `buspass`
--

DROP TABLE IF EXISTS `buspass`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `buspass` (
  `buspassId` int NOT NULL AUTO_INCREMENT,
  `createdDate` date NOT NULL,
  `modifiedDate` date DEFAULT NULL,
  `createdBy` varchar(255) NOT NULL,
  `modifiedBy` varchar(255) DEFAULT NULL,
  `buspassName` varchar(255) NOT NULL,
  `buspassPrice` int DEFAULT NULL,
  `buspassValidity` int NOT NULL,
  `buspassDescription` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`buspassId`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `buspass`
--

LOCK TABLES `buspass` WRITE;
/*!40000 ALTER TABLE `buspass` DISABLE KEYS */;
INSERT INTO `buspass` VALUES (1,'1970-01-01','1970-01-01','abhinav','abhinav','abcd',1234,20190512,'s'),(2,'2020-08-03','2020-08-03','abhinav','abhinav','Daily',10,1,'1 month daily bus pass of Rs 10'),(3,'2020-08-04','2020-08-04','abhinav','abhinav','Yearly',1000,12,'1 Year bus pass'),(4,'2020-08-04','2020-08-04','abhinav','abhinav','Two Yearly',2000,24,'2 Yearly pass'),(5,'2020-08-04','2020-08-04','abhinav','abhinav','Two Yearly',2000,24,'2 Year bus pass');
/*!40000 ALTER TABLE `buspass` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-08-04 20:48:38
