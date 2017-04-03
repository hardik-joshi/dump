-- MySQL dump 10.13  Distrib 5.7.12, for Win64 (x86_64)
--
-- Host: localhost    Database: demoschool
-- ------------------------------------------------------
-- Server version	5.7.17-log

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
  `personid` int(11) NOT NULL AUTO_INCREMENT,
  `firstname` varchar(30) DEFAULT '',
  `lastname` varchar(30) DEFAULT '',
  `preferredname` varchar(50) DEFAULT '',
  `birthdate` date DEFAULT '0000-00-00',
  `gender` varchar(10) DEFAULT '',
  `nationality` varchar(50) DEFAULT '',
  `homeaddress` varchar(255) DEFAULT '',
  `homephone` varchar(16) DEFAULT '',
  `cellphone` varchar(16) DEFAULT '',
  `email` varchar(255) DEFAULT '',
  `city` varchar(50) DEFAULT '',
  `state` varchar(50) DEFAULT '',
  `zipcode` varchar(10) DEFAULT '',
  `country` varchar(50) DEFAULT '',
  `photo` blob,
  `usertypeid` int(11) DEFAULT NULL,
  PRIMARY KEY (`personid`),
  KEY `usertypeid` (`usertypeid`),
  CONSTRAINT `person_ibfk_1` FOREIGN KEY (`usertypeid`) REFERENCES `usertype` (`id`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `person`
--

LOCK TABLES `person` WRITE;
/*!40000 ALTER TABLE `person` DISABLE KEYS */;
INSERT INTO `person` VALUES (5,'Hardik','Joshi','','0000-00-00','','','','','8866147188','joshi.hardik654@gmail.com','','','','','',1),(6,'Harsh','Bhatt','','0000-00-00','','','','','9878989098','harshbhatt@gmail.com','','','','','',1),(7,'Keyur','Patel','','0000-00-00','','','','','9876543423','keyurpatel@gmail.com','','','','','',1),(8,'gjhg','','','0000-00-00','','','','','6767676767','vjh@gf.com','','','','','',1),(9,'Ajitha','Nair','','0000-00-00','','','','','9898908465','ajithanair@gmail.com','','','','','',1),(10,'Steven','Alois','','0000-00-00','','','','','9835735323','stevealois@gmail.com','','','','','',1),(11,'Christan','Bale','','0000-00-00','','','','','5654545434','christan.bale@gmail.com','','','','','',1);
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

-- Dump completed on 2017-04-03  1:28:25
