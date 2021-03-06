-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: localhost    Database: libsysdb
-- ------------------------------------------------------
-- Server version	5.7.18-log

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
-- Table structure for table `borrow`
--

DROP TABLE IF EXISTS `borrow`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `borrow` (
  `borrowID` int(11) NOT NULL AUTO_INCREMENT,
  `materialID` int(11) NOT NULL,
  `accountID` int(11) DEFAULT NULL,
  `dateBorrow` date DEFAULT NULL,
  `dateReturn` date DEFAULT NULL,
  `returned` int(11) DEFAULT NULL,
  PRIMARY KEY (`borrowID`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `borrow`
--

LOCK TABLES `borrow` WRITE;
/*!40000 ALTER TABLE `borrow` DISABLE KEYS */;
INSERT INTO `borrow` VALUES (1,1,1,'2000-01-30','2000-01-30',NULL),(2,1,1,NULL,NULL,NULL),(3,1,1,'2015-01-01','2015-01-01',NULL),(4,1,1,'2015-01-01','2015-01-01',NULL),(5,1,1,'2015-01-01','2015-01-01',NULL),(6,1,1,'2015-01-01','2015-01-01',NULL),(7,1,1,'2015-01-01','2015-01-01',NULL),(8,1,1,'2015-01-01','2015-01-01',NULL),(9,1,1,'2015-01-01','2015-01-01',NULL),(10,1,1,'2015-01-01','2015-01-01',NULL),(11,1,1,'2017-01-01','2017-01-01',NULL),(12,1,1,'2017-01-01','2017-01-01',NULL),(13,1,1,'2019-01-01','2019-01-01',NULL),(14,1,1,'2019-01-01','2019-01-01',NULL),(15,1,1,'2015-01-01','2015-01-01',NULL),(16,1,1,'2015-01-01','2015-01-01',NULL),(17,1,1,'2015-01-01','2015-01-01',NULL),(18,1,1,'2015-01-01','2015-01-01',1),(19,2,1,'2015-01-01','2015-01-01',1),(20,1,1,'2015-01-01','2015-01-01',1),(21,2,1,'2015-01-01','2015-01-01',1),(22,1,1,'2015-01-01','2015-01-01',0);
/*!40000 ALTER TABLE `borrow` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-07-05  3:56:59
