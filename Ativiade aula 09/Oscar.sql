-- MariaDB dump 10.19  Distrib 10.4.32-MariaDB, for Win64 (AMD64)
--
-- Host: localhost    Database: oscar
-- ------------------------------------------------------
-- Server version	10.4.32-MariaDB

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
-- Table structure for table `melhor_ator_atriz`
--

DROP TABLE IF EXISTS `melhor_ator_atriz`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `melhor_ator_atriz` (
  `id_ator` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(30) NOT NULL,
  `data_nasc` varchar(20) NOT NULL,
  `genero` varchar(20) NOT NULL,
  PRIMARY KEY (`id_ator`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `melhor_ator_atriz`
--

LOCK TABLES `melhor_ator_atriz` WRITE;
/*!40000 ALTER TABLE `melhor_ator_atriz` DISABLE KEYS */;
INSERT INTO `melhor_ator_atriz` VALUES (1,'Tom Hanks','09/07/1956','mas'),(2,'Nigel Hawthorne','05/04/1929','mas'),(3,'Paul Newman','26/01/1925','mas'),(4,'Jhon Travolta','18/02/1954','mas'),(5,'Morgan Freeman','01/06/1937','mas'),(6,'Jessica Lange','20/04/1949','fem'),(7,'Susan Saradon','04/09/1946','fem'),(8,'Winona Ryder','29/09/1971','fem'),(9,'Jodie Foster','19/11/1962','fem'),(10,'Miranda Richardson','03/03/1958','fem');
/*!40000 ALTER TABLE `melhor_ator_atriz` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `melhor_diretor`
--

DROP TABLE IF EXISTS `melhor_diretor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `melhor_diretor` (
  `id_diretor` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(50) NOT NULL,
  `data_Nasc` varchar(20) NOT NULL,
  `Nacionalidade` varchar(30) NOT NULL,
  `id_filme` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_diretor`),
  KEY `id_filme` (`id_filme`),
  CONSTRAINT `melhor_diretor_ibfk_1` FOREIGN KEY (`id_filme`) REFERENCES `melhor_filme` (`id_filme`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `melhor_diretor`
--

LOCK TABLES `melhor_diretor` WRITE;
/*!40000 ALTER TABLE `melhor_diretor` DISABLE KEYS */;
INSERT INTO `melhor_diretor` VALUES (1,'Robert Zemeckis','14/05/1951','Estados Unidos',1),(2,'Woody Allen','30/09/1935','Estados Unidos',2),(3,'Quentin Tarantino','27/03/1973','Estados Unidos',3),(4,'Robert Redford','18/08/1936','Estados Unidos',4),(5,'Krzysztor Kieslowski','27/06/1941','Polônia',5);
/*!40000 ALTER TABLE `melhor_diretor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `melhor_filme`
--

DROP TABLE IF EXISTS `melhor_filme`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `melhor_filme` (
  `id_filme` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(50) NOT NULL,
  `genero` varchar(50) NOT NULL,
  PRIMARY KEY (`id_filme`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `melhor_filme`
--

LOCK TABLES `melhor_filme` WRITE;
/*!40000 ALTER TABLE `melhor_filme` DISABLE KEYS */;
INSERT INTO `melhor_filme` VALUES (1,'Forrest Gump','Drama/Comédia'),(2,'Quatro casamentos e um funeral','Comédia romantica'),(3,'Pulp fiction','drama Polical'),(4,'Quis show','drama'),(5,'um sonho de liberdade','drama');
/*!40000 ALTER TABLE `melhor_filme` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `premiacao`
--

DROP TABLE IF EXISTS `premiacao`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `premiacao` (
  `id_premicao` int(11) NOT NULL AUTO_INCREMENT,
  `concorrente` varchar(30) NOT NULL,
  `vencedor` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`id_premicao`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `premiacao`
--

LOCK TABLES `premiacao` WRITE;
/*!40000 ALTER TABLE `premiacao` DISABLE KEYS */;
INSERT INTO `premiacao` VALUES (1,'Forrest Gump','sim'),(2,'Jhon Travolta','não'),(3,'Jessica Lang','sim'),(4,'Quentin Tarantino','não');
/*!40000 ALTER TABLE `premiacao` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `premio`
--

DROP TABLE IF EXISTS `premio`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `premio` (
  `id_premio` int(11) NOT NULL AUTO_INCREMENT,
  `categoria` varchar(30) NOT NULL,
  PRIMARY KEY (`id_premio`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `premio`
--

LOCK TABLES `premio` WRITE;
/*!40000 ALTER TABLE `premio` DISABLE KEYS */;
INSERT INTO `premio` VALUES (1,'Melhor filme'),(2,'Melhor Diretor'),(3,'Melhor Ator'),(4,'Melhor Atriz');
/*!40000 ALTER TABLE `premio` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-09-24 14:44:32
