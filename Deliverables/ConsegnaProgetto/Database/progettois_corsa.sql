-- MySQL dump 10.13  Distrib 8.0.17, for Win64 (x86_64)
--
-- Host: localhost    Database: progettois
-- ------------------------------------------------------
-- Server version	8.0.17

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
-- Table structure for table `corsa`
--

DROP TABLE IF EXISTS `corsa`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `corsa` (
  `codiceCorsa` int(5) NOT NULL,
  `codiceTreno` int(5) NOT NULL,
  `stazionePartenza` varchar(20) NOT NULL,
  `stazioneDestinazione` varchar(20) NOT NULL,
  `oraPartenza` varchar(10) NOT NULL,
  `oraArrivo` varchar(10) NOT NULL,
  `numeroPostiPremium` int(3) NOT NULL,
  `numeroPostiBusiness` int(3) NOT NULL,
  `numeroPostiEconomy` int(3) NOT NULL,
  `prezzoClassePremium` double(5,2) NOT NULL,
  `prezzoClasseBusiness` double(5,2) NOT NULL,
  `prezzoClasseEconomy` double(5,2) NOT NULL,
  `sconto` int(2) NOT NULL,
  `data` date NOT NULL,
  PRIMARY KEY (`codiceCorsa`),
  UNIQUE KEY `codiceCorsa_UNIQUE` (`codiceCorsa`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `corsa`
--

LOCK TABLES `corsa` WRITE;
/*!40000 ALTER TABLE `corsa` DISABLE KEYS */;
INSERT INTO `corsa` VALUES (14588,69987,'Milano','Roma','09:00','12:00',17,48,0,200.00,150.00,69.00,25,'2020-02-16'),(25963,89577,'Milano','Pisa','14:00','18:00',14,55,80,125.00,55.00,45.00,10,'2020-03-05'),(33214,66321,'Roma','Milano','12:20','10:20',99,97,100,100.00,100.00,100.00,50,'2020-01-29'),(45464,12458,'Salerno','Venezia','07:00','12:00',20,35,50,124.50,78.00,58.00,0,'2020-02-05'),(51116,69874,'Salerno','Bari','10:00','16:00',10,20,100,170.00,80.00,40.00,10,'2020-01-09'),(52016,88807,'Salerno','Torino','10:00','17:00',25,50,100,100.00,50.00,20.00,10,'2020-01-28'),(52116,88877,'Milano','Salerno','16:30','17:44',12,32,75,55.00,21.60,12.30,12,'2020-01-12'),(55889,54778,'Venezia','Roma','09:50','12:00',40,40,80,100.00,20.00,10.00,0,'2020-01-12'),(58116,88877,'Catania','Palermo','10:00','12:00',25,50,100,100.00,50.00,20.00,10,'2020-03-28'),(65899,78459,'Milano','Pisa','14:00','18:00',15,55,80,125.00,55.00,25.00,0,'2020-03-06'),(87419,1255,'Salerno','Roma','16:30','17:44',12,32,75,55.00,21.60,12.30,12,'2020-01-12');
/*!40000 ALTER TABLE `corsa` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-01-20 10:54:21
