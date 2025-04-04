-- MySQL dump 10.13  Distrib 8.0.41, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: atsanetphp
-- ------------------------------------------------------
-- Server version	5.5.5-10.4.28-MariaDB

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
-- Table structure for table `acudiente`
--

DROP TABLE IF EXISTS `acudiente`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `acudiente` (
  `id_acudiente` int(10) unsigned NOT NULL,
  `nombres_acu` varchar(20) NOT NULL,
  `apellidos_acu` varchar(20) NOT NULL,
  `telefono_acudiente` bigint(20) NOT NULL,
  PRIMARY KEY (`id_acudiente`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `acudiente`
--

LOCK TABLES `acudiente` WRITE;
/*!40000 ALTER TABLE `acudiente` DISABLE KEYS */;
/*!40000 ALTER TABLE `acudiente` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `alumno`
--

DROP TABLE IF EXISTS `alumno`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `alumno` (
  `persona_id_persona` int(10) unsigned NOT NULL,
  `pie_dominate` varchar(10) NOT NULL,
  `acudiente_id_alumno` int(10) unsigned NOT NULL,
  `parentezco_alumno` varchar(11) NOT NULL,
  `posicion_id_posicion` varchar(5) NOT NULL,
  `categoria_id_categoria` varchar(6) NOT NULL,
  KEY `alumno_persona_id_persona_foreign` (`persona_id_persona`),
  KEY `alumno_acudiente_id_alumno_foreign` (`acudiente_id_alumno`),
  KEY `alumno_posicion_id_posicion_foreign` (`posicion_id_posicion`),
  KEY `alumno_categoria_id_categoria_foreign` (`categoria_id_categoria`),
  CONSTRAINT `alumno_acudiente_id_alumno_foreign` FOREIGN KEY (`acudiente_id_alumno`) REFERENCES `acudiente` (`id_acudiente`),
  CONSTRAINT `alumno_categoria_id_categoria_foreign` FOREIGN KEY (`categoria_id_categoria`) REFERENCES `categoria` (`id_categoria`),
  CONSTRAINT `alumno_persona_id_persona_foreign` FOREIGN KEY (`persona_id_persona`) REFERENCES `persona` (`id_persona`),
  CONSTRAINT `alumno_posicion_id_posicion_foreign` FOREIGN KEY (`posicion_id_posicion`) REFERENCES `posicion` (`id_posicion`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `alumno`
--

LOCK TABLES `alumno` WRITE;
/*!40000 ALTER TABLE `alumno` DISABLE KEYS */;
/*!40000 ALTER TABLE `alumno` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categoria`
--

DROP TABLE IF EXISTS `categoria`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `categoria` (
  `id_categoria` varchar(6) NOT NULL,
  `nom_categoria` varchar(20) NOT NULL,
  PRIMARY KEY (`id_categoria`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categoria`
--

LOCK TABLES `categoria` WRITE;
/*!40000 ALTER TABLE `categoria` DISABLE KEYS */;
/*!40000 ALTER TABLE `categoria` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `eps`
--

DROP TABLE IF EXISTS `eps`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `eps` (
  `id_eps` tinyint(4) NOT NULL,
  `eps` varchar(15) NOT NULL,
  PRIMARY KEY (`id_eps`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `eps`
--

LOCK TABLES `eps` WRITE;
/*!40000 ALTER TABLE `eps` DISABLE KEYS */;
/*!40000 ALTER TABLE `eps` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `genero`
--

DROP TABLE IF EXISTS `genero`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `genero` (
  `id_genero` tinyint(4) NOT NULL,
  `genero` varchar(1) NOT NULL,
  PRIMARY KEY (`id_genero`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `genero`
--

LOCK TABLES `genero` WRITE;
/*!40000 ALTER TABLE `genero` DISABLE KEYS */;
/*!40000 ALTER TABLE `genero` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (1,'2025_04_04_004918_create_genero_table',1),(2,'2025_04_04_005736_create_rh_table',1),(3,'2025_04_04_010144_create_eps_table',1),(4,'2025_04_04_034414_create_persona_table',1),(5,'2025_04_04_053641_create_posicion_table',1),(6,'2025_04_04_054029_create_categoria_table',1),(7,'2025_04_04_054536_create_acudiente_table',1),(8,'2025_04_04_055019_create_alumno_table',1),(9,'2025_04_04_065743_create_tipo_personal_table',1),(10,'2025_04_04_072125_create_personal_t_table',1);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `persona`
--

DROP TABLE IF EXISTS `persona`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `persona` (
  `id_persona` int(10) unsigned NOT NULL,
  `tipoId` varchar(12) NOT NULL,
  `nombres` varchar(20) NOT NULL,
  `apellidos` varchar(20) NOT NULL,
  `edad_persona` tinyint(4) NOT NULL,
  `direccion_persona` varchar(20) NOT NULL,
  `telefono_persona` bigint(20) NOT NULL,
  `email_persona` varchar(40) NOT NULL,
  `genero_id_genero` tinyint(4) NOT NULL,
  `eps_id_eps` tinyint(4) NOT NULL,
  `rh_id_rh` tinyint(4) NOT NULL,
  PRIMARY KEY (`id_persona`),
  KEY `persona_genero_id_genero_foreign` (`genero_id_genero`),
  KEY `persona_eps_id_eps_foreign` (`eps_id_eps`),
  KEY `persona_rh_id_rh_foreign` (`rh_id_rh`),
  CONSTRAINT `persona_eps_id_eps_foreign` FOREIGN KEY (`eps_id_eps`) REFERENCES `eps` (`id_eps`),
  CONSTRAINT `persona_genero_id_genero_foreign` FOREIGN KEY (`genero_id_genero`) REFERENCES `genero` (`id_genero`),
  CONSTRAINT `persona_rh_id_rh_foreign` FOREIGN KEY (`rh_id_rh`) REFERENCES `rh` (`id_rh`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `persona`
--

LOCK TABLES `persona` WRITE;
/*!40000 ALTER TABLE `persona` DISABLE KEYS */;
/*!40000 ALTER TABLE `persona` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `personal_t`
--

DROP TABLE IF EXISTS `personal_t`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `personal_t` (
  `persona_id_persona` int(10) unsigned NOT NULL,
  `password_personal_t` varchar(20) NOT NULL,
  `tipo_personal_fk` int(10) unsigned NOT NULL,
  KEY `personal_t_persona_id_persona_foreign` (`persona_id_persona`),
  KEY `personal_t_tipo_personal_fk_foreign` (`tipo_personal_fk`),
  CONSTRAINT `personal_t_persona_id_persona_foreign` FOREIGN KEY (`persona_id_persona`) REFERENCES `persona` (`id_persona`),
  CONSTRAINT `personal_t_tipo_personal_fk_foreign` FOREIGN KEY (`tipo_personal_fk`) REFERENCES `tipo_personal` (`id_tipo_personal`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `personal_t`
--

LOCK TABLES `personal_t` WRITE;
/*!40000 ALTER TABLE `personal_t` DISABLE KEYS */;
/*!40000 ALTER TABLE `personal_t` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `posicion`
--

DROP TABLE IF EXISTS `posicion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `posicion` (
  `id_posicion` varchar(5) NOT NULL,
  `desc_posicion` varchar(5) NOT NULL,
  PRIMARY KEY (`id_posicion`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `posicion`
--

LOCK TABLES `posicion` WRITE;
/*!40000 ALTER TABLE `posicion` DISABLE KEYS */;
/*!40000 ALTER TABLE `posicion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rh`
--

DROP TABLE IF EXISTS `rh`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `rh` (
  `id_rh` tinyint(4) NOT NULL,
  `rh` varchar(3) NOT NULL,
  PRIMARY KEY (`id_rh`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rh`
--

LOCK TABLES `rh` WRITE;
/*!40000 ALTER TABLE `rh` DISABLE KEYS */;
/*!40000 ALTER TABLE `rh` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tipo_personal`
--

DROP TABLE IF EXISTS `tipo_personal`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tipo_personal` (
  `id_tipo_personal` int(10) unsigned NOT NULL,
  `desc_tipo_personal` varchar(30) NOT NULL,
  PRIMARY KEY (`id_tipo_personal`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tipo_personal`
--

LOCK TABLES `tipo_personal` WRITE;
/*!40000 ALTER TABLE `tipo_personal` DISABLE KEYS */;
/*!40000 ALTER TABLE `tipo_personal` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-04-04  9:33:48
