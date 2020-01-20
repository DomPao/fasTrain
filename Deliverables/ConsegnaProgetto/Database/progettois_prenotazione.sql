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
-- Table structure for table `prenotazione`
--

DROP TABLE IF EXISTS `prenotazione`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `prenotazione` (
  `codicePrenotazione` int(3) NOT NULL AUTO_INCREMENT,
  `email` varchar(45) NOT NULL,
  `data` date NOT NULL,
  `prezzoTotale` double(5,2) NOT NULL,
  `carta` bigint(17) NOT NULL,
  `intestatarioCarta` varchar(30) NOT NULL,
  `scadenzaCarta` date NOT NULL,
  `classeScelta` varchar(20) NOT NULL,
  `codiceCorsa` int(11) NOT NULL,
  PRIMARY KEY (`codicePrenotazione`),
  KEY `email_idx` (`email`),
  KEY `codiceCorsa_idx` (`codiceCorsa`),
  CONSTRAINT `codiceCorsa` FOREIGN KEY (`codiceCorsa`) REFERENCES `corsa` (`codiceCorsa`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `email` FOREIGN KEY (`email`) REFERENCES `utente` (`email`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=378 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `prenotazione`
--

LOCK TABLES `prenotazione` WRITE;
/*!40000 ALTER TABLE `prenotazione` DISABLE KEYS */;
INSERT INTO `prenotazione` VALUES (145,'erminio.acierno@libero.it','2020-01-12',200.00,5558963214789652,'Erminio Acierno','2020-01-12','premium',55889),(146,'erminio.acierno@libero.it','2020-01-12',100.00,5558963214789652,'Erminio Acierno','2020-01-12','premium',33214),(147,'erminio.acierno@libero.it','2020-01-12',50.00,5558963214789652,'Erminio Acierno','2020-01-12','premium',33214),(198,'domenico.paolillo@tiscali.it','2020-04-24',125.00,9632963296329632,'Domenico Paolillo','2020-05-12','economy',51116),(216,'erminio.acierno@libero.it','2020-08-24',150.00,5558963214789652,'Mario Serino','2020-08-24','premium',14588),(217,'erminio.acierno@libero.it','2020-08-24',150.00,5558963214789652,'Mario Serino','2020-08-24','premium',14588),(333,'erminio.acierno@libero.it','2020-08-24',150.00,5558963214789652,'Mario Serino','2020-08-24','premium',14588),(361,'domenico.paolillo@tiscali.it','2010-01-18',150.00,1234123412341234,'Erminio Acierno','2010-01-18','premium',14588),(362,'domenico.paolillo@tiscali.it','2020-03-05',112.50,1478147814781478,'Erminio Acierno','2020-01-10','premium',25963),(363,'erminio.acierno@libero.it','2020-02-16',150.00,1234123412341234,'Mario Serino','2020-08-24','premium',14588);
/*!40000 ALTER TABLE `prenotazione` ENABLE KEYS */;
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
