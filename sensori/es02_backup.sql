/*M!999999\- enable the sandbox mode */ 
-- MariaDB dump 10.19  Distrib 10.5.29-MariaDB, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: sensori
-- ------------------------------------------------------
-- Server version	10.4.34-MariaDB-1:10.4.34+maria~ubu2004

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `allarmi`
--

DROP TABLE IF EXISTS `allarmi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `allarmi` (
  `id_allarmi` int(11) NOT NULL AUTO_INCREMENT,
  `anti_incendio` tinyint(1) NOT NULL,
  `luci_esterne` varchar(50) NOT NULL,
  `luci_interne` varchar(50) NOT NULL,
  `blackout` tinyint(1) NOT NULL,
  `velocità_eccessiva` tinyint(1) NOT NULL,
  PRIMARY KEY (`id_allarmi`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `allarmi`
--

LOCK TABLES `allarmi` WRITE;
/*!40000 ALTER TABLE `allarmi` DISABLE KEYS */;
INSERT INTO `allarmi` VALUES (1,0,'Accese','Accese al 100%',0,0),(2,1,'Accese','Accese al 100%',0,0),(3,0,'Spente','Spente',1,1);
/*!40000 ALTER TABLE `allarmi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orario`
--

DROP TABLE IF EXISTS `orario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `orario` (
  `id_orario` int(11) NOT NULL AUTO_INCREMENT,
  `partenze` datetime NOT NULL,
  `arrivi` datetime NOT NULL,
  `ritardi` time NOT NULL,
  `stato` varchar(50) NOT NULL,
  `id_sensori` int(11) NOT NULL,
  `id_allarmi` int(11) NOT NULL,
  PRIMARY KEY (`id_orario`),
  KEY `id_sensori` (`id_sensori`),
  KEY `id_allarmi` (`id_allarmi`),
  CONSTRAINT `orario_ibfk_1` FOREIGN KEY (`id_sensori`) REFERENCES `sensori` (`id_sensori`),
  CONSTRAINT `orario_ibfk_2` FOREIGN KEY (`id_allarmi`) REFERENCES `allarmi` (`id_allarmi`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orario`
--

LOCK TABLES `orario` WRITE;
/*!40000 ALTER TABLE `orario` DISABLE KEYS */;
INSERT INTO `orario` VALUES (1,'2026-11-26 08:00:00','2026-11-26 09:15:00','00:00:00','Puntuale',1,1),(2,'2026-11-26 10:30:00','2026-11-26 11:50:00','00:15:00','In ritardo',2,2),(3,'2026-11-26 14:00:00','2026-11-26 15:30:00','00:30:00','In ritardo',3,3);
/*!40000 ALTER TABLE `orario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sensori`
--

DROP TABLE IF EXISTS `sensori`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `sensori` (
  `id_sensori` int(11) NOT NULL AUTO_INCREMENT,
  `conta_assi` varchar(50) NOT NULL,
  `eurobalise` varchar(50) NOT NULL,
  `rtb` int(11) NOT NULL,
  `odometri` varchar(50) NOT NULL,
  `imu` varchar(50) NOT NULL,
  `temperatura` decimal(5,2) NOT NULL,
  `pressione` float NOT NULL,
  `visibilità` varchar(50) NOT NULL,
  `tempo_atmosferico` varchar(50) NOT NULL,
  PRIMARY KEY (`id_sensori`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sensori`
--

LOCK TABLES `sensori` WRITE;
/*!40000 ALTER TABLE `sensori` DISABLE KEYS */;
INSERT INTO `sensori` VALUES (1,'48 assi rilevati','27.5 MHz',120,'1250.45 m','0.02 m/s²',22.50,1013.25,'10 km','Sereno'),(2,'64 assi rilevati','27.5 MHz',135,'2380.70 m','0.15 m/s²',18.75,1008.5,'5 km','Nuvoloso'),(3,'32 assi rilevati','27.5 MHz',110,'3450.20 m','0.35 m/s²',15.20,995.8,'1 km','Pioggia');
/*!40000 ALTER TABLE `sensori` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2026-11-27  7:59:02
