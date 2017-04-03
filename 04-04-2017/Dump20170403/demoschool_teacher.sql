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
-- Table structure for table `teacher`
--

DROP TABLE IF EXISTS `teacher`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `teacher` (
  `teacherid` int(11) NOT NULL AUTO_INCREMENT,
  `personid` int(11) NOT NULL,
  `empno` varchar(10) NOT NULL DEFAULT '',
  `title` varchar(5) DEFAULT '',
  `maritalstatus` varchar(20) DEFAULT '',
  `employmentdate` date DEFAULT '0000-00-00',
  `initials` varchar(7) DEFAULT '',
  `familyname` varchar(30) DEFAULT '',
  `spousename` varchar(50) DEFAULT '',
  `ssn` varchar(12) DEFAULT '',
  `degree` varchar(100) DEFAULT '',
  `certification` varchar(255) DEFAULT '',
  `experience` varchar(200) DEFAULT '',
  PRIMARY KEY (`teacherid`),
  KEY `teacher_person_fk` (`personid`),
  CONSTRAINT `teacher_person_fk` FOREIGN KEY (`personid`) REFERENCES `person` (`personid`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `teacher`
--

LOCK TABLES `teacher` WRITE;
/*!40000 ALTER TABLE `teacher` DISABLE KEYS */;
INSERT INTO `teacher` VALUES (4,5,'','','','0000-00-00','','','','','','',''),(5,6,'','','','0000-00-00','','','','','','',''),(6,7,'','','','0000-00-00','','','','','','',''),(7,8,'','','','0000-00-00','','','','','','',''),(8,9,'','','','0000-00-00','','','','','','',''),(9,10,'','','','0000-00-00','','','','','','',''),(10,11,'','','','0000-00-00','','','','','','','');
/*!40000 ALTER TABLE `teacher` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-04-03  1:28:26
