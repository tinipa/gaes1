-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Versión del servidor:         10.4.32-MariaDB - mariadb.org binary distribution
-- SO del servidor:              Win64
-- HeidiSQL Versión:             12.10.0.7000
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Volcando estructura de base de datos para atsanetphp
CREATE DATABASE IF NOT EXISTS `atsanetphp` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci */;
USE `atsanetphp`;

-- Volcando estructura para tabla atsanetphp.alumno
CREATE TABLE IF NOT EXISTS `alumno` (
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

-- Volcando datos para la tabla atsanetphp.alumno: ~3 rows (aproximadamente)
DELETE FROM `alumno`;
INSERT INTO `alumno` (`id`, `pie_dominante`, `nombres_acudiente`, `apellidos_acudiente`, `telefono_acudiente`, `parentesco_alumno`, `posicion_id_posicion`, `categoria_id_categoria`) VALUES
	(1, 'derecho', 'Nicol', 'martinez', 3224461312, 'padre', 4, 1),
	(2, 'derecho', 'Nicol', 'martinez', 3224461312, 'padre', 4, 1),
	(4, 'resadsff', 'dsfdssd', 'sdafdsf', 7778884445, 'dsafdsaf', 1, 1);

-- Volcando estructura para tabla atsanetphp.categoria
CREATE TABLE IF NOT EXISTS `categoria` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `desccategoria` varchar(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla atsanetphp.categoria: ~5 rows (aproximadamente)
DELETE FROM `categoria`;
INSERT INTO `categoria` (`id`, `desccategoria`) VALUES
	(1, '4-7 años'),
	(2, '8-11 años'),
	(3, '12-15 años'),
	(4, '16-17 años'),
	(5, '18 años');

-- Volcando estructura para tabla atsanetphp.eps
CREATE TABLE IF NOT EXISTS `eps` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `desceps` varchar(15) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla atsanetphp.eps: ~10 rows (aproximadamente)
DELETE FROM `eps`;
INSERT INTO `eps` (`id`, `desceps`) VALUES
	(1, 'Sura'),
	(2, 'Coomeva'),
	(3, 'Compensar'),
	(4, 'Sanitas'),
	(5, 'Famisanar'),
	(6, 'Cafesalud'),
	(7, 'Salud Total'),
	(8, 'Medimás'),
	(9, 'Nueva eps'),
	(10, 'Coosalud');

-- Volcando estructura para tabla atsanetphp.genero
CREATE TABLE IF NOT EXISTS `genero` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `descgenero` varchar(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla atsanetphp.genero: ~2 rows (aproximadamente)
DELETE FROM `genero`;
INSERT INTO `genero` (`id`, `descgenero`) VALUES
	(1, 'M'),
	(2, 'F');

-- Volcando estructura para tabla atsanetphp.migrations
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla atsanetphp.migrations: ~11 rows (aproximadamente)
DELETE FROM `migrations`;
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
	(1, '2014_10_12_100000_create_password_resets_table', 1),
	(2, '2025_04_04_004918_create_genero_table', 1),
	(3, '2025_04_04_005736_create_rh_table', 1),
	(4, '2025_04_04_010144_create_eps_table', 1),
	(5, '2025_04_04_054029_create_categoria_table', 1),
	(6, '2025_04_04_065743_create_tipo_personal_table', 1),
	(7, '2025_04_05_175659_create_sessions_table', 1),
	(8, '2025_04_07_022510_create_posicion_table', 1),
	(9, '2025_04_07_022953_create_persona_table', 1),
	(10, '2025_04_07_023248_create_personal_t_table', 1),
	(11, '2025_04_07_023329_create_alumno_table', 1);

-- Volcando estructura para tabla atsanetphp.password_resets
CREATE TABLE IF NOT EXISTS `password_resets` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla atsanetphp.password_resets: ~0 rows (aproximadamente)
DELETE FROM `password_resets`;

-- Volcando estructura para tabla atsanetphp.persona
CREATE TABLE IF NOT EXISTS `persona` (
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
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla atsanetphp.persona: ~4 rows (aproximadamente)
DELETE FROM `persona`;
INSERT INTO `persona` (`id`, `id_persona`, `tipo_id`, `nombres`, `apellidos`, `edad_persona`, `direccion_persona`, `telefono_persona`, `email_persona`, `genero_id_genero`, `eps_id_eps`, `rh_id_rh`) VALUES
	(1, 1034466598, 'CC', 'Nicol', 'martinez', 34, 'Cll 45d sur 3g este', 3224461312, 'nicolmartinezforero12@gmailcom', 1, 1, 1),
	(2, 99999999, 'TI', 'Nicol', 'martinez', 18, 'Cll 45d sur 3g este', 3224461312, 'nicolmartinezforero12@gmailcom', 2, 1, 3),
	(3, 1234567893, 'TI', 'Nicol', 'martinez', 18, 'Cll 45d sur 3g este', 3224461312, 'nicolmartinezforero12@gmailcom', 1, 7, 1),
	(4, 1031133469, 'cc', 'juan', 'sadad', 78, 'fdsfdsgdgdfsgsdfg', 9999998887, 'tin@live.com', 1, 1, 1);

-- Volcando estructura para tabla atsanetphp.personal_t
CREATE TABLE IF NOT EXISTS `personal_t` (
  `id` int(10) unsigned NOT NULL,
  `password` varchar(20) NOT NULL,
  `tipo_personal_fk` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `personal_t_tipo_personal_fk_foreign` (`tipo_personal_fk`),
  CONSTRAINT `personal_t_id_foreign` FOREIGN KEY (`id`) REFERENCES `persona` (`id`),
  CONSTRAINT `personal_t_tipo_personal_fk_foreign` FOREIGN KEY (`tipo_personal_fk`) REFERENCES `tipo_personal` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla atsanetphp.personal_t: ~0 rows (aproximadamente)
DELETE FROM `personal_t`;
INSERT INTO `personal_t` (`id`, `password`, `tipo_personal_fk`) VALUES
	(3, '12345678', 1);

-- Volcando estructura para tabla atsanetphp.posicion
CREATE TABLE IF NOT EXISTS `posicion` (
  `id_posicion` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `descposicion` varchar(50) NOT NULL,
  PRIMARY KEY (`id_posicion`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla atsanetphp.posicion: ~7 rows (aproximadamente)
DELETE FROM `posicion`;
INSERT INTO `posicion` (`id_posicion`, `descposicion`) VALUES
	(1, 'Portero'),
	(2, 'Delantero Extremo'),
	(3, 'Delantero Central'),
	(4, 'Defensor Lateral'),
	(5, 'Defensor Central'),
	(6, 'Centrocampista Ofensivo'),
	(7, 'Centrocampista Defensivo');

-- Volcando estructura para tabla atsanetphp.rh
CREATE TABLE IF NOT EXISTS `rh` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `descrh` varchar(3) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla atsanetphp.rh: ~8 rows (aproximadamente)
DELETE FROM `rh`;
INSERT INTO `rh` (`id`, `descrh`) VALUES
	(1, 'A+'),
	(2, 'A-'),
	(3, 'B+'),
	(4, 'B-'),
	(5, 'O+'),
	(6, 'O-'),
	(7, 'AB+'),
	(8, 'AB-');

-- Volcando estructura para tabla atsanetphp.sessions
CREATE TABLE IF NOT EXISTS `sessions` (
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

-- Volcando datos para la tabla atsanetphp.sessions: ~2 rows (aproximadamente)
DELETE FROM `sessions`;
INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
	('6BeiCv8aegTU8IpJiCSoSXnZpc2IwgihThjFABOQ', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/134.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiZDJBeHZwWnlxcHZuWDEwQWZNVWRBZnNJOGdsM2JqWXkzYTFWV3BJaSI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzI6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9wZXJzb25hbF90Ijt9fQ==', 1744060694),
	('OOI3mcjCbKmmwHOlSyptp6FIaU4nYrgbQBY7BTiu', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/134.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiUzNpcEpxcU5mcW9BUE5lczZQSUhldXFObU93R2VKOGpmMWk1Tno4cSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mzk6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9wZXJzb25hbF90L2NyZWF0ZSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1744067385);

-- Volcando estructura para tabla atsanetphp.tipo_personal
CREATE TABLE IF NOT EXISTS `tipo_personal` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `desctipo_personal` varchar(30) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla atsanetphp.tipo_personal: ~2 rows (aproximadamente)
DELETE FROM `tipo_personal`;
INSERT INTO `tipo_personal` (`id`, `desctipo_personal`) VALUES
	(1, 'Administrador'),
	(2, 'Entrenador');

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
