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
  `persona_id_persona` int(10) unsigned NOT NULL,
  `pie_dominate` varchar(10) NOT NULL,
  `nombres_acu` varchar(50) NOT NULL,
  `apellidos_acu` varchar(50) NOT NULL,
  `telefono_acu` bigint(20) NOT NULL,
  `parentezco_alumno` varchar(11) NOT NULL,
  `posicion_id_posicion` varchar(6) NOT NULL,
  `categoria_id_categoria` tinyint(3) unsigned NOT NULL,
  KEY `alumno_persona_id_persona_foreign` (`persona_id_persona`),
  KEY `alumno_posicion_id_posicion_foreign` (`posicion_id_posicion`),
  KEY `alumno_categoria_id_categoria_foreign` (`categoria_id_categoria`),
  CONSTRAINT `alumno_categoria_id_categoria_foreign` FOREIGN KEY (`categoria_id_categoria`) REFERENCES `categoria` (`id_categoria`),
  CONSTRAINT `alumno_persona_id_persona_foreign` FOREIGN KEY (`persona_id_persona`) REFERENCES `persona` (`id_persona`),
  CONSTRAINT `alumno_posicion_id_posicion_foreign` FOREIGN KEY (`posicion_id_posicion`) REFERENCES `posicion` (`id_posicion`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla atsanetphp.alumno: ~0 rows (aproximadamente)
DELETE FROM `alumno`;

-- Volcando estructura para tabla atsanetphp.categoria
CREATE TABLE IF NOT EXISTS `categoria` (
  `id_categoria` tinyint(3) unsigned NOT NULL,
  `nom_categoria` varchar(20) NOT NULL,
  PRIMARY KEY (`id_categoria`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla atsanetphp.categoria: ~0 rows (aproximadamente)
DELETE FROM `categoria`;

-- Volcando estructura para tabla atsanetphp.eps
CREATE TABLE IF NOT EXISTS `eps` (
  `id_eps` tinyint(4) NOT NULL,
  `eps` varchar(15) NOT NULL,
  PRIMARY KEY (`id_eps`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla atsanetphp.eps: ~10 rows (aproximadamente)
DELETE FROM `eps`;
INSERT INTO `eps` (`id_eps`, `eps`) VALUES
	(1, 'Sura'),
	(2, 'Coomeva'),
	(3, 'Compensar'),
	(4, 'Sanitas'),
	(5, 'Famisanar'),
	(6, 'Cafesalud'),
	(7, 'Salud Total'),
	(8, 'Medimás'),
	(9, 'Nueva EPS'),
	(10, 'Coosalud');

-- Volcando estructura para tabla atsanetphp.genero
CREATE TABLE IF NOT EXISTS `genero` (
  `id_genero` tinyint(4) NOT NULL,
  `genero` varchar(1) NOT NULL,
  PRIMARY KEY (`id_genero`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla atsanetphp.genero: ~2 rows (aproximadamente)
DELETE FROM `genero`;
INSERT INTO `genero` (`id_genero`, `genero`) VALUES
	(1, 'M'),
	(2, 'F');

-- Volcando estructura para tabla atsanetphp.migrations
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla atsanetphp.migrations: ~12 rows (aproximadamente)
DELETE FROM `migrations`;
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
	(1, '2014_10_12_100000_create_password_resets_table', 1),
	(2, '2025_04_04_004918_create_genero_table', 1),
	(3, '2025_04_04_005736_create_rh_table', 1),
	(4, '2025_04_04_010144_create_eps_table', 1),
	(5, '2025_04_04_034414_create_persona_table', 1),
	(6, '2025_04_04_053641_create_posicion_table', 1),
	(7, '2025_04_04_054029_create_categoria_table', 1),
	(8, '2025_04_04_054536_create_acudiente_table', 1),
	(9, '2025_04_04_065743_create_tipo_personal_table', 1),
	(10, '2025_04_04_072125_create_personal_t_table', 1),
	(11, '2025_04_04_224640_create_alumno_table', 1),
	(12, '2025_04_05_175659_create_sessions_table', 1);

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
  `id_persona` int(10) unsigned NOT NULL,
  `tipo_id` varchar(12) NOT NULL,
  `nombres` varchar(50) NOT NULL,
  `apellidos` varchar(50) NOT NULL,
  `edad_persona` tinyint(4) NOT NULL,
  `direccion_persona` varchar(100) NOT NULL,
  `telefono_persona` bigint(20) NOT NULL,
  `email_persona` varchar(50) NOT NULL,
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

-- Volcando datos para la tabla atsanetphp.persona: ~1 rows (aproximadamente)
DELETE FROM `persona`;
INSERT INTO `persona` (`id_persona`, `tipo_id`, `nombres`, `apellidos`, `edad_persona`, `direccion_persona`, `telefono_persona`, `email_persona`, `genero_id_genero`, `eps_id_eps`, `rh_id_rh`) VALUES
	(1034466598, 'TI', 'Nicol', 'Martinez', 18, 'cra 12 123 -43 conjunto villa del cerro apto 302', 1235478987, 'nicolsitauwu@gmail.com', 2, 9, 8);

-- Volcando estructura para tabla atsanetphp.personal_t
CREATE TABLE IF NOT EXISTS `personal_t` (
  `persona_id_persona` int(10) unsigned NOT NULL,
  `password_personal_t` varchar(20) NOT NULL,
  `tipo_personal_fk` int(10) unsigned NOT NULL,
  KEY `personal_t_persona_id_persona_foreign` (`persona_id_persona`),
  KEY `personal_t_tipo_personal_fk_foreign` (`tipo_personal_fk`),
  CONSTRAINT `personal_t_persona_id_persona_foreign` FOREIGN KEY (`persona_id_persona`) REFERENCES `persona` (`id_persona`),
  CONSTRAINT `personal_t_tipo_personal_fk_foreign` FOREIGN KEY (`tipo_personal_fk`) REFERENCES `tipo_personal` (`id_tipo_personal`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla atsanetphp.personal_t: ~0 rows (aproximadamente)
DELETE FROM `personal_t`;

-- Volcando estructura para tabla atsanetphp.posicion
CREATE TABLE IF NOT EXISTS `posicion` (
  `id_posicion` varchar(6) NOT NULL,
  `desc_posicion` varchar(50) NOT NULL,
  PRIMARY KEY (`id_posicion`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla atsanetphp.posicion: ~0 rows (aproximadamente)
DELETE FROM `posicion`;

-- Volcando estructura para tabla atsanetphp.rh
CREATE TABLE IF NOT EXISTS `rh` (
  `id_rh` tinyint(4) NOT NULL,
  `rh` varchar(3) NOT NULL,
  PRIMARY KEY (`id_rh`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla atsanetphp.rh: ~8 rows (aproximadamente)
DELETE FROM `rh`;
INSERT INTO `rh` (`id_rh`, `rh`) VALUES
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
	('2kAUpeE1izlYOMyHLaDbaALkkKs6lr7vCBCwbfVc', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/134.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoibldjbXhLdnRVWTVIYlZpQ2hGclZPc2FKZG4yTFFzeFpVM3pEVVhCTiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzA6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9wZXJzb25hcyI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1743953462),
	('TlQOMW6aVoaRdCRZnAHQqB8DeAqpeSQ1flRWGzXK', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/134.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiaHVOMU5zNUVOOUgzSXBtQ0pCY1JrUW1sa2pzZWpzSHc4ZVRkMHEyUCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzA6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9wZXJzb25hcyI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1743907827);

-- Volcando estructura para tabla atsanetphp.tipo_personal
CREATE TABLE IF NOT EXISTS `tipo_personal` (
  `id_tipo_personal` int(10) unsigned NOT NULL,
  `desc_tipo_personal` varchar(30) NOT NULL,
  PRIMARY KEY (`id_tipo_personal`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla atsanetphp.tipo_personal: ~0 rows (aproximadamente)
DELETE FROM `tipo_personal`;

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
