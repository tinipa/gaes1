-- MySQL dump 10.13  Distrib 8.0.41, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: atsanetphp
-- ------------------------------------------------------
-- Server version	5.5.5-10.4.32-MariaDB

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
-- Table structure for table `alumno`
--

DROP TABLE IF EXISTS `alumno`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `alumno` (
  `id` int(10) unsigned NOT NULL,
  `pie_dominante` varchar(10) NOT NULL,
  `nombres_acudiente` varchar(20) NOT NULL,
  `apellidos_acudiente` varchar(20) NOT NULL,
  `telefono_acudiente` bigint(20) NOT NULL,
  `parentesco_alumno` varchar(11) NOT NULL,
  `posicion_id_posicion` int(10) unsigned NOT NULL,
  `categoria_id_categoria` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `alumno_posicion_id_posicion_foreign` (`posicion_id_posicion`),
  KEY `alumno_categoria_id_categoria_foreign` (`categoria_id_categoria`),
  CONSTRAINT `alumno_categoria_id_categoria_foreign` FOREIGN KEY (`categoria_id_categoria`) REFERENCES `categoria` (`id`),
  CONSTRAINT `alumno_id_foreign` FOREIGN KEY (`id`) REFERENCES `persona` (`id`),
  CONSTRAINT `alumno_posicion_id_posicion_foreign` FOREIGN KEY (`posicion_id_posicion`) REFERENCES `posicion` (`id_posicion`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `alumno`
--

LOCK TABLES `alumno` WRITE;
/*!40000 ALTER TABLE `alumno` DISABLE KEYS */;
INSERT INTO `alumno` VALUES (1,'Izquierdo','Maria','Lopez',3146524556,'Madre',4,5);
/*!40000 ALTER TABLE `alumno` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cache`
--

DROP TABLE IF EXISTS `cache`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cache` (
  `key` varchar(255) NOT NULL,
  `value` mediumtext NOT NULL,
  `expiration` int(11) NOT NULL,
  PRIMARY KEY (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cache`
--

LOCK TABLES `cache` WRITE;
/*!40000 ALTER TABLE `cache` DISABLE KEYS */;
/*!40000 ALTER TABLE `cache` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cache_locks`
--

DROP TABLE IF EXISTS `cache_locks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cache_locks` (
  `key` varchar(255) NOT NULL,
  `owner` varchar(255) NOT NULL,
  `expiration` int(11) NOT NULL,
  PRIMARY KEY (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cache_locks`
--

LOCK TABLES `cache_locks` WRITE;
/*!40000 ALTER TABLE `cache_locks` DISABLE KEYS */;
/*!40000 ALTER TABLE `cache_locks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categoria`
--

DROP TABLE IF EXISTS `categoria`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `categoria` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `desccategoria` varchar(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categoria`
--

LOCK TABLES `categoria` WRITE;
/*!40000 ALTER TABLE `categoria` DISABLE KEYS */;
INSERT INTO `categoria` VALUES (1,'4-7 años'),(2,'8-11 años'),(3,'12-15 años'),(4,'16-17 años'),(5,'18 años');
/*!40000 ALTER TABLE `categoria` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `eps`
--

DROP TABLE IF EXISTS `eps`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `eps` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `desceps` varchar(15) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `eps`
--

LOCK TABLES `eps` WRITE;
/*!40000 ALTER TABLE `eps` DISABLE KEYS */;
INSERT INTO `eps` VALUES (1,'Sura'),(2,'Coomeva'),(3,'Compensar'),(4,'Sanitas'),(5,'Famisanar'),(6,'Cafesalud'),(7,'Salud Total'),(8,'Medimás'),(9,'Nueva eps'),(10,'Coosalud');
/*!40000 ALTER TABLE `eps` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `genero`
--

DROP TABLE IF EXISTS `genero`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `genero` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `descgenero` varchar(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `genero`
--

LOCK TABLES `genero` WRITE;
/*!40000 ALTER TABLE `genero` DISABLE KEYS */;
INSERT INTO `genero` VALUES (1,'M'),(2,'F');
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
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (1,'2014_10_12_100000_create_password_resets_table',1),(2,'2025_04_04_004918_create_genero_table',1),(3,'2025_04_04_005736_create_rh_table',1),(4,'2025_04_04_010144_create_eps_table',1),(5,'2025_04_04_054029_create_categoria_table',1),(6,'2025_04_04_065743_create_tipo_personal_table',1),(7,'2025_04_05_175659_create_sessions_table',1),(8,'2025_04_07_022510_create_posicion_table',1),(9,'2025_04_07_022953_create_persona_table',1),(10,'2025_04_07_023248_create_personal_t_table',1),(11,'2025_04_07_023329_create_alumno_table',1),(12,'2025_04_08_003819_create_chache_table',1);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `password_resets` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `password_resets`
--

LOCK TABLES `password_resets` WRITE;
/*!40000 ALTER TABLE `password_resets` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_resets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `persona`
--

DROP TABLE IF EXISTS `persona`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `persona` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_persona` int(11) NOT NULL,
  `tipo_id` varchar(12) NOT NULL,
  `nombres` varchar(50) NOT NULL,
  `apellidos` varchar(50) NOT NULL,
  `edad_persona` tinyint(4) NOT NULL,
  `direccion_persona` varchar(100) NOT NULL,
  `telefono_persona` bigint(20) NOT NULL,
  `email_persona` varchar(50) NOT NULL,
  `genero_id_genero` int(10) unsigned NOT NULL,
  `eps_id_eps` int(10) unsigned NOT NULL,
  `rh_id_rh` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `persona_genero_id_genero_foreign` (`genero_id_genero`),
  KEY `persona_eps_id_eps_foreign` (`eps_id_eps`),
  KEY `persona_rh_id_rh_foreign` (`rh_id_rh`),
  CONSTRAINT `persona_eps_id_eps_foreign` FOREIGN KEY (`eps_id_eps`) REFERENCES `eps` (`id`),
  CONSTRAINT `persona_genero_id_genero_foreign` FOREIGN KEY (`genero_id_genero`) REFERENCES `genero` (`id`),
  CONSTRAINT `persona_rh_id_rh_foreign` FOREIGN KEY (`rh_id_rh`) REFERENCES `rh` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `persona`
--

LOCK TABLES `persona` WRITE;
/*!40000 ALTER TABLE `persona` DISABLE KEYS */;
INSERT INTO `persona` VALUES (1,1003662478,'CC','Juan Camilo','Rodriguez Peña',18,'Calle 123 #45-67, Barrio Los Pinos',3217538776,'juanca@gmail.com',1,5,5),(2,1028662497,'CC','Nicol','Martinez',23,'Cll 45d sur 3g este',3224461312,'nicolmartinezforero12@gmailcom',2,1,1);
/*!40000 ALTER TABLE `persona` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `personal_t`
--

DROP TABLE IF EXISTS `personal_t`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `personal_t` (
  `id` int(10) unsigned NOT NULL,
  `password` varchar(20) NOT NULL,
  `tipo_personal_fk` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `personal_t_tipo_personal_fk_foreign` (`tipo_personal_fk`),
  CONSTRAINT `personal_t_id_foreign` FOREIGN KEY (`id`) REFERENCES `persona` (`id`),
  CONSTRAINT `personal_t_tipo_personal_fk_foreign` FOREIGN KEY (`tipo_personal_fk`) REFERENCES `tipo_personal` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `personal_t`
--

LOCK TABLES `personal_t` WRITE;
/*!40000 ALTER TABLE `personal_t` DISABLE KEYS */;
INSERT INTO `personal_t` VALUES (2,'12345678',2);
/*!40000 ALTER TABLE `personal_t` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `posicion`
--

DROP TABLE IF EXISTS `posicion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `posicion` (
  `id_posicion` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `descposicion` varchar(50) NOT NULL,
  PRIMARY KEY (`id_posicion`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `posicion`
--

LOCK TABLES `posicion` WRITE;
/*!40000 ALTER TABLE `posicion` DISABLE KEYS */;
INSERT INTO `posicion` VALUES (1,'Portero'),(2,'Delantero Extremo'),(3,'Delantero Central'),(4,'Defensor Lateral'),(5,'Defensor Central'),(6,'Centrocampista Ofensivo'),(7,'Centrocampista Defensivo');
/*!40000 ALTER TABLE `posicion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rh`
--

DROP TABLE IF EXISTS `rh`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `rh` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `descrh` varchar(3) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rh`
--

LOCK TABLES `rh` WRITE;
/*!40000 ALTER TABLE `rh` DISABLE KEYS */;
INSERT INTO `rh` VALUES (1,'A+'),(2,'A-'),(3,'B+'),(4,'B-'),(5,'O+'),(6,'O-'),(7,'AB+'),(8,'AB-');
/*!40000 ALTER TABLE `rh` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sessions`
--

DROP TABLE IF EXISTS `sessions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sessions` (
  `id` varchar(255) NOT NULL,
  `user_id` bigint(20) unsigned DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text DEFAULT NULL,
  `payload` longtext NOT NULL,
  `last_activity` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `sessions_user_id_index` (`user_id`),
  KEY `sessions_last_activity_index` (`last_activity`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sessions`
--

LOCK TABLES `sessions` WRITE;
/*!40000 ALTER TABLE `sessions` DISABLE KEYS */;
INSERT INTO `sessions` VALUES ('00ETYffKrMIir4S5zCdZKxiDt7XiiaCeFC4O0Qbm',NULL,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/134.0.0.0 Safari/537.36','YTozOntzOjY6Il90b2tlbiI7czo0MDoiWnQxWWUyTzJuV3Nja2M5UUVBTWpnckhsRFpwdmFrUVpmRXpBRzVKVCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjg6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9hbHVtbm8iO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',1744082549),('2VdAL3jNpDVRx0AtdZ7UYxWI4Kf1SBJ8d73Fe8Pv',NULL,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/134.0.0.0 Safari/537.36','YTozOntzOjY6Il90b2tlbiI7czo0MDoiUG5zZ3EyUlMyMnp2a0xBZ1drdkNlU1QxWUxBa2VNcWRjRE91QkhLZSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjg6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9hbHVtbm8iO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',1744082297),('a1fH7NJLMEelsuoV5IliDlMW4GdAt9YK0fsTX53J',1,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/134.0.0.0 Safari/537.36','YTo1OntzOjY6Il90b2tlbiI7czo0MDoicHpqeENrSU9jc3paWGFib29xMTJsZHFNNEtvQ015em1DN1NKbzdveSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjg6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9hbHVtbm8iO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX1zOjUwOiJsb2dpbl93ZWJfNTliYTM2YWRkYzJiMmY5NDAxNTgwZjAxNGM3ZjU4ZWE0ZTMwOTg5ZCI7aToxO3M6NDoiYXV0aCI7YToxOntzOjIxOiJwYXNzd29yZF9jb25maXJtZWRfYXQiO2k6MTc0NDA4Mjk3NDt9fQ==',1744083543),('TgtFJ47KAYVwOv2ZAE3hbkCFYOaruPWhw6zbCfMl',1,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/134.0.0.0 Safari/537.36','YTo1OntzOjY6Il90b2tlbiI7czo0MDoiSkxpdmZkeXVyNHVKZHByOHJKeUpDTWdGdk1Md1pqMjRISjhidHJYNiI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjg6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9hbHVtbm8iO31zOjUwOiJsb2dpbl93ZWJfNTliYTM2YWRkYzJiMmY5NDAxNTgwZjAxNGM3ZjU4ZWE0ZTMwOTg5ZCI7aToxO3M6NDoiYXV0aCI7YToxOntzOjIxOiJwYXNzd29yZF9jb25maXJtZWRfYXQiO2k6MTc0NDA4MTk0MDt9fQ==',1744082527);
/*!40000 ALTER TABLE `sessions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tipo_personal`
--

DROP TABLE IF EXISTS `tipo_personal`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tipo_personal` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `desctipo_personal` varchar(30) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tipo_personal`
--

LOCK TABLES `tipo_personal` WRITE;
/*!40000 ALTER TABLE `tipo_personal` DISABLE KEYS */;
INSERT INTO `tipo_personal` VALUES (1,'Administrador'),(2,'Entrenador');
/*!40000 ALTER TABLE `tipo_personal` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `tipo_personal_fk` int(11) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'Diego Castillo',1,'diego.cas@gmail.com',NULL,'$2y$12$nntjmAETMVLIckL8UMStWOUtrblNF4m0xhegR1MEF7U1iJKsOKFmy',NULL,NULL,NULL),(2,'Nicol Martinez',2,'nicolmartinezforero12@gmail.com',NULL,'$2y$12$qbx/xtbJwcj99jDmdEHH5esXsWZqjizL77RxI4QDUwoRylNfGaw.e',NULL,'2025-04-08 07:02:10','2025-04-08 07:02:10'),(3,'Diego Castillo',1,'diego.cas@gmail.com',NULL,'$2y$12$QXkrOOsPFwSDxjei.92zeOovxJfpet12GjLb/d2NboMePwkqiYvUW',NULL,NULL,NULL);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-04-07 22:42:36
