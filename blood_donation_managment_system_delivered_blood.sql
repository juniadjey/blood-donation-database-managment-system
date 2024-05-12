-- MySQL dump 10.13  Distrib 8.0.32, for Win64 (x86_64)
--
-- Host: localhost    Database: blood_donation_managment_system
-- ------------------------------------------------------
-- Server version	8.0.32

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
-- Table structure for table `delivered_blood`
--

DROP TABLE IF EXISTS `delivered_blood`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `delivered_blood` (
  `order_no` int NOT NULL AUTO_INCREMENT,
  `order_date` date NOT NULL,
  `hospital_id_fk` int DEFAULT NULL,
  `bank_id_fk` int DEFAULT NULL,
  `bag_id_fk` int DEFAULT NULL,
  PRIMARY KEY (`order_no`),
  KEY `hospital_id_fk` (`hospital_id_fk`),
  KEY `bank_id_fk` (`bank_id_fk`),
  KEY `bag_id_fk` (`bag_id_fk`),
  CONSTRAINT `delivered_blood_ibfk_1` FOREIGN KEY (`hospital_id_fk`) REFERENCES `hospitals` (`hospital_id`),
  CONSTRAINT `delivered_blood_ibfk_2` FOREIGN KEY (`bank_id_fk`) REFERENCES `blood_banks` (`bank_id`),
  CONSTRAINT `delivered_blood_ibfk_3` FOREIGN KEY (`bag_id_fk`) REFERENCES `blood_bags` (`bag_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `delivered_blood`
--

LOCK TABLES `delivered_blood` WRITE;
/*!40000 ALTER TABLE `delivered_blood` DISABLE KEYS */;
/*!40000 ALTER TABLE `delivered_blood` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-05-12 17:03:55
