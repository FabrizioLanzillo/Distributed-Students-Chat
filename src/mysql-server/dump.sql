-- MySQL dump 10.13  Distrib 8.0.32, for Linux (x86_64)
--
-- Host: 127.0.0.1    Database: dsmt_student_platform
-- ------------------------------------------------------
-- Server version	8.0.32-0ubuntu0.22.04.2

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `admin`
--

DROP TABLE IF EXISTS `admin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `admin` (
  `id` binary(16) NOT NULL,
  `username` varchar(64) NOT NULL,
  `password` varchar(64) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin`
--

LOCK TABLES `admin` WRITE;
/*!40000 ALTER TABLE `admin` DISABLE KEYS */;
INSERT INTO `admin` VALUES (_binary ',\�g\�߁\�\�X\�*�m ','admin','admin');
/*!40000 ALTER TABLE `admin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `booked_meeting`
--

DROP TABLE IF EXISTS `booked_meeting`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `booked_meeting` (
  `id` binary(16) NOT NULL,
  `time_slot` binary(16) NOT NULL,
  `date` date NOT NULL,
  `student` binary(16) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `booked_meeting_pk` (`time_slot`,`date`),
  KEY `booked_meeting___fk2` (`student`),
  CONSTRAINT `booked_meeting___fk` FOREIGN KEY (`time_slot`) REFERENCES `meeting_slot` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `booked_meeting___fk2` FOREIGN KEY (`student`) REFERENCES `student` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `booked_meeting`
--

LOCK TABLES `booked_meeting` WRITE;
/*!40000 ALTER TABLE `booked_meeting` DISABLE KEYS */;
INSERT INTO `booked_meeting` VALUES (_binary ',���߁\�\�X\�*�m ',_binary ',\�\�R߁\�\�X\�*�m ','2023-05-05',_binary ',\�\�o߁\�\�X\�*�m '),(_binary ',�\�\�߁\�\�X\�*�m ',_binary ',\�\�~߁\�\�X\�*�m ','2023-05-08',_binary ',\�\�o߁\�\�X\�*�m '),(_binary ',�Ȉ߁\�\�X\�*�m ',_binary ',\�\�߁\�\�X\�*�m ','2023-05-10',_binary ',\�\�o߁\�\�X\�*�m '),(_binary ',�\�߁\�\�X\�*�m ',_binary ',\�\�I߁\�\�X\�*�m ','2023-05-27',_binary ',\�\�o߁\�\�X\�*�m '),(_binary ',�\�-߁\�\�X\�*�m ',_binary ',\�\�߁\�\�X\�*�m ','2023-05-11',_binary ',\�\�߁\�\�X\�*�m '),(_binary ',�е߁\�\�X\�*�m ',_binary ',\�\�I߁\�\�X\�*�m ','2023-05-22',_binary ',\�\�߁\�\�X\�*�m '),(_binary ',�\�q߁\�\�X\�*�m ',_binary ',\�\�߁\�\�X\�*�m ','2023-05-09',_binary ',\�\�߁\�\�X\�*�m '),(_binary ',�\��߁\�\�X\�*�m ',_binary ',\�\�I߁\�\�X\�*�m ','2023-05-25',_binary ',\�\�߁\�\�X\�*�m ');
/*!40000 ALTER TABLE `booked_meeting` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `course`
--

DROP TABLE IF EXISTS `course`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `course` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL,
  `professor` binary(16) NOT NULL,
  `description` text NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`),
  KEY `course__professor.id_fk` (`professor`),
  CONSTRAINT `course__professor.id_fk` FOREIGN KEY (`professor`) REFERENCES `professor` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `course`
--

LOCK TABLES `course` WRITE;
/*!40000 ALTER TABLE `course` DISABLE KEYS */;
INSERT INTO `course` VALUES (2,'DSMT',_binary ',\�\\\�߁\�\�X\�*�m ','The course is aimed at providing students with proper conceptual and technological tools for the design, analysis, and development of modern distributed applications. After introducing models, paradigms and algorithms for distributed software, various types of middleware systems are presented, focusing on the issues they have been designed to deal with. Students will learn to design, implement, and integrate distributed software, possibly made of heterogeneous components; moreover, they will acquire the ability to choose and apply the most suitable middleware solutions to address practical problems in distributed enterprise applications.'),(3,'MaSSS',_binary ',\�b\'߁\�\�X\�*�m ','The course is aimed at providing students a knowledge about architectural and operating system issues, middleware abstractions and mechanisms (distributed objects middleware), wireless sensor network programming (event-driven, in-network, power-aware). In laboratory sessions students will exercise with programming smartphones-based mobile applications (Android), their integration with back-end servers, and wireless and wearable sensor applications.'),(4,'SNH',_binary ',\�cJ߁\�\�X\�*�m ','The best way to understand what attackers can do is to reason like one of them. In this course we will explore the tecniques that are common knowledge among attackers. The purpose is to understand the strenghts and, most importantantly, the limits of all the countermeasures that modern systems implement to mitigate these attacks. In turn, this requires a study of some topics that are sometimes skipped in architectural courses, like heap implementation, dynamic libraries and Virtual Machines.'),(5,'FOC',_binary ',\�dh߁\�\�X\�*�m ','student will acquire knowledge about applied cryptography, secure coding and web security. The objective of the course is to make a student able to properly design and implement a secure distributed application. More precisely, the student will get a detailed knowledge of the main cryptographic primitives (ciphers, hash functions, digital signatures), their properties in terms of security and performance, and their appropriate usage in designing and building protocols and systems. The student will also get basic notions about secure coding, and web security and the related main attacks including buffer overflow and SQL injection.'),(6,'ECS',_binary ',\�c\�߁\�\�X\�*�m ','description'),(7,'LSMSD',_binary ',\�d�߁\�\�X\�*�m ','description'),(8,'PESN',_binary ',\�e�߁\�\�X\�*�m ','description'),(9,'IS',_binary ',\�f(߁\�\�X\�*�m ','description'),(10,'CCA',_binary ',\�g�߁\�\�X\�*�m ','description'),(11,'ANAWS',_binary ',\�h3߁\�\�X\�*�m ','description'),(12,'CC',_binary ',\�\\\�߁\�\�X\�*�m ','description'),(13,'FOE',_binary ',\�\\\�߁\�\�X\�*�m ','description'),(14,'TREA',_binary ',\�\\\�߁\�\�X\�*�m ','description'),(15,'NAO',_binary ',\�\\\�߁\�\�X\�*�m ','description'),(16,'FMFSS',_binary ',\�\\\�߁\�\�X\�*�m ','description');
/*!40000 ALTER TABLE `course` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `meeting_slot`
--

DROP TABLE IF EXISTS `meeting_slot`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `meeting_slot` (
  `id` binary(16) NOT NULL,
  `course` int unsigned NOT NULL,
  `weekday` int unsigned NOT NULL,
  `starting_time` time NOT NULL,
  PRIMARY KEY (`id`),
  KEY `meeting_slot_course_id_fk` (`course`),
  CONSTRAINT `meeting_slot_course_id_fk` FOREIGN KEY (`course`) REFERENCES `course` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `meeting_slot`
--

LOCK TABLES `meeting_slot` WRITE;
/*!40000 ALTER TABLE `meeting_slot` DISABLE KEYS */;
INSERT INTO `meeting_slot` VALUES (_binary ',\�\�R߁\�\�X\�*�m ',2,3,'15:30:00'),(_binary ',\�\�߁\�\�X\�*�m ',16,1,'13:00:00'),(_binary ',\�\�߁\�\�X\�*�m ',3,2,'17:00:00'),(_binary ',\�\�߁\�\�X\�*�m ',6,4,'10:00:00'),(_binary ',\�\� ߁\�\�X\�*�m ',7,5,'09:00:00'),(_binary ',\�\�I߁\�\�X\�*�m ',11,4,'09:30:00'),(_binary ',\�\�~߁\�\�X\�*�m ',5,2,'14:30:00');
/*!40000 ALTER TABLE `meeting_slot` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `professor`
--

DROP TABLE IF EXISTS `professor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `professor` (
  `id` binary(16) NOT NULL,
  `username` varchar(32) NOT NULL,
  `password` varchar(64) NOT NULL,
  `email` varchar(64) NOT NULL,
  `name` varchar(64) NOT NULL,
  `surname` varchar(64) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `professor`
--

LOCK TABLES `professor` WRITE;
/*!40000 ALTER TABLE `professor` DISABLE KEYS */;
INSERT INTO `professor` VALUES (_binary ',\�\\\�߁\�\�X\�*�m ','m.rossi','pass','m.rossi@unipi.it','Mario','Rossi'),(_binary ',\�b\'߁\�\�X\�*�m ','l.marrone','pass','l.marrone@unipi.it','Luca','Marrone'),(_binary ',\�cJ߁\�\�X\�*�m ','g.fantini','pass','g.fantini@unipi.it','Giorgio','Fantini'),(_binary ',\�c\�߁\�\�X\�*�m ','t.baldini','pass','t.baldini@unipi.it','Tommaso','Baldini'),(_binary ',\�dh߁\�\�X\�*�m ','r.paoli','pass','r.paoli@unipi.it','Ruggero','Paoli'),(_binary ',\�d�߁\�\�X\�*�m ','v.cantini','pass','v.cantini@unipi.it','Valerio','Cantini'),(_binary ',\�e�߁\�\�X\�*�m ','a.torri','pass','a.torri@unipi.it','Antonio','Torri'),(_binary ',\�f(߁\�\�X\�*�m ','e.romani','pass','e.romani@unipi.it','Ettore','Romani'),(_binary ',\�g�߁\�\�X\�*�m ','m.banti','pass','m.banti@unipi.it','Maurizio','Banti'),(_binary ',\�h3߁\�\�X\�*�m ','g.lini','pass','g.lini@unipi.it','Giulia','Lini');
/*!40000 ALTER TABLE `professor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `student`
--

DROP TABLE IF EXISTS `student`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `student` (
  `id` binary(16) NOT NULL,
  `username` varchar(32) NOT NULL,
  `password` varchar(64) NOT NULL,
  `email` varchar(64) NOT NULL,
  `name` varchar(64) NOT NULL,
  `surname` varchar(64) NOT NULL,
  `degree` varchar(64) NOT NULL,
  `language` varchar(64) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `student`
--

LOCK TABLES `student` WRITE;
/*!40000 ALTER TABLE `student` DISABLE KEYS */;
INSERT INTO `student` VALUES (_binary ',\�\�o߁\�\�X\�*�m ','f.lanzillo','pass','f.lanzillo@unipi.it','Fabrizio','Lanzillo','CE','ITA'),(_binary ',\�\�߁\�\�X\�*�m ','f.montini','pass','f.montini@unipi.it','Federico','Montini','CE','ITA'),(_binary ',\�\�߁\�\�X\�*�m ','r.sagramoni','pass','r.sagramoni@unipi.it','Riccardo','Sagramoni','CE','ITA'),(_binary ',\�\�߁\�\�X\�*�m ','s.trussardi','pass','s.trussardi@unipi.it','Sandro','Trussardi','AIDE','ITA'),(_binary ',\�\�m߁\�\�X\�*�m ','g.giannetti','pass','g.giannetti@unipi.it','Giulio','Giannetti','AIDE','ITA'),(_binary ',\�\�=߁\�\�X\�*�m ','o.galiazzo','pass','o.galiazzo@unipi.it','Olga','Galiazzo','CE','ITA'),(_binary ',\�\�߁\�\�X\�*�m ','e.mazzeo','pass','e.mazzeo@unipi.it','Eraldo','Mazzeo','CE','ITA'),(_binary ',\�\�\�߁\�\�X\�*�m ','b.antonetti','pass','b.antonetti@unipi.it','Benito','Antonetti','AIDE','ITA'),(_binary ',\�\��߁\�\�X\�*�m ','v.abatantuono','pass','v.abatantuono@unipi.it','Veronica','Abatantuono','AIDE','ITA'),(_binary ',\�\�h߁\�\�X\�*�m ','r.finetti','pass','r.finetti@unipi.it','Roberto','Finetti','AIDE','ITA'),(_binary ',\��4߁\�\�X\�*�m ','g.trentini','pass','g.trentini@unipi.it','Giulietta','Trentini','CE','ITA'),(_binary ',\���߁\�\�X\�*�m ','b.gori','pass','b.gori@unipi.it','Bianca','Gori','AIDE','ITA'),(_binary ',\��\�߁\�\�X\�*�m ','n.abbagnale','pass','n.abbagnale@unipi.it','Nicoletta','Abbagnale','AIDE','ITA'),(_binary ',\���߁\�\�X\�*�m ','p.lancisi','pass','p.lancisi@unipi.it','Pina','Lancisi','CE','ITA'),(_binary ',\��t߁\�\�X\�*�m ','l.tomaselli','pass','l.tomaselli@unipi.it','Liana','Tomaselli','CE','ITA');
/*!40000 ALTER TABLE `student` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `student_starred_courses`
--

DROP TABLE IF EXISTS `student_starred_courses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `student_starred_courses` (
  `student` binary(16) NOT NULL,
  `course` int unsigned NOT NULL,
  PRIMARY KEY (`student`,`course`),
  KEY `course` (`course`),
  CONSTRAINT `student_starred_courses_ibfk_1` FOREIGN KEY (`student`) REFERENCES `student` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `student_starred_courses_ibfk_2` FOREIGN KEY (`course`) REFERENCES `course` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `student_starred_courses`
--

LOCK TABLES `student_starred_courses` WRITE;
/*!40000 ALTER TABLE `student_starred_courses` DISABLE KEYS */;
INSERT INTO `student_starred_courses` VALUES (_binary ',\�\�o߁\�\�X\�*�m ',2),(_binary ',\�\�߁\�\�X\�*�m ',2),(_binary ',\�\�߁\�\�X\�*�m ',2),(_binary ',\�\�o߁\�\�X\�*�m ',5),(_binary ',\�\�߁\�\�X\�*�m ',16);
/*!40000 ALTER TABLE `student_starred_courses` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-04-20 15:44:23
