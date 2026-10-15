-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Versión del servidor:         12.3.2-MariaDB-ubu2404 - mariadb.org binary distribution
-- SO del servidor:              debian-linux-gnu
-- HeidiSQL Versión:             12.17.0.7270
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Volcando estructura de base de datos para procrastinacion
CREATE DATABASE IF NOT EXISTS `procrastinacion` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_uca1400_ai_ci */;
USE `procrastinacion`;

-- Volcando estructura para tabla procrastinacion.educacion
CREATE TABLE IF NOT EXISTS `educacion` (
  `educa_cod` tinyint(3) unsigned NOT NULL AUTO_INCREMENT,
  `educa_des` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`educa_cod`),
  UNIQUE KEY `educa_des` (`educa_des`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;

-- Volcando datos para la tabla procrastinacion.educacion: ~6 rows (aproximadamente)
INSERT INTO `educacion` (`educa_cod`, `educa_des`) VALUES
	(1, 'Undergraduate');
INSERT INTO `educacion` (`educa_cod`, `educa_des`) VALUES
	(2, 'Postgraduate');
INSERT INTO `educacion` (`educa_cod`, `educa_des`) VALUES
	(3, 'High school');
INSERT INTO `educacion` (`educa_cod`, `educa_des`) VALUES
	(4, 'Doctoral');
INSERT INTO `educacion` (`educa_cod`, `educa_des`) VALUES
	(5, 'Diploma');
INSERT INTO `educacion` (`educa_cod`, `educa_des`) VALUES
	(6, 'Doctorate');

-- Volcando estructura para tabla procrastinacion.estado_laboral
CREATE TABLE IF NOT EXISTS `estado_laboral` (
  `estlab_cod` tinyint(3) unsigned NOT NULL AUTO_INCREMENT,
  `estlab_des` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`estlab_cod`),
  UNIQUE KEY `estlab_des` (`estlab_des`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;

-- Volcando datos para la tabla procrastinacion.estado_laboral: ~8 rows (aproximadamente)
INSERT INTO `estado_laboral` (`estlab_cod`, `estlab_des`) VALUES
	(1, 'Student');
INSERT INTO `estado_laboral` (`estlab_cod`, `estlab_des`) VALUES
	(2, 'Full-time employed');
INSERT INTO `estado_laboral` (`estlab_cod`, `estlab_des`) VALUES
	(3, 'Retired');
INSERT INTO `estado_laboral` (`estlab_cod`, `estlab_des`) VALUES
	(4, 'Self-employed');
INSERT INTO `estado_laboral` (`estlab_cod`, `estlab_des`) VALUES
	(5, 'Part-time employed');
INSERT INTO `estado_laboral` (`estlab_cod`, `estlab_des`) VALUES
	(6, 'Freelancer');
INSERT INTO `estado_laboral` (`estlab_cod`, `estlab_des`) VALUES
	(7, 'Job seeker');
INSERT INTO `estado_laboral` (`estlab_cod`, `estlab_des`) VALUES
	(8, 'Homemaker/caregiver');

-- Volcando estructura para tabla procrastinacion.generos
CREATE TABLE IF NOT EXISTS `generos` (
  `gene_cod` tinyint(3) unsigned NOT NULL AUTO_INCREMENT,
  `gene_des` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`gene_cod`),
  UNIQUE KEY `gene_des` (`gene_des`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;

-- Volcando datos para la tabla procrastinacion.generos: ~3 rows (aproximadamente)
INSERT INTO `generos` (`gene_cod`, `gene_des`) VALUES
	(1, 'Male');
INSERT INTO `generos` (`gene_cod`, `gene_des`) VALUES
	(2, 'Female');
INSERT INTO `generos` (`gene_cod`, `gene_des`) VALUES
	(3, 'Non-binary');

-- Volcando estructura para tabla procrastinacion.ocupacion
CREATE TABLE IF NOT EXISTS `ocupacion` (
  `ocup_codi` tinyint(3) unsigned NOT NULL AUTO_INCREMENT,
  `ocup_desc` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`ocup_codi`),
  UNIQUE KEY `ocup_desc` (`ocup_desc`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;

-- Volcando datos para la tabla procrastinacion.ocupacion: ~13 rows (aproximadamente)
INSERT INTO `ocupacion` (`ocup_codi`, `ocup_desc`) VALUES
	(1, 'Education');
INSERT INTO `ocupacion` (`ocup_codi`, `ocup_desc`) VALUES
	(2, 'Healthcare');
INSERT INTO `ocupacion` (`ocup_codi`, `ocup_desc`) VALUES
	(3, 'Technology');
INSERT INTO `ocupacion` (`ocup_codi`, `ocup_desc`) VALUES
	(4, 'Research');
INSERT INTO `ocupacion` (`ocup_codi`, `ocup_desc`) VALUES
	(5, 'Other');
INSERT INTO `ocupacion` (`ocup_codi`, `ocup_desc`) VALUES
	(6, 'Finance');
INSERT INTO `ocupacion` (`ocup_codi`, `ocup_desc`) VALUES
	(7, 'Creative');
INSERT INTO `ocupacion` (`ocup_codi`, `ocup_desc`) VALUES
	(8, 'Government');
INSERT INTO `ocupacion` (`ocup_codi`, `ocup_desc`) VALUES
	(9, 'Retail');
INSERT INTO `ocupacion` (`ocup_codi`, `ocup_desc`) VALUES
	(10, 'Business');
INSERT INTO `ocupacion` (`ocup_codi`, `ocup_desc`) VALUES
	(11, 'Engineering');
INSERT INTO `ocupacion` (`ocup_codi`, `ocup_desc`) VALUES
	(12, 'Hospitality');
INSERT INTO `ocupacion` (`ocup_codi`, `ocup_desc`) VALUES
	(13, 'Manufacturing');

-- Volcando estructura para tabla procrastinacion.participantes
CREATE TABLE IF NOT EXISTS `participantes` (
  `parti_cod` smallint(4) unsigned NOT NULL AUTO_INCREMENT,
  `parti_id` varchar(10) DEFAULT NULL,
  `parti_fuent` varchar(20) DEFAULT NULL,
  `parti_flag` varchar(1) DEFAULT NULL,
  `parti_age` tinyint(2) unsigned NOT NULL,
  `parti_ash` decimal(10,1) DEFAULT NULL,
  `parti_gen` tinyint(3) unsigned DEFAULT NULL,
  `parti_ocu` tinyint(3) unsigned DEFAULT NULL,
  `parti_esla` tinyint(3) unsigned DEFAULT NULL,
  `parti_edu` tinyint(3) unsigned DEFAULT NULL,
  `parti_rang` tinyint(3) unsigned DEFAULT NULL,
  PRIMARY KEY (`parti_cod`),
  UNIQUE KEY `parti_id` (`parti_id`),
  KEY `idx_participantes_edad` (`parti_age`),
  KEY `idx_participantes_genero` (`parti_gen`),
  KEY `idx_participantes_rango_edad` (`parti_rang`),
  KEY `idx_participantes_educacion` (`parti_edu`),
  KEY `idx_participantes_estado_laboral` (`parti_esla`),
  KEY `idx_participantes_ocupacion` (`parti_ocu`),
  CONSTRAINT `1` FOREIGN KEY (`parti_gen`) REFERENCES `generos` (`gene_cod`),
  CONSTRAINT `2` FOREIGN KEY (`parti_ocu`) REFERENCES `ocupacion` (`ocup_codi`),
  CONSTRAINT `3` FOREIGN KEY (`parti_esla`) REFERENCES `estado_laboral` (`estlab_cod`),
  CONSTRAINT `4` FOREIGN KEY (`parti_edu`) REFERENCES `educacion` (`educa_cod`),
  CONSTRAINT `5` FOREIGN KEY (`parti_rang`) REFERENCES `Rango_edad` (`randad_cod`)
) ENGINE=InnoDB AUTO_INCREMENT=301 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;

-- Volcando datos para la tabla procrastinacion.participantes: ~300 rows (aproximadamente)
INSERT INTO `participantes` (`parti_cod`, `parti_id`, `parti_fuent`, `parti_flag`, `parti_age`, `parti_ash`, `parti_gen`, `parti_ocu`, `parti_esla`, `parti_edu`, `parti_rang`) VALUES
	(1, '\nP0001', 'synthetic_ai', '1', 19, 6.5, 1, 1, 1, 1, 1);
INSERT INTO `participantes` (`parti_cod`, `parti_id`, `parti_fuent`, `parti_flag`, `parti_age`, `parti_ash`, `parti_gen`, `parti_ocu`, `parti_esla`, `parti_edu`, `parti_rang`) VALUES
	(2, '\nP0002', 'synthetic_ai', '1', 34, 7.0, 2, 2, 2, 2, 2);
INSERT INTO `participantes` (`parti_cod`, `parti_id`, `parti_fuent`, `parti_flag`, `parti_age`, `parti_ash`, `parti_gen`, `parti_ocu`, `parti_esla`, `parti_edu`, `parti_rang`) VALUES
	(3, '\nP0003', 'synthetic_ai', '1', 22, 6.0, 2, 1, 1, 1, 3);
INSERT INTO `participantes` (`parti_cod`, `parti_id`, `parti_fuent`, `parti_flag`, `parti_age`, `parti_ash`, `parti_gen`, `parti_ocu`, `parti_esla`, `parti_edu`, `parti_rang`) VALUES
	(4, '\nP0004', 'synthetic_ai', '1', 45, 7.5, 1, 3, 2, 1, 4);
INSERT INTO `participantes` (`parti_cod`, `parti_id`, `parti_fuent`, `parti_flag`, `parti_age`, `parti_ash`, `parti_gen`, `parti_ocu`, `parti_esla`, `parti_edu`, `parti_rang`) VALUES
	(5, '\nP0005', 'synthetic_ai', '1', 28, 6.5, 3, 4, 2, 2, 5);
INSERT INTO `participantes` (`parti_cod`, `parti_id`, `parti_fuent`, `parti_flag`, `parti_age`, `parti_ash`, `parti_gen`, `parti_ocu`, `parti_esla`, `parti_edu`, `parti_rang`) VALUES
	(6, '\nP0006', 'synthetic_ai', '1', 62, 8.0, 2, 5, 3, 1, 6);
INSERT INTO `participantes` (`parti_cod`, `parti_id`, `parti_fuent`, `parti_flag`, `parti_age`, `parti_ash`, `parti_gen`, `parti_ocu`, `parti_esla`, `parti_edu`, `parti_rang`) VALUES
	(7, '\nP0007', 'synthetic_ai', '1', 25, 6.0, 1, 6, 2, 1, 5);
INSERT INTO `participantes` (`parti_cod`, `parti_id`, `parti_fuent`, `parti_flag`, `parti_age`, `parti_ash`, `parti_gen`, `parti_ocu`, `parti_esla`, `parti_edu`, `parti_rang`) VALUES
	(8, '\nP0008', 'synthetic_ai', '1', 31, 7.0, 2, 7, 4, 2, 2);
INSERT INTO `participantes` (`parti_cod`, `parti_id`, `parti_fuent`, `parti_flag`, `parti_age`, `parti_ash`, `parti_gen`, `parti_ocu`, `parti_esla`, `parti_edu`, `parti_rang`) VALUES
	(9, '\nP0009', 'synthetic_ai', '1', 20, 6.0, 1, 1, 1, 3, 1);
INSERT INTO `participantes` (`parti_cod`, `parti_id`, `parti_fuent`, `parti_flag`, `parti_age`, `parti_ash`, `parti_gen`, `parti_ocu`, `parti_esla`, `parti_edu`, `parti_rang`) VALUES
	(10, '\nP0010', 'synthetic_ai', '1', 52, 7.5, 1, 8, 2, 2, 7);
INSERT INTO `participantes` (`parti_cod`, `parti_id`, `parti_fuent`, `parti_flag`, `parti_age`, `parti_ash`, `parti_gen`, `parti_ocu`, `parti_esla`, `parti_edu`, `parti_rang`) VALUES
	(11, '\nP0011', 'synthetic_ai', '1', 27, 7.0, 2, 1, 2, 1, 5);
INSERT INTO `participantes` (`parti_cod`, `parti_id`, `parti_fuent`, `parti_flag`, `parti_age`, `parti_ash`, `parti_gen`, `parti_ocu`, `parti_esla`, `parti_edu`, `parti_rang`) VALUES
	(12, '\nP0012', 'synthetic_ai', '1', 38, 6.5, 1, 4, 2, 4, 2);
INSERT INTO `participantes` (`parti_cod`, `parti_id`, `parti_fuent`, `parti_flag`, `parti_age`, `parti_ash`, `parti_gen`, `parti_ocu`, `parti_esla`, `parti_edu`, `parti_rang`) VALUES
	(13, '\nP0013', 'synthetic_ai', '1', 23, 5.5, 2, 9, 5, 1, 3);
INSERT INTO `participantes` (`parti_cod`, `parti_id`, `parti_fuent`, `parti_flag`, `parti_age`, `parti_ash`, `parti_gen`, `parti_ocu`, `parti_esla`, `parti_edu`, `parti_rang`) VALUES
	(14, '\nP0014', 'synthetic_ai', '1', 47, 7.0, 2, 2, 2, 2, 4);
INSERT INTO `participantes` (`parti_cod`, `parti_id`, `parti_fuent`, `parti_flag`, `parti_age`, `parti_ash`, `parti_gen`, `parti_ocu`, `parti_esla`, `parti_edu`, `parti_rang`) VALUES
	(15, '\nP0015', 'synthetic_ai', '1', 29, 6.5, 1, 3, 2, 2, 5);
INSERT INTO `participantes` (`parti_cod`, `parti_id`, `parti_fuent`, `parti_flag`, `parti_age`, `parti_ash`, `parti_gen`, `parti_ocu`, `parti_esla`, `parti_edu`, `parti_rang`) VALUES
	(16, '\nP0016', 'synthetic_ai', '1', 65, 8.5, 1, 5, 3, 3, 6);
INSERT INTO `participantes` (`parti_cod`, `parti_id`, `parti_fuent`, `parti_flag`, `parti_age`, `parti_ash`, `parti_gen`, `parti_ocu`, `parti_esla`, `parti_edu`, `parti_rang`) VALUES
	(17, '\nP0017', 'synthetic_ai', '1', 33, 7.0, 2, 10, 2, 1, 2);
INSERT INTO `participantes` (`parti_cod`, `parti_id`, `parti_fuent`, `parti_flag`, `parti_age`, `parti_ash`, `parti_gen`, `parti_ocu`, `parti_esla`, `parti_edu`, `parti_rang`) VALUES
	(18, '\nP0018', 'synthetic_ai', '1', 21, 6.0, 1, 1, 1, 1, 3);
INSERT INTO `participantes` (`parti_cod`, `parti_id`, `parti_fuent`, `parti_flag`, `parti_age`, `parti_ash`, `parti_gen`, `parti_ocu`, `parti_esla`, `parti_edu`, `parti_rang`) VALUES
	(19, '\nP0019', 'synthetic_ai', '1', 55, 7.5, 2, 1, 2, 2, 7);
INSERT INTO `participantes` (`parti_cod`, `parti_id`, `parti_fuent`, `parti_flag`, `parti_age`, `parti_ash`, `parti_gen`, `parti_ocu`, `parti_esla`, `parti_edu`, `parti_rang`) VALUES
	(20, '\nP0020', 'synthetic_ai', '1', 26, 6.5, 3, 7, 6, 2, 5);
INSERT INTO `participantes` (`parti_cod`, `parti_id`, `parti_fuent`, `parti_flag`, `parti_age`, `parti_ash`, `parti_gen`, `parti_ocu`, `parti_esla`, `parti_edu`, `parti_rang`) VALUES
	(21, '\nP0021', 'synthetic_ai', '1', 41, 7.0, 1, 11, 2, 1, 4);
INSERT INTO `participantes` (`parti_cod`, `parti_id`, `parti_fuent`, `parti_flag`, `parti_age`, `parti_ash`, `parti_gen`, `parti_ocu`, `parti_esla`, `parti_edu`, `parti_rang`) VALUES
	(22, '\nP0022', 'synthetic_ai', '1', 19, 7.0, 2, 1, 1, 3, 1);
INSERT INTO `participantes` (`parti_cod`, `parti_id`, `parti_fuent`, `parti_flag`, `parti_age`, `parti_ash`, `parti_gen`, `parti_ocu`, `parti_esla`, `parti_edu`, `parti_rang`) VALUES
	(23, '\nP0023', 'synthetic_ai', '1', 37, 6.0, 1, 4, 2, 4, 2);
INSERT INTO `participantes` (`parti_cod`, `parti_id`, `parti_fuent`, `parti_flag`, `parti_age`, `parti_ash`, `parti_gen`, `parti_ocu`, `parti_esla`, `parti_edu`, `parti_rang`) VALUES
	(24, '\nP0024', 'synthetic_ai', '1', 58, 7.0, 2, 9, 5, 1, 7);
INSERT INTO `participantes` (`parti_cod`, `parti_id`, `parti_fuent`, `parti_flag`, `parti_age`, `parti_ash`, `parti_gen`, `parti_ocu`, `parti_esla`, `parti_edu`, `parti_rang`) VALUES
	(25, '\nP0025', 'synthetic_ai', '1', 24, 6.5, 1, 5, 7, 1, 3);
INSERT INTO `participantes` (`parti_cod`, `parti_id`, `parti_fuent`, `parti_flag`, `parti_age`, `parti_ash`, `parti_gen`, `parti_ocu`, `parti_esla`, `parti_edu`, `parti_rang`) VALUES
	(26, '\nP0026', 'synthetic_ai', '1', 43, 7.0, 2, 6, 2, 2, 4);
INSERT INTO `participantes` (`parti_cod`, `parti_id`, `parti_fuent`, `parti_flag`, `parti_age`, `parti_ash`, `parti_gen`, `parti_ocu`, `parti_esla`, `parti_edu`, `parti_rang`) VALUES
	(27, '\nP0027', 'synthetic_ai', '1', 30, 6.5, 1, 12, 2, 1, 2);
INSERT INTO `participantes` (`parti_cod`, `parti_id`, `parti_fuent`, `parti_flag`, `parti_age`, `parti_ash`, `parti_gen`, `parti_ocu`, `parti_esla`, `parti_edu`, `parti_rang`) VALUES
	(28, '\nP0028', 'synthetic_ai', '1', 18, 6.5, 2, 1, 1, 3, 1);
INSERT INTO `participantes` (`parti_cod`, `parti_id`, `parti_fuent`, `parti_flag`, `parti_age`, `parti_ash`, `parti_gen`, `parti_ocu`, `parti_esla`, `parti_edu`, `parti_rang`) VALUES
	(29, '\nP0029', 'synthetic_ai', '1', 50, 7.0, 1, 3, 2, 2, 7);
INSERT INTO `participantes` (`parti_cod`, `parti_id`, `parti_fuent`, `parti_flag`, `parti_age`, `parti_ash`, `parti_gen`, `parti_ocu`, `parti_esla`, `parti_edu`, `parti_rang`) VALUES
	(30, '\nP0030', 'synthetic_ai', '1', 35, 7.5, 2, 10, 4, 1, 2);
INSERT INTO `participantes` (`parti_cod`, `parti_id`, `parti_fuent`, `parti_flag`, `parti_age`, `parti_ash`, `parti_gen`, `parti_ocu`, `parti_esla`, `parti_edu`, `parti_rang`) VALUES
	(31, '\nP0031', 'synthetic_ai', '1', 22, 5.5, 1, 1, 1, 1, 3);
INSERT INTO `participantes` (`parti_cod`, `parti_id`, `parti_fuent`, `parti_flag`, `parti_age`, `parti_ash`, `parti_gen`, `parti_ocu`, `parti_esla`, `parti_edu`, `parti_rang`) VALUES
	(32, '\nP0032', 'synthetic_ai', '1', 46, 7.5, 2, 2, 2, 2, 4);
INSERT INTO `participantes` (`parti_cod`, `parti_id`, `parti_fuent`, `parti_flag`, `parti_age`, `parti_ash`, `parti_gen`, `parti_ocu`, `parti_esla`, `parti_edu`, `parti_rang`) VALUES
	(33, '\nP0033', 'synthetic_ai', '1', 28, 6.5, 1, 13, 2, 1, 5);
INSERT INTO `participantes` (`parti_cod`, `parti_id`, `parti_fuent`, `parti_flag`, `parti_age`, `parti_ash`, `parti_gen`, `parti_ocu`, `parti_esla`, `parti_edu`, `parti_rang`) VALUES
	(34, '\nP0034', 'synthetic_ai', '1', 67, 8.0, 2, 5, 3, 3, 6);
INSERT INTO `participantes` (`parti_cod`, `parti_id`, `parti_fuent`, `parti_flag`, `parti_age`, `parti_ash`, `parti_gen`, `parti_ocu`, `parti_esla`, `parti_edu`, `parti_rang`) VALUES
	(35, '\nP0035', 'synthetic_ai', '1', 32, 6.5, 1, 3, 6, 2, 2);
INSERT INTO `participantes` (`parti_cod`, `parti_id`, `parti_fuent`, `parti_flag`, `parti_age`, `parti_ash`, `parti_gen`, `parti_ocu`, `parti_esla`, `parti_edu`, `parti_rang`) VALUES
	(36, '\nP0036', 'synthetic_ai', '1', 20, 6.0, 2, 1, 1, 3, 1);
INSERT INTO `participantes` (`parti_cod`, `parti_id`, `parti_fuent`, `parti_flag`, `parti_age`, `parti_ash`, `parti_gen`, `parti_ocu`, `parti_esla`, `parti_edu`, `parti_rang`) VALUES
	(37, '\nP0037', 'synthetic_ai', '1', 53, 7.5, 1, 8, 2, 1, 7);
INSERT INTO `participantes` (`parti_cod`, `parti_id`, `parti_fuent`, `parti_flag`, `parti_age`, `parti_ash`, `parti_gen`, `parti_ocu`, `parti_esla`, `parti_edu`, `parti_rang`) VALUES
	(38, '\nP0038', 'synthetic_ai', '1', 27, 7.0, 2, 2, 2, 2, 5);
INSERT INTO `participantes` (`parti_cod`, `parti_id`, `parti_fuent`, `parti_flag`, `parti_age`, `parti_ash`, `parti_gen`, `parti_ocu`, `parti_esla`, `parti_edu`, `parti_rang`) VALUES
	(39, '\nP0039', 'synthetic_ai', '1', 42, 7.0, 1, 11, 2, 1, 4);
INSERT INTO `participantes` (`parti_cod`, `parti_id`, `parti_fuent`, `parti_flag`, `parti_age`, `parti_ash`, `parti_gen`, `parti_ocu`, `parti_esla`, `parti_edu`, `parti_rang`) VALUES
	(40, '\nP0040', 'synthetic_ai', '1', 24, 5.5, 2, 12, 5, 1, 3);
INSERT INTO `participantes` (`parti_cod`, `parti_id`, `parti_fuent`, `parti_flag`, `parti_age`, `parti_ash`, `parti_gen`, `parti_ocu`, `parti_esla`, `parti_edu`, `parti_rang`) VALUES
	(41, '\nP0041', 'synthetic_ai', '1', 60, 7.5, 2, 1, 5, 1, 6);
INSERT INTO `participantes` (`parti_cod`, `parti_id`, `parti_fuent`, `parti_flag`, `parti_age`, `parti_ash`, `parti_gen`, `parti_ocu`, `parti_esla`, `parti_edu`, `parti_rang`) VALUES
	(42, '\nP0042', 'synthetic_ai', '1', 36, 6.5, 1, 4, 2, 4, 2);
INSERT INTO `participantes` (`parti_cod`, `parti_id`, `parti_fuent`, `parti_flag`, `parti_age`, `parti_ash`, `parti_gen`, `parti_ocu`, `parti_esla`, `parti_edu`, `parti_rang`) VALUES
	(43, '\nP0043', 'synthetic_ai', '1', 23, 6.5, 1, 5, 7, 5, 3);
INSERT INTO `participantes` (`parti_cod`, `parti_id`, `parti_fuent`, `parti_flag`, `parti_age`, `parti_ash`, `parti_gen`, `parti_ocu`, `parti_esla`, `parti_edu`, `parti_rang`) VALUES
	(44, '\nP0044', 'synthetic_ai', '1', 48, 7.0, 2, 2, 2, 2, 4);
INSERT INTO `participantes` (`parti_cod`, `parti_id`, `parti_fuent`, `parti_flag`, `parti_age`, `parti_ash`, `parti_gen`, `parti_ocu`, `parti_esla`, `parti_edu`, `parti_rang`) VALUES
	(45, '\nP0045', 'synthetic_ai', '1', 29, 6.0, 1, 3, 2, 1, 5);
INSERT INTO `participantes` (`parti_cod`, `parti_id`, `parti_fuent`, `parti_flag`, `parti_age`, `parti_ash`, `parti_gen`, `parti_ocu`, `parti_esla`, `parti_edu`, `parti_rang`) VALUES
	(46, '\nP0046', 'synthetic_ai', '1', 57, 7.5, 2, 1, 2, 1, 7);
INSERT INTO `participantes` (`parti_cod`, `parti_id`, `parti_fuent`, `parti_flag`, `parti_age`, `parti_ash`, `parti_gen`, `parti_ocu`, `parti_esla`, `parti_edu`, `parti_rang`) VALUES
	(47, '\nP0047', 'synthetic_ai', '1', 26, 6.5, 2, 6, 2, 1, 5);
INSERT INTO `participantes` (`parti_cod`, `parti_id`, `parti_fuent`, `parti_flag`, `parti_age`, `parti_ash`, `parti_gen`, `parti_ocu`, `parti_esla`, `parti_edu`, `parti_rang`) VALUES
	(48, '\nP0048', 'synthetic_ai', '1', 39, 7.0, 1, 10, 2, 1, 2);
INSERT INTO `participantes` (`parti_cod`, `parti_id`, `parti_fuent`, `parti_flag`, `parti_age`, `parti_ash`, `parti_gen`, `parti_ocu`, `parti_esla`, `parti_edu`, `parti_rang`) VALUES
	(49, '\nP0049', 'synthetic_ai', '1', 21, 6.0, 2, 1, 1, 1, 3);
INSERT INTO `participantes` (`parti_cod`, `parti_id`, `parti_fuent`, `parti_flag`, `parti_age`, `parti_ash`, `parti_gen`, `parti_ocu`, `parti_esla`, `parti_edu`, `parti_rang`) VALUES
	(50, '\nP0050', 'synthetic_ai', '1', 44, 7.0, 1, 3, 2, 2, 4);
INSERT INTO `participantes` (`parti_cod`, `parti_id`, `parti_fuent`, `parti_flag`, `parti_age`, `parti_ash`, `parti_gen`, `parti_ocu`, `parti_esla`, `parti_edu`, `parti_rang`) VALUES
	(51, '\nP0051', 'synthetic_ai', '1', 31, 7.0, 2, 7, 4, 2, 2);
INSERT INTO `participantes` (`parti_cod`, `parti_id`, `parti_fuent`, `parti_flag`, `parti_age`, `parti_ash`, `parti_gen`, `parti_ocu`, `parti_esla`, `parti_edu`, `parti_rang`) VALUES
	(52, '\nP0052', 'synthetic_ai', '1', 68, 8.5, 1, 5, 3, 3, 6);
INSERT INTO `participantes` (`parti_cod`, `parti_id`, `parti_fuent`, `parti_flag`, `parti_age`, `parti_ash`, `parti_gen`, `parti_ocu`, `parti_esla`, `parti_edu`, `parti_rang`) VALUES
	(53, '\nP0053', 'synthetic_ai', '1', 25, 6.0, 1, 7, 6, 1, 5);
INSERT INTO `participantes` (`parti_cod`, `parti_id`, `parti_fuent`, `parti_flag`, `parti_age`, `parti_ash`, `parti_gen`, `parti_ocu`, `parti_esla`, `parti_edu`, `parti_rang`) VALUES
	(54, '\nP0054', 'synthetic_ai', '1', 49, 7.0, 2, 8, 2, 1, 4);
INSERT INTO `participantes` (`parti_cod`, `parti_id`, `parti_fuent`, `parti_flag`, `parti_age`, `parti_ash`, `parti_gen`, `parti_ocu`, `parti_esla`, `parti_edu`, `parti_rang`) VALUES
	(55, '\nP0055', 'synthetic_ai', '1', 22, 5.5, 1, 1, 1, 1, 3);
INSERT INTO `participantes` (`parti_cod`, `parti_id`, `parti_fuent`, `parti_flag`, `parti_age`, `parti_ash`, `parti_gen`, `parti_ocu`, `parti_esla`, `parti_edu`, `parti_rang`) VALUES
	(56, '\nP0056', 'synthetic_ai', '1', 34, 7.0, 2, 2, 2, 2, 2);
INSERT INTO `participantes` (`parti_cod`, `parti_id`, `parti_fuent`, `parti_flag`, `parti_age`, `parti_ash`, `parti_gen`, `parti_ocu`, `parti_esla`, `parti_edu`, `parti_rang`) VALUES
	(57, '\nP0057', 'synthetic_ai', '1', 72, 8.0, 2, 5, 3, 1, 6);
INSERT INTO `participantes` (`parti_cod`, `parti_id`, `parti_fuent`, `parti_flag`, `parti_age`, `parti_ash`, `parti_gen`, `parti_ocu`, `parti_esla`, `parti_edu`, `parti_rang`) VALUES
	(58, '\nP0058', 'synthetic_ai', '1', 27, 6.5, 1, 13, 2, 5, 5);
INSERT INTO `participantes` (`parti_cod`, `parti_id`, `parti_fuent`, `parti_flag`, `parti_age`, `parti_ash`, `parti_gen`, `parti_ocu`, `parti_esla`, `parti_edu`, `parti_rang`) VALUES
	(59, '\nP0059', 'synthetic_ai', '1', 33, 7.0, 2, 10, 2, 1, 2);
INSERT INTO `participantes` (`parti_cod`, `parti_id`, `parti_fuent`, `parti_flag`, `parti_age`, `parti_ash`, `parti_gen`, `parti_ocu`, `parti_esla`, `parti_edu`, `parti_rang`) VALUES
	(60, '\nP0060', 'synthetic_ai', '1', 19, 6.5, 1, 1, 1, 3, 1);
INSERT INTO `participantes` (`parti_cod`, `parti_id`, `parti_fuent`, `parti_flag`, `parti_age`, `parti_ash`, `parti_gen`, `parti_ocu`, `parti_esla`, `parti_edu`, `parti_rang`) VALUES
	(61, '\nP0061', 'synthetic_ai', '1', 45, 7.5, 2, 6, 2, 2, 4);
INSERT INTO `participantes` (`parti_cod`, `parti_id`, `parti_fuent`, `parti_flag`, `parti_age`, `parti_ash`, `parti_gen`, `parti_ocu`, `parti_esla`, `parti_edu`, `parti_rang`) VALUES
	(62, '\nP0062', 'synthetic_ai', '1', 23, 6.0, 2, 1, 1, 1, 3);
INSERT INTO `participantes` (`parti_cod`, `parti_id`, `parti_fuent`, `parti_flag`, `parti_age`, `parti_ash`, `parti_gen`, `parti_ocu`, `parti_esla`, `parti_edu`, `parti_rang`) VALUES
	(63, '\nP0063', 'synthetic_ai', '1', 38, 6.5, 1, 9, 2, 1, 2);
INSERT INTO `participantes` (`parti_cod`, `parti_id`, `parti_fuent`, `parti_flag`, `parti_age`, `parti_ash`, `parti_gen`, `parti_ocu`, `parti_esla`, `parti_edu`, `parti_rang`) VALUES
	(64, '\nP0064', 'synthetic_ai', '1', 54, 7.5, 2, 2, 2, 2, 7);
INSERT INTO `participantes` (`parti_cod`, `parti_id`, `parti_fuent`, `parti_flag`, `parti_age`, `parti_ash`, `parti_gen`, `parti_ocu`, `parti_esla`, `parti_edu`, `parti_rang`) VALUES
	(65, '\nP0065', 'synthetic_ai', '1', 29, 6.5, 3, 3, 2, 2, 5);
INSERT INTO `participantes` (`parti_cod`, `parti_id`, `parti_fuent`, `parti_flag`, `parti_age`, `parti_ash`, `parti_gen`, `parti_ocu`, `parti_esla`, `parti_edu`, `parti_rang`) VALUES
	(66, '\nP0066', 'synthetic_ai', '1', 61, 8.5, 1, 5, 3, 1, 6);
INSERT INTO `participantes` (`parti_cod`, `parti_id`, `parti_fuent`, `parti_flag`, `parti_age`, `parti_ash`, `parti_gen`, `parti_ocu`, `parti_esla`, `parti_edu`, `parti_rang`) VALUES
	(67, '\nP0067', 'synthetic_ai', '1', 26, 6.5, 1, 11, 2, 1, 5);
INSERT INTO `participantes` (`parti_cod`, `parti_id`, `parti_fuent`, `parti_flag`, `parti_age`, `parti_ash`, `parti_gen`, `parti_ocu`, `parti_esla`, `parti_edu`, `parti_rang`) VALUES
	(68, '\nP0068', 'synthetic_ai', '1', 35, 7.0, 2, 7, 4, 1, 2);
INSERT INTO `participantes` (`parti_cod`, `parti_id`, `parti_fuent`, `parti_flag`, `parti_age`, `parti_ash`, `parti_gen`, `parti_ocu`, `parti_esla`, `parti_edu`, `parti_rang`) VALUES
	(69, '\nP0069', 'synthetic_ai', '1', 42, 6.5, 1, 4, 2, 4, 4);
INSERT INTO `participantes` (`parti_cod`, `parti_id`, `parti_fuent`, `parti_flag`, `parti_age`, `parti_ash`, `parti_gen`, `parti_ocu`, `parti_esla`, `parti_edu`, `parti_rang`) VALUES
	(70, '\nP0070', 'synthetic_ai', '1', 20, 6.0, 2, 1, 1, 3, 1);
INSERT INTO `participantes` (`parti_cod`, `parti_id`, `parti_fuent`, `parti_flag`, `parti_age`, `parti_ash`, `parti_gen`, `parti_ocu`, `parti_esla`, `parti_edu`, `parti_rang`) VALUES
	(71, '\nP0071', 'synthetic_ai', '1', 47, 7.0, 2, 8, 2, 2, 4);
INSERT INTO `participantes` (`parti_cod`, `parti_id`, `parti_fuent`, `parti_flag`, `parti_age`, `parti_ash`, `parti_gen`, `parti_ocu`, `parti_esla`, `parti_edu`, `parti_rang`) VALUES
	(72, '\nP0072', 'synthetic_ai', '1', 24, 6.0, 1, 5, 7, 5, 3);
INSERT INTO `participantes` (`parti_cod`, `parti_id`, `parti_fuent`, `parti_flag`, `parti_age`, `parti_ash`, `parti_gen`, `parti_ocu`, `parti_esla`, `parti_edu`, `parti_rang`) VALUES
	(73, '\nP0073', 'synthetic_ai', '1', 52, 7.0, 1, 3, 2, 2, 7);
INSERT INTO `participantes` (`parti_cod`, `parti_id`, `parti_fuent`, `parti_flag`, `parti_age`, `parti_ash`, `parti_gen`, `parti_ocu`, `parti_esla`, `parti_edu`, `parti_rang`) VALUES
	(74, '\nP0074', 'synthetic_ai', '1', 30, 7.0, 2, 1, 2, 1, 2);
INSERT INTO `participantes` (`parti_cod`, `parti_id`, `parti_fuent`, `parti_flag`, `parti_age`, `parti_ash`, `parti_gen`, `parti_ocu`, `parti_esla`, `parti_edu`, `parti_rang`) VALUES
	(75, '\nP0075', 'synthetic_ai', '1', 18, 6.5, 1, 1, 1, 3, 1);
INSERT INTO `participantes` (`parti_cod`, `parti_id`, `parti_fuent`, `parti_flag`, `parti_age`, `parti_ash`, `parti_gen`, `parti_ocu`, `parti_esla`, `parti_edu`, `parti_rang`) VALUES
	(76, '\nP0076', 'synthetic_ai', '1', 40, 7.5, 2, 2, 2, 2, 4);
INSERT INTO `participantes` (`parti_cod`, `parti_id`, `parti_fuent`, `parti_flag`, `parti_age`, `parti_ash`, `parti_gen`, `parti_ocu`, `parti_esla`, `parti_edu`, `parti_rang`) VALUES
	(77, '\nP0077', 'synthetic_ai', '1', 28, 7.0, 1, 6, 2, 2, 5);
INSERT INTO `participantes` (`parti_cod`, `parti_id`, `parti_fuent`, `parti_flag`, `parti_age`, `parti_ash`, `parti_gen`, `parti_ocu`, `parti_esla`, `parti_edu`, `parti_rang`) VALUES
	(78, '\nP0078', 'synthetic_ai', '1', 63, 8.0, 2, 5, 3, 5, 6);
INSERT INTO `participantes` (`parti_cod`, `parti_id`, `parti_fuent`, `parti_flag`, `parti_age`, `parti_ash`, `parti_gen`, `parti_ocu`, `parti_esla`, `parti_edu`, `parti_rang`) VALUES
	(79, '\nP0079', 'synthetic_ai', '1', 33, 6.5, 1, 3, 6, 1, 2);
INSERT INTO `participantes` (`parti_cod`, `parti_id`, `parti_fuent`, `parti_flag`, `parti_age`, `parti_ash`, `parti_gen`, `parti_ocu`, `parti_esla`, `parti_edu`, `parti_rang`) VALUES
	(80, '\nP0080', 'synthetic_ai', '1', 21, 5.5, 2, 1, 1, 1, 3);
INSERT INTO `participantes` (`parti_cod`, `parti_id`, `parti_fuent`, `parti_flag`, `parti_age`, `parti_ash`, `parti_gen`, `parti_ocu`, `parti_esla`, `parti_edu`, `parti_rang`) VALUES
	(81, '\nP0081', 'synthetic_ai', '1', 46, 7.5, 1, 11, 2, 1, 4);
INSERT INTO `participantes` (`parti_cod`, `parti_id`, `parti_fuent`, `parti_flag`, `parti_age`, `parti_ash`, `parti_gen`, `parti_ocu`, `parti_esla`, `parti_edu`, `parti_rang`) VALUES
	(82, '\nP0082', 'synthetic_ai', '1', 25, 5.5, 2, 12, 5, 5, 5);
INSERT INTO `participantes` (`parti_cod`, `parti_id`, `parti_fuent`, `parti_flag`, `parti_age`, `parti_ash`, `parti_gen`, `parti_ocu`, `parti_esla`, `parti_edu`, `parti_rang`) VALUES
	(83, '\nP0083', 'synthetic_ai', '1', 37, 7.0, 2, 4, 2, 2, 2);
INSERT INTO `participantes` (`parti_cod`, `parti_id`, `parti_fuent`, `parti_flag`, `parti_age`, `parti_ash`, `parti_gen`, `parti_ocu`, `parti_esla`, `parti_edu`, `parti_rang`) VALUES
	(84, '\nP0084', 'synthetic_ai', '1', 55, 7.5, 1, 8, 2, 2, 7);
INSERT INTO `participantes` (`parti_cod`, `parti_id`, `parti_fuent`, `parti_flag`, `parti_age`, `parti_ash`, `parti_gen`, `parti_ocu`, `parti_esla`, `parti_edu`, `parti_rang`) VALUES
	(85, '\nP0085', 'synthetic_ai', '1', 22, 6.0, 1, 1, 1, 1, 3);
INSERT INTO `participantes` (`parti_cod`, `parti_id`, `parti_fuent`, `parti_flag`, `parti_age`, `parti_ash`, `parti_gen`, `parti_ocu`, `parti_esla`, `parti_edu`, `parti_rang`) VALUES
	(86, '\nP0086', 'synthetic_ai', '1', 43, 7.0, 2, 6, 2, 1, 4);
INSERT INTO `participantes` (`parti_cod`, `parti_id`, `parti_fuent`, `parti_flag`, `parti_age`, `parti_ash`, `parti_gen`, `parti_ocu`, `parti_esla`, `parti_edu`, `parti_rang`) VALUES
	(87, '\nP0087', 'synthetic_ai', '1', 27, 6.5, 1, 3, 2, 1, 5);
INSERT INTO `participantes` (`parti_cod`, `parti_id`, `parti_fuent`, `parti_flag`, `parti_age`, `parti_ash`, `parti_gen`, `parti_ocu`, `parti_esla`, `parti_edu`, `parti_rang`) VALUES
	(88, '\nP0088', 'synthetic_ai', '1', 48, 7.5, 2, 2, 2, 2, 4);
INSERT INTO `participantes` (`parti_cod`, `parti_id`, `parti_fuent`, `parti_flag`, `parti_age`, `parti_ash`, `parti_gen`, `parti_ocu`, `parti_esla`, `parti_edu`, `parti_rang`) VALUES
	(89, '\nP0089', 'synthetic_ai', '1', 31, 6.5, 1, 9, 2, 5, 2);
INSERT INTO `participantes` (`parti_cod`, `parti_id`, `parti_fuent`, `parti_flag`, `parti_age`, `parti_ash`, `parti_gen`, `parti_ocu`, `parti_esla`, `parti_edu`, `parti_rang`) VALUES
	(90, '\nP0090', 'synthetic_ai', '1', 19, 6.5, 2, 1, 1, 3, 1);
INSERT INTO `participantes` (`parti_cod`, `parti_id`, `parti_fuent`, `parti_flag`, `parti_age`, `parti_ash`, `parti_gen`, `parti_ocu`, `parti_esla`, `parti_edu`, `parti_rang`) VALUES
	(91, '\nP0091', 'synthetic_ai', '1', 58, 7.0, 1, 13, 2, 1, 7);
INSERT INTO `participantes` (`parti_cod`, `parti_id`, `parti_fuent`, `parti_flag`, `parti_age`, `parti_ash`, `parti_gen`, `parti_ocu`, `parti_esla`, `parti_edu`, `parti_rang`) VALUES
	(92, '\nP0092', 'synthetic_ai', '1', 26, 6.5, 2, 10, 2, 1, 5);
INSERT INTO `participantes` (`parti_cod`, `parti_id`, `parti_fuent`, `parti_flag`, `parti_age`, `parti_ash`, `parti_gen`, `parti_ocu`, `parti_esla`, `parti_edu`, `parti_rang`) VALUES
	(93, '\nP0093', 'synthetic_ai', '1', 41, 7.0, 1, 3, 2, 2, 4);
INSERT INTO `participantes` (`parti_cod`, `parti_id`, `parti_fuent`, `parti_flag`, `parti_age`, `parti_ash`, `parti_gen`, `parti_ocu`, `parti_esla`, `parti_edu`, `parti_rang`) VALUES
	(94, '\nP0094', 'synthetic_ai', '1', 23, 5.5, 1, 1, 1, 1, 3);
INSERT INTO `participantes` (`parti_cod`, `parti_id`, `parti_fuent`, `parti_flag`, `parti_age`, `parti_ash`, `parti_gen`, `parti_ocu`, `parti_esla`, `parti_edu`, `parti_rang`) VALUES
	(95, '\nP0095', 'synthetic_ai', '1', 36, 7.0, 2, 4, 2, 4, 2);
INSERT INTO `participantes` (`parti_cod`, `parti_id`, `parti_fuent`, `parti_flag`, `parti_age`, `parti_ash`, `parti_gen`, `parti_ocu`, `parti_esla`, `parti_edu`, `parti_rang`) VALUES
	(96, '\nP0096', 'synthetic_ai', '1', 50, 8.0, 2, 5, 8, 1, 7);
INSERT INTO `participantes` (`parti_cod`, `parti_id`, `parti_fuent`, `parti_flag`, `parti_age`, `parti_ash`, `parti_gen`, `parti_ocu`, `parti_esla`, `parti_edu`, `parti_rang`) VALUES
	(97, '\nP0097', 'synthetic_ai', '1', 28, 6.5, 1, 12, 2, 1, 5);
INSERT INTO `participantes` (`parti_cod`, `parti_id`, `parti_fuent`, `parti_flag`, `parti_age`, `parti_ash`, `parti_gen`, `parti_ocu`, `parti_esla`, `parti_edu`, `parti_rang`) VALUES
	(98, '\nP0098', 'synthetic_ai', '1', 44, 7.0, 2, 2, 2, 2, 4);
INSERT INTO `participantes` (`parti_cod`, `parti_id`, `parti_fuent`, `parti_flag`, `parti_age`, `parti_ash`, `parti_gen`, `parti_ocu`, `parti_esla`, `parti_edu`, `parti_rang`) VALUES
	(99, '\nP0099', 'synthetic_ai', '1', 32, 6.5, 1, 7, 6, 1, 2);
INSERT INTO `participantes` (`parti_cod`, `parti_id`, `parti_fuent`, `parti_flag`, `parti_age`, `parti_ash`, `parti_gen`, `parti_ocu`, `parti_esla`, `parti_edu`, `parti_rang`) VALUES
	(100, '\nP0100', 'synthetic_ai', '1', 66, 8.5, 1, 5, 3, 3, 6);
INSERT INTO `participantes` (`parti_cod`, `parti_id`, `parti_fuent`, `parti_flag`, `parti_age`, `parti_ash`, `parti_gen`, `parti_ocu`, `parti_esla`, `parti_edu`, `parti_rang`) VALUES
	(101, '\nP0101', 'synthetic_ai', '1', 24, 5.5, 2, 9, 5, 1, 3);
INSERT INTO `participantes` (`parti_cod`, `parti_id`, `parti_fuent`, `parti_flag`, `parti_age`, `parti_ash`, `parti_gen`, `parti_ocu`, `parti_esla`, `parti_edu`, `parti_rang`) VALUES
	(102, '\nP0102', 'synthetic_ai', '1', 39, 7.0, 1, 3, 2, 2, 2);
INSERT INTO `participantes` (`parti_cod`, `parti_id`, `parti_fuent`, `parti_flag`, `parti_age`, `parti_ash`, `parti_gen`, `parti_ocu`, `parti_esla`, `parti_edu`, `parti_rang`) VALUES
	(103, '\nP0103', 'synthetic_ai', '1', 54, 7.5, 2, 1, 2, 1, 7);
INSERT INTO `participantes` (`parti_cod`, `parti_id`, `parti_fuent`, `parti_flag`, `parti_age`, `parti_ash`, `parti_gen`, `parti_ocu`, `parti_esla`, `parti_edu`, `parti_rang`) VALUES
	(104, '\nP0104', 'synthetic_ai', '1', 22, 5.5, 1, 1, 1, 1, 3);
INSERT INTO `participantes` (`parti_cod`, `parti_id`, `parti_fuent`, `parti_flag`, `parti_age`, `parti_ash`, `parti_gen`, `parti_ocu`, `parti_esla`, `parti_edu`, `parti_rang`) VALUES
	(105, '\nP0105', 'synthetic_ai', '1', 46, 7.0, 2, 2, 2, 2, 4);
INSERT INTO `participantes` (`parti_cod`, `parti_id`, `parti_fuent`, `parti_flag`, `parti_age`, `parti_ash`, `parti_gen`, `parti_ocu`, `parti_esla`, `parti_edu`, `parti_rang`) VALUES
	(106, '\nP0106', 'synthetic_ai', '1', 27, 7.0, 1, 6, 2, 2, 5);
INSERT INTO `participantes` (`parti_cod`, `parti_id`, `parti_fuent`, `parti_flag`, `parti_age`, `parti_ash`, `parti_gen`, `parti_ocu`, `parti_esla`, `parti_edu`, `parti_rang`) VALUES
	(107, '\nP0107', 'synthetic_ai', '1', 35, 7.0, 2, 10, 4, 1, 2);
INSERT INTO `participantes` (`parti_cod`, `parti_id`, `parti_fuent`, `parti_flag`, `parti_age`, `parti_ash`, `parti_gen`, `parti_ocu`, `parti_esla`, `parti_edu`, `parti_rang`) VALUES
	(108, '\nP0108', 'synthetic_ai', '1', 60, 8.0, 2, 5, 3, 1, 6);
INSERT INTO `participantes` (`parti_cod`, `parti_id`, `parti_fuent`, `parti_flag`, `parti_age`, `parti_ash`, `parti_gen`, `parti_ocu`, `parti_esla`, `parti_edu`, `parti_rang`) VALUES
	(109, '\nP0109', 'synthetic_ai', '1', 30, 7.0, 1, 11, 2, 1, 2);
INSERT INTO `participantes` (`parti_cod`, `parti_id`, `parti_fuent`, `parti_flag`, `parti_age`, `parti_ash`, `parti_gen`, `parti_ocu`, `parti_esla`, `parti_edu`, `parti_rang`) VALUES
	(110, '\nP0110', 'synthetic_ai', '1', 21, 6.0, 2, 1, 1, 1, 3);
INSERT INTO `participantes` (`parti_cod`, `parti_id`, `parti_fuent`, `parti_flag`, `parti_age`, `parti_ash`, `parti_gen`, `parti_ocu`, `parti_esla`, `parti_edu`, `parti_rang`) VALUES
	(111, '\nP0111', 'synthetic_ai', '1', 48, 7.0, 1, 3, 2, 2, 4);
INSERT INTO `participantes` (`parti_cod`, `parti_id`, `parti_fuent`, `parti_flag`, `parti_age`, `parti_ash`, `parti_gen`, `parti_ocu`, `parti_esla`, `parti_edu`, `parti_rang`) VALUES
	(112, '\nP0112', 'synthetic_ai', '1', 25, 6.0, 2, 7, 6, 1, 5);
INSERT INTO `participantes` (`parti_cod`, `parti_id`, `parti_fuent`, `parti_flag`, `parti_age`, `parti_ash`, `parti_gen`, `parti_ocu`, `parti_esla`, `parti_edu`, `parti_rang`) VALUES
	(113, '\nP0113', 'synthetic_ai', '1', 42, 7.0, 2, 4, 2, 4, 4);
INSERT INTO `participantes` (`parti_cod`, `parti_id`, `parti_fuent`, `parti_flag`, `parti_age`, `parti_ash`, `parti_gen`, `parti_ocu`, `parti_esla`, `parti_edu`, `parti_rang`) VALUES
	(114, '\nP0114', 'synthetic_ai', '1', 19, 6.0, 1, 1, 1, 3, 1);
INSERT INTO `participantes` (`parti_cod`, `parti_id`, `parti_fuent`, `parti_flag`, `parti_age`, `parti_ash`, `parti_gen`, `parti_ocu`, `parti_esla`, `parti_edu`, `parti_rang`) VALUES
	(115, '\nP0115', 'synthetic_ai', '1', 53, 7.5, 2, 2, 2, 2, 7);
INSERT INTO `participantes` (`parti_cod`, `parti_id`, `parti_fuent`, `parti_flag`, `parti_age`, `parti_ash`, `parti_gen`, `parti_ocu`, `parti_esla`, `parti_edu`, `parti_rang`) VALUES
	(116, '\nP0116', 'synthetic_ai', '1', 29, 6.5, 1, 8, 2, 1, 5);
INSERT INTO `participantes` (`parti_cod`, `parti_id`, `parti_fuent`, `parti_flag`, `parti_age`, `parti_ash`, `parti_gen`, `parti_ocu`, `parti_esla`, `parti_edu`, `parti_rang`) VALUES
	(117, '\nP0117', 'synthetic_ai', '1', 34, 6.5, 2, 9, 2, 1, 2);
INSERT INTO `participantes` (`parti_cod`, `parti_id`, `parti_fuent`, `parti_flag`, `parti_age`, `parti_ash`, `parti_gen`, `parti_ocu`, `parti_esla`, `parti_edu`, `parti_rang`) VALUES
	(118, '\nP0118', 'synthetic_ai', '1', 69, 8.5, 1, 5, 3, 5, 6);
INSERT INTO `participantes` (`parti_cod`, `parti_id`, `parti_fuent`, `parti_flag`, `parti_age`, `parti_ash`, `parti_gen`, `parti_ocu`, `parti_esla`, `parti_edu`, `parti_rang`) VALUES
	(119, '\nP0119', 'synthetic_ai', '1', 26, 6.5, 2, 3, 2, 2, 5);
INSERT INTO `participantes` (`parti_cod`, `parti_id`, `parti_fuent`, `parti_flag`, `parti_age`, `parti_ash`, `parti_gen`, `parti_ocu`, `parti_esla`, `parti_edu`, `parti_rang`) VALUES
	(120, '\nP0120', 'synthetic_ai', '1', 38, 6.5, 1, 13, 2, 1, 2);
INSERT INTO `participantes` (`parti_cod`, `parti_id`, `parti_fuent`, `parti_flag`, `parti_age`, `parti_ash`, `parti_gen`, `parti_ocu`, `parti_esla`, `parti_edu`, `parti_rang`) VALUES
	(121, '\nP0121', 'synthetic_ai', '1', 20, 6.5, 2, 1, 1, 3, 1);
INSERT INTO `participantes` (`parti_cod`, `parti_id`, `parti_fuent`, `parti_flag`, `parti_age`, `parti_ash`, `parti_gen`, `parti_ocu`, `parti_esla`, `parti_edu`, `parti_rang`) VALUES
	(122, '\nP0122', 'synthetic_ai', '1', 45, 7.5, 2, 6, 2, 2, 4);
INSERT INTO `participantes` (`parti_cod`, `parti_id`, `parti_fuent`, `parti_flag`, `parti_age`, `parti_ash`, `parti_gen`, `parti_ocu`, `parti_esla`, `parti_edu`, `parti_rang`) VALUES
	(123, '\nP0123', 'synthetic_ai', '1', 23, 5.5, 1, 1, 1, 1, 3);
INSERT INTO `participantes` (`parti_cod`, `parti_id`, `parti_fuent`, `parti_flag`, `parti_age`, `parti_ash`, `parti_gen`, `parti_ocu`, `parti_esla`, `parti_edu`, `parti_rang`) VALUES
	(124, '\nP0124', 'synthetic_ai', '1', 37, 7.0, 2, 2, 2, 2, 2);
INSERT INTO `participantes` (`parti_cod`, `parti_id`, `parti_fuent`, `parti_flag`, `parti_age`, `parti_ash`, `parti_gen`, `parti_ocu`, `parti_esla`, `parti_edu`, `parti_rang`) VALUES
	(125, '\nP0125', 'synthetic_ai', '1', 64, 8.0, 2, 5, 3, 1, 6);
INSERT INTO `participantes` (`parti_cod`, `parti_id`, `parti_fuent`, `parti_flag`, `parti_age`, `parti_ash`, `parti_gen`, `parti_ocu`, `parti_esla`, `parti_edu`, `parti_rang`) VALUES
	(126, '\nP0126', 'synthetic_ai', '1', 28, 6.5, 1, 12, 2, 5, 5);
INSERT INTO `participantes` (`parti_cod`, `parti_id`, `parti_fuent`, `parti_flag`, `parti_age`, `parti_ash`, `parti_gen`, `parti_ocu`, `parti_esla`, `parti_edu`, `parti_rang`) VALUES
	(127, '\nP0127', 'synthetic_ai', '1', 43, 7.0, 1, 11, 2, 1, 4);
INSERT INTO `participantes` (`parti_cod`, `parti_id`, `parti_fuent`, `parti_flag`, `parti_age`, `parti_ash`, `parti_gen`, `parti_ocu`, `parti_esla`, `parti_edu`, `parti_rang`) VALUES
	(128, '\nP0128', 'synthetic_ai', '1', 22, 5.5, 2, 9, 5, 5, 3);
INSERT INTO `participantes` (`parti_cod`, `parti_id`, `parti_fuent`, `parti_flag`, `parti_age`, `parti_ash`, `parti_gen`, `parti_ocu`, `parti_esla`, `parti_edu`, `parti_rang`) VALUES
	(129, '\nP0129', 'synthetic_ai', '1', 56, 7.5, 1, 8, 2, 2, 7);
INSERT INTO `participantes` (`parti_cod`, `parti_id`, `parti_fuent`, `parti_flag`, `parti_age`, `parti_ash`, `parti_gen`, `parti_ocu`, `parti_esla`, `parti_edu`, `parti_rang`) VALUES
	(130, '\nP0130', 'synthetic_ai', '1', 31, 7.0, 2, 10, 2, 1, 2);
INSERT INTO `participantes` (`parti_cod`, `parti_id`, `parti_fuent`, `parti_flag`, `parti_age`, `parti_ash`, `parti_gen`, `parti_ocu`, `parti_esla`, `parti_edu`, `parti_rang`) VALUES
	(131, '\nP0131', 'synthetic_ai', '1', 18, 6.5, 1, 1, 1, 3, 1);
INSERT INTO `participantes` (`parti_cod`, `parti_id`, `parti_fuent`, `parti_flag`, `parti_age`, `parti_ash`, `parti_gen`, `parti_ocu`, `parti_esla`, `parti_edu`, `parti_rang`) VALUES
	(132, '\nP0132', 'synthetic_ai', '1', 49, 7.0, 2, 2, 2, 1, 4);
INSERT INTO `participantes` (`parti_cod`, `parti_id`, `parti_fuent`, `parti_flag`, `parti_age`, `parti_ash`, `parti_gen`, `parti_ocu`, `parti_esla`, `parti_edu`, `parti_rang`) VALUES
	(133, '\nP0133', 'synthetic_ai', '1', 26, 6.5, 1, 3, 2, 1, 5);
INSERT INTO `participantes` (`parti_cod`, `parti_id`, `parti_fuent`, `parti_flag`, `parti_age`, `parti_ash`, `parti_gen`, `parti_ocu`, `parti_esla`, `parti_edu`, `parti_rang`) VALUES
	(134, '\nP0134', 'synthetic_ai', '1', 33, 7.0, 2, 7, 4, 2, 2);
INSERT INTO `participantes` (`parti_cod`, `parti_id`, `parti_fuent`, `parti_flag`, `parti_age`, `parti_ash`, `parti_gen`, `parti_ocu`, `parti_esla`, `parti_edu`, `parti_rang`) VALUES
	(135, '\nP0135', 'synthetic_ai', '1', 71, 8.0, 2, 5, 3, 3, 6);
INSERT INTO `participantes` (`parti_cod`, `parti_id`, `parti_fuent`, `parti_flag`, `parti_age`, `parti_ash`, `parti_gen`, `parti_ocu`, `parti_esla`, `parti_edu`, `parti_rang`) VALUES
	(136, '\nP0136', 'synthetic_ai', '1', 27, 6.0, 1, 13, 2, 5, 5);
INSERT INTO `participantes` (`parti_cod`, `parti_id`, `parti_fuent`, `parti_flag`, `parti_age`, `parti_ash`, `parti_gen`, `parti_ocu`, `parti_esla`, `parti_edu`, `parti_rang`) VALUES
	(137, '\nP0137', 'synthetic_ai', '1', 40, 7.0, 1, 10, 2, 1, 4);
INSERT INTO `participantes` (`parti_cod`, `parti_id`, `parti_fuent`, `parti_flag`, `parti_age`, `parti_ash`, `parti_gen`, `parti_ocu`, `parti_esla`, `parti_edu`, `parti_rang`) VALUES
	(138, '\nP0138', 'synthetic_ai', '1', 24, 5.5, 2, 1, 1, 1, 3);
INSERT INTO `participantes` (`parti_cod`, `parti_id`, `parti_fuent`, `parti_flag`, `parti_age`, `parti_ash`, `parti_gen`, `parti_ocu`, `parti_esla`, `parti_edu`, `parti_rang`) VALUES
	(139, '\nP0139', 'synthetic_ai', '1', 51, 7.0, 1, 3, 2, 2, 7);
INSERT INTO `participantes` (`parti_cod`, `parti_id`, `parti_fuent`, `parti_flag`, `parti_age`, `parti_ash`, `parti_gen`, `parti_ocu`, `parti_esla`, `parti_edu`, `parti_rang`) VALUES
	(140, '\nP0140', 'synthetic_ai', '1', 36, 7.0, 2, 4, 2, 4, 2);
INSERT INTO `participantes` (`parti_cod`, `parti_id`, `parti_fuent`, `parti_flag`, `parti_age`, `parti_ash`, `parti_gen`, `parti_ocu`, `parti_esla`, `parti_edu`, `parti_rang`) VALUES
	(141, '\nP0141', 'synthetic_ai', '1', 29, 6.5, 1, 12, 2, 1, 5);
INSERT INTO `participantes` (`parti_cod`, `parti_id`, `parti_fuent`, `parti_flag`, `parti_age`, `parti_ash`, `parti_gen`, `parti_ocu`, `parti_esla`, `parti_edu`, `parti_rang`) VALUES
	(142, '\nP0142', 'synthetic_ai', '1', 47, 7.5, 2, 2, 2, 2, 4);
INSERT INTO `participantes` (`parti_cod`, `parti_id`, `parti_fuent`, `parti_flag`, `parti_age`, `parti_ash`, `parti_gen`, `parti_ocu`, `parti_esla`, `parti_edu`, `parti_rang`) VALUES
	(143, '\nP0143', 'synthetic_ai', '1', 20, 5.5, 1, 1, 1, 3, 1);
INSERT INTO `participantes` (`parti_cod`, `parti_id`, `parti_fuent`, `parti_flag`, `parti_age`, `parti_ash`, `parti_gen`, `parti_ocu`, `parti_esla`, `parti_edu`, `parti_rang`) VALUES
	(144, '\nP0144', 'synthetic_ai', '1', 32, 6.5, 2, 7, 6, 1, 2);
INSERT INTO `participantes` (`parti_cod`, `parti_id`, `parti_fuent`, `parti_flag`, `parti_age`, `parti_ash`, `parti_gen`, `parti_ocu`, `parti_esla`, `parti_edu`, `parti_rang`) VALUES
	(145, '\nP0145', 'synthetic_ai', '1', 58, 7.5, 1, 8, 2, 2, 7);
INSERT INTO `participantes` (`parti_cod`, `parti_id`, `parti_fuent`, `parti_flag`, `parti_age`, `parti_ash`, `parti_gen`, `parti_ocu`, `parti_esla`, `parti_edu`, `parti_rang`) VALUES
	(146, '\nP0146', 'synthetic_ai', '1', 26, 6.5, 2, 6, 2, 1, 5);
INSERT INTO `participantes` (`parti_cod`, `parti_id`, `parti_fuent`, `parti_flag`, `parti_age`, `parti_ash`, `parti_gen`, `parti_ocu`, `parti_esla`, `parti_edu`, `parti_rang`) VALUES
	(147, '\nP0147', 'synthetic_ai', '1', 44, 7.0, 1, 3, 2, 1, 4);
INSERT INTO `participantes` (`parti_cod`, `parti_id`, `parti_fuent`, `parti_flag`, `parti_age`, `parti_ash`, `parti_gen`, `parti_ocu`, `parti_esla`, `parti_edu`, `parti_rang`) VALUES
	(148, '\nP0148', 'synthetic_ai', '1', 22, 6.0, 2, 1, 1, 1, 3);
INSERT INTO `participantes` (`parti_cod`, `parti_id`, `parti_fuent`, `parti_flag`, `parti_age`, `parti_ash`, `parti_gen`, `parti_ocu`, `parti_esla`, `parti_edu`, `parti_rang`) VALUES
	(149, '\nP0149', 'synthetic_ai', '1', 39, 7.0, 1, 4, 2, 2, 2);
INSERT INTO `participantes` (`parti_cod`, `parti_id`, `parti_fuent`, `parti_flag`, `parti_age`, `parti_ash`, `parti_gen`, `parti_ocu`, `parti_esla`, `parti_edu`, `parti_rang`) VALUES
	(150, '\nP0150', 'synthetic_ai', '1', 55, 7.5, 2, 1, 2, 2, 7);
INSERT INTO `participantes` (`parti_cod`, `parti_id`, `parti_fuent`, `parti_flag`, `parti_age`, `parti_ash`, `parti_gen`, `parti_ocu`, `parti_esla`, `parti_edu`, `parti_rang`) VALUES
	(151, '\nP0151', 'synthetic_ai', '1', 21, 5.5, 1, 1, 1, 1, 3);
INSERT INTO `participantes` (`parti_cod`, `parti_id`, `parti_fuent`, `parti_flag`, `parti_age`, `parti_ash`, `parti_gen`, `parti_ocu`, `parti_esla`, `parti_edu`, `parti_rang`) VALUES
	(152, '\nP0152', 'synthetic_ai', '1', 48, 7.0, 2, 2, 2, 2, 4);
INSERT INTO `participantes` (`parti_cod`, `parti_id`, `parti_fuent`, `parti_flag`, `parti_age`, `parti_ash`, `parti_gen`, `parti_ocu`, `parti_esla`, `parti_edu`, `parti_rang`) VALUES
	(153, '\nP0153', 'synthetic_ai', '1', 27, 7.0, 1, 11, 2, 1, 5);
INSERT INTO `participantes` (`parti_cod`, `parti_id`, `parti_fuent`, `parti_flag`, `parti_age`, `parti_ash`, `parti_gen`, `parti_ocu`, `parti_esla`, `parti_edu`, `parti_rang`) VALUES
	(154, '\nP0154', 'synthetic_ai', '1', 35, 7.5, 2, 10, 4, 1, 2);
INSERT INTO `participantes` (`parti_cod`, `parti_id`, `parti_fuent`, `parti_flag`, `parti_age`, `parti_ash`, `parti_gen`, `parti_ocu`, `parti_esla`, `parti_edu`, `parti_rang`) VALUES
	(155, '\nP0155', 'synthetic_ai', '1', 63, 8.5, 1, 5, 3, 1, 6);
INSERT INTO `participantes` (`parti_cod`, `parti_id`, `parti_fuent`, `parti_flag`, `parti_age`, `parti_ash`, `parti_gen`, `parti_ocu`, `parti_esla`, `parti_edu`, `parti_rang`) VALUES
	(156, '\nP0156', 'synthetic_ai', '1', 30, 7.0, 2, 2, 2, 2, 2);
INSERT INTO `participantes` (`parti_cod`, `parti_id`, `parti_fuent`, `parti_flag`, `parti_age`, `parti_ash`, `parti_gen`, `parti_ocu`, `parti_esla`, `parti_edu`, `parti_rang`) VALUES
	(157, '\nP0157', 'synthetic_ai', '1', 23, 6.0, 2, 1, 1, 1, 3);
INSERT INTO `participantes` (`parti_cod`, `parti_id`, `parti_fuent`, `parti_flag`, `parti_age`, `parti_ash`, `parti_gen`, `parti_ocu`, `parti_esla`, `parti_edu`, `parti_rang`) VALUES
	(158, '\nP0158', 'synthetic_ai', '1', 44, 6.5, 1, 4, 2, 4, 4);
INSERT INTO `participantes` (`parti_cod`, `parti_id`, `parti_fuent`, `parti_flag`, `parti_age`, `parti_ash`, `parti_gen`, `parti_ocu`, `parti_esla`, `parti_edu`, `parti_rang`) VALUES
	(159, '\nP0159', 'synthetic_ai', '1', 57, 7.5, 2, 1, 2, 1, 7);
INSERT INTO `participantes` (`parti_cod`, `parti_id`, `parti_fuent`, `parti_flag`, `parti_age`, `parti_ash`, `parti_gen`, `parti_ocu`, `parti_esla`, `parti_edu`, `parti_rang`) VALUES
	(160, '\nP0160', 'synthetic_ai', '1', 19, 6.5, 1, 1, 1, 3, 1);
INSERT INTO `participantes` (`parti_cod`, `parti_id`, `parti_fuent`, `parti_flag`, `parti_age`, `parti_ash`, `parti_gen`, `parti_ocu`, `parti_esla`, `parti_edu`, `parti_rang`) VALUES
	(161, '\nP0161', 'synthetic_ai', '1', 37, 7.0, 1, 6, 2, 1, 2);
INSERT INTO `participantes` (`parti_cod`, `parti_id`, `parti_fuent`, `parti_flag`, `parti_age`, `parti_ash`, `parti_gen`, `parti_ocu`, `parti_esla`, `parti_edu`, `parti_rang`) VALUES
	(162, '\nP0162', 'synthetic_ai', '1', 25, 6.5, 2, 3, 2, 2, 5);
INSERT INTO `participantes` (`parti_cod`, `parti_id`, `parti_fuent`, `parti_flag`, `parti_age`, `parti_ash`, `parti_gen`, `parti_ocu`, `parti_esla`, `parti_edu`, `parti_rang`) VALUES
	(163, '\nP0163', 'synthetic_ai', '1', 50, 7.5, 1, 8, 2, 1, 7);
INSERT INTO `participantes` (`parti_cod`, `parti_id`, `parti_fuent`, `parti_flag`, `parti_age`, `parti_ash`, `parti_gen`, `parti_ocu`, `parti_esla`, `parti_edu`, `parti_rang`) VALUES
	(164, '\nP0164', 'synthetic_ai', '1', 28, 6.5, 2, 9, 2, 1, 5);
INSERT INTO `participantes` (`parti_cod`, `parti_id`, `parti_fuent`, `parti_flag`, `parti_age`, `parti_ash`, `parti_gen`, `parti_ocu`, `parti_esla`, `parti_edu`, `parti_rang`) VALUES
	(165, '\nP0165', 'synthetic_ai', '1', 41, 7.0, 1, 2, 2, 2, 4);
INSERT INTO `participantes` (`parti_cod`, `parti_id`, `parti_fuent`, `parti_flag`, `parti_age`, `parti_ash`, `parti_gen`, `parti_ocu`, `parti_esla`, `parti_edu`, `parti_rang`) VALUES
	(166, '\nP0166', 'synthetic_ai', '1', 24, 5.5, 1, 12, 5, 1, 3);
INSERT INTO `participantes` (`parti_cod`, `parti_id`, `parti_fuent`, `parti_flag`, `parti_age`, `parti_ash`, `parti_gen`, `parti_ocu`, `parti_esla`, `parti_edu`, `parti_rang`) VALUES
	(167, '\nP0167', 'synthetic_ai', '1', 62, 8.0, 2, 5, 3, 5, 6);
INSERT INTO `participantes` (`parti_cod`, `parti_id`, `parti_fuent`, `parti_flag`, `parti_age`, `parti_ash`, `parti_gen`, `parti_ocu`, `parti_esla`, `parti_edu`, `parti_rang`) VALUES
	(168, '\nP0168', 'synthetic_ai', '1', 34, 6.5, 1, 3, 6, 1, 2);
INSERT INTO `participantes` (`parti_cod`, `parti_id`, `parti_fuent`, `parti_flag`, `parti_age`, `parti_ash`, `parti_gen`, `parti_ocu`, `parti_esla`, `parti_edu`, `parti_rang`) VALUES
	(169, '\nP0169', 'synthetic_ai', '1', 46, 7.0, 2, 1, 2, 1, 4);
INSERT INTO `participantes` (`parti_cod`, `parti_id`, `parti_fuent`, `parti_flag`, `parti_age`, `parti_ash`, `parti_gen`, `parti_ocu`, `parti_esla`, `parti_edu`, `parti_rang`) VALUES
	(170, '\nP0170', 'synthetic_ai', '1', 21, 6.0, 1, 1, 1, 1, 3);
INSERT INTO `participantes` (`parti_cod`, `parti_id`, `parti_fuent`, `parti_flag`, `parti_age`, `parti_ash`, `parti_gen`, `parti_ocu`, `parti_esla`, `parti_edu`, `parti_rang`) VALUES
	(171, '\nP0171', 'synthetic_ai', '1', 52, 7.5, 2, 2, 2, 2, 7);
INSERT INTO `participantes` (`parti_cod`, `parti_id`, `parti_fuent`, `parti_flag`, `parti_age`, `parti_ash`, `parti_gen`, `parti_ocu`, `parti_esla`, `parti_edu`, `parti_rang`) VALUES
	(172, '\nP0172', 'synthetic_ai', '1', 29, 6.5, 1, 12, 2, 5, 5);
INSERT INTO `participantes` (`parti_cod`, `parti_id`, `parti_fuent`, `parti_flag`, `parti_age`, `parti_ash`, `parti_gen`, `parti_ocu`, `parti_esla`, `parti_edu`, `parti_rang`) VALUES
	(173, '\nP0173', 'synthetic_ai', '1', 38, 7.0, 2, 6, 2, 2, 2);
INSERT INTO `participantes` (`parti_cod`, `parti_id`, `parti_fuent`, `parti_flag`, `parti_age`, `parti_ash`, `parti_gen`, `parti_ocu`, `parti_esla`, `parti_edu`, `parti_rang`) VALUES
	(174, '\nP0174', 'synthetic_ai', '1', 65, 8.5, 1, 5, 3, 3, 6);
INSERT INTO `participantes` (`parti_cod`, `parti_id`, `parti_fuent`, `parti_flag`, `parti_age`, `parti_ash`, `parti_gen`, `parti_ocu`, `parti_esla`, `parti_edu`, `parti_rang`) VALUES
	(175, '\nP0175', 'synthetic_ai', '1', 27, 6.5, 2, 3, 2, 1, 5);
INSERT INTO `participantes` (`parti_cod`, `parti_id`, `parti_fuent`, `parti_flag`, `parti_age`, `parti_ash`, `parti_gen`, `parti_ocu`, `parti_esla`, `parti_edu`, `parti_rang`) VALUES
	(176, '\nP0176', 'synthetic_ai', '1', 43, 7.0, 1, 10, 2, 1, 4);
INSERT INTO `participantes` (`parti_cod`, `parti_id`, `parti_fuent`, `parti_flag`, `parti_age`, `parti_ash`, `parti_gen`, `parti_ocu`, `parti_esla`, `parti_edu`, `parti_rang`) VALUES
	(177, '\nP0177', 'synthetic_ai', '1', 22, 5.5, 2, 1, 1, 1, 3);
INSERT INTO `participantes` (`parti_cod`, `parti_id`, `parti_fuent`, `parti_flag`, `parti_age`, `parti_ash`, `parti_gen`, `parti_ocu`, `parti_esla`, `parti_edu`, `parti_rang`) VALUES
	(178, '\nP0178', 'synthetic_ai', '1', 48, 6.5, 1, 4, 2, 4, 4);
INSERT INTO `participantes` (`parti_cod`, `parti_id`, `parti_fuent`, `parti_flag`, `parti_age`, `parti_ash`, `parti_gen`, `parti_ocu`, `parti_esla`, `parti_edu`, `parti_rang`) VALUES
	(179, '\nP0179', 'synthetic_ai', '1', 33, 6.5, 2, 9, 2, 1, 2);
INSERT INTO `participantes` (`parti_cod`, `parti_id`, `parti_fuent`, `parti_flag`, `parti_age`, `parti_ash`, `parti_gen`, `parti_ocu`, `parti_esla`, `parti_edu`, `parti_rang`) VALUES
	(180, '\nP0180', 'synthetic_ai', '1', 59, 7.0, 1, 13, 2, 1, 7);
INSERT INTO `participantes` (`parti_cod`, `parti_id`, `parti_fuent`, `parti_flag`, `parti_age`, `parti_ash`, `parti_gen`, `parti_ocu`, `parti_esla`, `parti_edu`, `parti_rang`) VALUES
	(181, '\nP0181', 'synthetic_ai', '1', 24, 6.0, 2, 5, 7, 1, 3);
INSERT INTO `participantes` (`parti_cod`, `parti_id`, `parti_fuent`, `parti_flag`, `parti_age`, `parti_ash`, `parti_gen`, `parti_ocu`, `parti_esla`, `parti_edu`, `parti_rang`) VALUES
	(182, '\nP0182', 'synthetic_ai', '1', 41, 7.5, 2, 6, 2, 2, 4);
INSERT INTO `participantes` (`parti_cod`, `parti_id`, `parti_fuent`, `parti_flag`, `parti_age`, `parti_ash`, `parti_gen`, `parti_ocu`, `parti_esla`, `parti_edu`, `parti_rang`) VALUES
	(183, '\nP0183', 'synthetic_ai', '1', 18, 6.0, 1, 1, 1, 3, 1);
INSERT INTO `participantes` (`parti_cod`, `parti_id`, `parti_fuent`, `parti_flag`, `parti_age`, `parti_ash`, `parti_gen`, `parti_ocu`, `parti_esla`, `parti_edu`, `parti_rang`) VALUES
	(184, '\nP0184', 'synthetic_ai', '1', 53, 7.0, 1, 3, 2, 2, 7);
INSERT INTO `participantes` (`parti_cod`, `parti_id`, `parti_fuent`, `parti_flag`, `parti_age`, `parti_ash`, `parti_gen`, `parti_ocu`, `parti_esla`, `parti_edu`, `parti_rang`) VALUES
	(185, '\nP0185', 'synthetic_ai', '1', 31, 7.0, 2, 4, 2, 6, 2);
INSERT INTO `participantes` (`parti_cod`, `parti_id`, `parti_fuent`, `parti_flag`, `parti_age`, `parti_ash`, `parti_gen`, `parti_ocu`, `parti_esla`, `parti_edu`, `parti_rang`) VALUES
	(186, '\nP0186', 'synthetic_ai', '1', 26, 6.5, 1, 11, 2, 1, 5);
INSERT INTO `participantes` (`parti_cod`, `parti_id`, `parti_fuent`, `parti_flag`, `parti_age`, `parti_ash`, `parti_gen`, `parti_ocu`, `parti_esla`, `parti_edu`, `parti_rang`) VALUES
	(187, '\nP0187', 'synthetic_ai', '1', 44, 7.0, 2, 2, 2, 1, 4);
INSERT INTO `participantes` (`parti_cod`, `parti_id`, `parti_fuent`, `parti_flag`, `parti_age`, `parti_ash`, `parti_gen`, `parti_ocu`, `parti_esla`, `parti_edu`, `parti_rang`) VALUES
	(188, '\nP0188', 'synthetic_ai', '1', 20, 6.5, 2, 1, 1, 3, 1);
INSERT INTO `participantes` (`parti_cod`, `parti_id`, `parti_fuent`, `parti_flag`, `parti_age`, `parti_ash`, `parti_gen`, `parti_ocu`, `parti_esla`, `parti_edu`, `parti_rang`) VALUES
	(189, '\nP0189', 'synthetic_ai', '1', 38, 7.0, 1, 6, 2, 2, 2);
INSERT INTO `participantes` (`parti_cod`, `parti_id`, `parti_fuent`, `parti_flag`, `parti_age`, `parti_ash`, `parti_gen`, `parti_ocu`, `parti_esla`, `parti_edu`, `parti_rang`) VALUES
	(190, '\nP0190', 'synthetic_ai', '1', 29, 6.0, 2, 7, 6, 1, 5);
INSERT INTO `participantes` (`parti_cod`, `parti_id`, `parti_fuent`, `parti_flag`, `parti_age`, `parti_ash`, `parti_gen`, `parti_ocu`, `parti_esla`, `parti_edu`, `parti_rang`) VALUES
	(191, '\nP0191', 'synthetic_ai', '1', 56, 7.5, 1, 8, 2, 2, 7);
INSERT INTO `participantes` (`parti_cod`, `parti_id`, `parti_fuent`, `parti_flag`, `parti_age`, `parti_ash`, `parti_gen`, `parti_ocu`, `parti_esla`, `parti_edu`, `parti_rang`) VALUES
	(192, '\nP0192', 'synthetic_ai', '1', 23, 5.5, 2, 1, 1, 1, 3);
INSERT INTO `participantes` (`parti_cod`, `parti_id`, `parti_fuent`, `parti_flag`, `parti_age`, `parti_ash`, `parti_gen`, `parti_ocu`, `parti_esla`, `parti_edu`, `parti_rang`) VALUES
	(193, '\nP0193', 'synthetic_ai', '1', 47, 7.0, 1, 3, 2, 1, 4);
INSERT INTO `participantes` (`parti_cod`, `parti_id`, `parti_fuent`, `parti_flag`, `parti_age`, `parti_ash`, `parti_gen`, `parti_ocu`, `parti_esla`, `parti_edu`, `parti_rang`) VALUES
	(194, '\nP0194', 'synthetic_ai', '1', 34, 7.0, 2, 7, 4, 2, 2);
INSERT INTO `participantes` (`parti_cod`, `parti_id`, `parti_fuent`, `parti_flag`, `parti_age`, `parti_ash`, `parti_gen`, `parti_ocu`, `parti_esla`, `parti_edu`, `parti_rang`) VALUES
	(195, '\nP0195', 'synthetic_ai', '1', 67, 8.0, 2, 5, 3, 3, 6);
INSERT INTO `participantes` (`parti_cod`, `parti_id`, `parti_fuent`, `parti_flag`, `parti_age`, `parti_ash`, `parti_gen`, `parti_ocu`, `parti_esla`, `parti_edu`, `parti_rang`) VALUES
	(196, '\nP0196', 'synthetic_ai', '1', 25, 6.5, 1, 12, 2, 1, 5);
INSERT INTO `participantes` (`parti_cod`, `parti_id`, `parti_fuent`, `parti_flag`, `parti_age`, `parti_ash`, `parti_gen`, `parti_ocu`, `parti_esla`, `parti_edu`, `parti_rang`) VALUES
	(197, '\nP0197', 'synthetic_ai', '1', 42, 7.5, 2, 2, 2, 2, 4);
INSERT INTO `participantes` (`parti_cod`, `parti_id`, `parti_fuent`, `parti_flag`, `parti_age`, `parti_ash`, `parti_gen`, `parti_ocu`, `parti_esla`, `parti_edu`, `parti_rang`) VALUES
	(198, '\nP0198', 'synthetic_ai', '1', 27, 7.0, 1, 6, 2, 2, 5);
INSERT INTO `participantes` (`parti_cod`, `parti_id`, `parti_fuent`, `parti_flag`, `parti_age`, `parti_ash`, `parti_gen`, `parti_ocu`, `parti_esla`, `parti_edu`, `parti_rang`) VALUES
	(199, '\nP0199', 'synthetic_ai', '1', 36, 6.5, 1, 9, 2, 1, 2);
INSERT INTO `participantes` (`parti_cod`, `parti_id`, `parti_fuent`, `parti_flag`, `parti_age`, `parti_ash`, `parti_gen`, `parti_ocu`, `parti_esla`, `parti_edu`, `parti_rang`) VALUES
	(200, '\nP0200', 'synthetic_ai', '1', 51, 7.5, 2, 1, 2, 1, 7);
INSERT INTO `participantes` (`parti_cod`, `parti_id`, `parti_fuent`, `parti_flag`, `parti_age`, `parti_ash`, `parti_gen`, `parti_ocu`, `parti_esla`, `parti_edu`, `parti_rang`) VALUES
	(201, '\nP0201', 'synthetic_ai', '1', 22, 5.5, 1, 1, 1, 1, 3);
INSERT INTO `participantes` (`parti_cod`, `parti_id`, `parti_fuent`, `parti_flag`, `parti_age`, `parti_ash`, `parti_gen`, `parti_ocu`, `parti_esla`, `parti_edu`, `parti_rang`) VALUES
	(202, '\nP0202', 'synthetic_ai', '1', 39, 7.0, 2, 2, 2, 2, 2);
INSERT INTO `participantes` (`parti_cod`, `parti_id`, `parti_fuent`, `parti_flag`, `parti_age`, `parti_ash`, `parti_gen`, `parti_ocu`, `parti_esla`, `parti_edu`, `parti_rang`) VALUES
	(203, '\nP0203', 'synthetic_ai', '1', 28, 6.5, 2, 3, 2, 1, 5);
INSERT INTO `participantes` (`parti_cod`, `parti_id`, `parti_fuent`, `parti_flag`, `parti_age`, `parti_ash`, `parti_gen`, `parti_ocu`, `parti_esla`, `parti_edu`, `parti_rang`) VALUES
	(204, '\nP0204', 'synthetic_ai', '1', 60, 8.5, 1, 5, 3, 5, 6);
INSERT INTO `participantes` (`parti_cod`, `parti_id`, `parti_fuent`, `parti_flag`, `parti_age`, `parti_ash`, `parti_gen`, `parti_ocu`, `parti_esla`, `parti_edu`, `parti_rang`) VALUES
	(205, '\nP0205', 'synthetic_ai', '1', 32, 6.5, 1, 4, 2, 2, 2);
INSERT INTO `participantes` (`parti_cod`, `parti_id`, `parti_fuent`, `parti_flag`, `parti_age`, `parti_ash`, `parti_gen`, `parti_ocu`, `parti_esla`, `parti_edu`, `parti_rang`) VALUES
	(206, '\nP0206', 'synthetic_ai', '1', 46, 7.0, 2, 8, 2, 1, 4);
INSERT INTO `participantes` (`parti_cod`, `parti_id`, `parti_fuent`, `parti_flag`, `parti_age`, `parti_ash`, `parti_gen`, `parti_ocu`, `parti_esla`, `parti_edu`, `parti_rang`) VALUES
	(207, '\nP0207', 'synthetic_ai', '1', 19, 6.5, 2, 1, 1, 3, 1);
INSERT INTO `participantes` (`parti_cod`, `parti_id`, `parti_fuent`, `parti_flag`, `parti_age`, `parti_ash`, `parti_gen`, `parti_ocu`, `parti_esla`, `parti_edu`, `parti_rang`) VALUES
	(208, '\nP0208', 'synthetic_ai', '1', 43, 7.0, 1, 11, 2, 1, 4);
INSERT INTO `participantes` (`parti_cod`, `parti_id`, `parti_fuent`, `parti_flag`, `parti_age`, `parti_ash`, `parti_gen`, `parti_ocu`, `parti_esla`, `parti_edu`, `parti_rang`) VALUES
	(209, '\nP0209', 'synthetic_ai', '1', 25, 7.0, 2, 2, 2, 2, 5);
INSERT INTO `participantes` (`parti_cod`, `parti_id`, `parti_fuent`, `parti_flag`, `parti_age`, `parti_ash`, `parti_gen`, `parti_ocu`, `parti_esla`, `parti_edu`, `parti_rang`) VALUES
	(210, '\nP0210', 'synthetic_ai', '1', 70, 8.0, 2, 5, 3, 1, 6);
INSERT INTO `participantes` (`parti_cod`, `parti_id`, `parti_fuent`, `parti_flag`, `parti_age`, `parti_ash`, `parti_gen`, `parti_ocu`, `parti_esla`, `parti_edu`, `parti_rang`) VALUES
	(211, '\nP0211', 'synthetic_ai', '1', 30, 7.0, 1, 6, 2, 1, 2);
INSERT INTO `participantes` (`parti_cod`, `parti_id`, `parti_fuent`, `parti_flag`, `parti_age`, `parti_ash`, `parti_gen`, `parti_ocu`, `parti_esla`, `parti_edu`, `parti_rang`) VALUES
	(212, '\nP0212', 'synthetic_ai', '1', 21, 5.5, 2, 9, 5, 5, 3);
INSERT INTO `participantes` (`parti_cod`, `parti_id`, `parti_fuent`, `parti_flag`, `parti_age`, `parti_ash`, `parti_gen`, `parti_ocu`, `parti_esla`, `parti_edu`, `parti_rang`) VALUES
	(213, '\nP0213', 'synthetic_ai', '1', 55, 7.0, 1, 3, 2, 2, 7);
INSERT INTO `participantes` (`parti_cod`, `parti_id`, `parti_fuent`, `parti_flag`, `parti_age`, `parti_ash`, `parti_gen`, `parti_ocu`, `parti_esla`, `parti_edu`, `parti_rang`) VALUES
	(214, '\nP0214', 'synthetic_ai', '1', 36, 7.0, 2, 4, 2, 6, 2);
INSERT INTO `participantes` (`parti_cod`, `parti_id`, `parti_fuent`, `parti_flag`, `parti_age`, `parti_ash`, `parti_gen`, `parti_ocu`, `parti_esla`, `parti_edu`, `parti_rang`) VALUES
	(215, '\nP0215', 'synthetic_ai', '1', 24, 5.5, 1, 1, 1, 1, 3);
INSERT INTO `participantes` (`parti_cod`, `parti_id`, `parti_fuent`, `parti_flag`, `parti_age`, `parti_ash`, `parti_gen`, `parti_ocu`, `parti_esla`, `parti_edu`, `parti_rang`) VALUES
	(216, '\nP0216', 'synthetic_ai', '1', 48, 7.5, 2, 2, 2, 2, 4);
INSERT INTO `participantes` (`parti_cod`, `parti_id`, `parti_fuent`, `parti_flag`, `parti_age`, `parti_ash`, `parti_gen`, `parti_ocu`, `parti_esla`, `parti_edu`, `parti_rang`) VALUES
	(217, '\nP0217', 'synthetic_ai', '1', 27, 6.5, 1, 13, 2, 5, 5);
INSERT INTO `participantes` (`parti_cod`, `parti_id`, `parti_fuent`, `parti_flag`, `parti_age`, `parti_ash`, `parti_gen`, `parti_ocu`, `parti_esla`, `parti_edu`, `parti_rang`) VALUES
	(218, '\nP0218', 'synthetic_ai', '1', 40, 7.0, 1, 10, 2, 1, 4);
INSERT INTO `participantes` (`parti_cod`, `parti_id`, `parti_fuent`, `parti_flag`, `parti_age`, `parti_ash`, `parti_gen`, `parti_ocu`, `parti_esla`, `parti_edu`, `parti_rang`) VALUES
	(219, '\nP0219', 'synthetic_ai', '1', 33, 7.0, 2, 2, 2, 1, 2);
INSERT INTO `participantes` (`parti_cod`, `parti_id`, `parti_fuent`, `parti_flag`, `parti_age`, `parti_ash`, `parti_gen`, `parti_ocu`, `parti_esla`, `parti_edu`, `parti_rang`) VALUES
	(220, '\nP0220', 'synthetic_ai', '1', 58, 7.5, 1, 8, 2, 2, 7);
INSERT INTO `participantes` (`parti_cod`, `parti_id`, `parti_fuent`, `parti_flag`, `parti_age`, `parti_ash`, `parti_gen`, `parti_ocu`, `parti_esla`, `parti_edu`, `parti_rang`) VALUES
	(221, '\nP0221', 'synthetic_ai', '1', 23, 6.0, 2, 1, 1, 1, 3);
INSERT INTO `participantes` (`parti_cod`, `parti_id`, `parti_fuent`, `parti_flag`, `parti_age`, `parti_ash`, `parti_gen`, `parti_ocu`, `parti_esla`, `parti_edu`, `parti_rang`) VALUES
	(222, '\nP0222', 'synthetic_ai', '1', 45, 7.0, 1, 11, 2, 1, 4);
INSERT INTO `participantes` (`parti_cod`, `parti_id`, `parti_fuent`, `parti_flag`, `parti_age`, `parti_ash`, `parti_gen`, `parti_ocu`, `parti_esla`, `parti_edu`, `parti_rang`) VALUES
	(223, '\nP0223', 'synthetic_ai', '1', 29, 7.0, 2, 6, 2, 2, 5);
INSERT INTO `participantes` (`parti_cod`, `parti_id`, `parti_fuent`, `parti_flag`, `parti_age`, `parti_ash`, `parti_gen`, `parti_ocu`, `parti_esla`, `parti_edu`, `parti_rang`) VALUES
	(224, '\nP0224', 'synthetic_ai', '1', 64, 8.0, 2, 5, 3, 5, 6);
INSERT INTO `participantes` (`parti_cod`, `parti_id`, `parti_fuent`, `parti_flag`, `parti_age`, `parti_ash`, `parti_gen`, `parti_ocu`, `parti_esla`, `parti_edu`, `parti_rang`) VALUES
	(225, '\nP0225', 'synthetic_ai', '1', 31, 6.5, 1, 12, 2, 1, 2);
INSERT INTO `participantes` (`parti_cod`, `parti_id`, `parti_fuent`, `parti_flag`, `parti_age`, `parti_ash`, `parti_gen`, `parti_ocu`, `parti_esla`, `parti_edu`, `parti_rang`) VALUES
	(226, '\nP0226', 'synthetic_ai', '1', 38, 7.0, 2, 4, 2, 2, 2);
INSERT INTO `participantes` (`parti_cod`, `parti_id`, `parti_fuent`, `parti_flag`, `parti_age`, `parti_ash`, `parti_gen`, `parti_ocu`, `parti_esla`, `parti_edu`, `parti_rang`) VALUES
	(227, '\nP0227', 'synthetic_ai', '1', 19, 6.5, 1, 1, 1, 3, 1);
INSERT INTO `participantes` (`parti_cod`, `parti_id`, `parti_fuent`, `parti_flag`, `parti_age`, `parti_ash`, `parti_gen`, `parti_ocu`, `parti_esla`, `parti_edu`, `parti_rang`) VALUES
	(228, '\nP0228', 'synthetic_ai', '1', 53, 7.5, 2, 5, 8, 1, 7);
INSERT INTO `participantes` (`parti_cod`, `parti_id`, `parti_fuent`, `parti_flag`, `parti_age`, `parti_ash`, `parti_gen`, `parti_ocu`, `parti_esla`, `parti_edu`, `parti_rang`) VALUES
	(229, '\nP0229', 'synthetic_ai', '1', 26, 6.5, 1, 3, 2, 1, 5);
INSERT INTO `participantes` (`parti_cod`, `parti_id`, `parti_fuent`, `parti_flag`, `parti_age`, `parti_ash`, `parti_gen`, `parti_ocu`, `parti_esla`, `parti_edu`, `parti_rang`) VALUES
	(230, '\nP0230', 'synthetic_ai', '1', 42, 7.0, 2, 2, 2, 1, 4);
INSERT INTO `participantes` (`parti_cod`, `parti_id`, `parti_fuent`, `parti_flag`, `parti_age`, `parti_ash`, `parti_gen`, `parti_ocu`, `parti_esla`, `parti_edu`, `parti_rang`) VALUES
	(231, '\nP0231', 'synthetic_ai', '1', 20, 6.0, 2, 1, 1, 3, 1);
INSERT INTO `participantes` (`parti_cod`, `parti_id`, `parti_fuent`, `parti_flag`, `parti_age`, `parti_ash`, `parti_gen`, `parti_ocu`, `parti_esla`, `parti_edu`, `parti_rang`) VALUES
	(232, '\nP0232', 'synthetic_ai', '1', 35, 6.5, 1, 3, 6, 2, 2);
INSERT INTO `participantes` (`parti_cod`, `parti_id`, `parti_fuent`, `parti_flag`, `parti_age`, `parti_ash`, `parti_gen`, `parti_ocu`, `parti_esla`, `parti_edu`, `parti_rang`) VALUES
	(233, '\nP0233', 'synthetic_ai', '1', 60, 8.0, 2, 5, 3, 1, 6);
INSERT INTO `participantes` (`parti_cod`, `parti_id`, `parti_fuent`, `parti_flag`, `parti_age`, `parti_ash`, `parti_gen`, `parti_ocu`, `parti_esla`, `parti_edu`, `parti_rang`) VALUES
	(234, '\nP0234', 'synthetic_ai', '1', 28, 7.0, 2, 1, 2, 1, 5);
INSERT INTO `participantes` (`parti_cod`, `parti_id`, `parti_fuent`, `parti_flag`, `parti_age`, `parti_ash`, `parti_gen`, `parti_ocu`, `parti_esla`, `parti_edu`, `parti_rang`) VALUES
	(235, '\nP0235', 'synthetic_ai', '1', 47, 7.0, 1, 3, 2, 2, 4);
INSERT INTO `participantes` (`parti_cod`, `parti_id`, `parti_fuent`, `parti_flag`, `parti_age`, `parti_ash`, `parti_gen`, `parti_ocu`, `parti_esla`, `parti_edu`, `parti_rang`) VALUES
	(236, '\nP0236', 'synthetic_ai', '1', 22, 6.5, 1, 5, 7, 5, 3);
INSERT INTO `participantes` (`parti_cod`, `parti_id`, `parti_fuent`, `parti_flag`, `parti_age`, `parti_ash`, `parti_gen`, `parti_ocu`, `parti_esla`, `parti_edu`, `parti_rang`) VALUES
	(237, '\nP0237', 'synthetic_ai', '1', 54, 7.5, 2, 2, 2, 2, 7);
INSERT INTO `participantes` (`parti_cod`, `parti_id`, `parti_fuent`, `parti_flag`, `parti_age`, `parti_ash`, `parti_gen`, `parti_ocu`, `parti_esla`, `parti_edu`, `parti_rang`) VALUES
	(238, '\nP0238', 'synthetic_ai', '1', 30, 7.0, 1, 6, 2, 1, 2);
INSERT INTO `participantes` (`parti_cod`, `parti_id`, `parti_fuent`, `parti_flag`, `parti_age`, `parti_ash`, `parti_gen`, `parti_ocu`, `parti_esla`, `parti_edu`, `parti_rang`) VALUES
	(239, '\nP0239', 'synthetic_ai', '1', 37, 6.5, 2, 9, 2, 1, 2);
INSERT INTO `participantes` (`parti_cod`, `parti_id`, `parti_fuent`, `parti_flag`, `parti_age`, `parti_ash`, `parti_gen`, `parti_ocu`, `parti_esla`, `parti_edu`, `parti_rang`) VALUES
	(240, '\nP0240', 'synthetic_ai', '1', 25, 6.5, 1, 8, 2, 1, 5);
INSERT INTO `participantes` (`parti_cod`, `parti_id`, `parti_fuent`, `parti_flag`, `parti_age`, `parti_ash`, `parti_gen`, `parti_ocu`, `parti_esla`, `parti_edu`, `parti_rang`) VALUES
	(241, '\nP0241', 'synthetic_ai', '1', 49, 7.0, 2, 2, 2, 2, 4);
INSERT INTO `participantes` (`parti_cod`, `parti_id`, `parti_fuent`, `parti_flag`, `parti_age`, `parti_ash`, `parti_gen`, `parti_ocu`, `parti_esla`, `parti_edu`, `parti_rang`) VALUES
	(242, '\nP0242', 'synthetic_ai', '1', 21, 5.5, 1, 1, 1, 1, 3);
INSERT INTO `participantes` (`parti_cod`, `parti_id`, `parti_fuent`, `parti_flag`, `parti_age`, `parti_ash`, `parti_gen`, `parti_ocu`, `parti_esla`, `parti_edu`, `parti_rang`) VALUES
	(243, '\nP0243', 'synthetic_ai', '1', 44, 7.0, 2, 8, 2, 1, 4);
INSERT INTO `participantes` (`parti_cod`, `parti_id`, `parti_fuent`, `parti_flag`, `parti_age`, `parti_ash`, `parti_gen`, `parti_ocu`, `parti_esla`, `parti_edu`, `parti_rang`) VALUES
	(244, '\nP0244', 'synthetic_ai', '1', 33, 7.0, 1, 4, 2, 2, 2);
INSERT INTO `participantes` (`parti_cod`, `parti_id`, `parti_fuent`, `parti_flag`, `parti_age`, `parti_ash`, `parti_gen`, `parti_ocu`, `parti_esla`, `parti_edu`, `parti_rang`) VALUES
	(245, '\nP0245', 'synthetic_ai', '1', 26, 6.5, 2, 3, 2, 1, 5);
INSERT INTO `participantes` (`parti_cod`, `parti_id`, `parti_fuent`, `parti_flag`, `parti_age`, `parti_ash`, `parti_gen`, `parti_ocu`, `parti_esla`, `parti_edu`, `parti_rang`) VALUES
	(246, '\nP0246', 'synthetic_ai', '1', 57, 7.0, 1, 13, 2, 1, 7);
INSERT INTO `participantes` (`parti_cod`, `parti_id`, `parti_fuent`, `parti_flag`, `parti_age`, `parti_ash`, `parti_gen`, `parti_ocu`, `parti_esla`, `parti_edu`, `parti_rang`) VALUES
	(247, '\nP0247', 'synthetic_ai', '1', 24, 5.5, 2, 9, 5, 1, 3);
INSERT INTO `participantes` (`parti_cod`, `parti_id`, `parti_fuent`, `parti_flag`, `parti_age`, `parti_ash`, `parti_gen`, `parti_ocu`, `parti_esla`, `parti_edu`, `parti_rang`) VALUES
	(248, '\nP0248', 'synthetic_ai', '1', 40, 7.0, 1, 11, 2, 1, 4);
INSERT INTO `participantes` (`parti_cod`, `parti_id`, `parti_fuent`, `parti_flag`, `parti_age`, `parti_ash`, `parti_gen`, `parti_ocu`, `parti_esla`, `parti_edu`, `parti_rang`) VALUES
	(249, '\nP0249', 'synthetic_ai', '1', 67, 8.5, 1, 5, 3, 3, 6);
INSERT INTO `participantes` (`parti_cod`, `parti_id`, `parti_fuent`, `parti_flag`, `parti_age`, `parti_ash`, `parti_gen`, `parti_ocu`, `parti_esla`, `parti_edu`, `parti_rang`) VALUES
	(250, '\nP0250', 'synthetic_ai', '1', 29, 7.0, 2, 2, 2, 2, 5);
INSERT INTO `participantes` (`parti_cod`, `parti_id`, `parti_fuent`, `parti_flag`, `parti_age`, `parti_ash`, `parti_gen`, `parti_ocu`, `parti_esla`, `parti_edu`, `parti_rang`) VALUES
	(251, '\nP0251', 'synthetic_ai', '1', 36, 7.0, 1, 10, 2, 1, 2);
INSERT INTO `participantes` (`parti_cod`, `parti_id`, `parti_fuent`, `parti_flag`, `parti_age`, `parti_ash`, `parti_gen`, `parti_ocu`, `parti_esla`, `parti_edu`, `parti_rang`) VALUES
	(252, '\nP0252', 'synthetic_ai', '1', 20, 6.5, 1, 1, 1, 3, 1);
INSERT INTO `participantes` (`parti_cod`, `parti_id`, `parti_fuent`, `parti_flag`, `parti_age`, `parti_ash`, `parti_gen`, `parti_ocu`, `parti_esla`, `parti_edu`, `parti_rang`) VALUES
	(253, '\nP0253', 'synthetic_ai', '1', 50, 7.5, 2, 1, 2, 2, 7);
INSERT INTO `participantes` (`parti_cod`, `parti_id`, `parti_fuent`, `parti_flag`, `parti_age`, `parti_ash`, `parti_gen`, `parti_ocu`, `parti_esla`, `parti_edu`, `parti_rang`) VALUES
	(254, '\nP0254', 'synthetic_ai', '1', 27, 7.0, 1, 11, 2, 1, 5);
INSERT INTO `participantes` (`parti_cod`, `parti_id`, `parti_fuent`, `parti_flag`, `parti_age`, `parti_ash`, `parti_gen`, `parti_ocu`, `parti_esla`, `parti_edu`, `parti_rang`) VALUES
	(255, '\nP0255', 'synthetic_ai', '1', 44, 7.5, 2, 6, 2, 2, 4);
INSERT INTO `participantes` (`parti_cod`, `parti_id`, `parti_fuent`, `parti_flag`, `parti_age`, `parti_ash`, `parti_gen`, `parti_ocu`, `parti_esla`, `parti_edu`, `parti_rang`) VALUES
	(256, '\nP0256', 'synthetic_ai', '1', 23, 5.5, 1, 1, 1, 1, 3);
INSERT INTO `participantes` (`parti_cod`, `parti_id`, `parti_fuent`, `parti_flag`, `parti_age`, `parti_ash`, `parti_gen`, `parti_ocu`, `parti_esla`, `parti_edu`, `parti_rang`) VALUES
	(257, '\nP0257', 'synthetic_ai', '1', 38, 7.0, 2, 3, 2, 2, 2);
INSERT INTO `participantes` (`parti_cod`, `parti_id`, `parti_fuent`, `parti_flag`, `parti_age`, `parti_ash`, `parti_gen`, `parti_ocu`, `parti_esla`, `parti_edu`, `parti_rang`) VALUES
	(258, '\nP0258', 'synthetic_ai', '1', 62, 8.5, 1, 5, 3, 1, 6);
INSERT INTO `participantes` (`parti_cod`, `parti_id`, `parti_fuent`, `parti_flag`, `parti_age`, `parti_ash`, `parti_gen`, `parti_ocu`, `parti_esla`, `parti_edu`, `parti_rang`) VALUES
	(259, '\nP0259', 'synthetic_ai', '1', 32, 7.0, 2, 7, 4, 1, 2);
INSERT INTO `participantes` (`parti_cod`, `parti_id`, `parti_fuent`, `parti_flag`, `parti_age`, `parti_ash`, `parti_gen`, `parti_ocu`, `parti_esla`, `parti_edu`, `parti_rang`) VALUES
	(260, '\nP0260', 'synthetic_ai', '1', 18, 6.5, 2, 1, 1, 3, 1);
INSERT INTO `participantes` (`parti_cod`, `parti_id`, `parti_fuent`, `parti_flag`, `parti_age`, `parti_ash`, `parti_gen`, `parti_ocu`, `parti_esla`, `parti_edu`, `parti_rang`) VALUES
	(261, '\nP0261', 'synthetic_ai', '1', 41, 7.0, 1, 3, 2, 2, 4);
INSERT INTO `participantes` (`parti_cod`, `parti_id`, `parti_fuent`, `parti_flag`, `parti_age`, `parti_ash`, `parti_gen`, `parti_ocu`, `parti_esla`, `parti_edu`, `parti_rang`) VALUES
	(262, '\nP0262', 'synthetic_ai', '1', 28, 7.0, 2, 6, 2, 2, 5);
INSERT INTO `participantes` (`parti_cod`, `parti_id`, `parti_fuent`, `parti_flag`, `parti_age`, `parti_ash`, `parti_gen`, `parti_ocu`, `parti_esla`, `parti_edu`, `parti_rang`) VALUES
	(263, '\nP0263', 'synthetic_ai', '1', 24, 5.5, 1, 1, 1, 1, 3);
INSERT INTO `participantes` (`parti_cod`, `parti_id`, `parti_fuent`, `parti_flag`, `parti_age`, `parti_ash`, `parti_gen`, `parti_ocu`, `parti_esla`, `parti_edu`, `parti_rang`) VALUES
	(264, '\nP0264', 'synthetic_ai', '1', 52, 7.5, 2, 1, 2, 1, 7);
INSERT INTO `participantes` (`parti_cod`, `parti_id`, `parti_fuent`, `parti_flag`, `parti_age`, `parti_ash`, `parti_gen`, `parti_ocu`, `parti_esla`, `parti_edu`, `parti_rang`) VALUES
	(265, '\nP0265', 'synthetic_ai', '1', 35, 6.5, 1, 9, 2, 1, 2);
INSERT INTO `participantes` (`parti_cod`, `parti_id`, `parti_fuent`, `parti_flag`, `parti_age`, `parti_ash`, `parti_gen`, `parti_ocu`, `parti_esla`, `parti_edu`, `parti_rang`) VALUES
	(266, '\nP0266', 'synthetic_ai', '1', 68, 8.0, 2, 5, 3, 3, 6);
INSERT INTO `participantes` (`parti_cod`, `parti_id`, `parti_fuent`, `parti_flag`, `parti_age`, `parti_ash`, `parti_gen`, `parti_ocu`, `parti_esla`, `parti_edu`, `parti_rang`) VALUES
	(267, '\nP0267', 'synthetic_ai', '1', 22, 6.0, 2, 1, 1, 1, 3);
INSERT INTO `participantes` (`parti_cod`, `parti_id`, `parti_fuent`, `parti_flag`, `parti_age`, `parti_ash`, `parti_gen`, `parti_ocu`, `parti_esla`, `parti_edu`, `parti_rang`) VALUES
	(268, '\nP0268', 'synthetic_ai', '1', 46, 7.0, 1, 13, 2, 1, 4);
INSERT INTO `participantes` (`parti_cod`, `parti_id`, `parti_fuent`, `parti_flag`, `parti_age`, `parti_ash`, `parti_gen`, `parti_ocu`, `parti_esla`, `parti_edu`, `parti_rang`) VALUES
	(269, '\nP0269', 'synthetic_ai', '1', 31, 7.0, 2, 7, 4, 2, 2);
INSERT INTO `participantes` (`parti_cod`, `parti_id`, `parti_fuent`, `parti_flag`, `parti_age`, `parti_ash`, `parti_gen`, `parti_ocu`, `parti_esla`, `parti_edu`, `parti_rang`) VALUES
	(270, '\nP0270', 'synthetic_ai', '1', 59, 7.0, 1, 3, 2, 2, 7);
INSERT INTO `participantes` (`parti_cod`, `parti_id`, `parti_fuent`, `parti_flag`, `parti_age`, `parti_ash`, `parti_gen`, `parti_ocu`, `parti_esla`, `parti_edu`, `parti_rang`) VALUES
	(271, '\nP0271', 'synthetic_ai', '1', 26, 7.0, 2, 2, 2, 1, 5);
INSERT INTO `participantes` (`parti_cod`, `parti_id`, `parti_fuent`, `parti_flag`, `parti_age`, `parti_ash`, `parti_gen`, `parti_ocu`, `parti_esla`, `parti_edu`, `parti_rang`) VALUES
	(272, '\nP0272', 'synthetic_ai', '1', 43, 6.5, 1, 4, 2, 4, 4);
INSERT INTO `participantes` (`parti_cod`, `parti_id`, `parti_fuent`, `parti_flag`, `parti_age`, `parti_ash`, `parti_gen`, `parti_ocu`, `parti_esla`, `parti_edu`, `parti_rang`) VALUES
	(273, '\nP0273', 'synthetic_ai', '1', 19, 6.0, 2, 1, 1, 3, 1);
INSERT INTO `participantes` (`parti_cod`, `parti_id`, `parti_fuent`, `parti_flag`, `parti_age`, `parti_ash`, `parti_gen`, `parti_ocu`, `parti_esla`, `parti_edu`, `parti_rang`) VALUES
	(274, '\nP0274', 'synthetic_ai', '1', 36, 7.0, 1, 6, 2, 1, 2);
INSERT INTO `participantes` (`parti_cod`, `parti_id`, `parti_fuent`, `parti_flag`, `parti_age`, `parti_ash`, `parti_gen`, `parti_ocu`, `parti_esla`, `parti_edu`, `parti_rang`) VALUES
	(275, '\nP0275', 'synthetic_ai', '1', 55, 7.5, 2, 2, 2, 2, 7);
INSERT INTO `participantes` (`parti_cod`, `parti_id`, `parti_fuent`, `parti_flag`, `parti_age`, `parti_ash`, `parti_gen`, `parti_ocu`, `parti_esla`, `parti_edu`, `parti_rang`) VALUES
	(276, '\nP0276', 'synthetic_ai', '1', 21, 5.5, 1, 1, 1, 1, 3);
INSERT INTO `participantes` (`parti_cod`, `parti_id`, `parti_fuent`, `parti_flag`, `parti_age`, `parti_ash`, `parti_gen`, `parti_ocu`, `parti_esla`, `parti_edu`, `parti_rang`) VALUES
	(277, '\nP0277', 'synthetic_ai', '1', 47, 7.5, 2, 6, 2, 2, 4);
INSERT INTO `participantes` (`parti_cod`, `parti_id`, `parti_fuent`, `parti_flag`, `parti_age`, `parti_ash`, `parti_gen`, `parti_ocu`, `parti_esla`, `parti_edu`, `parti_rang`) VALUES
	(278, '\nP0278', 'synthetic_ai', '1', 30, 6.5, 1, 3, 2, 1, 2);
INSERT INTO `participantes` (`parti_cod`, `parti_id`, `parti_fuent`, `parti_flag`, `parti_age`, `parti_ash`, `parti_gen`, `parti_ocu`, `parti_esla`, `parti_edu`, `parti_rang`) VALUES
	(279, '\nP0279', 'synthetic_ai', '1', 63, 8.0, 2, 5, 3, 1, 6);
INSERT INTO `participantes` (`parti_cod`, `parti_id`, `parti_fuent`, `parti_flag`, `parti_age`, `parti_ash`, `parti_gen`, `parti_ocu`, `parti_esla`, `parti_edu`, `parti_rang`) VALUES
	(280, '\nP0280', 'synthetic_ai', '1', 34, 6.5, 2, 7, 6, 1, 2);
INSERT INTO `participantes` (`parti_cod`, `parti_id`, `parti_fuent`, `parti_flag`, `parti_age`, `parti_ash`, `parti_gen`, `parti_ocu`, `parti_esla`, `parti_edu`, `parti_rang`) VALUES
	(281, '\nP0281', 'synthetic_ai', '1', 25, 6.5, 1, 12, 2, 5, 5);
INSERT INTO `participantes` (`parti_cod`, `parti_id`, `parti_fuent`, `parti_flag`, `parti_age`, `parti_ash`, `parti_gen`, `parti_ocu`, `parti_esla`, `parti_edu`, `parti_rang`) VALUES
	(282, '\nP0282', 'synthetic_ai', '1', 49, 7.0, 2, 2, 2, 2, 4);
INSERT INTO `participantes` (`parti_cod`, `parti_id`, `parti_fuent`, `parti_flag`, `parti_age`, `parti_ash`, `parti_gen`, `parti_ocu`, `parti_esla`, `parti_edu`, `parti_rang`) VALUES
	(283, '\nP0283', 'synthetic_ai', '1', 29, 7.0, 1, 6, 2, 2, 5);
INSERT INTO `participantes` (`parti_cod`, `parti_id`, `parti_fuent`, `parti_flag`, `parti_age`, `parti_ash`, `parti_gen`, `parti_ocu`, `parti_esla`, `parti_edu`, `parti_rang`) VALUES
	(284, '\nP0284', 'synthetic_ai', '1', 39, 7.0, 1, 4, 2, 6, 2);
INSERT INTO `participantes` (`parti_cod`, `parti_id`, `parti_fuent`, `parti_flag`, `parti_age`, `parti_ash`, `parti_gen`, `parti_ocu`, `parti_esla`, `parti_edu`, `parti_rang`) VALUES
	(285, '\nP0285', 'synthetic_ai', '1', 20, 6.5, 2, 1, 1, 3, 1);
INSERT INTO `participantes` (`parti_cod`, `parti_id`, `parti_fuent`, `parti_flag`, `parti_age`, `parti_ash`, `parti_gen`, `parti_ocu`, `parti_esla`, `parti_edu`, `parti_rang`) VALUES
	(286, '\nP0286', 'synthetic_ai', '1', 43, 7.0, 1, 11, 2, 1, 4);
INSERT INTO `participantes` (`parti_cod`, `parti_id`, `parti_fuent`, `parti_flag`, `parti_age`, `parti_ash`, `parti_gen`, `parti_ocu`, `parti_esla`, `parti_edu`, `parti_rang`) VALUES
	(287, '\nP0287', 'synthetic_ai', '1', 56, 7.5, 2, 1, 2, 1, 7);
INSERT INTO `participantes` (`parti_cod`, `parti_id`, `parti_fuent`, `parti_flag`, `parti_age`, `parti_ash`, `parti_gen`, `parti_ocu`, `parti_esla`, `parti_edu`, `parti_rang`) VALUES
	(288, '\nP0288', 'synthetic_ai', '1', 27, 6.5, 1, 3, 2, 1, 5);
INSERT INTO `participantes` (`parti_cod`, `parti_id`, `parti_fuent`, `parti_flag`, `parti_age`, `parti_ash`, `parti_gen`, `parti_ocu`, `parti_esla`, `parti_edu`, `parti_rang`) VALUES
	(289, '\nP0289', 'synthetic_ai', '1', 37, 7.0, 2, 2, 2, 2, 2);
INSERT INTO `participantes` (`parti_cod`, `parti_id`, `parti_fuent`, `parti_flag`, `parti_age`, `parti_ash`, `parti_gen`, `parti_ocu`, `parti_esla`, `parti_edu`, `parti_rang`) VALUES
	(290, '\nP0290', 'synthetic_ai', '1', 70, 8.5, 1, 5, 3, 3, 6);
INSERT INTO `participantes` (`parti_cod`, `parti_id`, `parti_fuent`, `parti_flag`, `parti_age`, `parti_ash`, `parti_gen`, `parti_ocu`, `parti_esla`, `parti_edu`, `parti_rang`) VALUES
	(291, '\nP0291', 'synthetic_ai', '1', 33, 7.0, 2, 10, 2, 1, 2);
INSERT INTO `participantes` (`parti_cod`, `parti_id`, `parti_fuent`, `parti_flag`, `parti_age`, `parti_ash`, `parti_gen`, `parti_ocu`, `parti_esla`, `parti_edu`, `parti_rang`) VALUES
	(292, '\nP0292', 'synthetic_ai', '1', 24, 6.5, 1, 5, 7, 1, 3);
INSERT INTO `participantes` (`parti_cod`, `parti_id`, `parti_fuent`, `parti_flag`, `parti_age`, `parti_ash`, `parti_gen`, `parti_ocu`, `parti_esla`, `parti_edu`, `parti_rang`) VALUES
	(293, '\nP0293', 'synthetic_ai', '1', 48, 7.0, 2, 3, 2, 2, 4);
INSERT INTO `participantes` (`parti_cod`, `parti_id`, `parti_fuent`, `parti_flag`, `parti_age`, `parti_ash`, `parti_gen`, `parti_ocu`, `parti_esla`, `parti_edu`, `parti_rang`) VALUES
	(294, '\nP0294', 'synthetic_ai', '1', 22, 5.5, 2, 1, 1, 1, 3);
INSERT INTO `participantes` (`parti_cod`, `parti_id`, `parti_fuent`, `parti_flag`, `parti_age`, `parti_ash`, `parti_gen`, `parti_ocu`, `parti_esla`, `parti_edu`, `parti_rang`) VALUES
	(295, '\nP0295', 'synthetic_ai', '1', 40, 6.5, 1, 4, 2, 6, 4);
INSERT INTO `participantes` (`parti_cod`, `parti_id`, `parti_fuent`, `parti_flag`, `parti_age`, `parti_ash`, `parti_gen`, `parti_ocu`, `parti_esla`, `parti_edu`, `parti_rang`) VALUES
	(296, '\nP0296', 'synthetic_ai', '1', 54, 7.5, 2, 2, 2, 2, 7);
INSERT INTO `participantes` (`parti_cod`, `parti_id`, `parti_fuent`, `parti_flag`, `parti_age`, `parti_ash`, `parti_gen`, `parti_ocu`, `parti_esla`, `parti_edu`, `parti_rang`) VALUES
	(297, '\nP0297', 'synthetic_ai', '1', 26, 6.5, 1, 8, 2, 1, 5);
INSERT INTO `participantes` (`parti_cod`, `parti_id`, `parti_fuent`, `parti_flag`, `parti_age`, `parti_ash`, `parti_gen`, `parti_ocu`, `parti_esla`, `parti_edu`, `parti_rang`) VALUES
	(298, '\nP0298', 'synthetic_ai', '1', 31, 6.5, 2, 9, 2, 1, 2);
INSERT INTO `participantes` (`parti_cod`, `parti_id`, `parti_fuent`, `parti_flag`, `parti_age`, `parti_ash`, `parti_gen`, `parti_ocu`, `parti_esla`, `parti_edu`, `parti_rang`) VALUES
	(299, '\nP0299', 'synthetic_ai', '1', 44, 7.0, 1, 11, 2, 1, 4);
INSERT INTO `participantes` (`parti_cod`, `parti_id`, `parti_fuent`, `parti_flag`, `parti_age`, `parti_ash`, `parti_gen`, `parti_ocu`, `parti_esla`, `parti_edu`, `parti_rang`) VALUES
	(300, '\nP0300', 'synthetic_ai', '1', 61, 8.0, 2, 5, 3, 1, 6);

-- Volcando estructura para tabla procrastinacion.Rango_edad
CREATE TABLE IF NOT EXISTS `Rango_edad` (
  `randad_cod` tinyint(3) unsigned NOT NULL AUTO_INCREMENT,
  `randad_des` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`randad_cod`),
  UNIQUE KEY `randad_des` (`randad_des`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;

-- Volcando datos para la tabla procrastinacion.Rango_edad: ~7 rows (aproximadamente)
INSERT INTO `Rango_edad` (`randad_cod`, `randad_des`) VALUES
	(1, '18-20');
INSERT INTO `Rango_edad` (`randad_cod`, `randad_des`) VALUES
	(2, '30-39');
INSERT INTO `Rango_edad` (`randad_cod`, `randad_des`) VALUES
	(3, '21-24');
INSERT INTO `Rango_edad` (`randad_cod`, `randad_des`) VALUES
	(4, '40-49');
INSERT INTO `Rango_edad` (`randad_cod`, `randad_des`) VALUES
	(5, '25-29');
INSERT INTO `Rango_edad` (`randad_cod`, `randad_des`) VALUES
	(6, '60+');
INSERT INTO `Rango_edad` (`randad_cod`, `randad_des`) VALUES
	(7, '50-59');

-- Volcando estructura para tabla procrastinacion.todo
CREATE TABLE IF NOT EXISTS `todo` (
  `participant_id` varchar(250) DEFAULT NULL,
  `data_source` varchar(20) DEFAULT NULL,
  `synthetic_flag` varchar(250) DEFAULT NULL,
  `age` tinyint(2) unsigned DEFAULT NULL,
  `age_group` tinyint(3) unsigned DEFAULT NULL,
  `gender` tinyint(3) unsigned DEFAULT NULL,
  `education_level` tinyint(3) unsigned DEFAULT NULL,
  `employment_status` tinyint(3) unsigned DEFAULT NULL,
  `occupation_category` tinyint(3) unsigned DEFAULT NULL,
  `average_sleep_hours` decimal(10,1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;

-- Volcando datos para la tabla procrastinacion.todo: ~300 rows (aproximadamente)
INSERT INTO `todo` (`participant_id`, `data_source`, `synthetic_flag`, `age`, `age_group`, `gender`, `education_level`, `employment_status`, `occupation_category`, `average_sleep_hours`) VALUES
	('\nP0001', 'synthetic_ai', '1', 19, 1, 1, 1, 1, 1, 6.5);
INSERT INTO `todo` (`participant_id`, `data_source`, `synthetic_flag`, `age`, `age_group`, `gender`, `education_level`, `employment_status`, `occupation_category`, `average_sleep_hours`) VALUES
	('\nP0002', 'synthetic_ai', '1', 34, 2, 2, 2, 2, 2, 7.0);
INSERT INTO `todo` (`participant_id`, `data_source`, `synthetic_flag`, `age`, `age_group`, `gender`, `education_level`, `employment_status`, `occupation_category`, `average_sleep_hours`) VALUES
	('\nP0003', 'synthetic_ai', '1', 22, 3, 2, 1, 1, 1, 6.0);
INSERT INTO `todo` (`participant_id`, `data_source`, `synthetic_flag`, `age`, `age_group`, `gender`, `education_level`, `employment_status`, `occupation_category`, `average_sleep_hours`) VALUES
	('\nP0004', 'synthetic_ai', '1', 45, 4, 1, 1, 2, 3, 7.5);
INSERT INTO `todo` (`participant_id`, `data_source`, `synthetic_flag`, `age`, `age_group`, `gender`, `education_level`, `employment_status`, `occupation_category`, `average_sleep_hours`) VALUES
	('\nP0005', 'synthetic_ai', '1', 28, 5, 3, 2, 2, 4, 6.5);
INSERT INTO `todo` (`participant_id`, `data_source`, `synthetic_flag`, `age`, `age_group`, `gender`, `education_level`, `employment_status`, `occupation_category`, `average_sleep_hours`) VALUES
	('\nP0006', 'synthetic_ai', '1', 62, 6, 2, 1, 3, 5, 8.0);
INSERT INTO `todo` (`participant_id`, `data_source`, `synthetic_flag`, `age`, `age_group`, `gender`, `education_level`, `employment_status`, `occupation_category`, `average_sleep_hours`) VALUES
	('\nP0007', 'synthetic_ai', '1', 25, 5, 1, 1, 2, 6, 6.0);
INSERT INTO `todo` (`participant_id`, `data_source`, `synthetic_flag`, `age`, `age_group`, `gender`, `education_level`, `employment_status`, `occupation_category`, `average_sleep_hours`) VALUES
	('\nP0008', 'synthetic_ai', '1', 31, 2, 2, 2, 4, 7, 7.0);
INSERT INTO `todo` (`participant_id`, `data_source`, `synthetic_flag`, `age`, `age_group`, `gender`, `education_level`, `employment_status`, `occupation_category`, `average_sleep_hours`) VALUES
	('\nP0009', 'synthetic_ai', '1', 20, 1, 1, 3, 1, 1, 6.0);
INSERT INTO `todo` (`participant_id`, `data_source`, `synthetic_flag`, `age`, `age_group`, `gender`, `education_level`, `employment_status`, `occupation_category`, `average_sleep_hours`) VALUES
	('\nP0010', 'synthetic_ai', '1', 52, 7, 1, 2, 2, 8, 7.5);
INSERT INTO `todo` (`participant_id`, `data_source`, `synthetic_flag`, `age`, `age_group`, `gender`, `education_level`, `employment_status`, `occupation_category`, `average_sleep_hours`) VALUES
	('\nP0011', 'synthetic_ai', '1', 27, 5, 2, 1, 2, 1, 7.0);
INSERT INTO `todo` (`participant_id`, `data_source`, `synthetic_flag`, `age`, `age_group`, `gender`, `education_level`, `employment_status`, `occupation_category`, `average_sleep_hours`) VALUES
	('\nP0012', 'synthetic_ai', '1', 38, 2, 1, 4, 2, 4, 6.5);
INSERT INTO `todo` (`participant_id`, `data_source`, `synthetic_flag`, `age`, `age_group`, `gender`, `education_level`, `employment_status`, `occupation_category`, `average_sleep_hours`) VALUES
	('\nP0013', 'synthetic_ai', '1', 23, 3, 2, 1, 5, 9, 5.5);
INSERT INTO `todo` (`participant_id`, `data_source`, `synthetic_flag`, `age`, `age_group`, `gender`, `education_level`, `employment_status`, `occupation_category`, `average_sleep_hours`) VALUES
	('\nP0014', 'synthetic_ai', '1', 47, 4, 2, 2, 2, 2, 7.0);
INSERT INTO `todo` (`participant_id`, `data_source`, `synthetic_flag`, `age`, `age_group`, `gender`, `education_level`, `employment_status`, `occupation_category`, `average_sleep_hours`) VALUES
	('\nP0015', 'synthetic_ai', '1', 29, 5, 1, 2, 2, 3, 6.5);
INSERT INTO `todo` (`participant_id`, `data_source`, `synthetic_flag`, `age`, `age_group`, `gender`, `education_level`, `employment_status`, `occupation_category`, `average_sleep_hours`) VALUES
	('\nP0016', 'synthetic_ai', '1', 65, 6, 1, 3, 3, 5, 8.5);
INSERT INTO `todo` (`participant_id`, `data_source`, `synthetic_flag`, `age`, `age_group`, `gender`, `education_level`, `employment_status`, `occupation_category`, `average_sleep_hours`) VALUES
	('\nP0017', 'synthetic_ai', '1', 33, 2, 2, 1, 2, 10, 7.0);
INSERT INTO `todo` (`participant_id`, `data_source`, `synthetic_flag`, `age`, `age_group`, `gender`, `education_level`, `employment_status`, `occupation_category`, `average_sleep_hours`) VALUES
	('\nP0018', 'synthetic_ai', '1', 21, 3, 1, 1, 1, 1, 6.0);
INSERT INTO `todo` (`participant_id`, `data_source`, `synthetic_flag`, `age`, `age_group`, `gender`, `education_level`, `employment_status`, `occupation_category`, `average_sleep_hours`) VALUES
	('\nP0019', 'synthetic_ai', '1', 55, 7, 2, 2, 2, 1, 7.5);
INSERT INTO `todo` (`participant_id`, `data_source`, `synthetic_flag`, `age`, `age_group`, `gender`, `education_level`, `employment_status`, `occupation_category`, `average_sleep_hours`) VALUES
	('\nP0020', 'synthetic_ai', '1', 26, 5, 3, 2, 6, 7, 6.5);
INSERT INTO `todo` (`participant_id`, `data_source`, `synthetic_flag`, `age`, `age_group`, `gender`, `education_level`, `employment_status`, `occupation_category`, `average_sleep_hours`) VALUES
	('\nP0021', 'synthetic_ai', '1', 41, 4, 1, 1, 2, 11, 7.0);
INSERT INTO `todo` (`participant_id`, `data_source`, `synthetic_flag`, `age`, `age_group`, `gender`, `education_level`, `employment_status`, `occupation_category`, `average_sleep_hours`) VALUES
	('\nP0022', 'synthetic_ai', '1', 19, 1, 2, 3, 1, 1, 7.0);
INSERT INTO `todo` (`participant_id`, `data_source`, `synthetic_flag`, `age`, `age_group`, `gender`, `education_level`, `employment_status`, `occupation_category`, `average_sleep_hours`) VALUES
	('\nP0023', 'synthetic_ai', '1', 37, 2, 1, 4, 2, 4, 6.0);
INSERT INTO `todo` (`participant_id`, `data_source`, `synthetic_flag`, `age`, `age_group`, `gender`, `education_level`, `employment_status`, `occupation_category`, `average_sleep_hours`) VALUES
	('\nP0024', 'synthetic_ai', '1', 58, 7, 2, 1, 5, 9, 7.0);
INSERT INTO `todo` (`participant_id`, `data_source`, `synthetic_flag`, `age`, `age_group`, `gender`, `education_level`, `employment_status`, `occupation_category`, `average_sleep_hours`) VALUES
	('\nP0025', 'synthetic_ai', '1', 24, 3, 1, 1, 7, 5, 6.5);
INSERT INTO `todo` (`participant_id`, `data_source`, `synthetic_flag`, `age`, `age_group`, `gender`, `education_level`, `employment_status`, `occupation_category`, `average_sleep_hours`) VALUES
	('\nP0026', 'synthetic_ai', '1', 43, 4, 2, 2, 2, 6, 7.0);
INSERT INTO `todo` (`participant_id`, `data_source`, `synthetic_flag`, `age`, `age_group`, `gender`, `education_level`, `employment_status`, `occupation_category`, `average_sleep_hours`) VALUES
	('\nP0027', 'synthetic_ai', '1', 30, 2, 1, 1, 2, 12, 6.5);
INSERT INTO `todo` (`participant_id`, `data_source`, `synthetic_flag`, `age`, `age_group`, `gender`, `education_level`, `employment_status`, `occupation_category`, `average_sleep_hours`) VALUES
	('\nP0028', 'synthetic_ai', '1', 18, 1, 2, 3, 1, 1, 6.5);
INSERT INTO `todo` (`participant_id`, `data_source`, `synthetic_flag`, `age`, `age_group`, `gender`, `education_level`, `employment_status`, `occupation_category`, `average_sleep_hours`) VALUES
	('\nP0029', 'synthetic_ai', '1', 50, 7, 1, 2, 2, 3, 7.0);
INSERT INTO `todo` (`participant_id`, `data_source`, `synthetic_flag`, `age`, `age_group`, `gender`, `education_level`, `employment_status`, `occupation_category`, `average_sleep_hours`) VALUES
	('\nP0030', 'synthetic_ai', '1', 35, 2, 2, 1, 4, 10, 7.5);
INSERT INTO `todo` (`participant_id`, `data_source`, `synthetic_flag`, `age`, `age_group`, `gender`, `education_level`, `employment_status`, `occupation_category`, `average_sleep_hours`) VALUES
	('\nP0031', 'synthetic_ai', '1', 22, 3, 1, 1, 1, 1, 5.5);
INSERT INTO `todo` (`participant_id`, `data_source`, `synthetic_flag`, `age`, `age_group`, `gender`, `education_level`, `employment_status`, `occupation_category`, `average_sleep_hours`) VALUES
	('\nP0032', 'synthetic_ai', '1', 46, 4, 2, 2, 2, 2, 7.5);
INSERT INTO `todo` (`participant_id`, `data_source`, `synthetic_flag`, `age`, `age_group`, `gender`, `education_level`, `employment_status`, `occupation_category`, `average_sleep_hours`) VALUES
	('\nP0033', 'synthetic_ai', '1', 28, 5, 1, 1, 2, 13, 6.5);
INSERT INTO `todo` (`participant_id`, `data_source`, `synthetic_flag`, `age`, `age_group`, `gender`, `education_level`, `employment_status`, `occupation_category`, `average_sleep_hours`) VALUES
	('\nP0034', 'synthetic_ai', '1', 67, 6, 2, 3, 3, 5, 8.0);
INSERT INTO `todo` (`participant_id`, `data_source`, `synthetic_flag`, `age`, `age_group`, `gender`, `education_level`, `employment_status`, `occupation_category`, `average_sleep_hours`) VALUES
	('\nP0035', 'synthetic_ai', '1', 32, 2, 1, 2, 6, 3, 6.5);
INSERT INTO `todo` (`participant_id`, `data_source`, `synthetic_flag`, `age`, `age_group`, `gender`, `education_level`, `employment_status`, `occupation_category`, `average_sleep_hours`) VALUES
	('\nP0036', 'synthetic_ai', '1', 20, 1, 2, 3, 1, 1, 6.0);
INSERT INTO `todo` (`participant_id`, `data_source`, `synthetic_flag`, `age`, `age_group`, `gender`, `education_level`, `employment_status`, `occupation_category`, `average_sleep_hours`) VALUES
	('\nP0037', 'synthetic_ai', '1', 53, 7, 1, 1, 2, 8, 7.5);
INSERT INTO `todo` (`participant_id`, `data_source`, `synthetic_flag`, `age`, `age_group`, `gender`, `education_level`, `employment_status`, `occupation_category`, `average_sleep_hours`) VALUES
	('\nP0038', 'synthetic_ai', '1', 27, 5, 2, 2, 2, 2, 7.0);
INSERT INTO `todo` (`participant_id`, `data_source`, `synthetic_flag`, `age`, `age_group`, `gender`, `education_level`, `employment_status`, `occupation_category`, `average_sleep_hours`) VALUES
	('\nP0039', 'synthetic_ai', '1', 42, 4, 1, 1, 2, 11, 7.0);
INSERT INTO `todo` (`participant_id`, `data_source`, `synthetic_flag`, `age`, `age_group`, `gender`, `education_level`, `employment_status`, `occupation_category`, `average_sleep_hours`) VALUES
	('\nP0040', 'synthetic_ai', '1', 24, 3, 2, 1, 5, 12, 5.5);
INSERT INTO `todo` (`participant_id`, `data_source`, `synthetic_flag`, `age`, `age_group`, `gender`, `education_level`, `employment_status`, `occupation_category`, `average_sleep_hours`) VALUES
	('\nP0041', 'synthetic_ai', '1', 60, 6, 2, 1, 5, 1, 7.5);
INSERT INTO `todo` (`participant_id`, `data_source`, `synthetic_flag`, `age`, `age_group`, `gender`, `education_level`, `employment_status`, `occupation_category`, `average_sleep_hours`) VALUES
	('\nP0042', 'synthetic_ai', '1', 36, 2, 1, 4, 2, 4, 6.5);
INSERT INTO `todo` (`participant_id`, `data_source`, `synthetic_flag`, `age`, `age_group`, `gender`, `education_level`, `employment_status`, `occupation_category`, `average_sleep_hours`) VALUES
	('\nP0043', 'synthetic_ai', '1', 23, 3, 1, 5, 7, 5, 6.5);
INSERT INTO `todo` (`participant_id`, `data_source`, `synthetic_flag`, `age`, `age_group`, `gender`, `education_level`, `employment_status`, `occupation_category`, `average_sleep_hours`) VALUES
	('\nP0044', 'synthetic_ai', '1', 48, 4, 2, 2, 2, 2, 7.0);
INSERT INTO `todo` (`participant_id`, `data_source`, `synthetic_flag`, `age`, `age_group`, `gender`, `education_level`, `employment_status`, `occupation_category`, `average_sleep_hours`) VALUES
	('\nP0045', 'synthetic_ai', '1', 29, 5, 1, 1, 2, 3, 6.0);
INSERT INTO `todo` (`participant_id`, `data_source`, `synthetic_flag`, `age`, `age_group`, `gender`, `education_level`, `employment_status`, `occupation_category`, `average_sleep_hours`) VALUES
	('\nP0046', 'synthetic_ai', '1', 57, 7, 2, 1, 2, 1, 7.5);
INSERT INTO `todo` (`participant_id`, `data_source`, `synthetic_flag`, `age`, `age_group`, `gender`, `education_level`, `employment_status`, `occupation_category`, `average_sleep_hours`) VALUES
	('\nP0047', 'synthetic_ai', '1', 26, 5, 2, 1, 2, 6, 6.5);
INSERT INTO `todo` (`participant_id`, `data_source`, `synthetic_flag`, `age`, `age_group`, `gender`, `education_level`, `employment_status`, `occupation_category`, `average_sleep_hours`) VALUES
	('\nP0048', 'synthetic_ai', '1', 39, 2, 1, 1, 2, 10, 7.0);
INSERT INTO `todo` (`participant_id`, `data_source`, `synthetic_flag`, `age`, `age_group`, `gender`, `education_level`, `employment_status`, `occupation_category`, `average_sleep_hours`) VALUES
	('\nP0049', 'synthetic_ai', '1', 21, 3, 2, 1, 1, 1, 6.0);
INSERT INTO `todo` (`participant_id`, `data_source`, `synthetic_flag`, `age`, `age_group`, `gender`, `education_level`, `employment_status`, `occupation_category`, `average_sleep_hours`) VALUES
	('\nP0050', 'synthetic_ai', '1', 44, 4, 1, 2, 2, 3, 7.0);
INSERT INTO `todo` (`participant_id`, `data_source`, `synthetic_flag`, `age`, `age_group`, `gender`, `education_level`, `employment_status`, `occupation_category`, `average_sleep_hours`) VALUES
	('\nP0051', 'synthetic_ai', '1', 31, 2, 2, 2, 4, 7, 7.0);
INSERT INTO `todo` (`participant_id`, `data_source`, `synthetic_flag`, `age`, `age_group`, `gender`, `education_level`, `employment_status`, `occupation_category`, `average_sleep_hours`) VALUES
	('\nP0052', 'synthetic_ai', '1', 68, 6, 1, 3, 3, 5, 8.5);
INSERT INTO `todo` (`participant_id`, `data_source`, `synthetic_flag`, `age`, `age_group`, `gender`, `education_level`, `employment_status`, `occupation_category`, `average_sleep_hours`) VALUES
	('\nP0053', 'synthetic_ai', '1', 25, 5, 1, 1, 6, 7, 6.0);
INSERT INTO `todo` (`participant_id`, `data_source`, `synthetic_flag`, `age`, `age_group`, `gender`, `education_level`, `employment_status`, `occupation_category`, `average_sleep_hours`) VALUES
	('\nP0054', 'synthetic_ai', '1', 49, 4, 2, 1, 2, 8, 7.0);
INSERT INTO `todo` (`participant_id`, `data_source`, `synthetic_flag`, `age`, `age_group`, `gender`, `education_level`, `employment_status`, `occupation_category`, `average_sleep_hours`) VALUES
	('\nP0055', 'synthetic_ai', '1', 22, 3, 1, 1, 1, 1, 5.5);
INSERT INTO `todo` (`participant_id`, `data_source`, `synthetic_flag`, `age`, `age_group`, `gender`, `education_level`, `employment_status`, `occupation_category`, `average_sleep_hours`) VALUES
	('\nP0056', 'synthetic_ai', '1', 34, 2, 2, 2, 2, 2, 7.0);
INSERT INTO `todo` (`participant_id`, `data_source`, `synthetic_flag`, `age`, `age_group`, `gender`, `education_level`, `employment_status`, `occupation_category`, `average_sleep_hours`) VALUES
	('\nP0057', 'synthetic_ai', '1', 72, 6, 2, 1, 3, 5, 8.0);
INSERT INTO `todo` (`participant_id`, `data_source`, `synthetic_flag`, `age`, `age_group`, `gender`, `education_level`, `employment_status`, `occupation_category`, `average_sleep_hours`) VALUES
	('\nP0058', 'synthetic_ai', '1', 27, 5, 1, 5, 2, 13, 6.5);
INSERT INTO `todo` (`participant_id`, `data_source`, `synthetic_flag`, `age`, `age_group`, `gender`, `education_level`, `employment_status`, `occupation_category`, `average_sleep_hours`) VALUES
	('\nP0059', 'synthetic_ai', '1', 33, 2, 2, 1, 2, 10, 7.0);
INSERT INTO `todo` (`participant_id`, `data_source`, `synthetic_flag`, `age`, `age_group`, `gender`, `education_level`, `employment_status`, `occupation_category`, `average_sleep_hours`) VALUES
	('\nP0060', 'synthetic_ai', '1', 19, 1, 1, 3, 1, 1, 6.5);
INSERT INTO `todo` (`participant_id`, `data_source`, `synthetic_flag`, `age`, `age_group`, `gender`, `education_level`, `employment_status`, `occupation_category`, `average_sleep_hours`) VALUES
	('\nP0061', 'synthetic_ai', '1', 45, 4, 2, 2, 2, 6, 7.5);
INSERT INTO `todo` (`participant_id`, `data_source`, `synthetic_flag`, `age`, `age_group`, `gender`, `education_level`, `employment_status`, `occupation_category`, `average_sleep_hours`) VALUES
	('\nP0062', 'synthetic_ai', '1', 23, 3, 2, 1, 1, 1, 6.0);
INSERT INTO `todo` (`participant_id`, `data_source`, `synthetic_flag`, `age`, `age_group`, `gender`, `education_level`, `employment_status`, `occupation_category`, `average_sleep_hours`) VALUES
	('\nP0063', 'synthetic_ai', '1', 38, 2, 1, 1, 2, 9, 6.5);
INSERT INTO `todo` (`participant_id`, `data_source`, `synthetic_flag`, `age`, `age_group`, `gender`, `education_level`, `employment_status`, `occupation_category`, `average_sleep_hours`) VALUES
	('\nP0064', 'synthetic_ai', '1', 54, 7, 2, 2, 2, 2, 7.5);
INSERT INTO `todo` (`participant_id`, `data_source`, `synthetic_flag`, `age`, `age_group`, `gender`, `education_level`, `employment_status`, `occupation_category`, `average_sleep_hours`) VALUES
	('\nP0065', 'synthetic_ai', '1', 29, 5, 3, 2, 2, 3, 6.5);
INSERT INTO `todo` (`participant_id`, `data_source`, `synthetic_flag`, `age`, `age_group`, `gender`, `education_level`, `employment_status`, `occupation_category`, `average_sleep_hours`) VALUES
	('\nP0066', 'synthetic_ai', '1', 61, 6, 1, 1, 3, 5, 8.5);
INSERT INTO `todo` (`participant_id`, `data_source`, `synthetic_flag`, `age`, `age_group`, `gender`, `education_level`, `employment_status`, `occupation_category`, `average_sleep_hours`) VALUES
	('\nP0067', 'synthetic_ai', '1', 26, 5, 1, 1, 2, 11, 6.5);
INSERT INTO `todo` (`participant_id`, `data_source`, `synthetic_flag`, `age`, `age_group`, `gender`, `education_level`, `employment_status`, `occupation_category`, `average_sleep_hours`) VALUES
	('\nP0068', 'synthetic_ai', '1', 35, 2, 2, 1, 4, 7, 7.0);
INSERT INTO `todo` (`participant_id`, `data_source`, `synthetic_flag`, `age`, `age_group`, `gender`, `education_level`, `employment_status`, `occupation_category`, `average_sleep_hours`) VALUES
	('\nP0069', 'synthetic_ai', '1', 42, 4, 1, 4, 2, 4, 6.5);
INSERT INTO `todo` (`participant_id`, `data_source`, `synthetic_flag`, `age`, `age_group`, `gender`, `education_level`, `employment_status`, `occupation_category`, `average_sleep_hours`) VALUES
	('\nP0070', 'synthetic_ai', '1', 20, 1, 2, 3, 1, 1, 6.0);
INSERT INTO `todo` (`participant_id`, `data_source`, `synthetic_flag`, `age`, `age_group`, `gender`, `education_level`, `employment_status`, `occupation_category`, `average_sleep_hours`) VALUES
	('\nP0071', 'synthetic_ai', '1', 47, 4, 2, 2, 2, 8, 7.0);
INSERT INTO `todo` (`participant_id`, `data_source`, `synthetic_flag`, `age`, `age_group`, `gender`, `education_level`, `employment_status`, `occupation_category`, `average_sleep_hours`) VALUES
	('\nP0072', 'synthetic_ai', '1', 24, 3, 1, 5, 7, 5, 6.0);
INSERT INTO `todo` (`participant_id`, `data_source`, `synthetic_flag`, `age`, `age_group`, `gender`, `education_level`, `employment_status`, `occupation_category`, `average_sleep_hours`) VALUES
	('\nP0073', 'synthetic_ai', '1', 52, 7, 1, 2, 2, 3, 7.0);
INSERT INTO `todo` (`participant_id`, `data_source`, `synthetic_flag`, `age`, `age_group`, `gender`, `education_level`, `employment_status`, `occupation_category`, `average_sleep_hours`) VALUES
	('\nP0074', 'synthetic_ai', '1', 30, 2, 2, 1, 2, 1, 7.0);
INSERT INTO `todo` (`participant_id`, `data_source`, `synthetic_flag`, `age`, `age_group`, `gender`, `education_level`, `employment_status`, `occupation_category`, `average_sleep_hours`) VALUES
	('\nP0075', 'synthetic_ai', '1', 18, 1, 1, 3, 1, 1, 6.5);
INSERT INTO `todo` (`participant_id`, `data_source`, `synthetic_flag`, `age`, `age_group`, `gender`, `education_level`, `employment_status`, `occupation_category`, `average_sleep_hours`) VALUES
	('\nP0076', 'synthetic_ai', '1', 40, 4, 2, 2, 2, 2, 7.5);
INSERT INTO `todo` (`participant_id`, `data_source`, `synthetic_flag`, `age`, `age_group`, `gender`, `education_level`, `employment_status`, `occupation_category`, `average_sleep_hours`) VALUES
	('\nP0077', 'synthetic_ai', '1', 28, 5, 1, 2, 2, 6, 7.0);
INSERT INTO `todo` (`participant_id`, `data_source`, `synthetic_flag`, `age`, `age_group`, `gender`, `education_level`, `employment_status`, `occupation_category`, `average_sleep_hours`) VALUES
	('\nP0078', 'synthetic_ai', '1', 63, 6, 2, 5, 3, 5, 8.0);
INSERT INTO `todo` (`participant_id`, `data_source`, `synthetic_flag`, `age`, `age_group`, `gender`, `education_level`, `employment_status`, `occupation_category`, `average_sleep_hours`) VALUES
	('\nP0079', 'synthetic_ai', '1', 33, 2, 1, 1, 6, 3, 6.5);
INSERT INTO `todo` (`participant_id`, `data_source`, `synthetic_flag`, `age`, `age_group`, `gender`, `education_level`, `employment_status`, `occupation_category`, `average_sleep_hours`) VALUES
	('\nP0080', 'synthetic_ai', '1', 21, 3, 2, 1, 1, 1, 5.5);
INSERT INTO `todo` (`participant_id`, `data_source`, `synthetic_flag`, `age`, `age_group`, `gender`, `education_level`, `employment_status`, `occupation_category`, `average_sleep_hours`) VALUES
	('\nP0081', 'synthetic_ai', '1', 46, 4, 1, 1, 2, 11, 7.5);
INSERT INTO `todo` (`participant_id`, `data_source`, `synthetic_flag`, `age`, `age_group`, `gender`, `education_level`, `employment_status`, `occupation_category`, `average_sleep_hours`) VALUES
	('\nP0082', 'synthetic_ai', '1', 25, 5, 2, 5, 5, 12, 5.5);
INSERT INTO `todo` (`participant_id`, `data_source`, `synthetic_flag`, `age`, `age_group`, `gender`, `education_level`, `employment_status`, `occupation_category`, `average_sleep_hours`) VALUES
	('\nP0083', 'synthetic_ai', '1', 37, 2, 2, 2, 2, 4, 7.0);
INSERT INTO `todo` (`participant_id`, `data_source`, `synthetic_flag`, `age`, `age_group`, `gender`, `education_level`, `employment_status`, `occupation_category`, `average_sleep_hours`) VALUES
	('\nP0084', 'synthetic_ai', '1', 55, 7, 1, 2, 2, 8, 7.5);
INSERT INTO `todo` (`participant_id`, `data_source`, `synthetic_flag`, `age`, `age_group`, `gender`, `education_level`, `employment_status`, `occupation_category`, `average_sleep_hours`) VALUES
	('\nP0085', 'synthetic_ai', '1', 22, 3, 1, 1, 1, 1, 6.0);
INSERT INTO `todo` (`participant_id`, `data_source`, `synthetic_flag`, `age`, `age_group`, `gender`, `education_level`, `employment_status`, `occupation_category`, `average_sleep_hours`) VALUES
	('\nP0086', 'synthetic_ai', '1', 43, 4, 2, 1, 2, 6, 7.0);
INSERT INTO `todo` (`participant_id`, `data_source`, `synthetic_flag`, `age`, `age_group`, `gender`, `education_level`, `employment_status`, `occupation_category`, `average_sleep_hours`) VALUES
	('\nP0087', 'synthetic_ai', '1', 27, 5, 1, 1, 2, 3, 6.5);
INSERT INTO `todo` (`participant_id`, `data_source`, `synthetic_flag`, `age`, `age_group`, `gender`, `education_level`, `employment_status`, `occupation_category`, `average_sleep_hours`) VALUES
	('\nP0088', 'synthetic_ai', '1', 48, 4, 2, 2, 2, 2, 7.5);
INSERT INTO `todo` (`participant_id`, `data_source`, `synthetic_flag`, `age`, `age_group`, `gender`, `education_level`, `employment_status`, `occupation_category`, `average_sleep_hours`) VALUES
	('\nP0089', 'synthetic_ai', '1', 31, 2, 1, 5, 2, 9, 6.5);
INSERT INTO `todo` (`participant_id`, `data_source`, `synthetic_flag`, `age`, `age_group`, `gender`, `education_level`, `employment_status`, `occupation_category`, `average_sleep_hours`) VALUES
	('\nP0090', 'synthetic_ai', '1', 19, 1, 2, 3, 1, 1, 6.5);
INSERT INTO `todo` (`participant_id`, `data_source`, `synthetic_flag`, `age`, `age_group`, `gender`, `education_level`, `employment_status`, `occupation_category`, `average_sleep_hours`) VALUES
	('\nP0091', 'synthetic_ai', '1', 58, 7, 1, 1, 2, 13, 7.0);
INSERT INTO `todo` (`participant_id`, `data_source`, `synthetic_flag`, `age`, `age_group`, `gender`, `education_level`, `employment_status`, `occupation_category`, `average_sleep_hours`) VALUES
	('\nP0092', 'synthetic_ai', '1', 26, 5, 2, 1, 2, 10, 6.5);
INSERT INTO `todo` (`participant_id`, `data_source`, `synthetic_flag`, `age`, `age_group`, `gender`, `education_level`, `employment_status`, `occupation_category`, `average_sleep_hours`) VALUES
	('\nP0093', 'synthetic_ai', '1', 41, 4, 1, 2, 2, 3, 7.0);
INSERT INTO `todo` (`participant_id`, `data_source`, `synthetic_flag`, `age`, `age_group`, `gender`, `education_level`, `employment_status`, `occupation_category`, `average_sleep_hours`) VALUES
	('\nP0094', 'synthetic_ai', '1', 23, 3, 1, 1, 1, 1, 5.5);
INSERT INTO `todo` (`participant_id`, `data_source`, `synthetic_flag`, `age`, `age_group`, `gender`, `education_level`, `employment_status`, `occupation_category`, `average_sleep_hours`) VALUES
	('\nP0095', 'synthetic_ai', '1', 36, 2, 2, 4, 2, 4, 7.0);
INSERT INTO `todo` (`participant_id`, `data_source`, `synthetic_flag`, `age`, `age_group`, `gender`, `education_level`, `employment_status`, `occupation_category`, `average_sleep_hours`) VALUES
	('\nP0096', 'synthetic_ai', '1', 50, 7, 2, 1, 8, 5, 8.0);
INSERT INTO `todo` (`participant_id`, `data_source`, `synthetic_flag`, `age`, `age_group`, `gender`, `education_level`, `employment_status`, `occupation_category`, `average_sleep_hours`) VALUES
	('\nP0097', 'synthetic_ai', '1', 28, 5, 1, 1, 2, 12, 6.5);
INSERT INTO `todo` (`participant_id`, `data_source`, `synthetic_flag`, `age`, `age_group`, `gender`, `education_level`, `employment_status`, `occupation_category`, `average_sleep_hours`) VALUES
	('\nP0098', 'synthetic_ai', '1', 44, 4, 2, 2, 2, 2, 7.0);
INSERT INTO `todo` (`participant_id`, `data_source`, `synthetic_flag`, `age`, `age_group`, `gender`, `education_level`, `employment_status`, `occupation_category`, `average_sleep_hours`) VALUES
	('\nP0099', 'synthetic_ai', '1', 32, 2, 1, 1, 6, 7, 6.5);
INSERT INTO `todo` (`participant_id`, `data_source`, `synthetic_flag`, `age`, `age_group`, `gender`, `education_level`, `employment_status`, `occupation_category`, `average_sleep_hours`) VALUES
	('\nP0100', 'synthetic_ai', '1', 66, 6, 1, 3, 3, 5, 8.5);
INSERT INTO `todo` (`participant_id`, `data_source`, `synthetic_flag`, `age`, `age_group`, `gender`, `education_level`, `employment_status`, `occupation_category`, `average_sleep_hours`) VALUES
	('\nP0101', 'synthetic_ai', '1', 24, 3, 2, 1, 5, 9, 5.5);
INSERT INTO `todo` (`participant_id`, `data_source`, `synthetic_flag`, `age`, `age_group`, `gender`, `education_level`, `employment_status`, `occupation_category`, `average_sleep_hours`) VALUES
	('\nP0102', 'synthetic_ai', '1', 39, 2, 1, 2, 2, 3, 7.0);
INSERT INTO `todo` (`participant_id`, `data_source`, `synthetic_flag`, `age`, `age_group`, `gender`, `education_level`, `employment_status`, `occupation_category`, `average_sleep_hours`) VALUES
	('\nP0103', 'synthetic_ai', '1', 54, 7, 2, 1, 2, 1, 7.5);
INSERT INTO `todo` (`participant_id`, `data_source`, `synthetic_flag`, `age`, `age_group`, `gender`, `education_level`, `employment_status`, `occupation_category`, `average_sleep_hours`) VALUES
	('\nP0104', 'synthetic_ai', '1', 22, 3, 1, 1, 1, 1, 5.5);
INSERT INTO `todo` (`participant_id`, `data_source`, `synthetic_flag`, `age`, `age_group`, `gender`, `education_level`, `employment_status`, `occupation_category`, `average_sleep_hours`) VALUES
	('\nP0105', 'synthetic_ai', '1', 46, 4, 2, 2, 2, 2, 7.0);
INSERT INTO `todo` (`participant_id`, `data_source`, `synthetic_flag`, `age`, `age_group`, `gender`, `education_level`, `employment_status`, `occupation_category`, `average_sleep_hours`) VALUES
	('\nP0106', 'synthetic_ai', '1', 27, 5, 1, 2, 2, 6, 7.0);
INSERT INTO `todo` (`participant_id`, `data_source`, `synthetic_flag`, `age`, `age_group`, `gender`, `education_level`, `employment_status`, `occupation_category`, `average_sleep_hours`) VALUES
	('\nP0107', 'synthetic_ai', '1', 35, 2, 2, 1, 4, 10, 7.0);
INSERT INTO `todo` (`participant_id`, `data_source`, `synthetic_flag`, `age`, `age_group`, `gender`, `education_level`, `employment_status`, `occupation_category`, `average_sleep_hours`) VALUES
	('\nP0108', 'synthetic_ai', '1', 60, 6, 2, 1, 3, 5, 8.0);
INSERT INTO `todo` (`participant_id`, `data_source`, `synthetic_flag`, `age`, `age_group`, `gender`, `education_level`, `employment_status`, `occupation_category`, `average_sleep_hours`) VALUES
	('\nP0109', 'synthetic_ai', '1', 30, 2, 1, 1, 2, 11, 7.0);
INSERT INTO `todo` (`participant_id`, `data_source`, `synthetic_flag`, `age`, `age_group`, `gender`, `education_level`, `employment_status`, `occupation_category`, `average_sleep_hours`) VALUES
	('\nP0110', 'synthetic_ai', '1', 21, 3, 2, 1, 1, 1, 6.0);
INSERT INTO `todo` (`participant_id`, `data_source`, `synthetic_flag`, `age`, `age_group`, `gender`, `education_level`, `employment_status`, `occupation_category`, `average_sleep_hours`) VALUES
	('\nP0111', 'synthetic_ai', '1', 48, 4, 1, 2, 2, 3, 7.0);
INSERT INTO `todo` (`participant_id`, `data_source`, `synthetic_flag`, `age`, `age_group`, `gender`, `education_level`, `employment_status`, `occupation_category`, `average_sleep_hours`) VALUES
	('\nP0112', 'synthetic_ai', '1', 25, 5, 2, 1, 6, 7, 6.0);
INSERT INTO `todo` (`participant_id`, `data_source`, `synthetic_flag`, `age`, `age_group`, `gender`, `education_level`, `employment_status`, `occupation_category`, `average_sleep_hours`) VALUES
	('\nP0113', 'synthetic_ai', '1', 42, 4, 2, 4, 2, 4, 7.0);
INSERT INTO `todo` (`participant_id`, `data_source`, `synthetic_flag`, `age`, `age_group`, `gender`, `education_level`, `employment_status`, `occupation_category`, `average_sleep_hours`) VALUES
	('\nP0114', 'synthetic_ai', '1', 19, 1, 1, 3, 1, 1, 6.0);
INSERT INTO `todo` (`participant_id`, `data_source`, `synthetic_flag`, `age`, `age_group`, `gender`, `education_level`, `employment_status`, `occupation_category`, `average_sleep_hours`) VALUES
	('\nP0115', 'synthetic_ai', '1', 53, 7, 2, 2, 2, 2, 7.5);
INSERT INTO `todo` (`participant_id`, `data_source`, `synthetic_flag`, `age`, `age_group`, `gender`, `education_level`, `employment_status`, `occupation_category`, `average_sleep_hours`) VALUES
	('\nP0116', 'synthetic_ai', '1', 29, 5, 1, 1, 2, 8, 6.5);
INSERT INTO `todo` (`participant_id`, `data_source`, `synthetic_flag`, `age`, `age_group`, `gender`, `education_level`, `employment_status`, `occupation_category`, `average_sleep_hours`) VALUES
	('\nP0117', 'synthetic_ai', '1', 34, 2, 2, 1, 2, 9, 6.5);
INSERT INTO `todo` (`participant_id`, `data_source`, `synthetic_flag`, `age`, `age_group`, `gender`, `education_level`, `employment_status`, `occupation_category`, `average_sleep_hours`) VALUES
	('\nP0118', 'synthetic_ai', '1', 69, 6, 1, 5, 3, 5, 8.5);
INSERT INTO `todo` (`participant_id`, `data_source`, `synthetic_flag`, `age`, `age_group`, `gender`, `education_level`, `employment_status`, `occupation_category`, `average_sleep_hours`) VALUES
	('\nP0119', 'synthetic_ai', '1', 26, 5, 2, 2, 2, 3, 6.5);
INSERT INTO `todo` (`participant_id`, `data_source`, `synthetic_flag`, `age`, `age_group`, `gender`, `education_level`, `employment_status`, `occupation_category`, `average_sleep_hours`) VALUES
	('\nP0120', 'synthetic_ai', '1', 38, 2, 1, 1, 2, 13, 6.5);
INSERT INTO `todo` (`participant_id`, `data_source`, `synthetic_flag`, `age`, `age_group`, `gender`, `education_level`, `employment_status`, `occupation_category`, `average_sleep_hours`) VALUES
	('\nP0121', 'synthetic_ai', '1', 20, 1, 2, 3, 1, 1, 6.5);
INSERT INTO `todo` (`participant_id`, `data_source`, `synthetic_flag`, `age`, `age_group`, `gender`, `education_level`, `employment_status`, `occupation_category`, `average_sleep_hours`) VALUES
	('\nP0122', 'synthetic_ai', '1', 45, 4, 2, 2, 2, 6, 7.5);
INSERT INTO `todo` (`participant_id`, `data_source`, `synthetic_flag`, `age`, `age_group`, `gender`, `education_level`, `employment_status`, `occupation_category`, `average_sleep_hours`) VALUES
	('\nP0123', 'synthetic_ai', '1', 23, 3, 1, 1, 1, 1, 5.5);
INSERT INTO `todo` (`participant_id`, `data_source`, `synthetic_flag`, `age`, `age_group`, `gender`, `education_level`, `employment_status`, `occupation_category`, `average_sleep_hours`) VALUES
	('\nP0124', 'synthetic_ai', '1', 37, 2, 2, 2, 2, 2, 7.0);
INSERT INTO `todo` (`participant_id`, `data_source`, `synthetic_flag`, `age`, `age_group`, `gender`, `education_level`, `employment_status`, `occupation_category`, `average_sleep_hours`) VALUES
	('\nP0125', 'synthetic_ai', '1', 64, 6, 2, 1, 3, 5, 8.0);
INSERT INTO `todo` (`participant_id`, `data_source`, `synthetic_flag`, `age`, `age_group`, `gender`, `education_level`, `employment_status`, `occupation_category`, `average_sleep_hours`) VALUES
	('\nP0126', 'synthetic_ai', '1', 28, 5, 1, 5, 2, 12, 6.5);
INSERT INTO `todo` (`participant_id`, `data_source`, `synthetic_flag`, `age`, `age_group`, `gender`, `education_level`, `employment_status`, `occupation_category`, `average_sleep_hours`) VALUES
	('\nP0127', 'synthetic_ai', '1', 43, 4, 1, 1, 2, 11, 7.0);
INSERT INTO `todo` (`participant_id`, `data_source`, `synthetic_flag`, `age`, `age_group`, `gender`, `education_level`, `employment_status`, `occupation_category`, `average_sleep_hours`) VALUES
	('\nP0128', 'synthetic_ai', '1', 22, 3, 2, 5, 5, 9, 5.5);
INSERT INTO `todo` (`participant_id`, `data_source`, `synthetic_flag`, `age`, `age_group`, `gender`, `education_level`, `employment_status`, `occupation_category`, `average_sleep_hours`) VALUES
	('\nP0129', 'synthetic_ai', '1', 56, 7, 1, 2, 2, 8, 7.5);
INSERT INTO `todo` (`participant_id`, `data_source`, `synthetic_flag`, `age`, `age_group`, `gender`, `education_level`, `employment_status`, `occupation_category`, `average_sleep_hours`) VALUES
	('\nP0130', 'synthetic_ai', '1', 31, 2, 2, 1, 2, 10, 7.0);
INSERT INTO `todo` (`participant_id`, `data_source`, `synthetic_flag`, `age`, `age_group`, `gender`, `education_level`, `employment_status`, `occupation_category`, `average_sleep_hours`) VALUES
	('\nP0131', 'synthetic_ai', '1', 18, 1, 1, 3, 1, 1, 6.5);
INSERT INTO `todo` (`participant_id`, `data_source`, `synthetic_flag`, `age`, `age_group`, `gender`, `education_level`, `employment_status`, `occupation_category`, `average_sleep_hours`) VALUES
	('\nP0132', 'synthetic_ai', '1', 49, 4, 2, 1, 2, 2, 7.0);
INSERT INTO `todo` (`participant_id`, `data_source`, `synthetic_flag`, `age`, `age_group`, `gender`, `education_level`, `employment_status`, `occupation_category`, `average_sleep_hours`) VALUES
	('\nP0133', 'synthetic_ai', '1', 26, 5, 1, 1, 2, 3, 6.5);
INSERT INTO `todo` (`participant_id`, `data_source`, `synthetic_flag`, `age`, `age_group`, `gender`, `education_level`, `employment_status`, `occupation_category`, `average_sleep_hours`) VALUES
	('\nP0134', 'synthetic_ai', '1', 33, 2, 2, 2, 4, 7, 7.0);
INSERT INTO `todo` (`participant_id`, `data_source`, `synthetic_flag`, `age`, `age_group`, `gender`, `education_level`, `employment_status`, `occupation_category`, `average_sleep_hours`) VALUES
	('\nP0135', 'synthetic_ai', '1', 71, 6, 2, 3, 3, 5, 8.0);
INSERT INTO `todo` (`participant_id`, `data_source`, `synthetic_flag`, `age`, `age_group`, `gender`, `education_level`, `employment_status`, `occupation_category`, `average_sleep_hours`) VALUES
	('\nP0136', 'synthetic_ai', '1', 27, 5, 1, 5, 2, 13, 6.0);
INSERT INTO `todo` (`participant_id`, `data_source`, `synthetic_flag`, `age`, `age_group`, `gender`, `education_level`, `employment_status`, `occupation_category`, `average_sleep_hours`) VALUES
	('\nP0137', 'synthetic_ai', '1', 40, 4, 1, 1, 2, 10, 7.0);
INSERT INTO `todo` (`participant_id`, `data_source`, `synthetic_flag`, `age`, `age_group`, `gender`, `education_level`, `employment_status`, `occupation_category`, `average_sleep_hours`) VALUES
	('\nP0138', 'synthetic_ai', '1', 24, 3, 2, 1, 1, 1, 5.5);
INSERT INTO `todo` (`participant_id`, `data_source`, `synthetic_flag`, `age`, `age_group`, `gender`, `education_level`, `employment_status`, `occupation_category`, `average_sleep_hours`) VALUES
	('\nP0139', 'synthetic_ai', '1', 51, 7, 1, 2, 2, 3, 7.0);
INSERT INTO `todo` (`participant_id`, `data_source`, `synthetic_flag`, `age`, `age_group`, `gender`, `education_level`, `employment_status`, `occupation_category`, `average_sleep_hours`) VALUES
	('\nP0140', 'synthetic_ai', '1', 36, 2, 2, 4, 2, 4, 7.0);
INSERT INTO `todo` (`participant_id`, `data_source`, `synthetic_flag`, `age`, `age_group`, `gender`, `education_level`, `employment_status`, `occupation_category`, `average_sleep_hours`) VALUES
	('\nP0141', 'synthetic_ai', '1', 29, 5, 1, 1, 2, 12, 6.5);
INSERT INTO `todo` (`participant_id`, `data_source`, `synthetic_flag`, `age`, `age_group`, `gender`, `education_level`, `employment_status`, `occupation_category`, `average_sleep_hours`) VALUES
	('\nP0142', 'synthetic_ai', '1', 47, 4, 2, 2, 2, 2, 7.5);
INSERT INTO `todo` (`participant_id`, `data_source`, `synthetic_flag`, `age`, `age_group`, `gender`, `education_level`, `employment_status`, `occupation_category`, `average_sleep_hours`) VALUES
	('\nP0143', 'synthetic_ai', '1', 20, 1, 1, 3, 1, 1, 5.5);
INSERT INTO `todo` (`participant_id`, `data_source`, `synthetic_flag`, `age`, `age_group`, `gender`, `education_level`, `employment_status`, `occupation_category`, `average_sleep_hours`) VALUES
	('\nP0144', 'synthetic_ai', '1', 32, 2, 2, 1, 6, 7, 6.5);
INSERT INTO `todo` (`participant_id`, `data_source`, `synthetic_flag`, `age`, `age_group`, `gender`, `education_level`, `employment_status`, `occupation_category`, `average_sleep_hours`) VALUES
	('\nP0145', 'synthetic_ai', '1', 58, 7, 1, 2, 2, 8, 7.5);
INSERT INTO `todo` (`participant_id`, `data_source`, `synthetic_flag`, `age`, `age_group`, `gender`, `education_level`, `employment_status`, `occupation_category`, `average_sleep_hours`) VALUES
	('\nP0146', 'synthetic_ai', '1', 26, 5, 2, 1, 2, 6, 6.5);
INSERT INTO `todo` (`participant_id`, `data_source`, `synthetic_flag`, `age`, `age_group`, `gender`, `education_level`, `employment_status`, `occupation_category`, `average_sleep_hours`) VALUES
	('\nP0147', 'synthetic_ai', '1', 44, 4, 1, 1, 2, 3, 7.0);
INSERT INTO `todo` (`participant_id`, `data_source`, `synthetic_flag`, `age`, `age_group`, `gender`, `education_level`, `employment_status`, `occupation_category`, `average_sleep_hours`) VALUES
	('\nP0148', 'synthetic_ai', '1', 22, 3, 2, 1, 1, 1, 6.0);
INSERT INTO `todo` (`participant_id`, `data_source`, `synthetic_flag`, `age`, `age_group`, `gender`, `education_level`, `employment_status`, `occupation_category`, `average_sleep_hours`) VALUES
	('\nP0149', 'synthetic_ai', '1', 39, 2, 1, 2, 2, 4, 7.0);
INSERT INTO `todo` (`participant_id`, `data_source`, `synthetic_flag`, `age`, `age_group`, `gender`, `education_level`, `employment_status`, `occupation_category`, `average_sleep_hours`) VALUES
	('\nP0150', 'synthetic_ai', '1', 55, 7, 2, 2, 2, 1, 7.5);
INSERT INTO `todo` (`participant_id`, `data_source`, `synthetic_flag`, `age`, `age_group`, `gender`, `education_level`, `employment_status`, `occupation_category`, `average_sleep_hours`) VALUES
	('\nP0151', 'synthetic_ai', '1', 21, 3, 1, 1, 1, 1, 5.5);
INSERT INTO `todo` (`participant_id`, `data_source`, `synthetic_flag`, `age`, `age_group`, `gender`, `education_level`, `employment_status`, `occupation_category`, `average_sleep_hours`) VALUES
	('\nP0152', 'synthetic_ai', '1', 48, 4, 2, 2, 2, 2, 7.0);
INSERT INTO `todo` (`participant_id`, `data_source`, `synthetic_flag`, `age`, `age_group`, `gender`, `education_level`, `employment_status`, `occupation_category`, `average_sleep_hours`) VALUES
	('\nP0153', 'synthetic_ai', '1', 27, 5, 1, 1, 2, 11, 7.0);
INSERT INTO `todo` (`participant_id`, `data_source`, `synthetic_flag`, `age`, `age_group`, `gender`, `education_level`, `employment_status`, `occupation_category`, `average_sleep_hours`) VALUES
	('\nP0154', 'synthetic_ai', '1', 35, 2, 2, 1, 4, 10, 7.5);
INSERT INTO `todo` (`participant_id`, `data_source`, `synthetic_flag`, `age`, `age_group`, `gender`, `education_level`, `employment_status`, `occupation_category`, `average_sleep_hours`) VALUES
	('\nP0155', 'synthetic_ai', '1', 63, 6, 1, 1, 3, 5, 8.5);
INSERT INTO `todo` (`participant_id`, `data_source`, `synthetic_flag`, `age`, `age_group`, `gender`, `education_level`, `employment_status`, `occupation_category`, `average_sleep_hours`) VALUES
	('\nP0156', 'synthetic_ai', '1', 30, 2, 2, 2, 2, 2, 7.0);
INSERT INTO `todo` (`participant_id`, `data_source`, `synthetic_flag`, `age`, `age_group`, `gender`, `education_level`, `employment_status`, `occupation_category`, `average_sleep_hours`) VALUES
	('\nP0157', 'synthetic_ai', '1', 23, 3, 2, 1, 1, 1, 6.0);
INSERT INTO `todo` (`participant_id`, `data_source`, `synthetic_flag`, `age`, `age_group`, `gender`, `education_level`, `employment_status`, `occupation_category`, `average_sleep_hours`) VALUES
	('\nP0158', 'synthetic_ai', '1', 44, 4, 1, 4, 2, 4, 6.5);
INSERT INTO `todo` (`participant_id`, `data_source`, `synthetic_flag`, `age`, `age_group`, `gender`, `education_level`, `employment_status`, `occupation_category`, `average_sleep_hours`) VALUES
	('\nP0159', 'synthetic_ai', '1', 57, 7, 2, 1, 2, 1, 7.5);
INSERT INTO `todo` (`participant_id`, `data_source`, `synthetic_flag`, `age`, `age_group`, `gender`, `education_level`, `employment_status`, `occupation_category`, `average_sleep_hours`) VALUES
	('\nP0160', 'synthetic_ai', '1', 19, 1, 1, 3, 1, 1, 6.5);
INSERT INTO `todo` (`participant_id`, `data_source`, `synthetic_flag`, `age`, `age_group`, `gender`, `education_level`, `employment_status`, `occupation_category`, `average_sleep_hours`) VALUES
	('\nP0161', 'synthetic_ai', '1', 37, 2, 1, 1, 2, 6, 7.0);
INSERT INTO `todo` (`participant_id`, `data_source`, `synthetic_flag`, `age`, `age_group`, `gender`, `education_level`, `employment_status`, `occupation_category`, `average_sleep_hours`) VALUES
	('\nP0162', 'synthetic_ai', '1', 25, 5, 2, 2, 2, 3, 6.5);
INSERT INTO `todo` (`participant_id`, `data_source`, `synthetic_flag`, `age`, `age_group`, `gender`, `education_level`, `employment_status`, `occupation_category`, `average_sleep_hours`) VALUES
	('\nP0163', 'synthetic_ai', '1', 50, 7, 1, 1, 2, 8, 7.5);
INSERT INTO `todo` (`participant_id`, `data_source`, `synthetic_flag`, `age`, `age_group`, `gender`, `education_level`, `employment_status`, `occupation_category`, `average_sleep_hours`) VALUES
	('\nP0164', 'synthetic_ai', '1', 28, 5, 2, 1, 2, 9, 6.5);
INSERT INTO `todo` (`participant_id`, `data_source`, `synthetic_flag`, `age`, `age_group`, `gender`, `education_level`, `employment_status`, `occupation_category`, `average_sleep_hours`) VALUES
	('\nP0165', 'synthetic_ai', '1', 41, 4, 1, 2, 2, 2, 7.0);
INSERT INTO `todo` (`participant_id`, `data_source`, `synthetic_flag`, `age`, `age_group`, `gender`, `education_level`, `employment_status`, `occupation_category`, `average_sleep_hours`) VALUES
	('\nP0166', 'synthetic_ai', '1', 24, 3, 1, 1, 5, 12, 5.5);
INSERT INTO `todo` (`participant_id`, `data_source`, `synthetic_flag`, `age`, `age_group`, `gender`, `education_level`, `employment_status`, `occupation_category`, `average_sleep_hours`) VALUES
	('\nP0167', 'synthetic_ai', '1', 62, 6, 2, 5, 3, 5, 8.0);
INSERT INTO `todo` (`participant_id`, `data_source`, `synthetic_flag`, `age`, `age_group`, `gender`, `education_level`, `employment_status`, `occupation_category`, `average_sleep_hours`) VALUES
	('\nP0168', 'synthetic_ai', '1', 34, 2, 1, 1, 6, 3, 6.5);
INSERT INTO `todo` (`participant_id`, `data_source`, `synthetic_flag`, `age`, `age_group`, `gender`, `education_level`, `employment_status`, `occupation_category`, `average_sleep_hours`) VALUES
	('\nP0169', 'synthetic_ai', '1', 46, 4, 2, 1, 2, 1, 7.0);
INSERT INTO `todo` (`participant_id`, `data_source`, `synthetic_flag`, `age`, `age_group`, `gender`, `education_level`, `employment_status`, `occupation_category`, `average_sleep_hours`) VALUES
	('\nP0170', 'synthetic_ai', '1', 21, 3, 1, 1, 1, 1, 6.0);
INSERT INTO `todo` (`participant_id`, `data_source`, `synthetic_flag`, `age`, `age_group`, `gender`, `education_level`, `employment_status`, `occupation_category`, `average_sleep_hours`) VALUES
	('\nP0171', 'synthetic_ai', '1', 52, 7, 2, 2, 2, 2, 7.5);
INSERT INTO `todo` (`participant_id`, `data_source`, `synthetic_flag`, `age`, `age_group`, `gender`, `education_level`, `employment_status`, `occupation_category`, `average_sleep_hours`) VALUES
	('\nP0172', 'synthetic_ai', '1', 29, 5, 1, 5, 2, 12, 6.5);
INSERT INTO `todo` (`participant_id`, `data_source`, `synthetic_flag`, `age`, `age_group`, `gender`, `education_level`, `employment_status`, `occupation_category`, `average_sleep_hours`) VALUES
	('\nP0173', 'synthetic_ai', '1', 38, 2, 2, 2, 2, 6, 7.0);
INSERT INTO `todo` (`participant_id`, `data_source`, `synthetic_flag`, `age`, `age_group`, `gender`, `education_level`, `employment_status`, `occupation_category`, `average_sleep_hours`) VALUES
	('\nP0174', 'synthetic_ai', '1', 65, 6, 1, 3, 3, 5, 8.5);
INSERT INTO `todo` (`participant_id`, `data_source`, `synthetic_flag`, `age`, `age_group`, `gender`, `education_level`, `employment_status`, `occupation_category`, `average_sleep_hours`) VALUES
	('\nP0175', 'synthetic_ai', '1', 27, 5, 2, 1, 2, 3, 6.5);
INSERT INTO `todo` (`participant_id`, `data_source`, `synthetic_flag`, `age`, `age_group`, `gender`, `education_level`, `employment_status`, `occupation_category`, `average_sleep_hours`) VALUES
	('\nP0176', 'synthetic_ai', '1', 43, 4, 1, 1, 2, 10, 7.0);
INSERT INTO `todo` (`participant_id`, `data_source`, `synthetic_flag`, `age`, `age_group`, `gender`, `education_level`, `employment_status`, `occupation_category`, `average_sleep_hours`) VALUES
	('\nP0177', 'synthetic_ai', '1', 22, 3, 2, 1, 1, 1, 5.5);
INSERT INTO `todo` (`participant_id`, `data_source`, `synthetic_flag`, `age`, `age_group`, `gender`, `education_level`, `employment_status`, `occupation_category`, `average_sleep_hours`) VALUES
	('\nP0178', 'synthetic_ai', '1', 48, 4, 1, 4, 2, 4, 6.5);
INSERT INTO `todo` (`participant_id`, `data_source`, `synthetic_flag`, `age`, `age_group`, `gender`, `education_level`, `employment_status`, `occupation_category`, `average_sleep_hours`) VALUES
	('\nP0179', 'synthetic_ai', '1', 33, 2, 2, 1, 2, 9, 6.5);
INSERT INTO `todo` (`participant_id`, `data_source`, `synthetic_flag`, `age`, `age_group`, `gender`, `education_level`, `employment_status`, `occupation_category`, `average_sleep_hours`) VALUES
	('\nP0180', 'synthetic_ai', '1', 59, 7, 1, 1, 2, 13, 7.0);
INSERT INTO `todo` (`participant_id`, `data_source`, `synthetic_flag`, `age`, `age_group`, `gender`, `education_level`, `employment_status`, `occupation_category`, `average_sleep_hours`) VALUES
	('\nP0181', 'synthetic_ai', '1', 24, 3, 2, 1, 7, 5, 6.0);
INSERT INTO `todo` (`participant_id`, `data_source`, `synthetic_flag`, `age`, `age_group`, `gender`, `education_level`, `employment_status`, `occupation_category`, `average_sleep_hours`) VALUES
	('\nP0182', 'synthetic_ai', '1', 41, 4, 2, 2, 2, 6, 7.5);
INSERT INTO `todo` (`participant_id`, `data_source`, `synthetic_flag`, `age`, `age_group`, `gender`, `education_level`, `employment_status`, `occupation_category`, `average_sleep_hours`) VALUES
	('\nP0183', 'synthetic_ai', '1', 18, 1, 1, 3, 1, 1, 6.0);
INSERT INTO `todo` (`participant_id`, `data_source`, `synthetic_flag`, `age`, `age_group`, `gender`, `education_level`, `employment_status`, `occupation_category`, `average_sleep_hours`) VALUES
	('\nP0184', 'synthetic_ai', '1', 53, 7, 1, 2, 2, 3, 7.0);
INSERT INTO `todo` (`participant_id`, `data_source`, `synthetic_flag`, `age`, `age_group`, `gender`, `education_level`, `employment_status`, `occupation_category`, `average_sleep_hours`) VALUES
	('\nP0185', 'synthetic_ai', '1', 31, 2, 2, 6, 2, 4, 7.0);
INSERT INTO `todo` (`participant_id`, `data_source`, `synthetic_flag`, `age`, `age_group`, `gender`, `education_level`, `employment_status`, `occupation_category`, `average_sleep_hours`) VALUES
	('\nP0186', 'synthetic_ai', '1', 26, 5, 1, 1, 2, 11, 6.5);
INSERT INTO `todo` (`participant_id`, `data_source`, `synthetic_flag`, `age`, `age_group`, `gender`, `education_level`, `employment_status`, `occupation_category`, `average_sleep_hours`) VALUES
	('\nP0187', 'synthetic_ai', '1', 44, 4, 2, 1, 2, 2, 7.0);
INSERT INTO `todo` (`participant_id`, `data_source`, `synthetic_flag`, `age`, `age_group`, `gender`, `education_level`, `employment_status`, `occupation_category`, `average_sleep_hours`) VALUES
	('\nP0188', 'synthetic_ai', '1', 20, 1, 2, 3, 1, 1, 6.5);
INSERT INTO `todo` (`participant_id`, `data_source`, `synthetic_flag`, `age`, `age_group`, `gender`, `education_level`, `employment_status`, `occupation_category`, `average_sleep_hours`) VALUES
	('\nP0189', 'synthetic_ai', '1', 38, 2, 1, 2, 2, 6, 7.0);
INSERT INTO `todo` (`participant_id`, `data_source`, `synthetic_flag`, `age`, `age_group`, `gender`, `education_level`, `employment_status`, `occupation_category`, `average_sleep_hours`) VALUES
	('\nP0190', 'synthetic_ai', '1', 29, 5, 2, 1, 6, 7, 6.0);
INSERT INTO `todo` (`participant_id`, `data_source`, `synthetic_flag`, `age`, `age_group`, `gender`, `education_level`, `employment_status`, `occupation_category`, `average_sleep_hours`) VALUES
	('\nP0191', 'synthetic_ai', '1', 56, 7, 1, 2, 2, 8, 7.5);
INSERT INTO `todo` (`participant_id`, `data_source`, `synthetic_flag`, `age`, `age_group`, `gender`, `education_level`, `employment_status`, `occupation_category`, `average_sleep_hours`) VALUES
	('\nP0192', 'synthetic_ai', '1', 23, 3, 2, 1, 1, 1, 5.5);
INSERT INTO `todo` (`participant_id`, `data_source`, `synthetic_flag`, `age`, `age_group`, `gender`, `education_level`, `employment_status`, `occupation_category`, `average_sleep_hours`) VALUES
	('\nP0193', 'synthetic_ai', '1', 47, 4, 1, 1, 2, 3, 7.0);
INSERT INTO `todo` (`participant_id`, `data_source`, `synthetic_flag`, `age`, `age_group`, `gender`, `education_level`, `employment_status`, `occupation_category`, `average_sleep_hours`) VALUES
	('\nP0194', 'synthetic_ai', '1', 34, 2, 2, 2, 4, 7, 7.0);
INSERT INTO `todo` (`participant_id`, `data_source`, `synthetic_flag`, `age`, `age_group`, `gender`, `education_level`, `employment_status`, `occupation_category`, `average_sleep_hours`) VALUES
	('\nP0195', 'synthetic_ai', '1', 67, 6, 2, 3, 3, 5, 8.0);
INSERT INTO `todo` (`participant_id`, `data_source`, `synthetic_flag`, `age`, `age_group`, `gender`, `education_level`, `employment_status`, `occupation_category`, `average_sleep_hours`) VALUES
	('\nP0196', 'synthetic_ai', '1', 25, 5, 1, 1, 2, 12, 6.5);
INSERT INTO `todo` (`participant_id`, `data_source`, `synthetic_flag`, `age`, `age_group`, `gender`, `education_level`, `employment_status`, `occupation_category`, `average_sleep_hours`) VALUES
	('\nP0197', 'synthetic_ai', '1', 42, 4, 2, 2, 2, 2, 7.5);
INSERT INTO `todo` (`participant_id`, `data_source`, `synthetic_flag`, `age`, `age_group`, `gender`, `education_level`, `employment_status`, `occupation_category`, `average_sleep_hours`) VALUES
	('\nP0198', 'synthetic_ai', '1', 27, 5, 1, 2, 2, 6, 7.0);
INSERT INTO `todo` (`participant_id`, `data_source`, `synthetic_flag`, `age`, `age_group`, `gender`, `education_level`, `employment_status`, `occupation_category`, `average_sleep_hours`) VALUES
	('\nP0199', 'synthetic_ai', '1', 36, 2, 1, 1, 2, 9, 6.5);
INSERT INTO `todo` (`participant_id`, `data_source`, `synthetic_flag`, `age`, `age_group`, `gender`, `education_level`, `employment_status`, `occupation_category`, `average_sleep_hours`) VALUES
	('\nP0200', 'synthetic_ai', '1', 51, 7, 2, 1, 2, 1, 7.5);
INSERT INTO `todo` (`participant_id`, `data_source`, `synthetic_flag`, `age`, `age_group`, `gender`, `education_level`, `employment_status`, `occupation_category`, `average_sleep_hours`) VALUES
	('\nP0201', 'synthetic_ai', '1', 22, 3, 1, 1, 1, 1, 5.5);
INSERT INTO `todo` (`participant_id`, `data_source`, `synthetic_flag`, `age`, `age_group`, `gender`, `education_level`, `employment_status`, `occupation_category`, `average_sleep_hours`) VALUES
	('\nP0202', 'synthetic_ai', '1', 39, 2, 2, 2, 2, 2, 7.0);
INSERT INTO `todo` (`participant_id`, `data_source`, `synthetic_flag`, `age`, `age_group`, `gender`, `education_level`, `employment_status`, `occupation_category`, `average_sleep_hours`) VALUES
	('\nP0203', 'synthetic_ai', '1', 28, 5, 2, 1, 2, 3, 6.5);
INSERT INTO `todo` (`participant_id`, `data_source`, `synthetic_flag`, `age`, `age_group`, `gender`, `education_level`, `employment_status`, `occupation_category`, `average_sleep_hours`) VALUES
	('\nP0204', 'synthetic_ai', '1', 60, 6, 1, 5, 3, 5, 8.5);
INSERT INTO `todo` (`participant_id`, `data_source`, `synthetic_flag`, `age`, `age_group`, `gender`, `education_level`, `employment_status`, `occupation_category`, `average_sleep_hours`) VALUES
	('\nP0205', 'synthetic_ai', '1', 32, 2, 1, 2, 2, 4, 6.5);
INSERT INTO `todo` (`participant_id`, `data_source`, `synthetic_flag`, `age`, `age_group`, `gender`, `education_level`, `employment_status`, `occupation_category`, `average_sleep_hours`) VALUES
	('\nP0206', 'synthetic_ai', '1', 46, 4, 2, 1, 2, 8, 7.0);
INSERT INTO `todo` (`participant_id`, `data_source`, `synthetic_flag`, `age`, `age_group`, `gender`, `education_level`, `employment_status`, `occupation_category`, `average_sleep_hours`) VALUES
	('\nP0207', 'synthetic_ai', '1', 19, 1, 2, 3, 1, 1, 6.5);
INSERT INTO `todo` (`participant_id`, `data_source`, `synthetic_flag`, `age`, `age_group`, `gender`, `education_level`, `employment_status`, `occupation_category`, `average_sleep_hours`) VALUES
	('\nP0208', 'synthetic_ai', '1', 43, 4, 1, 1, 2, 11, 7.0);
INSERT INTO `todo` (`participant_id`, `data_source`, `synthetic_flag`, `age`, `age_group`, `gender`, `education_level`, `employment_status`, `occupation_category`, `average_sleep_hours`) VALUES
	('\nP0209', 'synthetic_ai', '1', 25, 5, 2, 2, 2, 2, 7.0);
INSERT INTO `todo` (`participant_id`, `data_source`, `synthetic_flag`, `age`, `age_group`, `gender`, `education_level`, `employment_status`, `occupation_category`, `average_sleep_hours`) VALUES
	('\nP0210', 'synthetic_ai', '1', 70, 6, 2, 1, 3, 5, 8.0);
INSERT INTO `todo` (`participant_id`, `data_source`, `synthetic_flag`, `age`, `age_group`, `gender`, `education_level`, `employment_status`, `occupation_category`, `average_sleep_hours`) VALUES
	('\nP0211', 'synthetic_ai', '1', 30, 2, 1, 1, 2, 6, 7.0);
INSERT INTO `todo` (`participant_id`, `data_source`, `synthetic_flag`, `age`, `age_group`, `gender`, `education_level`, `employment_status`, `occupation_category`, `average_sleep_hours`) VALUES
	('\nP0212', 'synthetic_ai', '1', 21, 3, 2, 5, 5, 9, 5.5);
INSERT INTO `todo` (`participant_id`, `data_source`, `synthetic_flag`, `age`, `age_group`, `gender`, `education_level`, `employment_status`, `occupation_category`, `average_sleep_hours`) VALUES
	('\nP0213', 'synthetic_ai', '1', 55, 7, 1, 2, 2, 3, 7.0);
INSERT INTO `todo` (`participant_id`, `data_source`, `synthetic_flag`, `age`, `age_group`, `gender`, `education_level`, `employment_status`, `occupation_category`, `average_sleep_hours`) VALUES
	('\nP0214', 'synthetic_ai', '1', 36, 2, 2, 6, 2, 4, 7.0);
INSERT INTO `todo` (`participant_id`, `data_source`, `synthetic_flag`, `age`, `age_group`, `gender`, `education_level`, `employment_status`, `occupation_category`, `average_sleep_hours`) VALUES
	('\nP0215', 'synthetic_ai', '1', 24, 3, 1, 1, 1, 1, 5.5);
INSERT INTO `todo` (`participant_id`, `data_source`, `synthetic_flag`, `age`, `age_group`, `gender`, `education_level`, `employment_status`, `occupation_category`, `average_sleep_hours`) VALUES
	('\nP0216', 'synthetic_ai', '1', 48, 4, 2, 2, 2, 2, 7.5);
INSERT INTO `todo` (`participant_id`, `data_source`, `synthetic_flag`, `age`, `age_group`, `gender`, `education_level`, `employment_status`, `occupation_category`, `average_sleep_hours`) VALUES
	('\nP0217', 'synthetic_ai', '1', 27, 5, 1, 5, 2, 13, 6.5);
INSERT INTO `todo` (`participant_id`, `data_source`, `synthetic_flag`, `age`, `age_group`, `gender`, `education_level`, `employment_status`, `occupation_category`, `average_sleep_hours`) VALUES
	('\nP0218', 'synthetic_ai', '1', 40, 4, 1, 1, 2, 10, 7.0);
INSERT INTO `todo` (`participant_id`, `data_source`, `synthetic_flag`, `age`, `age_group`, `gender`, `education_level`, `employment_status`, `occupation_category`, `average_sleep_hours`) VALUES
	('\nP0219', 'synthetic_ai', '1', 33, 2, 2, 1, 2, 2, 7.0);
INSERT INTO `todo` (`participant_id`, `data_source`, `synthetic_flag`, `age`, `age_group`, `gender`, `education_level`, `employment_status`, `occupation_category`, `average_sleep_hours`) VALUES
	('\nP0220', 'synthetic_ai', '1', 58, 7, 1, 2, 2, 8, 7.5);
INSERT INTO `todo` (`participant_id`, `data_source`, `synthetic_flag`, `age`, `age_group`, `gender`, `education_level`, `employment_status`, `occupation_category`, `average_sleep_hours`) VALUES
	('\nP0221', 'synthetic_ai', '1', 23, 3, 2, 1, 1, 1, 6.0);
INSERT INTO `todo` (`participant_id`, `data_source`, `synthetic_flag`, `age`, `age_group`, `gender`, `education_level`, `employment_status`, `occupation_category`, `average_sleep_hours`) VALUES
	('\nP0222', 'synthetic_ai', '1', 45, 4, 1, 1, 2, 11, 7.0);
INSERT INTO `todo` (`participant_id`, `data_source`, `synthetic_flag`, `age`, `age_group`, `gender`, `education_level`, `employment_status`, `occupation_category`, `average_sleep_hours`) VALUES
	('\nP0223', 'synthetic_ai', '1', 29, 5, 2, 2, 2, 6, 7.0);
INSERT INTO `todo` (`participant_id`, `data_source`, `synthetic_flag`, `age`, `age_group`, `gender`, `education_level`, `employment_status`, `occupation_category`, `average_sleep_hours`) VALUES
	('\nP0224', 'synthetic_ai', '1', 64, 6, 2, 5, 3, 5, 8.0);
INSERT INTO `todo` (`participant_id`, `data_source`, `synthetic_flag`, `age`, `age_group`, `gender`, `education_level`, `employment_status`, `occupation_category`, `average_sleep_hours`) VALUES
	('\nP0225', 'synthetic_ai', '1', 31, 2, 1, 1, 2, 12, 6.5);
INSERT INTO `todo` (`participant_id`, `data_source`, `synthetic_flag`, `age`, `age_group`, `gender`, `education_level`, `employment_status`, `occupation_category`, `average_sleep_hours`) VALUES
	('\nP0226', 'synthetic_ai', '1', 38, 2, 2, 2, 2, 4, 7.0);
INSERT INTO `todo` (`participant_id`, `data_source`, `synthetic_flag`, `age`, `age_group`, `gender`, `education_level`, `employment_status`, `occupation_category`, `average_sleep_hours`) VALUES
	('\nP0227', 'synthetic_ai', '1', 19, 1, 1, 3, 1, 1, 6.5);
INSERT INTO `todo` (`participant_id`, `data_source`, `synthetic_flag`, `age`, `age_group`, `gender`, `education_level`, `employment_status`, `occupation_category`, `average_sleep_hours`) VALUES
	('\nP0228', 'synthetic_ai', '1', 53, 7, 2, 1, 8, 5, 7.5);
INSERT INTO `todo` (`participant_id`, `data_source`, `synthetic_flag`, `age`, `age_group`, `gender`, `education_level`, `employment_status`, `occupation_category`, `average_sleep_hours`) VALUES
	('\nP0229', 'synthetic_ai', '1', 26, 5, 1, 1, 2, 3, 6.5);
INSERT INTO `todo` (`participant_id`, `data_source`, `synthetic_flag`, `age`, `age_group`, `gender`, `education_level`, `employment_status`, `occupation_category`, `average_sleep_hours`) VALUES
	('\nP0230', 'synthetic_ai', '1', 42, 4, 2, 1, 2, 2, 7.0);
INSERT INTO `todo` (`participant_id`, `data_source`, `synthetic_flag`, `age`, `age_group`, `gender`, `education_level`, `employment_status`, `occupation_category`, `average_sleep_hours`) VALUES
	('\nP0231', 'synthetic_ai', '1', 20, 1, 2, 3, 1, 1, 6.0);
INSERT INTO `todo` (`participant_id`, `data_source`, `synthetic_flag`, `age`, `age_group`, `gender`, `education_level`, `employment_status`, `occupation_category`, `average_sleep_hours`) VALUES
	('\nP0232', 'synthetic_ai', '1', 35, 2, 1, 2, 6, 3, 6.5);
INSERT INTO `todo` (`participant_id`, `data_source`, `synthetic_flag`, `age`, `age_group`, `gender`, `education_level`, `employment_status`, `occupation_category`, `average_sleep_hours`) VALUES
	('\nP0233', 'synthetic_ai', '1', 60, 6, 2, 1, 3, 5, 8.0);
INSERT INTO `todo` (`participant_id`, `data_source`, `synthetic_flag`, `age`, `age_group`, `gender`, `education_level`, `employment_status`, `occupation_category`, `average_sleep_hours`) VALUES
	('\nP0234', 'synthetic_ai', '1', 28, 5, 2, 1, 2, 1, 7.0);
INSERT INTO `todo` (`participant_id`, `data_source`, `synthetic_flag`, `age`, `age_group`, `gender`, `education_level`, `employment_status`, `occupation_category`, `average_sleep_hours`) VALUES
	('\nP0235', 'synthetic_ai', '1', 47, 4, 1, 2, 2, 3, 7.0);
INSERT INTO `todo` (`participant_id`, `data_source`, `synthetic_flag`, `age`, `age_group`, `gender`, `education_level`, `employment_status`, `occupation_category`, `average_sleep_hours`) VALUES
	('\nP0236', 'synthetic_ai', '1', 22, 3, 1, 5, 7, 5, 6.5);
INSERT INTO `todo` (`participant_id`, `data_source`, `synthetic_flag`, `age`, `age_group`, `gender`, `education_level`, `employment_status`, `occupation_category`, `average_sleep_hours`) VALUES
	('\nP0237', 'synthetic_ai', '1', 54, 7, 2, 2, 2, 2, 7.5);
INSERT INTO `todo` (`participant_id`, `data_source`, `synthetic_flag`, `age`, `age_group`, `gender`, `education_level`, `employment_status`, `occupation_category`, `average_sleep_hours`) VALUES
	('\nP0238', 'synthetic_ai', '1', 30, 2, 1, 1, 2, 6, 7.0);
INSERT INTO `todo` (`participant_id`, `data_source`, `synthetic_flag`, `age`, `age_group`, `gender`, `education_level`, `employment_status`, `occupation_category`, `average_sleep_hours`) VALUES
	('\nP0239', 'synthetic_ai', '1', 37, 2, 2, 1, 2, 9, 6.5);
INSERT INTO `todo` (`participant_id`, `data_source`, `synthetic_flag`, `age`, `age_group`, `gender`, `education_level`, `employment_status`, `occupation_category`, `average_sleep_hours`) VALUES
	('\nP0240', 'synthetic_ai', '1', 25, 5, 1, 1, 2, 8, 6.5);
INSERT INTO `todo` (`participant_id`, `data_source`, `synthetic_flag`, `age`, `age_group`, `gender`, `education_level`, `employment_status`, `occupation_category`, `average_sleep_hours`) VALUES
	('\nP0241', 'synthetic_ai', '1', 49, 4, 2, 2, 2, 2, 7.0);
INSERT INTO `todo` (`participant_id`, `data_source`, `synthetic_flag`, `age`, `age_group`, `gender`, `education_level`, `employment_status`, `occupation_category`, `average_sleep_hours`) VALUES
	('\nP0242', 'synthetic_ai', '1', 21, 3, 1, 1, 1, 1, 5.5);
INSERT INTO `todo` (`participant_id`, `data_source`, `synthetic_flag`, `age`, `age_group`, `gender`, `education_level`, `employment_status`, `occupation_category`, `average_sleep_hours`) VALUES
	('\nP0243', 'synthetic_ai', '1', 44, 4, 2, 1, 2, 8, 7.0);
INSERT INTO `todo` (`participant_id`, `data_source`, `synthetic_flag`, `age`, `age_group`, `gender`, `education_level`, `employment_status`, `occupation_category`, `average_sleep_hours`) VALUES
	('\nP0244', 'synthetic_ai', '1', 33, 2, 1, 2, 2, 4, 7.0);
INSERT INTO `todo` (`participant_id`, `data_source`, `synthetic_flag`, `age`, `age_group`, `gender`, `education_level`, `employment_status`, `occupation_category`, `average_sleep_hours`) VALUES
	('\nP0245', 'synthetic_ai', '1', 26, 5, 2, 1, 2, 3, 6.5);
INSERT INTO `todo` (`participant_id`, `data_source`, `synthetic_flag`, `age`, `age_group`, `gender`, `education_level`, `employment_status`, `occupation_category`, `average_sleep_hours`) VALUES
	('\nP0246', 'synthetic_ai', '1', 57, 7, 1, 1, 2, 13, 7.0);
INSERT INTO `todo` (`participant_id`, `data_source`, `synthetic_flag`, `age`, `age_group`, `gender`, `education_level`, `employment_status`, `occupation_category`, `average_sleep_hours`) VALUES
	('\nP0247', 'synthetic_ai', '1', 24, 3, 2, 1, 5, 9, 5.5);
INSERT INTO `todo` (`participant_id`, `data_source`, `synthetic_flag`, `age`, `age_group`, `gender`, `education_level`, `employment_status`, `occupation_category`, `average_sleep_hours`) VALUES
	('\nP0248', 'synthetic_ai', '1', 40, 4, 1, 1, 2, 11, 7.0);
INSERT INTO `todo` (`participant_id`, `data_source`, `synthetic_flag`, `age`, `age_group`, `gender`, `education_level`, `employment_status`, `occupation_category`, `average_sleep_hours`) VALUES
	('\nP0249', 'synthetic_ai', '1', 67, 6, 1, 3, 3, 5, 8.5);
INSERT INTO `todo` (`participant_id`, `data_source`, `synthetic_flag`, `age`, `age_group`, `gender`, `education_level`, `employment_status`, `occupation_category`, `average_sleep_hours`) VALUES
	('\nP0250', 'synthetic_ai', '1', 29, 5, 2, 2, 2, 2, 7.0);
INSERT INTO `todo` (`participant_id`, `data_source`, `synthetic_flag`, `age`, `age_group`, `gender`, `education_level`, `employment_status`, `occupation_category`, `average_sleep_hours`) VALUES
	('\nP0251', 'synthetic_ai', '1', 36, 2, 1, 1, 2, 10, 7.0);
INSERT INTO `todo` (`participant_id`, `data_source`, `synthetic_flag`, `age`, `age_group`, `gender`, `education_level`, `employment_status`, `occupation_category`, `average_sleep_hours`) VALUES
	('\nP0252', 'synthetic_ai', '1', 20, 1, 1, 3, 1, 1, 6.5);
INSERT INTO `todo` (`participant_id`, `data_source`, `synthetic_flag`, `age`, `age_group`, `gender`, `education_level`, `employment_status`, `occupation_category`, `average_sleep_hours`) VALUES
	('\nP0253', 'synthetic_ai', '1', 50, 7, 2, 2, 2, 1, 7.5);
INSERT INTO `todo` (`participant_id`, `data_source`, `synthetic_flag`, `age`, `age_group`, `gender`, `education_level`, `employment_status`, `occupation_category`, `average_sleep_hours`) VALUES
	('\nP0254', 'synthetic_ai', '1', 27, 5, 1, 1, 2, 11, 7.0);
INSERT INTO `todo` (`participant_id`, `data_source`, `synthetic_flag`, `age`, `age_group`, `gender`, `education_level`, `employment_status`, `occupation_category`, `average_sleep_hours`) VALUES
	('\nP0255', 'synthetic_ai', '1', 44, 4, 2, 2, 2, 6, 7.5);
INSERT INTO `todo` (`participant_id`, `data_source`, `synthetic_flag`, `age`, `age_group`, `gender`, `education_level`, `employment_status`, `occupation_category`, `average_sleep_hours`) VALUES
	('\nP0256', 'synthetic_ai', '1', 23, 3, 1, 1, 1, 1, 5.5);
INSERT INTO `todo` (`participant_id`, `data_source`, `synthetic_flag`, `age`, `age_group`, `gender`, `education_level`, `employment_status`, `occupation_category`, `average_sleep_hours`) VALUES
	('\nP0257', 'synthetic_ai', '1', 38, 2, 2, 2, 2, 3, 7.0);
INSERT INTO `todo` (`participant_id`, `data_source`, `synthetic_flag`, `age`, `age_group`, `gender`, `education_level`, `employment_status`, `occupation_category`, `average_sleep_hours`) VALUES
	('\nP0258', 'synthetic_ai', '1', 62, 6, 1, 1, 3, 5, 8.5);
INSERT INTO `todo` (`participant_id`, `data_source`, `synthetic_flag`, `age`, `age_group`, `gender`, `education_level`, `employment_status`, `occupation_category`, `average_sleep_hours`) VALUES
	('\nP0259', 'synthetic_ai', '1', 32, 2, 2, 1, 4, 7, 7.0);
INSERT INTO `todo` (`participant_id`, `data_source`, `synthetic_flag`, `age`, `age_group`, `gender`, `education_level`, `employment_status`, `occupation_category`, `average_sleep_hours`) VALUES
	('\nP0260', 'synthetic_ai', '1', 18, 1, 2, 3, 1, 1, 6.5);
INSERT INTO `todo` (`participant_id`, `data_source`, `synthetic_flag`, `age`, `age_group`, `gender`, `education_level`, `employment_status`, `occupation_category`, `average_sleep_hours`) VALUES
	('\nP0261', 'synthetic_ai', '1', 41, 4, 1, 2, 2, 3, 7.0);
INSERT INTO `todo` (`participant_id`, `data_source`, `synthetic_flag`, `age`, `age_group`, `gender`, `education_level`, `employment_status`, `occupation_category`, `average_sleep_hours`) VALUES
	('\nP0262', 'synthetic_ai', '1', 28, 5, 2, 2, 2, 6, 7.0);
INSERT INTO `todo` (`participant_id`, `data_source`, `synthetic_flag`, `age`, `age_group`, `gender`, `education_level`, `employment_status`, `occupation_category`, `average_sleep_hours`) VALUES
	('\nP0263', 'synthetic_ai', '1', 24, 3, 1, 1, 1, 1, 5.5);
INSERT INTO `todo` (`participant_id`, `data_source`, `synthetic_flag`, `age`, `age_group`, `gender`, `education_level`, `employment_status`, `occupation_category`, `average_sleep_hours`) VALUES
	('\nP0264', 'synthetic_ai', '1', 52, 7, 2, 1, 2, 1, 7.5);
INSERT INTO `todo` (`participant_id`, `data_source`, `synthetic_flag`, `age`, `age_group`, `gender`, `education_level`, `employment_status`, `occupation_category`, `average_sleep_hours`) VALUES
	('\nP0265', 'synthetic_ai', '1', 35, 2, 1, 1, 2, 9, 6.5);
INSERT INTO `todo` (`participant_id`, `data_source`, `synthetic_flag`, `age`, `age_group`, `gender`, `education_level`, `employment_status`, `occupation_category`, `average_sleep_hours`) VALUES
	('\nP0266', 'synthetic_ai', '1', 68, 6, 2, 3, 3, 5, 8.0);
INSERT INTO `todo` (`participant_id`, `data_source`, `synthetic_flag`, `age`, `age_group`, `gender`, `education_level`, `employment_status`, `occupation_category`, `average_sleep_hours`) VALUES
	('\nP0267', 'synthetic_ai', '1', 22, 3, 2, 1, 1, 1, 6.0);
INSERT INTO `todo` (`participant_id`, `data_source`, `synthetic_flag`, `age`, `age_group`, `gender`, `education_level`, `employment_status`, `occupation_category`, `average_sleep_hours`) VALUES
	('\nP0268', 'synthetic_ai', '1', 46, 4, 1, 1, 2, 13, 7.0);
INSERT INTO `todo` (`participant_id`, `data_source`, `synthetic_flag`, `age`, `age_group`, `gender`, `education_level`, `employment_status`, `occupation_category`, `average_sleep_hours`) VALUES
	('\nP0269', 'synthetic_ai', '1', 31, 2, 2, 2, 4, 7, 7.0);
INSERT INTO `todo` (`participant_id`, `data_source`, `synthetic_flag`, `age`, `age_group`, `gender`, `education_level`, `employment_status`, `occupation_category`, `average_sleep_hours`) VALUES
	('\nP0270', 'synthetic_ai', '1', 59, 7, 1, 2, 2, 3, 7.0);
INSERT INTO `todo` (`participant_id`, `data_source`, `synthetic_flag`, `age`, `age_group`, `gender`, `education_level`, `employment_status`, `occupation_category`, `average_sleep_hours`) VALUES
	('\nP0271', 'synthetic_ai', '1', 26, 5, 2, 1, 2, 2, 7.0);
INSERT INTO `todo` (`participant_id`, `data_source`, `synthetic_flag`, `age`, `age_group`, `gender`, `education_level`, `employment_status`, `occupation_category`, `average_sleep_hours`) VALUES
	('\nP0272', 'synthetic_ai', '1', 43, 4, 1, 4, 2, 4, 6.5);
INSERT INTO `todo` (`participant_id`, `data_source`, `synthetic_flag`, `age`, `age_group`, `gender`, `education_level`, `employment_status`, `occupation_category`, `average_sleep_hours`) VALUES
	('\nP0273', 'synthetic_ai', '1', 19, 1, 2, 3, 1, 1, 6.0);
INSERT INTO `todo` (`participant_id`, `data_source`, `synthetic_flag`, `age`, `age_group`, `gender`, `education_level`, `employment_status`, `occupation_category`, `average_sleep_hours`) VALUES
	('\nP0274', 'synthetic_ai', '1', 36, 2, 1, 1, 2, 6, 7.0);
INSERT INTO `todo` (`participant_id`, `data_source`, `synthetic_flag`, `age`, `age_group`, `gender`, `education_level`, `employment_status`, `occupation_category`, `average_sleep_hours`) VALUES
	('\nP0275', 'synthetic_ai', '1', 55, 7, 2, 2, 2, 2, 7.5);
INSERT INTO `todo` (`participant_id`, `data_source`, `synthetic_flag`, `age`, `age_group`, `gender`, `education_level`, `employment_status`, `occupation_category`, `average_sleep_hours`) VALUES
	('\nP0276', 'synthetic_ai', '1', 21, 3, 1, 1, 1, 1, 5.5);
INSERT INTO `todo` (`participant_id`, `data_source`, `synthetic_flag`, `age`, `age_group`, `gender`, `education_level`, `employment_status`, `occupation_category`, `average_sleep_hours`) VALUES
	('\nP0277', 'synthetic_ai', '1', 47, 4, 2, 2, 2, 6, 7.5);
INSERT INTO `todo` (`participant_id`, `data_source`, `synthetic_flag`, `age`, `age_group`, `gender`, `education_level`, `employment_status`, `occupation_category`, `average_sleep_hours`) VALUES
	('\nP0278', 'synthetic_ai', '1', 30, 2, 1, 1, 2, 3, 6.5);
INSERT INTO `todo` (`participant_id`, `data_source`, `synthetic_flag`, `age`, `age_group`, `gender`, `education_level`, `employment_status`, `occupation_category`, `average_sleep_hours`) VALUES
	('\nP0279', 'synthetic_ai', '1', 63, 6, 2, 1, 3, 5, 8.0);
INSERT INTO `todo` (`participant_id`, `data_source`, `synthetic_flag`, `age`, `age_group`, `gender`, `education_level`, `employment_status`, `occupation_category`, `average_sleep_hours`) VALUES
	('\nP0280', 'synthetic_ai', '1', 34, 2, 2, 1, 6, 7, 6.5);
INSERT INTO `todo` (`participant_id`, `data_source`, `synthetic_flag`, `age`, `age_group`, `gender`, `education_level`, `employment_status`, `occupation_category`, `average_sleep_hours`) VALUES
	('\nP0281', 'synthetic_ai', '1', 25, 5, 1, 5, 2, 12, 6.5);
INSERT INTO `todo` (`participant_id`, `data_source`, `synthetic_flag`, `age`, `age_group`, `gender`, `education_level`, `employment_status`, `occupation_category`, `average_sleep_hours`) VALUES
	('\nP0282', 'synthetic_ai', '1', 49, 4, 2, 2, 2, 2, 7.0);
INSERT INTO `todo` (`participant_id`, `data_source`, `synthetic_flag`, `age`, `age_group`, `gender`, `education_level`, `employment_status`, `occupation_category`, `average_sleep_hours`) VALUES
	('\nP0283', 'synthetic_ai', '1', 29, 5, 1, 2, 2, 6, 7.0);
INSERT INTO `todo` (`participant_id`, `data_source`, `synthetic_flag`, `age`, `age_group`, `gender`, `education_level`, `employment_status`, `occupation_category`, `average_sleep_hours`) VALUES
	('\nP0284', 'synthetic_ai', '1', 39, 2, 1, 6, 2, 4, 7.0);
INSERT INTO `todo` (`participant_id`, `data_source`, `synthetic_flag`, `age`, `age_group`, `gender`, `education_level`, `employment_status`, `occupation_category`, `average_sleep_hours`) VALUES
	('\nP0285', 'synthetic_ai', '1', 20, 1, 2, 3, 1, 1, 6.5);
INSERT INTO `todo` (`participant_id`, `data_source`, `synthetic_flag`, `age`, `age_group`, `gender`, `education_level`, `employment_status`, `occupation_category`, `average_sleep_hours`) VALUES
	('\nP0286', 'synthetic_ai', '1', 43, 4, 1, 1, 2, 11, 7.0);
INSERT INTO `todo` (`participant_id`, `data_source`, `synthetic_flag`, `age`, `age_group`, `gender`, `education_level`, `employment_status`, `occupation_category`, `average_sleep_hours`) VALUES
	('\nP0287', 'synthetic_ai', '1', 56, 7, 2, 1, 2, 1, 7.5);
INSERT INTO `todo` (`participant_id`, `data_source`, `synthetic_flag`, `age`, `age_group`, `gender`, `education_level`, `employment_status`, `occupation_category`, `average_sleep_hours`) VALUES
	('\nP0288', 'synthetic_ai', '1', 27, 5, 1, 1, 2, 3, 6.5);
INSERT INTO `todo` (`participant_id`, `data_source`, `synthetic_flag`, `age`, `age_group`, `gender`, `education_level`, `employment_status`, `occupation_category`, `average_sleep_hours`) VALUES
	('\nP0289', 'synthetic_ai', '1', 37, 2, 2, 2, 2, 2, 7.0);
INSERT INTO `todo` (`participant_id`, `data_source`, `synthetic_flag`, `age`, `age_group`, `gender`, `education_level`, `employment_status`, `occupation_category`, `average_sleep_hours`) VALUES
	('\nP0290', 'synthetic_ai', '1', 70, 6, 1, 3, 3, 5, 8.5);
INSERT INTO `todo` (`participant_id`, `data_source`, `synthetic_flag`, `age`, `age_group`, `gender`, `education_level`, `employment_status`, `occupation_category`, `average_sleep_hours`) VALUES
	('\nP0291', 'synthetic_ai', '1', 33, 2, 2, 1, 2, 10, 7.0);
INSERT INTO `todo` (`participant_id`, `data_source`, `synthetic_flag`, `age`, `age_group`, `gender`, `education_level`, `employment_status`, `occupation_category`, `average_sleep_hours`) VALUES
	('\nP0292', 'synthetic_ai', '1', 24, 3, 1, 1, 7, 5, 6.5);
INSERT INTO `todo` (`participant_id`, `data_source`, `synthetic_flag`, `age`, `age_group`, `gender`, `education_level`, `employment_status`, `occupation_category`, `average_sleep_hours`) VALUES
	('\nP0293', 'synthetic_ai', '1', 48, 4, 2, 2, 2, 3, 7.0);
INSERT INTO `todo` (`participant_id`, `data_source`, `synthetic_flag`, `age`, `age_group`, `gender`, `education_level`, `employment_status`, `occupation_category`, `average_sleep_hours`) VALUES
	('\nP0294', 'synthetic_ai', '1', 22, 3, 2, 1, 1, 1, 5.5);
INSERT INTO `todo` (`participant_id`, `data_source`, `synthetic_flag`, `age`, `age_group`, `gender`, `education_level`, `employment_status`, `occupation_category`, `average_sleep_hours`) VALUES
	('\nP0295', 'synthetic_ai', '1', 40, 4, 1, 6, 2, 4, 6.5);
INSERT INTO `todo` (`participant_id`, `data_source`, `synthetic_flag`, `age`, `age_group`, `gender`, `education_level`, `employment_status`, `occupation_category`, `average_sleep_hours`) VALUES
	('\nP0296', 'synthetic_ai', '1', 54, 7, 2, 2, 2, 2, 7.5);
INSERT INTO `todo` (`participant_id`, `data_source`, `synthetic_flag`, `age`, `age_group`, `gender`, `education_level`, `employment_status`, `occupation_category`, `average_sleep_hours`) VALUES
	('\nP0297', 'synthetic_ai', '1', 26, 5, 1, 1, 2, 8, 6.5);
INSERT INTO `todo` (`participant_id`, `data_source`, `synthetic_flag`, `age`, `age_group`, `gender`, `education_level`, `employment_status`, `occupation_category`, `average_sleep_hours`) VALUES
	('\nP0298', 'synthetic_ai', '1', 31, 2, 2, 1, 2, 9, 6.5);
INSERT INTO `todo` (`participant_id`, `data_source`, `synthetic_flag`, `age`, `age_group`, `gender`, `education_level`, `employment_status`, `occupation_category`, `average_sleep_hours`) VALUES
	('\nP0299', 'synthetic_ai', '1', 44, 4, 1, 1, 2, 11, 7.0);
INSERT INTO `todo` (`participant_id`, `data_source`, `synthetic_flag`, `age`, `age_group`, `gender`, `education_level`, `employment_status`, `occupation_category`, `average_sleep_hours`) VALUES
	('\nP0300', 'synthetic_ai', '1', 61, 6, 2, 1, 3, 5, 8.0);

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
