CREATE DATABASE  IF NOT EXISTS `railway` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `railway`;
-- MySQL dump 10.13  Distrib 8.0.33, for Win64 (x86_64)
--
-- Host: containers-us-west-105.railway.app    Database: railway
-- ------------------------------------------------------
-- Server version	8.0.33

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
-- Table structure for table `subjects`
--

DROP TABLE IF EXISTS `subjects`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `subjects` (
  `SUB_ID` varchar(13) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`SUB_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `subjects`
--

LOCK TABLES `subjects` WRITE;
/*!40000 ALTER TABLE `subjects` DISABLE KEYS */;
INSERT INTO `subjects` VALUES ('CM-101','English-I'),('CM-102','Engineering Mathematics - I'),('CM-103','Engineering Physics'),('CM-104','Engineering Chemistry and Environmental studies'),('CM-105','Basics of Computer Engineering'),('CM-106','Programming in C'),('CM-107','Engineering Drawing'),('CM-108','Programming in C Lab'),('CM-109','Physics Lab '),('CM-110','Chemistry Lab'),('CM-111','Computer Fundamentals Lab'),('CM-301','Mathematics II'),('CM-302','Digital Electronics'),('CM-303','Operating systems'),('CM-304','Data Structures through C'),('CM-305','DBMS'),('CM-306','Digital Electronics Lab'),('CM-307','Data Structures Through C Lab'),('CM-308','DBMS Lab'),('CM-309','Multimedia Lab'),('CM-401','Mathematics III'),('CM-402','Web Technologies'),('CM-403','Computer Organization And Microprocessors'),('CM-404','OOP through C++'),('CM-405','Computer Networks'),('CM-406','Web Technologies Lab'),('CM-407','OOP through C++ Lab'),('CM-408','Communication Skills'),('CM-409','Computer Hardware & Network Maintenance Lab'),('CM-501','Industrial Management and Entrepreneurship'),('CM-502','Java Programming'),('CM-503','Software Engineering '),('CM-504','Internet Of Things'),('CM-505','Python programming'),('CM-506','Java Programming Lab'),('CM-507','Python Programming Lab'),('CM-508','Life Skills'),('CM-509','Project work');
/*!40000 ALTER TABLE `subjects` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-07-16 11:30:41
