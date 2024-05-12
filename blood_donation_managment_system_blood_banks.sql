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
-- Table structure for table `blood_banks`
--

DROP TABLE IF EXISTS `blood_banks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `blood_banks` (
  `bank_id` int NOT NULL AUTO_INCREMENT,
  `bank_name` varchar(45) NOT NULL,
  `province` varchar(45) NOT NULL,
  `city` varchar(45) NOT NULL,
  `location` varchar(45) NOT NULL,
  `contact_no` varchar(45) NOT NULL,
  `email` varchar(45) NOT NULL,
  `existance_date` date NOT NULL,
  `manager_id_fk` int DEFAULT NULL,
  PRIMARY KEY (`bank_id`),
  UNIQUE KEY `contact_no` (`contact_no`),
  UNIQUE KEY `email` (`email`),
  KEY `manager_id_fk` (`manager_id_fk`),
  CONSTRAINT `blood_banks_ibfk_1` FOREIGN KEY (`manager_id_fk`) REFERENCES `managers` (`manager_id`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blood_banks`
--

LOCK TABLES `blood_banks` WRITE;
/*!40000 ALTER TABLE `blood_banks` DISABLE KEYS */;
INSERT INTO `blood_banks` VALUES (2,'alfalah blood bank','punjab','lahore','anarkali food street','3458477462','alfalahbb@gmail.com','2010-03-23',1),(3,'nishat blood bank','punjab','lahore','dha phase 2','3047466532','nishatbb@gmail.com','2018-05-15',2),(4,'al-aziz blood bank','punjab','muridke','main gt road near THQ','3043877645','alazizbb@gmail.com','2020-05-29',3),(5,'Al-Faisal Blood Bank','Sindh','Karachi','Shahrah-e-Faisal','3123456789','alfaisalbb@gmail.com','2022-01-01',4),(6,'Ayesha Blood Bank','Punjab','Lahore','Ferozepur Road','3214567890','ayeshabb@gmail.com','2022-02-15',5),(7,'Al-Shifa Blood Bank','KPK','Peshawar','University Road','3325678901','alshifabb@gmail.com','2022-03-27',6),(8,'Fatima Blood Bank','Balochistan','Quetta','M.A. Jinnah Road','3436789012','fatimabb@gmail.com','2022-04-10',7),(9,'Aman Blood Bank','Punjab','Islamabad','F-10 Markaz','3547890123','amanbb@gmail.com','2022-05-22',8),(10,'Al-Madina Blood Bank','Sindh','Hyderabad','Auto Bhan Road','3658901234','almadinabb@gmail.com','2022-06-05',9),(11,'Mujtaba Blood Bank','Punjab','Gujranwala','GT Road','3760012345','mujtababb@gmail.com','2022-07-18',10),(26,'kskdfks j','fjsdksf','jfjfla','jfdlfjasl','94248','sfdhisfj','2020-02-12',19),(27,'usama blood bank','punjab','muridke','main gt road near thq','3032283993','usamabb@gmail.com','2020-02-23',20),(28,'shahshanas blood bank','punjab','lahore','islam pura lhr','3028388746','shahbb@gmail.com','2020-03-03',21),(29,'ali asad blood bank','punajb','lahore','mall road near lahore zoo','03022234776','aliasadbb@gmail.com','2022-04-23',23);
/*!40000 ALTER TABLE `blood_banks` ENABLE KEYS */;
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
