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
-- Table structure for table `student`
--

DROP TABLE IF EXISTS `student`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `student` (
  `studentid` int(11) NOT NULL AUTO_INCREMENT,
  `personid` int(11) NOT NULL,
  `gradeid` int(11) DEFAULT NULL,
  `teacherid` int(11) DEFAULT NULL,
  `grno` varchar(10) NOT NULL DEFAULT '',
  `fax` varchar(16) DEFAULT '',
  `mediproblem` varchar(100) DEFAULT '',
  `medineeds` varchar(100) DEFAULT '',
  `medicationallergy` varchar(100) DEFAULT '',
  `foodallergy` varchar(100) DEFAULT '',
  `otherallergy` varchar(100) DEFAULT '',
  `spldietaryneeds` varchar(100) DEFAULT '',
  `otherinfo` varchar(100) DEFAULT '',
  PRIMARY KEY (`studentid`),
  KEY `student_person_fk` (`personid`),
  KEY `student_grade_fk` (`gradeid`),
  KEY `student_teacher_fk` (`teacherid`),
  CONSTRAINT `student_grade_fk` FOREIGN KEY (`gradeid`) REFERENCES `grade` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `student_person_fk` FOREIGN KEY (`personid`) REFERENCES `person` (`personid`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `student_teacher_fk` FOREIGN KEY (`teacherid`) REFERENCES `teacher` (`teacherid`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `student`
--

LOCK TABLES `student` WRITE;
/*!40000 ALTER TABLE `student` DISABLE KEYS */;
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

-- Dump completed on 2017-04-03  1:28:25
