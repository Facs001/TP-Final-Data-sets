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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;

-- Volcando datos para la tabla procrastinacion.educacion: ~0 rows (aproximadamente)

-- Volcando estructura para tabla procrastinacion.estado_laboral
CREATE TABLE IF NOT EXISTS `estado_laboral` (
  `estlab_cod` tinyint(3) unsigned NOT NULL AUTO_INCREMENT,
  `estlab_des` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`estlab_cod`),
  UNIQUE KEY `estlab_des` (`estlab_des`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;

-- Volcando datos para la tabla procrastinacion.estado_laboral: ~0 rows (aproximadamente)

-- Volcando estructura para tabla procrastinacion.generos
CREATE TABLE IF NOT EXISTS `generos` (
  `gene_cod` tinyint(3) unsigned NOT NULL AUTO_INCREMENT,
  `gene_des` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`gene_cod`),
  UNIQUE KEY `gene_des` (`gene_des`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;

-- Volcando datos para la tabla procrastinacion.generos: ~0 rows (aproximadamente)

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
  `parti_ash` decimal(1,1) NOT NULL,
  `age_group` varchar(250) DEFAULT NULL,
  `gender` varchar(250) DEFAULT NULL,
  `education_level` varchar(250) DEFAULT NULL,
  `employment_status` varchar(250) DEFAULT NULL,
  `occupation_category` varchar(250) DEFAULT NULL,
  `parti_gen` tinyint(3) unsigned DEFAULT NULL,
  `parti_ocu` tinyint(3) unsigned DEFAULT NULL,
  `parti_esla` tinyint(3) unsigned DEFAULT NULL,
  `parti_edu` tinyint(3) unsigned DEFAULT NULL,
  `parti_rang` tinyint(3) unsigned DEFAULT NULL,
  PRIMARY KEY (`parti_cod`),
  UNIQUE KEY `parti_id` (`parti_id`),
  KEY `parti_gen` (`parti_gen`),
  KEY `parti_ocu` (`parti_ocu`),
  KEY `parti_esla` (`parti_esla`),
  KEY `parti_edu` (`parti_edu`),
  KEY `parti_rang` (`parti_rang`),
  CONSTRAINT `1` FOREIGN KEY (`parti_gen`) REFERENCES `generos` (`gene_cod`),
  CONSTRAINT `2` FOREIGN KEY (`parti_ocu`) REFERENCES `ocupacion` (`ocup_codi`),
  CONSTRAINT `3` FOREIGN KEY (`parti_esla`) REFERENCES `estado_laboral` (`estlab_cod`),
  CONSTRAINT `4` FOREIGN KEY (`parti_edu`) REFERENCES `educacion` (`educa_cod`),
  CONSTRAINT `5` FOREIGN KEY (`parti_rang`) REFERENCES `Rango_edad` (`randad_cod`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;

-- Volcando datos para la tabla procrastinacion.participantes: ~0 rows (aproximadamente)

-- Volcando estructura para tabla procrastinacion.Rango_edad
CREATE TABLE IF NOT EXISTS `Rango_edad` (
  `randad_cod` tinyint(3) unsigned NOT NULL AUTO_INCREMENT,
  `randad_des` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`randad_cod`),
  UNIQUE KEY `randad_des` (`randad_des`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;

-- Volcando datos para la tabla procrastinacion.Rango_edad: ~0 rows (aproximadamente)

-- Volcando estructura para tabla procrastinacion.todo
CREATE TABLE IF NOT EXISTS `todo` (
  `participant_id` varchar(250) DEFAULT NULL,
  `data_source` varchar(250) DEFAULT NULL,
  `synthetic_flag` varchar(250) DEFAULT NULL,
  `age` varchar(250) DEFAULT NULL,
  `age_group` varchar(250) DEFAULT NULL,
  `gender` varchar(250) DEFAULT NULL,
  `education_level` varchar(250) DEFAULT NULL,
  `employment_status` varchar(250) DEFAULT NULL,
  `occupation_category` varchar(250) DEFAULT NULL,
  `average_sleep_hours` varchar(250) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;

-- Volcando datos para la tabla procrastinacion.todo: ~307 rows (aproximadamente)
INSERT INTO `todo` (`participant_id`, `data_source`, `synthetic_flag`, `age`, `age_group`, `gender`, `education_level`, `employment_status`, `occupation_category`, `average_sleep_hours`) VALUES
	('\nP0001', 'synthetic_ai', '1', '19', '18-20', 'Male', 'Undergraduate', 'Student', '1', '6.5');
INSERT INTO `todo` (`participant_id`, `data_source`, `synthetic_flag`, `age`, `age_group`, `gender`, `education_level`, `employment_status`, `occupation_category`, `average_sleep_hours`) VALUES
	('\nP0002', 'synthetic_ai', '1', '34', '30-39', 'Female', 'Postgraduate', 'Full-time employed', '2', '7');
INSERT INTO `todo` (`participant_id`, `data_source`, `synthetic_flag`, `age`, `age_group`, `gender`, `education_level`, `employment_status`, `occupation_category`, `average_sleep_hours`) VALUES
	('\nP0003', 'synthetic_ai', '1', '22', '21-24', 'Female', 'Undergraduate', 'Student', '1', '6');
INSERT INTO `todo` (`participant_id`, `data_source`, `synthetic_flag`, `age`, `age_group`, `gender`, `education_level`, `employment_status`, `occupation_category`, `average_sleep_hours`) VALUES
	('\nP0004', 'synthetic_ai', '1', '45', '40-49', 'Male', 'Undergraduate', 'Full-time employed', '3', '7.5');
INSERT INTO `todo` (`participant_id`, `data_source`, `synthetic_flag`, `age`, `age_group`, `gender`, `education_level`, `employment_status`, `occupation_category`, `average_sleep_hours`) VALUES
	('\nP0005', 'synthetic_ai', '1', '28', '25-29', 'Non-binary', 'Postgraduate', 'Full-time employed', '4', '6.5');
INSERT INTO `todo` (`participant_id`, `data_source`, `synthetic_flag`, `age`, `age_group`, `gender`, `education_level`, `employment_status`, `occupation_category`, `average_sleep_hours`) VALUES
	('\nP0006', 'synthetic_ai', '1', '62', '60+', 'Female', 'Undergraduate', 'Retired', '5', '8');
INSERT INTO `todo` (`participant_id`, `data_source`, `synthetic_flag`, `age`, `age_group`, `gender`, `education_level`, `employment_status`, `occupation_category`, `average_sleep_hours`) VALUES
	('\nP0007', 'synthetic_ai', '1', '25', '25-29', 'Male', 'Undergraduate', 'Full-time employed', '6', '6');
INSERT INTO `todo` (`participant_id`, `data_source`, `synthetic_flag`, `age`, `age_group`, `gender`, `education_level`, `employment_status`, `occupation_category`, `average_sleep_hours`) VALUES
	('\nP0008', 'synthetic_ai', '1', '31', '30-39', 'Female', 'Postgraduate', 'Self-employed', '7', '7');
INSERT INTO `todo` (`participant_id`, `data_source`, `synthetic_flag`, `age`, `age_group`, `gender`, `education_level`, `employment_status`, `occupation_category`, `average_sleep_hours`) VALUES
	('\nP0009', 'synthetic_ai', '1', '20', '18-20', 'Male', 'High school', 'Student', '1', '6');
INSERT INTO `todo` (`participant_id`, `data_source`, `synthetic_flag`, `age`, `age_group`, `gender`, `education_level`, `employment_status`, `occupation_category`, `average_sleep_hours`) VALUES
	('\nP0010', 'synthetic_ai', '1', '52', '50-59', 'Male', 'Postgraduate', 'Full-time employed', '8', '7.5');
INSERT INTO `todo` (`participant_id`, `data_source`, `synthetic_flag`, `age`, `age_group`, `gender`, `education_level`, `employment_status`, `occupation_category`, `average_sleep_hours`) VALUES
	('\nP0011', 'synthetic_ai', '1', '27', '25-29', 'Female', 'Undergraduate', 'Full-time employed', '1', '7');
INSERT INTO `todo` (`participant_id`, `data_source`, `synthetic_flag`, `age`, `age_group`, `gender`, `education_level`, `employment_status`, `occupation_category`, `average_sleep_hours`) VALUES
	('\nP0012', 'synthetic_ai', '1', '38', '30-39', 'Male', 'Doctoral', 'Full-time employed', '4', '6.5');
INSERT INTO `todo` (`participant_id`, `data_source`, `synthetic_flag`, `age`, `age_group`, `gender`, `education_level`, `employment_status`, `occupation_category`, `average_sleep_hours`) VALUES
	('\nP0013', 'synthetic_ai', '1', '23', '21-24', 'Female', 'Undergraduate', 'Part-time employed', '9', '5.5');
INSERT INTO `todo` (`participant_id`, `data_source`, `synthetic_flag`, `age`, `age_group`, `gender`, `education_level`, `employment_status`, `occupation_category`, `average_sleep_hours`) VALUES
	('\nP0014', 'synthetic_ai', '1', '47', '40-49', 'Female', 'Postgraduate', 'Full-time employed', '2', '7');
INSERT INTO `todo` (`participant_id`, `data_source`, `synthetic_flag`, `age`, `age_group`, `gender`, `education_level`, `employment_status`, `occupation_category`, `average_sleep_hours`) VALUES
	('\nP0015', 'synthetic_ai', '1', '29', '25-29', 'Male', 'Postgraduate', 'Full-time employed', '3', '6.5');
INSERT INTO `todo` (`participant_id`, `data_source`, `synthetic_flag`, `age`, `age_group`, `gender`, `education_level`, `employment_status`, `occupation_category`, `average_sleep_hours`) VALUES
	('\nP0016', 'synthetic_ai', '1', '65', '60+', 'Male', 'High school', 'Retired', '5', '8.5');
INSERT INTO `todo` (`participant_id`, `data_source`, `synthetic_flag`, `age`, `age_group`, `gender`, `education_level`, `employment_status`, `occupation_category`, `average_sleep_hours`) VALUES
	('\nP0017', 'synthetic_ai', '1', '33', '30-39', 'Female', 'Undergraduate', 'Full-time employed', '10', '7');
INSERT INTO `todo` (`participant_id`, `data_source`, `synthetic_flag`, `age`, `age_group`, `gender`, `education_level`, `employment_status`, `occupation_category`, `average_sleep_hours`) VALUES
	('\nP0018', 'synthetic_ai', '1', '21', '21-24', 'Male', 'Undergraduate', 'Student', '1', '6');
INSERT INTO `todo` (`participant_id`, `data_source`, `synthetic_flag`, `age`, `age_group`, `gender`, `education_level`, `employment_status`, `occupation_category`, `average_sleep_hours`) VALUES
	('\nP0019', 'synthetic_ai', '1', '55', '50-59', 'Female', 'Postgraduate', 'Full-time employed', '1', '7.5');
INSERT INTO `todo` (`participant_id`, `data_source`, `synthetic_flag`, `age`, `age_group`, `gender`, `education_level`, `employment_status`, `occupation_category`, `average_sleep_hours`) VALUES
	('\nP0020', 'synthetic_ai', '1', '26', '25-29', 'Non-binary', 'Postgraduate', 'Freelancer', '7', '6.5');
INSERT INTO `todo` (`participant_id`, `data_source`, `synthetic_flag`, `age`, `age_group`, `gender`, `education_level`, `employment_status`, `occupation_category`, `average_sleep_hours`) VALUES
	('\nP0021', 'synthetic_ai', '1', '41', '40-49', 'Male', 'Undergraduate', 'Full-time employed', '11', '7');
INSERT INTO `todo` (`participant_id`, `data_source`, `synthetic_flag`, `age`, `age_group`, `gender`, `education_level`, `employment_status`, `occupation_category`, `average_sleep_hours`) VALUES
	('\nP0022', 'synthetic_ai', '1', '19', '18-20', 'Female', 'High school', 'Student', '1', '7');
INSERT INTO `todo` (`participant_id`, `data_source`, `synthetic_flag`, `age`, `age_group`, `gender`, `education_level`, `employment_status`, `occupation_category`, `average_sleep_hours`) VALUES
	('\nP0023', 'synthetic_ai', '1', '37', '30-39', 'Male', 'Doctoral', 'Full-time employed', '4', '6');
INSERT INTO `todo` (`participant_id`, `data_source`, `synthetic_flag`, `age`, `age_group`, `gender`, `education_level`, `employment_status`, `occupation_category`, `average_sleep_hours`) VALUES
	('\nP0024', 'synthetic_ai', '1', '58', '50-59', 'Female', 'Undergraduate', 'Part-time employed', '9', '7');
INSERT INTO `todo` (`participant_id`, `data_source`, `synthetic_flag`, `age`, `age_group`, `gender`, `education_level`, `employment_status`, `occupation_category`, `average_sleep_hours`) VALUES
	('\nP0025', 'synthetic_ai', '1', '24', '21-24', 'Male', 'Undergraduate', 'Job seeker', '5', '6.5');
INSERT INTO `todo` (`participant_id`, `data_source`, `synthetic_flag`, `age`, `age_group`, `gender`, `education_level`, `employment_status`, `occupation_category`, `average_sleep_hours`) VALUES
	('\nP0026', 'synthetic_ai', '1', '43', '40-49', 'Female', 'Postgraduate', 'Full-time employed', '6', '7');
INSERT INTO `todo` (`participant_id`, `data_source`, `synthetic_flag`, `age`, `age_group`, `gender`, `education_level`, `employment_status`, `occupation_category`, `average_sleep_hours`) VALUES
	('\nP0027', 'synthetic_ai', '1', '30', '30-39', 'Male', 'Undergraduate', 'Full-time employed', '12', '6.5');
INSERT INTO `todo` (`participant_id`, `data_source`, `synthetic_flag`, `age`, `age_group`, `gender`, `education_level`, `employment_status`, `occupation_category`, `average_sleep_hours`) VALUES
	('\nP0028', 'synthetic_ai', '1', '18', '18-20', 'Female', 'High school', 'Student', '1', '6.5');
INSERT INTO `todo` (`participant_id`, `data_source`, `synthetic_flag`, `age`, `age_group`, `gender`, `education_level`, `employment_status`, `occupation_category`, `average_sleep_hours`) VALUES
	('\nP0029', 'synthetic_ai', '1', '50', '50-59', 'Male', 'Postgraduate', 'Full-time employed', '3', '7');
INSERT INTO `todo` (`participant_id`, `data_source`, `synthetic_flag`, `age`, `age_group`, `gender`, `education_level`, `employment_status`, `occupation_category`, `average_sleep_hours`) VALUES
	('\nP0030', 'synthetic_ai', '1', '35', '30-39', 'Female', 'Undergraduate', 'Self-employed', '10', '7.5');
INSERT INTO `todo` (`participant_id`, `data_source`, `synthetic_flag`, `age`, `age_group`, `gender`, `education_level`, `employment_status`, `occupation_category`, `average_sleep_hours`) VALUES
	('\nP0031', 'synthetic_ai', '1', '22', '21-24', 'Male', 'Undergraduate', 'Student', '1', '5.5');
INSERT INTO `todo` (`participant_id`, `data_source`, `synthetic_flag`, `age`, `age_group`, `gender`, `education_level`, `employment_status`, `occupation_category`, `average_sleep_hours`) VALUES
	('\nP0032', 'synthetic_ai', '1', '46', '40-49', 'Female', 'Postgraduate', 'Full-time employed', '2', '7.5');
INSERT INTO `todo` (`participant_id`, `data_source`, `synthetic_flag`, `age`, `age_group`, `gender`, `education_level`, `employment_status`, `occupation_category`, `average_sleep_hours`) VALUES
	('\nP0033', 'synthetic_ai', '1', '28', '25-29', 'Male', 'Undergraduate', 'Full-time employed', '13', '6.5');
INSERT INTO `todo` (`participant_id`, `data_source`, `synthetic_flag`, `age`, `age_group`, `gender`, `education_level`, `employment_status`, `occupation_category`, `average_sleep_hours`) VALUES
	('\nP0034', 'synthetic_ai', '1', '67', '60+', 'Female', 'High school', 'Retired', '5', '8');
INSERT INTO `todo` (`participant_id`, `data_source`, `synthetic_flag`, `age`, `age_group`, `gender`, `education_level`, `employment_status`, `occupation_category`, `average_sleep_hours`) VALUES
	('\nP0035', 'synthetic_ai', '1', '32', '30-39', 'Male', 'Postgraduate', 'Freelancer', '3', '6.5');
INSERT INTO `todo` (`participant_id`, `data_source`, `synthetic_flag`, `age`, `age_group`, `gender`, `education_level`, `employment_status`, `occupation_category`, `average_sleep_hours`) VALUES
	('\nP0036', 'synthetic_ai', '1', '20', '18-20', 'Female', 'High school', 'Student', '1', '6');
INSERT INTO `todo` (`participant_id`, `data_source`, `synthetic_flag`, `age`, `age_group`, `gender`, `education_level`, `employment_status`, `occupation_category`, `average_sleep_hours`) VALUES
	('\nP0037', 'synthetic_ai', '1', '53', '50-59', 'Male', 'Undergraduate', 'Full-time employed', '8', '7.5');
INSERT INTO `todo` (`participant_id`, `data_source`, `synthetic_flag`, `age`, `age_group`, `gender`, `education_level`, `employment_status`, `occupation_category`, `average_sleep_hours`) VALUES
	('\nP0038', 'synthetic_ai', '1', '27', '25-29', 'Female', 'Postgraduate', 'Full-time employed', '2', '7');
INSERT INTO `todo` (`participant_id`, `data_source`, `synthetic_flag`, `age`, `age_group`, `gender`, `education_level`, `employment_status`, `occupation_category`, `average_sleep_hours`) VALUES
	('\nP0039', 'synthetic_ai', '1', '42', '40-49', 'Male', 'Undergraduate', 'Full-time employed', '11', '7');
INSERT INTO `todo` (`participant_id`, `data_source`, `synthetic_flag`, `age`, `age_group`, `gender`, `education_level`, `employment_status`, `occupation_category`, `average_sleep_hours`) VALUES
	('\nP0040', 'synthetic_ai', '1', '24', '21-24', 'Female', 'Undergraduate', 'Part-time employed', '12', '5.5');
INSERT INTO `todo` (`participant_id`, `data_source`, `synthetic_flag`, `age`, `age_group`, `gender`, `education_level`, `employment_status`, `occupation_category`, `average_sleep_hours`) VALUES
	('\nP0041', 'synthetic_ai', '1', '60', '60+', 'Female', 'Undergraduate', 'Part-time employed', '1', '7.5');
INSERT INTO `todo` (`participant_id`, `data_source`, `synthetic_flag`, `age`, `age_group`, `gender`, `education_level`, `employment_status`, `occupation_category`, `average_sleep_hours`) VALUES
	('\nP0042', 'synthetic_ai', '1', '36', '30-39', 'Male', 'Doctoral', 'Full-time employed', '4', '6.5');
INSERT INTO `todo` (`participant_id`, `data_source`, `synthetic_flag`, `age`, `age_group`, `gender`, `education_level`, `employment_status`, `occupation_category`, `average_sleep_hours`) VALUES
	('\nP0043', 'synthetic_ai', '1', '23', '21-24', 'Male', 'Diploma', 'Job seeker', '5', '6.5');
INSERT INTO `todo` (`participant_id`, `data_source`, `synthetic_flag`, `age`, `age_group`, `gender`, `education_level`, `employment_status`, `occupation_category`, `average_sleep_hours`) VALUES
	('\nP0044', 'synthetic_ai', '1', '48', '40-49', 'Female', 'Postgraduate', 'Full-time employed', '2', '7');
INSERT INTO `todo` (`participant_id`, `data_source`, `synthetic_flag`, `age`, `age_group`, `gender`, `education_level`, `employment_status`, `occupation_category`, `average_sleep_hours`) VALUES
	('\nP0045', 'synthetic_ai', '1', '29', '25-29', 'Male', 'Undergraduate', 'Full-time employed', '3', '6');
INSERT INTO `todo` (`participant_id`, `data_source`, `synthetic_flag`, `age`, `age_group`, `gender`, `education_level`, `employment_status`, `occupation_category`, `average_sleep_hours`) VALUES
	('\nP0046', 'synthetic_ai', '1', '57', '50-59', 'Female', 'Undergraduate', 'Full-time employed', '1', '7.5');
INSERT INTO `todo` (`participant_id`, `data_source`, `synthetic_flag`, `age`, `age_group`, `gender`, `education_level`, `employment_status`, `occupation_category`, `average_sleep_hours`) VALUES
	('\nP0047', 'synthetic_ai', '1', '26', '25-29', 'Female', 'Undergraduate', 'Full-time employed', '6', '6.5');
INSERT INTO `todo` (`participant_id`, `data_source`, `synthetic_flag`, `age`, `age_group`, `gender`, `education_level`, `employment_status`, `occupation_category`, `average_sleep_hours`) VALUES
	('\nP0048', 'synthetic_ai', '1', '39', '30-39', 'Male', 'Undergraduate', 'Full-time employed', '10', '7');
INSERT INTO `todo` (`participant_id`, `data_source`, `synthetic_flag`, `age`, `age_group`, `gender`, `education_level`, `employment_status`, `occupation_category`, `average_sleep_hours`) VALUES
	('\nP0049', 'synthetic_ai', '1', '21', '21-24', 'Female', 'Undergraduate', 'Student', '1', '6');
INSERT INTO `todo` (`participant_id`, `data_source`, `synthetic_flag`, `age`, `age_group`, `gender`, `education_level`, `employment_status`, `occupation_category`, `average_sleep_hours`) VALUES
	('\nP0050', 'synthetic_ai', '1', '44', '40-49', 'Male', 'Postgraduate', 'Full-time employed', '3', '7');
INSERT INTO `todo` (`participant_id`, `data_source`, `synthetic_flag`, `age`, `age_group`, `gender`, `education_level`, `employment_status`, `occupation_category`, `average_sleep_hours`) VALUES
	('\nP0051', 'synthetic_ai', '1', '31', '30-39', 'Female', 'Postgraduate', 'Self-employed', '7', '7');
INSERT INTO `todo` (`participant_id`, `data_source`, `synthetic_flag`, `age`, `age_group`, `gender`, `education_level`, `employment_status`, `occupation_category`, `average_sleep_hours`) VALUES
	('\nP0052', 'synthetic_ai', '1', '68', '60+', 'Male', 'High school', 'Retired', '5', '8.5');
INSERT INTO `todo` (`participant_id`, `data_source`, `synthetic_flag`, `age`, `age_group`, `gender`, `education_level`, `employment_status`, `occupation_category`, `average_sleep_hours`) VALUES
	('\nP0053', 'synthetic_ai', '1', '25', '25-29', 'Male', 'Undergraduate', 'Freelancer', '7', '6');
INSERT INTO `todo` (`participant_id`, `data_source`, `synthetic_flag`, `age`, `age_group`, `gender`, `education_level`, `employment_status`, `occupation_category`, `average_sleep_hours`) VALUES
	('\nP0054', 'synthetic_ai', '1', '49', '40-49', 'Female', 'Undergraduate', 'Full-time employed', '8', '7');
INSERT INTO `todo` (`participant_id`, `data_source`, `synthetic_flag`, `age`, `age_group`, `gender`, `education_level`, `employment_status`, `occupation_category`, `average_sleep_hours`) VALUES
	('\nP0055', 'synthetic_ai', '1', '22', '21-24', 'Male', 'Undergraduate', 'Student', '1', '5.5');
INSERT INTO `todo` (`participant_id`, `data_source`, `synthetic_flag`, `age`, `age_group`, `gender`, `education_level`, `employment_status`, `occupation_category`, `average_sleep_hours`) VALUES
	('\nP0056', 'synthetic_ai', '1', '34', '30-39', 'Female', 'Postgraduate', 'Full-time employed', '2', '7');
INSERT INTO `todo` (`participant_id`, `data_source`, `synthetic_flag`, `age`, `age_group`, `gender`, `education_level`, `employment_status`, `occupation_category`, `average_sleep_hours`) VALUES
	('\nP0057', 'synthetic_ai', '1', '72', '60+', 'Female', 'Undergraduate', 'Retired', '5', '8');
INSERT INTO `todo` (`participant_id`, `data_source`, `synthetic_flag`, `age`, `age_group`, `gender`, `education_level`, `employment_status`, `occupation_category`, `average_sleep_hours`) VALUES
	('\nP0058', 'synthetic_ai', '1', '27', '25-29', 'Male', 'Diploma', 'Full-time employed', '13', '6.5');
INSERT INTO `todo` (`participant_id`, `data_source`, `synthetic_flag`, `age`, `age_group`, `gender`, `education_level`, `employment_status`, `occupation_category`, `average_sleep_hours`) VALUES
	('\nP0059', 'synthetic_ai', '1', '33', '30-39', 'Female', 'Undergraduate', 'Full-time employed', '10', '7');
INSERT INTO `todo` (`participant_id`, `data_source`, `synthetic_flag`, `age`, `age_group`, `gender`, `education_level`, `employment_status`, `occupation_category`, `average_sleep_hours`) VALUES
	('\nP0060', 'synthetic_ai', '1', '19', '18-20', 'Male', 'High school', 'Student', '1', '6.5');
INSERT INTO `todo` (`participant_id`, `data_source`, `synthetic_flag`, `age`, `age_group`, `gender`, `education_level`, `employment_status`, `occupation_category`, `average_sleep_hours`) VALUES
	('\nP0061', 'synthetic_ai', '1', '45', '40-49', 'Female', 'Postgraduate', 'Full-time employed', '6', '7.5');
INSERT INTO `todo` (`participant_id`, `data_source`, `synthetic_flag`, `age`, `age_group`, `gender`, `education_level`, `employment_status`, `occupation_category`, `average_sleep_hours`) VALUES
	('\nP0062', 'synthetic_ai', '1', '23', '21-24', 'Female', 'Undergraduate', 'Student', '1', '6');
INSERT INTO `todo` (`participant_id`, `data_source`, `synthetic_flag`, `age`, `age_group`, `gender`, `education_level`, `employment_status`, `occupation_category`, `average_sleep_hours`) VALUES
	('\nP0063', 'synthetic_ai', '1', '38', '30-39', 'Male', 'Undergraduate', 'Full-time employed', '9', '6.5');
INSERT INTO `todo` (`participant_id`, `data_source`, `synthetic_flag`, `age`, `age_group`, `gender`, `education_level`, `employment_status`, `occupation_category`, `average_sleep_hours`) VALUES
	('\nP0064', 'synthetic_ai', '1', '54', '50-59', 'Female', 'Postgraduate', 'Full-time employed', '2', '7.5');
INSERT INTO `todo` (`participant_id`, `data_source`, `synthetic_flag`, `age`, `age_group`, `gender`, `education_level`, `employment_status`, `occupation_category`, `average_sleep_hours`) VALUES
	('\nP0065', 'synthetic_ai', '1', '29', '25-29', 'Non-binary', 'Postgraduate', 'Full-time employed', '3', '6.5');
INSERT INTO `todo` (`participant_id`, `data_source`, `synthetic_flag`, `age`, `age_group`, `gender`, `education_level`, `employment_status`, `occupation_category`, `average_sleep_hours`) VALUES
	('\nP0066', 'synthetic_ai', '1', '61', '60+', 'Male', 'Undergraduate', 'Retired', '5', '8.5');
INSERT INTO `todo` (`participant_id`, `data_source`, `synthetic_flag`, `age`, `age_group`, `gender`, `education_level`, `employment_status`, `occupation_category`, `average_sleep_hours`) VALUES
	('\nP0067', 'synthetic_ai', '1', '26', '25-29', 'Male', 'Undergraduate', 'Full-time employed', '11', '6.5');
INSERT INTO `todo` (`participant_id`, `data_source`, `synthetic_flag`, `age`, `age_group`, `gender`, `education_level`, `employment_status`, `occupation_category`, `average_sleep_hours`) VALUES
	('\nP0068', 'synthetic_ai', '1', '35', '30-39', 'Female', 'Undergraduate', 'Self-employed', '7', '7');
INSERT INTO `todo` (`participant_id`, `data_source`, `synthetic_flag`, `age`, `age_group`, `gender`, `education_level`, `employment_status`, `occupation_category`, `average_sleep_hours`) VALUES
	('\nP0069', 'synthetic_ai', '1', '42', '40-49', 'Male', 'Doctoral', 'Full-time employed', '4', '6.5');
INSERT INTO `todo` (`participant_id`, `data_source`, `synthetic_flag`, `age`, `age_group`, `gender`, `education_level`, `employment_status`, `occupation_category`, `average_sleep_hours`) VALUES
	('\nP0070', 'synthetic_ai', '1', '20', '18-20', 'Female', 'High school', 'Student', '1', '6');
INSERT INTO `todo` (`participant_id`, `data_source`, `synthetic_flag`, `age`, `age_group`, `gender`, `education_level`, `employment_status`, `occupation_category`, `average_sleep_hours`) VALUES
	('\nP0071', 'synthetic_ai', '1', '47', '40-49', 'Female', 'Postgraduate', 'Full-time employed', '8', '7');
INSERT INTO `todo` (`participant_id`, `data_source`, `synthetic_flag`, `age`, `age_group`, `gender`, `education_level`, `employment_status`, `occupation_category`, `average_sleep_hours`) VALUES
	('\nP0072', 'synthetic_ai', '1', '24', '21-24', 'Male', 'Diploma', 'Job seeker', '5', '6');
INSERT INTO `todo` (`participant_id`, `data_source`, `synthetic_flag`, `age`, `age_group`, `gender`, `education_level`, `employment_status`, `occupation_category`, `average_sleep_hours`) VALUES
	('\nP0073', 'synthetic_ai', '1', '52', '50-59', 'Male', 'Postgraduate', 'Full-time employed', '3', '7');
INSERT INTO `todo` (`participant_id`, `data_source`, `synthetic_flag`, `age`, `age_group`, `gender`, `education_level`, `employment_status`, `occupation_category`, `average_sleep_hours`) VALUES
	('\nP0074', 'synthetic_ai', '1', '30', '30-39', 'Female', 'Undergraduate', 'Full-time employed', '1', '7');
INSERT INTO `todo` (`participant_id`, `data_source`, `synthetic_flag`, `age`, `age_group`, `gender`, `education_level`, `employment_status`, `occupation_category`, `average_sleep_hours`) VALUES
	('\nP0075', 'synthetic_ai', '1', '18', '18-20', 'Male', 'High school', 'Student', '1', '6.5');
INSERT INTO `todo` (`participant_id`, `data_source`, `synthetic_flag`, `age`, `age_group`, `gender`, `education_level`, `employment_status`, `occupation_category`, `average_sleep_hours`) VALUES
	('\nP0076', 'synthetic_ai', '1', '40', '40-49', 'Female', 'Postgraduate', 'Full-time employed', '2', '7.5');
INSERT INTO `todo` (`participant_id`, `data_source`, `synthetic_flag`, `age`, `age_group`, `gender`, `education_level`, `employment_status`, `occupation_category`, `average_sleep_hours`) VALUES
	('\nP0077', 'synthetic_ai', '1', '28', '25-29', 'Male', 'Postgraduate', 'Full-time employed', '6', '7');
INSERT INTO `todo` (`participant_id`, `data_source`, `synthetic_flag`, `age`, `age_group`, `gender`, `education_level`, `employment_status`, `occupation_category`, `average_sleep_hours`) VALUES
	('\nP0078', 'synthetic_ai', '1', '63', '60+', 'Female', 'Diploma', 'Retired', '5', '8');
INSERT INTO `todo` (`participant_id`, `data_source`, `synthetic_flag`, `age`, `age_group`, `gender`, `education_level`, `employment_status`, `occupation_category`, `average_sleep_hours`) VALUES
	('\nP0079', 'synthetic_ai', '1', '33', '30-39', 'Male', 'Undergraduate', 'Freelancer', '3', '6.5');
INSERT INTO `todo` (`participant_id`, `data_source`, `synthetic_flag`, `age`, `age_group`, `gender`, `education_level`, `employment_status`, `occupation_category`, `average_sleep_hours`) VALUES
	('\nP0080', 'synthetic_ai', '1', '21', '21-24', 'Female', 'Undergraduate', 'Student', '1', '5.5');
INSERT INTO `todo` (`participant_id`, `data_source`, `synthetic_flag`, `age`, `age_group`, `gender`, `education_level`, `employment_status`, `occupation_category`, `average_sleep_hours`) VALUES
	('\nP0081', 'synthetic_ai', '1', '46', '40-49', 'Male', 'Undergraduate', 'Full-time employed', '11', '7.5');
INSERT INTO `todo` (`participant_id`, `data_source`, `synthetic_flag`, `age`, `age_group`, `gender`, `education_level`, `employment_status`, `occupation_category`, `average_sleep_hours`) VALUES
	('\nP0082', 'synthetic_ai', '1', '25', '25-29', 'Female', 'Diploma', 'Part-time employed', '12', '5.5');
INSERT INTO `todo` (`participant_id`, `data_source`, `synthetic_flag`, `age`, `age_group`, `gender`, `education_level`, `employment_status`, `occupation_category`, `average_sleep_hours`) VALUES
	('\nP0083', 'synthetic_ai', '1', '37', '30-39', 'Female', 'Postgraduate', 'Full-time employed', '4', '7');
INSERT INTO `todo` (`participant_id`, `data_source`, `synthetic_flag`, `age`, `age_group`, `gender`, `education_level`, `employment_status`, `occupation_category`, `average_sleep_hours`) VALUES
	('\nP0084', 'synthetic_ai', '1', '55', '50-59', 'Male', 'Postgraduate', 'Full-time employed', '8', '7.5');
INSERT INTO `todo` (`participant_id`, `data_source`, `synthetic_flag`, `age`, `age_group`, `gender`, `education_level`, `employment_status`, `occupation_category`, `average_sleep_hours`) VALUES
	('\nP0085', 'synthetic_ai', '1', '22', '21-24', 'Male', 'Undergraduate', 'Student', '1', '6');
INSERT INTO `todo` (`participant_id`, `data_source`, `synthetic_flag`, `age`, `age_group`, `gender`, `education_level`, `employment_status`, `occupation_category`, `average_sleep_hours`) VALUES
	('\nP0086', 'synthetic_ai', '1', '43', '40-49', 'Female', 'Undergraduate', 'Full-time employed', '6', '7');
INSERT INTO `todo` (`participant_id`, `data_source`, `synthetic_flag`, `age`, `age_group`, `gender`, `education_level`, `employment_status`, `occupation_category`, `average_sleep_hours`) VALUES
	('\nP0087', 'synthetic_ai', '1', '27', '25-29', 'Male', 'Undergraduate', 'Full-time employed', '3', '6.5');
INSERT INTO `todo` (`participant_id`, `data_source`, `synthetic_flag`, `age`, `age_group`, `gender`, `education_level`, `employment_status`, `occupation_category`, `average_sleep_hours`) VALUES
	('\nP0088', 'synthetic_ai', '1', '48', '40-49', 'Female', 'Postgraduate', 'Full-time employed', '2', '7.5');
INSERT INTO `todo` (`participant_id`, `data_source`, `synthetic_flag`, `age`, `age_group`, `gender`, `education_level`, `employment_status`, `occupation_category`, `average_sleep_hours`) VALUES
	('\nP0089', 'synthetic_ai', '1', '31', '30-39', 'Male', 'Diploma', 'Full-time employed', '9', '6.5');
INSERT INTO `todo` (`participant_id`, `data_source`, `synthetic_flag`, `age`, `age_group`, `gender`, `education_level`, `employment_status`, `occupation_category`, `average_sleep_hours`) VALUES
	('\nP0090', 'synthetic_ai', '1', '19', '18-20', 'Female', 'High school', 'Student', '1', '6.5');
INSERT INTO `todo` (`participant_id`, `data_source`, `synthetic_flag`, `age`, `age_group`, `gender`, `education_level`, `employment_status`, `occupation_category`, `average_sleep_hours`) VALUES
	('\nP0091', 'synthetic_ai', '1', '58', '50-59', 'Male', 'Undergraduate', 'Full-time employed', '13', '7');
INSERT INTO `todo` (`participant_id`, `data_source`, `synthetic_flag`, `age`, `age_group`, `gender`, `education_level`, `employment_status`, `occupation_category`, `average_sleep_hours`) VALUES
	('\nP0092', 'synthetic_ai', '1', '26', '25-29', 'Female', 'Undergraduate', 'Full-time employed', '10', '6.5');
INSERT INTO `todo` (`participant_id`, `data_source`, `synthetic_flag`, `age`, `age_group`, `gender`, `education_level`, `employment_status`, `occupation_category`, `average_sleep_hours`) VALUES
	('\nP0093', 'synthetic_ai', '1', '41', '40-49', 'Male', 'Postgraduate', 'Full-time employed', '3', '7');
INSERT INTO `todo` (`participant_id`, `data_source`, `synthetic_flag`, `age`, `age_group`, `gender`, `education_level`, `employment_status`, `occupation_category`, `average_sleep_hours`) VALUES
	('\nP0094', 'synthetic_ai', '1', '23', '21-24', 'Male', 'Undergraduate', 'Student', '1', '5.5');
INSERT INTO `todo` (`participant_id`, `data_source`, `synthetic_flag`, `age`, `age_group`, `gender`, `education_level`, `employment_status`, `occupation_category`, `average_sleep_hours`) VALUES
	('\nP0095', 'synthetic_ai', '1', '36', '30-39', 'Female', 'Doctoral', 'Full-time employed', '4', '7');
INSERT INTO `todo` (`participant_id`, `data_source`, `synthetic_flag`, `age`, `age_group`, `gender`, `education_level`, `employment_status`, `occupation_category`, `average_sleep_hours`) VALUES
	('\nP0096', 'synthetic_ai', '1', '50', '50-59', 'Female', 'Undergraduate', 'Homemaker/caregiver', '5', '8');
INSERT INTO `todo` (`participant_id`, `data_source`, `synthetic_flag`, `age`, `age_group`, `gender`, `education_level`, `employment_status`, `occupation_category`, `average_sleep_hours`) VALUES
	('\nP0097', 'synthetic_ai', '1', '28', '25-29', 'Male', 'Undergraduate', 'Full-time employed', '12', '6.5');
INSERT INTO `todo` (`participant_id`, `data_source`, `synthetic_flag`, `age`, `age_group`, `gender`, `education_level`, `employment_status`, `occupation_category`, `average_sleep_hours`) VALUES
	('\nP0098', 'synthetic_ai', '1', '44', '40-49', 'Female', 'Postgraduate', 'Full-time employed', '2', '7');
INSERT INTO `todo` (`participant_id`, `data_source`, `synthetic_flag`, `age`, `age_group`, `gender`, `education_level`, `employment_status`, `occupation_category`, `average_sleep_hours`) VALUES
	('\nP0099', 'synthetic_ai', '1', '32', '30-39', 'Male', 'Undergraduate', 'Freelancer', '7', '6.5');
INSERT INTO `todo` (`participant_id`, `data_source`, `synthetic_flag`, `age`, `age_group`, `gender`, `education_level`, `employment_status`, `occupation_category`, `average_sleep_hours`) VALUES
	('\nP0100', 'synthetic_ai', '1', '66', '60+', 'Male', 'High school', 'Retired', '5', '8.5');
INSERT INTO `todo` (`participant_id`, `data_source`, `synthetic_flag`, `age`, `age_group`, `gender`, `education_level`, `employment_status`, `occupation_category`, `average_sleep_hours`) VALUES
	('\nP0101', 'synthetic_ai', '1', '24', '21-24', 'Female', 'Undergraduate', 'Part-time employed', '9', '5.5');
INSERT INTO `todo` (`participant_id`, `data_source`, `synthetic_flag`, `age`, `age_group`, `gender`, `education_level`, `employment_status`, `occupation_category`, `average_sleep_hours`) VALUES
	('\nP0102', 'synthetic_ai', '1', '39', '30-39', 'Male', 'Postgraduate', 'Full-time employed', '3', '7');
INSERT INTO `todo` (`participant_id`, `data_source`, `synthetic_flag`, `age`, `age_group`, `gender`, `education_level`, `employment_status`, `occupation_category`, `average_sleep_hours`) VALUES
	('\nP0103', 'synthetic_ai', '1', '54', '50-59', 'Female', 'Undergraduate', 'Full-time employed', '1', '7.5');
INSERT INTO `todo` (`participant_id`, `data_source`, `synthetic_flag`, `age`, `age_group`, `gender`, `education_level`, `employment_status`, `occupation_category`, `average_sleep_hours`) VALUES
	('\nP0104', 'synthetic_ai', '1', '22', '21-24', 'Male', 'Undergraduate', 'Student', '1', '5.5');
INSERT INTO `todo` (`participant_id`, `data_source`, `synthetic_flag`, `age`, `age_group`, `gender`, `education_level`, `employment_status`, `occupation_category`, `average_sleep_hours`) VALUES
	('\nP0105', 'synthetic_ai', '1', '46', '40-49', 'Female', 'Postgraduate', 'Full-time employed', '2', '7');
INSERT INTO `todo` (`participant_id`, `data_source`, `synthetic_flag`, `age`, `age_group`, `gender`, `education_level`, `employment_status`, `occupation_category`, `average_sleep_hours`) VALUES
	('\nP0106', 'synthetic_ai', '1', '27', '25-29', 'Male', 'Postgraduate', 'Full-time employed', '6', '7');
INSERT INTO `todo` (`participant_id`, `data_source`, `synthetic_flag`, `age`, `age_group`, `gender`, `education_level`, `employment_status`, `occupation_category`, `average_sleep_hours`) VALUES
	('\nP0107', 'synthetic_ai', '1', '35', '30-39', 'Female', 'Undergraduate', 'Self-employed', '10', '7');
INSERT INTO `todo` (`participant_id`, `data_source`, `synthetic_flag`, `age`, `age_group`, `gender`, `education_level`, `employment_status`, `occupation_category`, `average_sleep_hours`) VALUES
	('\nP0108', 'synthetic_ai', '1', '60', '60+', 'Female', 'Undergraduate', 'Retired', '5', '8');
INSERT INTO `todo` (`participant_id`, `data_source`, `synthetic_flag`, `age`, `age_group`, `gender`, `education_level`, `employment_status`, `occupation_category`, `average_sleep_hours`) VALUES
	('\nP0109', 'synthetic_ai', '1', '30', '30-39', 'Male', 'Undergraduate', 'Full-time employed', '11', '7');
INSERT INTO `todo` (`participant_id`, `data_source`, `synthetic_flag`, `age`, `age_group`, `gender`, `education_level`, `employment_status`, `occupation_category`, `average_sleep_hours`) VALUES
	('\nP0110', 'synthetic_ai', '1', '21', '21-24', 'Female', 'Undergraduate', 'Student', '1', '6');
INSERT INTO `todo` (`participant_id`, `data_source`, `synthetic_flag`, `age`, `age_group`, `gender`, `education_level`, `employment_status`, `occupation_category`, `average_sleep_hours`) VALUES
	('\nP0111', 'synthetic_ai', '1', '48', '40-49', 'Male', 'Postgraduate', 'Full-time employed', '3', '7');
INSERT INTO `todo` (`participant_id`, `data_source`, `synthetic_flag`, `age`, `age_group`, `gender`, `education_level`, `employment_status`, `occupation_category`, `average_sleep_hours`) VALUES
	('\nP0112', 'synthetic_ai', '1', '25', '25-29', 'Female', 'Undergraduate', 'Freelancer', '7', '6');
INSERT INTO `todo` (`participant_id`, `data_source`, `synthetic_flag`, `age`, `age_group`, `gender`, `education_level`, `employment_status`, `occupation_category`, `average_sleep_hours`) VALUES
	('\nP0113', 'synthetic_ai', '1', '42', '40-49', 'Female', 'Doctoral', 'Full-time employed', '4', '7');
INSERT INTO `todo` (`participant_id`, `data_source`, `synthetic_flag`, `age`, `age_group`, `gender`, `education_level`, `employment_status`, `occupation_category`, `average_sleep_hours`) VALUES
	('\nP0114', 'synthetic_ai', '1', '19', '18-20', 'Male', 'High school', 'Student', '1', '6');
INSERT INTO `todo` (`participant_id`, `data_source`, `synthetic_flag`, `age`, `age_group`, `gender`, `education_level`, `employment_status`, `occupation_category`, `average_sleep_hours`) VALUES
	('\nP0115', 'synthetic_ai', '1', '53', '50-59', 'Female', 'Postgraduate', 'Full-time employed', '2', '7.5');
INSERT INTO `todo` (`participant_id`, `data_source`, `synthetic_flag`, `age`, `age_group`, `gender`, `education_level`, `employment_status`, `occupation_category`, `average_sleep_hours`) VALUES
	('\nP0116', 'synthetic_ai', '1', '29', '25-29', 'Male', 'Undergraduate', 'Full-time employed', '8', '6.5');
INSERT INTO `todo` (`participant_id`, `data_source`, `synthetic_flag`, `age`, `age_group`, `gender`, `education_level`, `employment_status`, `occupation_category`, `average_sleep_hours`) VALUES
	('\nP0117', 'synthetic_ai', '1', '34', '30-39', 'Female', 'Undergraduate', 'Full-time employed', '9', '6.5');
INSERT INTO `todo` (`participant_id`, `data_source`, `synthetic_flag`, `age`, `age_group`, `gender`, `education_level`, `employment_status`, `occupation_category`, `average_sleep_hours`) VALUES
	('\nP0118', 'synthetic_ai', '1', '69', '60+', 'Male', 'Diploma', 'Retired', '5', '8.5');
INSERT INTO `todo` (`participant_id`, `data_source`, `synthetic_flag`, `age`, `age_group`, `gender`, `education_level`, `employment_status`, `occupation_category`, `average_sleep_hours`) VALUES
	('\nP0119', 'synthetic_ai', '1', '26', '25-29', 'Female', 'Postgraduate', 'Full-time employed', '3', '6.5');
INSERT INTO `todo` (`participant_id`, `data_source`, `synthetic_flag`, `age`, `age_group`, `gender`, `education_level`, `employment_status`, `occupation_category`, `average_sleep_hours`) VALUES
	('\nP0120', 'synthetic_ai', '1', '38', '30-39', 'Male', 'Undergraduate', 'Full-time employed', '13', '6.5');
INSERT INTO `todo` (`participant_id`, `data_source`, `synthetic_flag`, `age`, `age_group`, `gender`, `education_level`, `employment_status`, `occupation_category`, `average_sleep_hours`) VALUES
	('\nP0121', 'synthetic_ai', '1', '20', '18-20', 'Female', 'High school', 'Student', '1', '6.5');
INSERT INTO `todo` (`participant_id`, `data_source`, `synthetic_flag`, `age`, `age_group`, `gender`, `education_level`, `employment_status`, `occupation_category`, `average_sleep_hours`) VALUES
	('\nP0122', 'synthetic_ai', '1', '45', '40-49', 'Female', 'Postgraduate', 'Full-time employed', '6', '7.5');
INSERT INTO `todo` (`participant_id`, `data_source`, `synthetic_flag`, `age`, `age_group`, `gender`, `education_level`, `employment_status`, `occupation_category`, `average_sleep_hours`) VALUES
	('\nP0123', 'synthetic_ai', '1', '23', '21-24', 'Male', 'Undergraduate', 'Student', '1', '5.5');
INSERT INTO `todo` (`participant_id`, `data_source`, `synthetic_flag`, `age`, `age_group`, `gender`, `education_level`, `employment_status`, `occupation_category`, `average_sleep_hours`) VALUES
	('\nP0124', 'synthetic_ai', '1', '37', '30-39', 'Female', 'Postgraduate', 'Full-time employed', '2', '7');
INSERT INTO `todo` (`participant_id`, `data_source`, `synthetic_flag`, `age`, `age_group`, `gender`, `education_level`, `employment_status`, `occupation_category`, `average_sleep_hours`) VALUES
	('\nP0125', 'synthetic_ai', '1', '64', '60+', 'Female', 'Undergraduate', 'Retired', '5', '8');
INSERT INTO `todo` (`participant_id`, `data_source`, `synthetic_flag`, `age`, `age_group`, `gender`, `education_level`, `employment_status`, `occupation_category`, `average_sleep_hours`) VALUES
	('\nP0126', 'synthetic_ai', '1', '28', '25-29', 'Male', 'Diploma', 'Full-time employed', '12', '6.5');
INSERT INTO `todo` (`participant_id`, `data_source`, `synthetic_flag`, `age`, `age_group`, `gender`, `education_level`, `employment_status`, `occupation_category`, `average_sleep_hours`) VALUES
	('\nP0127', 'synthetic_ai', '1', '43', '40-49', 'Male', 'Undergraduate', 'Full-time employed', '11', '7');
INSERT INTO `todo` (`participant_id`, `data_source`, `synthetic_flag`, `age`, `age_group`, `gender`, `education_level`, `employment_status`, `occupation_category`, `average_sleep_hours`) VALUES
	('\nP0128', 'synthetic_ai', '1', '22', '21-24', 'Female', 'Diploma', 'Part-time employed', '9', '5.5');
INSERT INTO `todo` (`participant_id`, `data_source`, `synthetic_flag`, `age`, `age_group`, `gender`, `education_level`, `employment_status`, `occupation_category`, `average_sleep_hours`) VALUES
	('\nP0129', 'synthetic_ai', '1', '56', '50-59', 'Male', 'Postgraduate', 'Full-time employed', '8', '7.5');
INSERT INTO `todo` (`participant_id`, `data_source`, `synthetic_flag`, `age`, `age_group`, `gender`, `education_level`, `employment_status`, `occupation_category`, `average_sleep_hours`) VALUES
	('\nP0130', 'synthetic_ai', '1', '31', '30-39', 'Female', 'Undergraduate', 'Full-time employed', '10', '7');
INSERT INTO `todo` (`participant_id`, `data_source`, `synthetic_flag`, `age`, `age_group`, `gender`, `education_level`, `employment_status`, `occupation_category`, `average_sleep_hours`) VALUES
	('\nP0131', 'synthetic_ai', '1', '18', '18-20', 'Male', 'High school', 'Student', '1', '6.5');
INSERT INTO `todo` (`participant_id`, `data_source`, `synthetic_flag`, `age`, `age_group`, `gender`, `education_level`, `employment_status`, `occupation_category`, `average_sleep_hours`) VALUES
	('\nP0132', 'synthetic_ai', '1', '49', '40-49', 'Female', 'Undergraduate', 'Full-time employed', '2', '7');
INSERT INTO `todo` (`participant_id`, `data_source`, `synthetic_flag`, `age`, `age_group`, `gender`, `education_level`, `employment_status`, `occupation_category`, `average_sleep_hours`) VALUES
	('\nP0133', 'synthetic_ai', '1', '26', '25-29', 'Male', 'Undergraduate', 'Full-time employed', '3', '6.5');
INSERT INTO `todo` (`participant_id`, `data_source`, `synthetic_flag`, `age`, `age_group`, `gender`, `education_level`, `employment_status`, `occupation_category`, `average_sleep_hours`) VALUES
	('\nP0134', 'synthetic_ai', '1', '33', '30-39', 'Female', 'Postgraduate', 'Self-employed', '7', '7');
INSERT INTO `todo` (`participant_id`, `data_source`, `synthetic_flag`, `age`, `age_group`, `gender`, `education_level`, `employment_status`, `occupation_category`, `average_sleep_hours`) VALUES
	('\nP0135', 'synthetic_ai', '1', '71', '60+', 'Female', 'High school', 'Retired', '5', '8');
INSERT INTO `todo` (`participant_id`, `data_source`, `synthetic_flag`, `age`, `age_group`, `gender`, `education_level`, `employment_status`, `occupation_category`, `average_sleep_hours`) VALUES
	('\nP0136', 'synthetic_ai', '1', '27', '25-29', 'Male', 'Diploma', 'Full-time employed', '13', '6');
INSERT INTO `todo` (`participant_id`, `data_source`, `synthetic_flag`, `age`, `age_group`, `gender`, `education_level`, `employment_status`, `occupation_category`, `average_sleep_hours`) VALUES
	('\nP0137', 'synthetic_ai', '1', '40', '40-49', 'Male', 'Undergraduate', 'Full-time employed', '10', '7');
INSERT INTO `todo` (`participant_id`, `data_source`, `synthetic_flag`, `age`, `age_group`, `gender`, `education_level`, `employment_status`, `occupation_category`, `average_sleep_hours`) VALUES
	('\nP0138', 'synthetic_ai', '1', '24', '21-24', 'Female', 'Undergraduate', 'Student', '1', '5.5');
INSERT INTO `todo` (`participant_id`, `data_source`, `synthetic_flag`, `age`, `age_group`, `gender`, `education_level`, `employment_status`, `occupation_category`, `average_sleep_hours`) VALUES
	('\nP0139', 'synthetic_ai', '1', '51', '50-59', 'Male', 'Postgraduate', 'Full-time employed', '3', '7');
INSERT INTO `todo` (`participant_id`, `data_source`, `synthetic_flag`, `age`, `age_group`, `gender`, `education_level`, `employment_status`, `occupation_category`, `average_sleep_hours`) VALUES
	('\nP0140', 'synthetic_ai', '1', '36', '30-39', 'Female', 'Doctoral', 'Full-time employed', '4', '7');
INSERT INTO `todo` (`participant_id`, `data_source`, `synthetic_flag`, `age`, `age_group`, `gender`, `education_level`, `employment_status`, `occupation_category`, `average_sleep_hours`) VALUES
	('\nP0141', 'synthetic_ai', '1', '29', '25-29', 'Male', 'Undergraduate', 'Full-time employed', '12', '6.5');
INSERT INTO `todo` (`participant_id`, `data_source`, `synthetic_flag`, `age`, `age_group`, `gender`, `education_level`, `employment_status`, `occupation_category`, `average_sleep_hours`) VALUES
	('\nP0142', 'synthetic_ai', '1', '47', '40-49', 'Female', 'Postgraduate', 'Full-time employed', '2', '7.5');
INSERT INTO `todo` (`participant_id`, `data_source`, `synthetic_flag`, `age`, `age_group`, `gender`, `education_level`, `employment_status`, `occupation_category`, `average_sleep_hours`) VALUES
	('\nP0143', 'synthetic_ai', '1', '20', '18-20', 'Male', 'High school', 'Student', '1', '5.5');
INSERT INTO `todo` (`participant_id`, `data_source`, `synthetic_flag`, `age`, `age_group`, `gender`, `education_level`, `employment_status`, `occupation_category`, `average_sleep_hours`) VALUES
	('\nP0144', 'synthetic_ai', '1', '32', '30-39', 'Female', 'Undergraduate', 'Freelancer', '7', '6.5');
INSERT INTO `todo` (`participant_id`, `data_source`, `synthetic_flag`, `age`, `age_group`, `gender`, `education_level`, `employment_status`, `occupation_category`, `average_sleep_hours`) VALUES
	('\nP0145', 'synthetic_ai', '1', '58', '50-59', 'Male', 'Postgraduate', 'Full-time employed', '8', '7.5');
INSERT INTO `todo` (`participant_id`, `data_source`, `synthetic_flag`, `age`, `age_group`, `gender`, `education_level`, `employment_status`, `occupation_category`, `average_sleep_hours`) VALUES
	('\nP0146', 'synthetic_ai', '1', '26', '25-29', 'Female', 'Undergraduate', 'Full-time employed', '6', '6.5');
INSERT INTO `todo` (`participant_id`, `data_source`, `synthetic_flag`, `age`, `age_group`, `gender`, `education_level`, `employment_status`, `occupation_category`, `average_sleep_hours`) VALUES
	('\nP0147', 'synthetic_ai', '1', '44', '40-49', 'Male', 'Undergraduate', 'Full-time employed', '3', '7');
INSERT INTO `todo` (`participant_id`, `data_source`, `synthetic_flag`, `age`, `age_group`, `gender`, `education_level`, `employment_status`, `occupation_category`, `average_sleep_hours`) VALUES
	('\nP0148', 'synthetic_ai', '1', '22', '21-24', 'Female', 'Undergraduate', 'Student', '1', '6');
INSERT INTO `todo` (`participant_id`, `data_source`, `synthetic_flag`, `age`, `age_group`, `gender`, `education_level`, `employment_status`, `occupation_category`, `average_sleep_hours`) VALUES
	('\nP0149', 'synthetic_ai', '1', '39', '30-39', 'Male', 'Postgraduate', 'Full-time employed', '4', '7');
INSERT INTO `todo` (`participant_id`, `data_source`, `synthetic_flag`, `age`, `age_group`, `gender`, `education_level`, `employment_status`, `occupation_category`, `average_sleep_hours`) VALUES
	('\nP0150', 'synthetic_ai', '1', '55', '50-59', 'Female', 'Postgraduate', 'Full-time employed', '1', '7.5');
INSERT INTO `todo` (`participant_id`, `data_source`, `synthetic_flag`, `age`, `age_group`, `gender`, `education_level`, `employment_status`, `occupation_category`, `average_sleep_hours`) VALUES
	('\nP0151', 'synthetic_ai', '1', '21', '21-24', 'Male', 'Undergraduate', 'Student', '1', '5.5');
INSERT INTO `todo` (`participant_id`, `data_source`, `synthetic_flag`, `age`, `age_group`, `gender`, `education_level`, `employment_status`, `occupation_category`, `average_sleep_hours`) VALUES
	('\nP0152', 'synthetic_ai', '1', '48', '40-49', 'Female', 'Postgraduate', 'Full-time employed', '2', '7');
INSERT INTO `todo` (`participant_id`, `data_source`, `synthetic_flag`, `age`, `age_group`, `gender`, `education_level`, `employment_status`, `occupation_category`, `average_sleep_hours`) VALUES
	('\nP0153', 'synthetic_ai', '1', '27', '25-29', 'Male', 'Undergraduate', 'Full-time employed', '11', '7');
INSERT INTO `todo` (`participant_id`, `data_source`, `synthetic_flag`, `age`, `age_group`, `gender`, `education_level`, `employment_status`, `occupation_category`, `average_sleep_hours`) VALUES
	('\nP0154', 'synthetic_ai', '1', '35', '30-39', 'Female', 'Undergraduate', 'Self-employed', '10', '7.5');
INSERT INTO `todo` (`participant_id`, `data_source`, `synthetic_flag`, `age`, `age_group`, `gender`, `education_level`, `employment_status`, `occupation_category`, `average_sleep_hours`) VALUES
	('\nP0155', 'synthetic_ai', '1', '63', '60+', 'Male', 'Undergraduate', 'Retired', '5', '8.5');
INSERT INTO `todo` (`participant_id`, `data_source`, `synthetic_flag`, `age`, `age_group`, `gender`, `education_level`, `employment_status`, `occupation_category`, `average_sleep_hours`) VALUES
	('\nP0156', 'synthetic_ai', '1', '30', '30-39', 'Female', 'Postgraduate', 'Full-time employed', '2', '7');
INSERT INTO `todo` (`participant_id`, `data_source`, `synthetic_flag`, `age`, `age_group`, `gender`, `education_level`, `employment_status`, `occupation_category`, `average_sleep_hours`) VALUES
	('\nP0157', 'synthetic_ai', '1', '23', '21-24', 'Female', 'Undergraduate', 'Student', '1', '6');
INSERT INTO `todo` (`participant_id`, `data_source`, `synthetic_flag`, `age`, `age_group`, `gender`, `education_level`, `employment_status`, `occupation_category`, `average_sleep_hours`) VALUES
	('\nP0158', 'synthetic_ai', '1', '44', '40-49', 'Male', 'Doctoral', 'Full-time employed', '4', '6.5');
INSERT INTO `todo` (`participant_id`, `data_source`, `synthetic_flag`, `age`, `age_group`, `gender`, `education_level`, `employment_status`, `occupation_category`, `average_sleep_hours`) VALUES
	('\nP0159', 'synthetic_ai', '1', '57', '50-59', 'Female', 'Undergraduate', 'Full-time employed', '1', '7.5');
INSERT INTO `todo` (`participant_id`, `data_source`, `synthetic_flag`, `age`, `age_group`, `gender`, `education_level`, `employment_status`, `occupation_category`, `average_sleep_hours`) VALUES
	('\nP0160', 'synthetic_ai', '1', '19', '18-20', 'Male', 'High school', 'Student', '1', '6.5');
INSERT INTO `todo` (`participant_id`, `data_source`, `synthetic_flag`, `age`, `age_group`, `gender`, `education_level`, `employment_status`, `occupation_category`, `average_sleep_hours`) VALUES
	('\nP0161', 'synthetic_ai', '1', '37', '30-39', 'Male', 'Undergraduate', 'Full-time employed', '6', '7');
INSERT INTO `todo` (`participant_id`, `data_source`, `synthetic_flag`, `age`, `age_group`, `gender`, `education_level`, `employment_status`, `occupation_category`, `average_sleep_hours`) VALUES
	('\nP0162', 'synthetic_ai', '1', '25', '25-29', 'Female', 'Postgraduate', 'Full-time employed', '3', '6.5');
INSERT INTO `todo` (`participant_id`, `data_source`, `synthetic_flag`, `age`, `age_group`, `gender`, `education_level`, `employment_status`, `occupation_category`, `average_sleep_hours`) VALUES
	('\nP0163', 'synthetic_ai', '1', '50', '50-59', 'Male', 'Undergraduate', 'Full-time employed', '8', '7.5');
INSERT INTO `todo` (`participant_id`, `data_source`, `synthetic_flag`, `age`, `age_group`, `gender`, `education_level`, `employment_status`, `occupation_category`, `average_sleep_hours`) VALUES
	('\nP0164', 'synthetic_ai', '1', '28', '25-29', 'Female', 'Undergraduate', 'Full-time employed', '9', '6.5');
INSERT INTO `todo` (`participant_id`, `data_source`, `synthetic_flag`, `age`, `age_group`, `gender`, `education_level`, `employment_status`, `occupation_category`, `average_sleep_hours`) VALUES
	('\nP0165', 'synthetic_ai', '1', '41', '40-49', 'Male', 'Postgraduate', 'Full-time employed', '2', '7');
INSERT INTO `todo` (`participant_id`, `data_source`, `synthetic_flag`, `age`, `age_group`, `gender`, `education_level`, `employment_status`, `occupation_category`, `average_sleep_hours`) VALUES
	('\nP0166', 'synthetic_ai', '1', '24', '21-24', 'Male', 'Undergraduate', 'Part-time employed', '12', '5.5');
INSERT INTO `todo` (`participant_id`, `data_source`, `synthetic_flag`, `age`, `age_group`, `gender`, `education_level`, `employment_status`, `occupation_category`, `average_sleep_hours`) VALUES
	('\nP0167', 'synthetic_ai', '1', '62', '60+', 'Female', 'Diploma', 'Retired', '5', '8');
INSERT INTO `todo` (`participant_id`, `data_source`, `synthetic_flag`, `age`, `age_group`, `gender`, `education_level`, `employment_status`, `occupation_category`, `average_sleep_hours`) VALUES
	('\nP0168', 'synthetic_ai', '1', '34', '30-39', 'Male', 'Undergraduate', 'Freelancer', '3', '6.5');
INSERT INTO `todo` (`participant_id`, `data_source`, `synthetic_flag`, `age`, `age_group`, `gender`, `education_level`, `employment_status`, `occupation_category`, `average_sleep_hours`) VALUES
	('\nP0169', 'synthetic_ai', '1', '46', '40-49', 'Female', 'Undergraduate', 'Full-time employed', '1', '7');
INSERT INTO `todo` (`participant_id`, `data_source`, `synthetic_flag`, `age`, `age_group`, `gender`, `education_level`, `employment_status`, `occupation_category`, `average_sleep_hours`) VALUES
	('\nP0170', 'synthetic_ai', '1', '21', '21-24', 'Male', 'Undergraduate', 'Student', '1', '6');
INSERT INTO `todo` (`participant_id`, `data_source`, `synthetic_flag`, `age`, `age_group`, `gender`, `education_level`, `employment_status`, `occupation_category`, `average_sleep_hours`) VALUES
	('\nP0171', 'synthetic_ai', '1', '52', '50-59', 'Female', 'Postgraduate', 'Full-time employed', '2', '7.5');
INSERT INTO `todo` (`participant_id`, `data_source`, `synthetic_flag`, `age`, `age_group`, `gender`, `education_level`, `employment_status`, `occupation_category`, `average_sleep_hours`) VALUES
	('\nP0172', 'synthetic_ai', '1', '29', '25-29', 'Male', 'Diploma', 'Full-time employed', '12', '6.5');
INSERT INTO `todo` (`participant_id`, `data_source`, `synthetic_flag`, `age`, `age_group`, `gender`, `education_level`, `employment_status`, `occupation_category`, `average_sleep_hours`) VALUES
	('\nP0173', 'synthetic_ai', '1', '38', '30-39', 'Female', 'Postgraduate', 'Full-time employed', '6', '7');
INSERT INTO `todo` (`participant_id`, `data_source`, `synthetic_flag`, `age`, `age_group`, `gender`, `education_level`, `employment_status`, `occupation_category`, `average_sleep_hours`) VALUES
	('\nP0174', 'synthetic_ai', '1', '65', '60+', 'Male', 'High school', 'Retired', '5', '8.5');
INSERT INTO `todo` (`participant_id`, `data_source`, `synthetic_flag`, `age`, `age_group`, `gender`, `education_level`, `employment_status`, `occupation_category`, `average_sleep_hours`) VALUES
	('\nP0175', 'synthetic_ai', '1', '27', '25-29', 'Female', 'Undergraduate', 'Full-time employed', '3', '6.5');
INSERT INTO `todo` (`participant_id`, `data_source`, `synthetic_flag`, `age`, `age_group`, `gender`, `education_level`, `employment_status`, `occupation_category`, `average_sleep_hours`) VALUES
	('\nP0176', 'synthetic_ai', '1', '43', '40-49', 'Male', 'Undergraduate', 'Full-time employed', '10', '7');
INSERT INTO `todo` (`participant_id`, `data_source`, `synthetic_flag`, `age`, `age_group`, `gender`, `education_level`, `employment_status`, `occupation_category`, `average_sleep_hours`) VALUES
	('\nP0177', 'synthetic_ai', '1', '22', '21-24', 'Female', 'Undergraduate', 'Student', '1', '5.5');
INSERT INTO `todo` (`participant_id`, `data_source`, `synthetic_flag`, `age`, `age_group`, `gender`, `education_level`, `employment_status`, `occupation_category`, `average_sleep_hours`) VALUES
	('\nP0178', 'synthetic_ai', '1', '48', '40-49', 'Male', 'Doctoral', 'Full-time employed', '4', '6.5');
INSERT INTO `todo` (`participant_id`, `data_source`, `synthetic_flag`, `age`, `age_group`, `gender`, `education_level`, `employment_status`, `occupation_category`, `average_sleep_hours`) VALUES
	('\nP0179', 'synthetic_ai', '1', '33', '30-39', 'Female', 'Undergraduate', 'Full-time employed', '9', '6.5');
INSERT INTO `todo` (`participant_id`, `data_source`, `synthetic_flag`, `age`, `age_group`, `gender`, `education_level`, `employment_status`, `occupation_category`, `average_sleep_hours`) VALUES
	('\nP0180', 'synthetic_ai', '1', '59', '50-59', 'Male', 'Undergraduate', 'Full-time employed', '13', '7');
INSERT INTO `todo` (`participant_id`, `data_source`, `synthetic_flag`, `age`, `age_group`, `gender`, `education_level`, `employment_status`, `occupation_category`, `average_sleep_hours`) VALUES
	('\nP0181', 'synthetic_ai', '1', '24', '21-24', 'Female', 'Undergraduate', 'Job seeker', '5', '6');
INSERT INTO `todo` (`participant_id`, `data_source`, `synthetic_flag`, `age`, `age_group`, `gender`, `education_level`, `employment_status`, `occupation_category`, `average_sleep_hours`) VALUES
	('\nP0182', 'synthetic_ai', '1', '41', '40-49', 'Female', 'Postgraduate', 'Full-time employed', '6', '7.5');
INSERT INTO `todo` (`participant_id`, `data_source`, `synthetic_flag`, `age`, `age_group`, `gender`, `education_level`, `employment_status`, `occupation_category`, `average_sleep_hours`) VALUES
	('\nP0183', 'synthetic_ai', '1', '18', '18-20', 'Male', 'High school', 'Student', '1', '6');
INSERT INTO `todo` (`participant_id`, `data_source`, `synthetic_flag`, `age`, `age_group`, `gender`, `education_level`, `employment_status`, `occupation_category`, `average_sleep_hours`) VALUES
	('\nP0184', 'synthetic_ai', '1', '53', '50-59', 'Male', 'Postgraduate', 'Full-time employed', '3', '7');
INSERT INTO `todo` (`participant_id`, `data_source`, `synthetic_flag`, `age`, `age_group`, `gender`, `education_level`, `employment_status`, `occupation_category`, `average_sleep_hours`) VALUES
	('\nP0185', 'synthetic_ai', '1', '31', '30-39', 'Female', 'Doctorate', 'Full-time employed', '4', '7');
INSERT INTO `todo` (`participant_id`, `data_source`, `synthetic_flag`, `age`, `age_group`, `gender`, `education_level`, `employment_status`, `occupation_category`, `average_sleep_hours`) VALUES
	('\nP0186', 'synthetic_ai', '1', '26', '25-29', 'Male', 'Undergraduate', 'Full-time employed', '11', '6.5');
INSERT INTO `todo` (`participant_id`, `data_source`, `synthetic_flag`, `age`, `age_group`, `gender`, `education_level`, `employment_status`, `occupation_category`, `average_sleep_hours`) VALUES
	('\nP0187', 'synthetic_ai', '1', '44', '40-49', 'Female', 'Undergraduate', 'Full-time employed', '2', '7');
INSERT INTO `todo` (`participant_id`, `data_source`, `synthetic_flag`, `age`, `age_group`, `gender`, `education_level`, `employment_status`, `occupation_category`, `average_sleep_hours`) VALUES
	('\nP0188', 'synthetic_ai', '1', '20', '18-20', 'Female', 'High school', 'Student', '1', '6.5');
INSERT INTO `todo` (`participant_id`, `data_source`, `synthetic_flag`, `age`, `age_group`, `gender`, `education_level`, `employment_status`, `occupation_category`, `average_sleep_hours`) VALUES
	('\nP0189', 'synthetic_ai', '1', '38', '30-39', 'Male', 'Postgraduate', 'Full-time employed', '6', '7');
INSERT INTO `todo` (`participant_id`, `data_source`, `synthetic_flag`, `age`, `age_group`, `gender`, `education_level`, `employment_status`, `occupation_category`, `average_sleep_hours`) VALUES
	('\nP0190', 'synthetic_ai', '1', '29', '25-29', 'Female', 'Undergraduate', 'Freelancer', '7', '6');
INSERT INTO `todo` (`participant_id`, `data_source`, `synthetic_flag`, `age`, `age_group`, `gender`, `education_level`, `employment_status`, `occupation_category`, `average_sleep_hours`) VALUES
	('\nP0191', 'synthetic_ai', '1', '56', '50-59', 'Male', 'Postgraduate', 'Full-time employed', '8', '7.5');
INSERT INTO `todo` (`participant_id`, `data_source`, `synthetic_flag`, `age`, `age_group`, `gender`, `education_level`, `employment_status`, `occupation_category`, `average_sleep_hours`) VALUES
	('\nP0192', 'synthetic_ai', '1', '23', '21-24', 'Female', 'Undergraduate', 'Student', '1', '5.5');
INSERT INTO `todo` (`participant_id`, `data_source`, `synthetic_flag`, `age`, `age_group`, `gender`, `education_level`, `employment_status`, `occupation_category`, `average_sleep_hours`) VALUES
	('\nP0193', 'synthetic_ai', '1', '47', '40-49', 'Male', 'Undergraduate', 'Full-time employed', '3', '7');
INSERT INTO `todo` (`participant_id`, `data_source`, `synthetic_flag`, `age`, `age_group`, `gender`, `education_level`, `employment_status`, `occupation_category`, `average_sleep_hours`) VALUES
	('\nP0194', 'synthetic_ai', '1', '34', '30-39', 'Female', 'Postgraduate', 'Self-employed', '7', '7');
INSERT INTO `todo` (`participant_id`, `data_source`, `synthetic_flag`, `age`, `age_group`, `gender`, `education_level`, `employment_status`, `occupation_category`, `average_sleep_hours`) VALUES
	('\nP0195', 'synthetic_ai', '1', '67', '60+', 'Female', 'High school', 'Retired', '5', '8');
INSERT INTO `todo` (`participant_id`, `data_source`, `synthetic_flag`, `age`, `age_group`, `gender`, `education_level`, `employment_status`, `occupation_category`, `average_sleep_hours`) VALUES
	('\nP0196', 'synthetic_ai', '1', '25', '25-29', 'Male', 'Undergraduate', 'Full-time employed', '12', '6.5');
INSERT INTO `todo` (`participant_id`, `data_source`, `synthetic_flag`, `age`, `age_group`, `gender`, `education_level`, `employment_status`, `occupation_category`, `average_sleep_hours`) VALUES
	('\nP0197', 'synthetic_ai', '1', '42', '40-49', 'Female', 'Postgraduate', 'Full-time employed', '2', '7.5');
INSERT INTO `todo` (`participant_id`, `data_source`, `synthetic_flag`, `age`, `age_group`, `gender`, `education_level`, `employment_status`, `occupation_category`, `average_sleep_hours`) VALUES
	('\nP0198', 'synthetic_ai', '1', '27', '25-29', 'Male', 'Postgraduate', 'Full-time employed', '6', '7');
INSERT INTO `todo` (`participant_id`, `data_source`, `synthetic_flag`, `age`, `age_group`, `gender`, `education_level`, `employment_status`, `occupation_category`, `average_sleep_hours`) VALUES
	('\nP0199', 'synthetic_ai', '1', '36', '30-39', 'Male', 'Undergraduate', 'Full-time employed', '9', '6.5');
INSERT INTO `todo` (`participant_id`, `data_source`, `synthetic_flag`, `age`, `age_group`, `gender`, `education_level`, `employment_status`, `occupation_category`, `average_sleep_hours`) VALUES
	('\nP0200', 'synthetic_ai', '1', '51', '50-59', 'Female', 'Undergraduate', 'Full-time employed', '1', '7.5');
INSERT INTO `todo` (`participant_id`, `data_source`, `synthetic_flag`, `age`, `age_group`, `gender`, `education_level`, `employment_status`, `occupation_category`, `average_sleep_hours`) VALUES
	('\nP0201', 'synthetic_ai', '1', '22', '21-24', 'Male', 'Undergraduate', 'Student', '1', '5.5');
INSERT INTO `todo` (`participant_id`, `data_source`, `synthetic_flag`, `age`, `age_group`, `gender`, `education_level`, `employment_status`, `occupation_category`, `average_sleep_hours`) VALUES
	('\nP0202', 'synthetic_ai', '1', '39', '30-39', 'Female', 'Postgraduate', 'Full-time employed', '2', '7');
INSERT INTO `todo` (`participant_id`, `data_source`, `synthetic_flag`, `age`, `age_group`, `gender`, `education_level`, `employment_status`, `occupation_category`, `average_sleep_hours`) VALUES
	('\nP0203', 'synthetic_ai', '1', '28', '25-29', 'Female', 'Undergraduate', 'Full-time employed', '3', '6.5');
INSERT INTO `todo` (`participant_id`, `data_source`, `synthetic_flag`, `age`, `age_group`, `gender`, `education_level`, `employment_status`, `occupation_category`, `average_sleep_hours`) VALUES
	('\nP0204', 'synthetic_ai', '1', '60', '60+', 'Male', 'Diploma', 'Retired', '5', '8.5');
INSERT INTO `todo` (`participant_id`, `data_source`, `synthetic_flag`, `age`, `age_group`, `gender`, `education_level`, `employment_status`, `occupation_category`, `average_sleep_hours`) VALUES
	('\nP0205', 'synthetic_ai', '1', '32', '30-39', 'Male', 'Postgraduate', 'Full-time employed', '4', '6.5');
INSERT INTO `todo` (`participant_id`, `data_source`, `synthetic_flag`, `age`, `age_group`, `gender`, `education_level`, `employment_status`, `occupation_category`, `average_sleep_hours`) VALUES
	('\nP0206', 'synthetic_ai', '1', '46', '40-49', 'Female', 'Undergraduate', 'Full-time employed', '8', '7');
INSERT INTO `todo` (`participant_id`, `data_source`, `synthetic_flag`, `age`, `age_group`, `gender`, `education_level`, `employment_status`, `occupation_category`, `average_sleep_hours`) VALUES
	('\nP0207', 'synthetic_ai', '1', '19', '18-20', 'Female', 'High school', 'Student', '1', '6.5');
INSERT INTO `todo` (`participant_id`, `data_source`, `synthetic_flag`, `age`, `age_group`, `gender`, `education_level`, `employment_status`, `occupation_category`, `average_sleep_hours`) VALUES
	('\nP0208', 'synthetic_ai', '1', '43', '40-49', 'Male', 'Undergraduate', 'Full-time employed', '11', '7');
INSERT INTO `todo` (`participant_id`, `data_source`, `synthetic_flag`, `age`, `age_group`, `gender`, `education_level`, `employment_status`, `occupation_category`, `average_sleep_hours`) VALUES
	('\nP0209', 'synthetic_ai', '1', '25', '25-29', 'Female', 'Postgraduate', 'Full-time employed', '2', '7');
INSERT INTO `todo` (`participant_id`, `data_source`, `synthetic_flag`, `age`, `age_group`, `gender`, `education_level`, `employment_status`, `occupation_category`, `average_sleep_hours`) VALUES
	('\nP0210', 'synthetic_ai', '1', '70', '60+', 'Female', 'Undergraduate', 'Retired', '5', '8');
INSERT INTO `todo` (`participant_id`, `data_source`, `synthetic_flag`, `age`, `age_group`, `gender`, `education_level`, `employment_status`, `occupation_category`, `average_sleep_hours`) VALUES
	('\nP0211', 'synthetic_ai', '1', '30', '30-39', 'Male', 'Undergraduate', 'Full-time employed', '6', '7');
INSERT INTO `todo` (`participant_id`, `data_source`, `synthetic_flag`, `age`, `age_group`, `gender`, `education_level`, `employment_status`, `occupation_category`, `average_sleep_hours`) VALUES
	('\nP0212', 'synthetic_ai', '1', '21', '21-24', 'Female', 'Diploma', 'Part-time employed', '9', '5.5');
INSERT INTO `todo` (`participant_id`, `data_source`, `synthetic_flag`, `age`, `age_group`, `gender`, `education_level`, `employment_status`, `occupation_category`, `average_sleep_hours`) VALUES
	('\nP0213', 'synthetic_ai', '1', '55', '50-59', 'Male', 'Postgraduate', 'Full-time employed', '3', '7');
INSERT INTO `todo` (`participant_id`, `data_source`, `synthetic_flag`, `age`, `age_group`, `gender`, `education_level`, `employment_status`, `occupation_category`, `average_sleep_hours`) VALUES
	('\nP0214', 'synthetic_ai', '1', '36', '30-39', 'Female', 'Doctorate', 'Full-time employed', '4', '7');
INSERT INTO `todo` (`participant_id`, `data_source`, `synthetic_flag`, `age`, `age_group`, `gender`, `education_level`, `employment_status`, `occupation_category`, `average_sleep_hours`) VALUES
	('\nP0215', 'synthetic_ai', '1', '24', '21-24', 'Male', 'Undergraduate', 'Student', '1', '5.5');
INSERT INTO `todo` (`participant_id`, `data_source`, `synthetic_flag`, `age`, `age_group`, `gender`, `education_level`, `employment_status`, `occupation_category`, `average_sleep_hours`) VALUES
	('\nP0216', 'synthetic_ai', '1', '48', '40-49', 'Female', 'Postgraduate', 'Full-time employed', '2', '7.5');
INSERT INTO `todo` (`participant_id`, `data_source`, `synthetic_flag`, `age`, `age_group`, `gender`, `education_level`, `employment_status`, `occupation_category`, `average_sleep_hours`) VALUES
	('\nP0217', 'synthetic_ai', '1', '27', '25-29', 'Male', 'Diploma', 'Full-time employed', '13', '6.5');
INSERT INTO `todo` (`participant_id`, `data_source`, `synthetic_flag`, `age`, `age_group`, `gender`, `education_level`, `employment_status`, `occupation_category`, `average_sleep_hours`) VALUES
	('\nP0218', 'synthetic_ai', '1', '40', '40-49', 'Male', 'Undergraduate', 'Full-time employed', '10', '7');
INSERT INTO `todo` (`participant_id`, `data_source`, `synthetic_flag`, `age`, `age_group`, `gender`, `education_level`, `employment_status`, `occupation_category`, `average_sleep_hours`) VALUES
	('\nP0219', 'synthetic_ai', '1', '33', '30-39', 'Female', 'Undergraduate', 'Full-time employed', '2', '7');
INSERT INTO `todo` (`participant_id`, `data_source`, `synthetic_flag`, `age`, `age_group`, `gender`, `education_level`, `employment_status`, `occupation_category`, `average_sleep_hours`) VALUES
	('\nP0220', 'synthetic_ai', '1', '58', '50-59', 'Male', 'Postgraduate', 'Full-time employed', '8', '7.5');
INSERT INTO `todo` (`participant_id`, `data_source`, `synthetic_flag`, `age`, `age_group`, `gender`, `education_level`, `employment_status`, `occupation_category`, `average_sleep_hours`) VALUES
	('\nP0221', 'synthetic_ai', '1', '23', '21-24', 'Female', 'Undergraduate', 'Student', '1', '6');
INSERT INTO `todo` (`participant_id`, `data_source`, `synthetic_flag`, `age`, `age_group`, `gender`, `education_level`, `employment_status`, `occupation_category`, `average_sleep_hours`) VALUES
	('\nP0222', 'synthetic_ai', '1', '45', '40-49', 'Male', 'Undergraduate', 'Full-time employed', '11', '7');
INSERT INTO `todo` (`participant_id`, `data_source`, `synthetic_flag`, `age`, `age_group`, `gender`, `education_level`, `employment_status`, `occupation_category`, `average_sleep_hours`) VALUES
	('\nP0223', 'synthetic_ai', '1', '29', '25-29', 'Female', 'Postgraduate', 'Full-time employed', '6', '7');
INSERT INTO `todo` (`participant_id`, `data_source`, `synthetic_flag`, `age`, `age_group`, `gender`, `education_level`, `employment_status`, `occupation_category`, `average_sleep_hours`) VALUES
	('\nP0224', 'synthetic_ai', '1', '64', '60+', 'Female', 'Diploma', 'Retired', '5', '8');
INSERT INTO `todo` (`participant_id`, `data_source`, `synthetic_flag`, `age`, `age_group`, `gender`, `education_level`, `employment_status`, `occupation_category`, `average_sleep_hours`) VALUES
	('\nP0225', 'synthetic_ai', '1', '31', '30-39', 'Male', 'Undergraduate', 'Full-time employed', '12', '6.5');
INSERT INTO `todo` (`participant_id`, `data_source`, `synthetic_flag`, `age`, `age_group`, `gender`, `education_level`, `employment_status`, `occupation_category`, `average_sleep_hours`) VALUES
	('\nP0226', 'synthetic_ai', '1', '38', '30-39', 'Female', 'Postgraduate', 'Full-time employed', '4', '7');
INSERT INTO `todo` (`participant_id`, `data_source`, `synthetic_flag`, `age`, `age_group`, `gender`, `education_level`, `employment_status`, `occupation_category`, `average_sleep_hours`) VALUES
	('\nP0227', 'synthetic_ai', '1', '19', '18-20', 'Male', 'High school', 'Student', '1', '6.5');
INSERT INTO `todo` (`participant_id`, `data_source`, `synthetic_flag`, `age`, `age_group`, `gender`, `education_level`, `employment_status`, `occupation_category`, `average_sleep_hours`) VALUES
	('\nP0228', 'synthetic_ai', '1', '53', '50-59', 'Female', 'Undergraduate', 'Homemaker/caregiver', '5', '7.5');
INSERT INTO `todo` (`participant_id`, `data_source`, `synthetic_flag`, `age`, `age_group`, `gender`, `education_level`, `employment_status`, `occupation_category`, `average_sleep_hours`) VALUES
	('\nP0229', 'synthetic_ai', '1', '26', '25-29', 'Male', 'Undergraduate', 'Full-time employed', '3', '6.5');
INSERT INTO `todo` (`participant_id`, `data_source`, `synthetic_flag`, `age`, `age_group`, `gender`, `education_level`, `employment_status`, `occupation_category`, `average_sleep_hours`) VALUES
	('\nP0230', 'synthetic_ai', '1', '42', '40-49', 'Female', 'Undergraduate', 'Full-time employed', '2', '7');
INSERT INTO `todo` (`participant_id`, `data_source`, `synthetic_flag`, `age`, `age_group`, `gender`, `education_level`, `employment_status`, `occupation_category`, `average_sleep_hours`) VALUES
	('\nP0231', 'synthetic_ai', '1', '20', '18-20', 'Female', 'High school', 'Student', '1', '6');
INSERT INTO `todo` (`participant_id`, `data_source`, `synthetic_flag`, `age`, `age_group`, `gender`, `education_level`, `employment_status`, `occupation_category`, `average_sleep_hours`) VALUES
	('\nP0232', 'synthetic_ai', '1', '35', '30-39', 'Male', 'Postgraduate', 'Freelancer', '3', '6.5');
INSERT INTO `todo` (`participant_id`, `data_source`, `synthetic_flag`, `age`, `age_group`, `gender`, `education_level`, `employment_status`, `occupation_category`, `average_sleep_hours`) VALUES
	('\nP0233', 'synthetic_ai', '1', '60', '60+', 'Female', 'Undergraduate', 'Retired', '5', '8');
INSERT INTO `todo` (`participant_id`, `data_source`, `synthetic_flag`, `age`, `age_group`, `gender`, `education_level`, `employment_status`, `occupation_category`, `average_sleep_hours`) VALUES
	('\nP0234', 'synthetic_ai', '1', '28', '25-29', 'Female', 'Undergraduate', 'Full-time employed', '1', '7');
INSERT INTO `todo` (`participant_id`, `data_source`, `synthetic_flag`, `age`, `age_group`, `gender`, `education_level`, `employment_status`, `occupation_category`, `average_sleep_hours`) VALUES
	('\nP0235', 'synthetic_ai', '1', '47', '40-49', 'Male', 'Postgraduate', 'Full-time employed', '3', '7');
INSERT INTO `todo` (`participant_id`, `data_source`, `synthetic_flag`, `age`, `age_group`, `gender`, `education_level`, `employment_status`, `occupation_category`, `average_sleep_hours`) VALUES
	('\nP0236', 'synthetic_ai', '1', '22', '21-24', 'Male', 'Diploma', 'Job seeker', '5', '6.5');
INSERT INTO `todo` (`participant_id`, `data_source`, `synthetic_flag`, `age`, `age_group`, `gender`, `education_level`, `employment_status`, `occupation_category`, `average_sleep_hours`) VALUES
	('\nP0237', 'synthetic_ai', '1', '54', '50-59', 'Female', 'Postgraduate', 'Full-time employed', '2', '7.5');
INSERT INTO `todo` (`participant_id`, `data_source`, `synthetic_flag`, `age`, `age_group`, `gender`, `education_level`, `employment_status`, `occupation_category`, `average_sleep_hours`) VALUES
	('\nP0238', 'synthetic_ai', '1', '30', '30-39', 'Male', 'Undergraduate', 'Full-time employed', '6', '7');
INSERT INTO `todo` (`participant_id`, `data_source`, `synthetic_flag`, `age`, `age_group`, `gender`, `education_level`, `employment_status`, `occupation_category`, `average_sleep_hours`) VALUES
	('\nP0239', 'synthetic_ai', '1', '37', '30-39', 'Female', 'Undergraduate', 'Full-time employed', '9', '6.5');
INSERT INTO `todo` (`participant_id`, `data_source`, `synthetic_flag`, `age`, `age_group`, `gender`, `education_level`, `employment_status`, `occupation_category`, `average_sleep_hours`) VALUES
	('\nP0240', 'synthetic_ai', '1', '25', '25-29', 'Male', 'Undergraduate', 'Full-time employed', '8', '6.5');
INSERT INTO `todo` (`participant_id`, `data_source`, `synthetic_flag`, `age`, `age_group`, `gender`, `education_level`, `employment_status`, `occupation_category`, `average_sleep_hours`) VALUES
	('\nP0241', 'synthetic_ai', '1', '49', '40-49', 'Female', 'Postgraduate', 'Full-time employed', '2', '7');
INSERT INTO `todo` (`participant_id`, `data_source`, `synthetic_flag`, `age`, `age_group`, `gender`, `education_level`, `employment_status`, `occupation_category`, `average_sleep_hours`) VALUES
	('\nP0242', 'synthetic_ai', '1', '21', '21-24', 'Male', 'Undergraduate', 'Student', '1', '5.5');
INSERT INTO `todo` (`participant_id`, `data_source`, `synthetic_flag`, `age`, `age_group`, `gender`, `education_level`, `employment_status`, `occupation_category`, `average_sleep_hours`) VALUES
	('\nP0243', 'synthetic_ai', '1', '44', '40-49', 'Female', 'Undergraduate', 'Full-time employed', '8', '7');
INSERT INTO `todo` (`participant_id`, `data_source`, `synthetic_flag`, `age`, `age_group`, `gender`, `education_level`, `employment_status`, `occupation_category`, `average_sleep_hours`) VALUES
	('\nP0244', 'synthetic_ai', '1', '33', '30-39', 'Male', 'Postgraduate', 'Full-time employed', '4', '7');
INSERT INTO `todo` (`participant_id`, `data_source`, `synthetic_flag`, `age`, `age_group`, `gender`, `education_level`, `employment_status`, `occupation_category`, `average_sleep_hours`) VALUES
	('\nP0245', 'synthetic_ai', '1', '26', '25-29', 'Female', 'Undergraduate', 'Full-time employed', '3', '6.5');
INSERT INTO `todo` (`participant_id`, `data_source`, `synthetic_flag`, `age`, `age_group`, `gender`, `education_level`, `employment_status`, `occupation_category`, `average_sleep_hours`) VALUES
	('\nP0246', 'synthetic_ai', '1', '57', '50-59', 'Male', 'Undergraduate', 'Full-time employed', '13', '7');
INSERT INTO `todo` (`participant_id`, `data_source`, `synthetic_flag`, `age`, `age_group`, `gender`, `education_level`, `employment_status`, `occupation_category`, `average_sleep_hours`) VALUES
	('\nP0247', 'synthetic_ai', '1', '24', '21-24', 'Female', 'Undergraduate', 'Part-time employed', '9', '5.5');
INSERT INTO `todo` (`participant_id`, `data_source`, `synthetic_flag`, `age`, `age_group`, `gender`, `education_level`, `employment_status`, `occupation_category`, `average_sleep_hours`) VALUES
	('\nP0248', 'synthetic_ai', '1', '40', '40-49', 'Male', 'Undergraduate', 'Full-time employed', '11', '7');
INSERT INTO `todo` (`participant_id`, `data_source`, `synthetic_flag`, `age`, `age_group`, `gender`, `education_level`, `employment_status`, `occupation_category`, `average_sleep_hours`) VALUES
	('\nP0249', 'synthetic_ai', '1', '67', '60+', 'Male', 'High school', 'Retired', '5', '8.5');
INSERT INTO `todo` (`participant_id`, `data_source`, `synthetic_flag`, `age`, `age_group`, `gender`, `education_level`, `employment_status`, `occupation_category`, `average_sleep_hours`) VALUES
	('\nP0250', 'synthetic_ai', '1', '29', '25-29', 'Female', 'Postgraduate', 'Full-time employed', '2', '7');
INSERT INTO `todo` (`participant_id`, `data_source`, `synthetic_flag`, `age`, `age_group`, `gender`, `education_level`, `employment_status`, `occupation_category`, `average_sleep_hours`) VALUES
	('\nP0251', 'synthetic_ai', '1', '36', '30-39', 'Male', 'Undergraduate', 'Full-time employed', '10', '7');
INSERT INTO `todo` (`participant_id`, `data_source`, `synthetic_flag`, `age`, `age_group`, `gender`, `education_level`, `employment_status`, `occupation_category`, `average_sleep_hours`) VALUES
	('\nP0252', 'synthetic_ai', '1', '20', '18-20', 'Male', 'High school', 'Student', '1', '6.5');
INSERT INTO `todo` (`participant_id`, `data_source`, `synthetic_flag`, `age`, `age_group`, `gender`, `education_level`, `employment_status`, `occupation_category`, `average_sleep_hours`) VALUES
	('\nP0253', 'synthetic_ai', '1', '50', '50-59', 'Female', 'Postgraduate', 'Full-time employed', '1', '7.5');
INSERT INTO `todo` (`participant_id`, `data_source`, `synthetic_flag`, `age`, `age_group`, `gender`, `education_level`, `employment_status`, `occupation_category`, `average_sleep_hours`) VALUES
	('\nP0254', 'synthetic_ai', '1', '27', '25-29', 'Male', 'Undergraduate', 'Full-time employed', '11', '7');
INSERT INTO `todo` (`participant_id`, `data_source`, `synthetic_flag`, `age`, `age_group`, `gender`, `education_level`, `employment_status`, `occupation_category`, `average_sleep_hours`) VALUES
	('\nP0255', 'synthetic_ai', '1', '44', '40-49', 'Female', 'Postgraduate', 'Full-time employed', '6', '7.5');
INSERT INTO `todo` (`participant_id`, `data_source`, `synthetic_flag`, `age`, `age_group`, `gender`, `education_level`, `employment_status`, `occupation_category`, `average_sleep_hours`) VALUES
	('\nP0256', 'synthetic_ai', '1', '23', '21-24', 'Male', 'Undergraduate', 'Student', '1', '5.5');
INSERT INTO `todo` (`participant_id`, `data_source`, `synthetic_flag`, `age`, `age_group`, `gender`, `education_level`, `employment_status`, `occupation_category`, `average_sleep_hours`) VALUES
	('\nP0257', 'synthetic_ai', '1', '38', '30-39', 'Female', 'Postgraduate', 'Full-time employed', '3', '7');
INSERT INTO `todo` (`participant_id`, `data_source`, `synthetic_flag`, `age`, `age_group`, `gender`, `education_level`, `employment_status`, `occupation_category`, `average_sleep_hours`) VALUES
	('\nP0258', 'synthetic_ai', '1', '62', '60+', 'Male', 'Undergraduate', 'Retired', '5', '8.5');
INSERT INTO `todo` (`participant_id`, `data_source`, `synthetic_flag`, `age`, `age_group`, `gender`, `education_level`, `employment_status`, `occupation_category`, `average_sleep_hours`) VALUES
	('\nP0259', 'synthetic_ai', '1', '32', '30-39', 'Female', 'Undergraduate', 'Self-employed', '7', '7');
INSERT INTO `todo` (`participant_id`, `data_source`, `synthetic_flag`, `age`, `age_group`, `gender`, `education_level`, `employment_status`, `occupation_category`, `average_sleep_hours`) VALUES
	('\nP0260', 'synthetic_ai', '1', '18', '18-20', 'Female', 'High school', 'Student', '1', '6.5');
INSERT INTO `todo` (`participant_id`, `data_source`, `synthetic_flag`, `age`, `age_group`, `gender`, `education_level`, `employment_status`, `occupation_category`, `average_sleep_hours`) VALUES
	('\nP0261', 'synthetic_ai', '1', '41', '40-49', 'Male', 'Postgraduate', 'Full-time employed', '3', '7');
INSERT INTO `todo` (`participant_id`, `data_source`, `synthetic_flag`, `age`, `age_group`, `gender`, `education_level`, `employment_status`, `occupation_category`, `average_sleep_hours`) VALUES
	('\nP0262', 'synthetic_ai', '1', '28', '25-29', 'Female', 'Postgraduate', 'Full-time employed', '6', '7');
INSERT INTO `todo` (`participant_id`, `data_source`, `synthetic_flag`, `age`, `age_group`, `gender`, `education_level`, `employment_status`, `occupation_category`, `average_sleep_hours`) VALUES
	('\nP0263', 'synthetic_ai', '1', '24', '21-24', 'Male', 'Undergraduate', 'Student', '1', '5.5');
INSERT INTO `todo` (`participant_id`, `data_source`, `synthetic_flag`, `age`, `age_group`, `gender`, `education_level`, `employment_status`, `occupation_category`, `average_sleep_hours`) VALUES
	('\nP0264', 'synthetic_ai', '1', '52', '50-59', 'Female', 'Undergraduate', 'Full-time employed', '1', '7.5');
INSERT INTO `todo` (`participant_id`, `data_source`, `synthetic_flag`, `age`, `age_group`, `gender`, `education_level`, `employment_status`, `occupation_category`, `average_sleep_hours`) VALUES
	('\nP0265', 'synthetic_ai', '1', '35', '30-39', 'Male', 'Undergraduate', 'Full-time employed', '9', '6.5');
INSERT INTO `todo` (`participant_id`, `data_source`, `synthetic_flag`, `age`, `age_group`, `gender`, `education_level`, `employment_status`, `occupation_category`, `average_sleep_hours`) VALUES
	('\nP0266', 'synthetic_ai', '1', '68', '60+', 'Female', 'High school', 'Retired', '5', '8');
INSERT INTO `todo` (`participant_id`, `data_source`, `synthetic_flag`, `age`, `age_group`, `gender`, `education_level`, `employment_status`, `occupation_category`, `average_sleep_hours`) VALUES
	('\nP0267', 'synthetic_ai', '1', '22', '21-24', 'Female', 'Undergraduate', 'Student', '1', '6');
INSERT INTO `todo` (`participant_id`, `data_source`, `synthetic_flag`, `age`, `age_group`, `gender`, `education_level`, `employment_status`, `occupation_category`, `average_sleep_hours`) VALUES
	('\nP0268', 'synthetic_ai', '1', '46', '40-49', 'Male', 'Undergraduate', 'Full-time employed', '13', '7');
INSERT INTO `todo` (`participant_id`, `data_source`, `synthetic_flag`, `age`, `age_group`, `gender`, `education_level`, `employment_status`, `occupation_category`, `average_sleep_hours`) VALUES
	('\nP0269', 'synthetic_ai', '1', '31', '30-39', 'Female', 'Postgraduate', 'Self-employed', '7', '7');
INSERT INTO `todo` (`participant_id`, `data_source`, `synthetic_flag`, `age`, `age_group`, `gender`, `education_level`, `employment_status`, `occupation_category`, `average_sleep_hours`) VALUES
	('\nP0270', 'synthetic_ai', '1', '59', '50-59', 'Male', 'Postgraduate', 'Full-time employed', '3', '7');
INSERT INTO `todo` (`participant_id`, `data_source`, `synthetic_flag`, `age`, `age_group`, `gender`, `education_level`, `employment_status`, `occupation_category`, `average_sleep_hours`) VALUES
	('\nP0271', 'synthetic_ai', '1', '26', '25-29', 'Female', 'Undergraduate', 'Full-time employed', '2', '7');
INSERT INTO `todo` (`participant_id`, `data_source`, `synthetic_flag`, `age`, `age_group`, `gender`, `education_level`, `employment_status`, `occupation_category`, `average_sleep_hours`) VALUES
	('\nP0272', 'synthetic_ai', '1', '43', '40-49', 'Male', 'Doctoral', 'Full-time employed', '4', '6.5');
INSERT INTO `todo` (`participant_id`, `data_source`, `synthetic_flag`, `age`, `age_group`, `gender`, `education_level`, `employment_status`, `occupation_category`, `average_sleep_hours`) VALUES
	('\nP0273', 'synthetic_ai', '1', '19', '18-20', 'Female', 'High school', 'Student', '1', '6');
INSERT INTO `todo` (`participant_id`, `data_source`, `synthetic_flag`, `age`, `age_group`, `gender`, `education_level`, `employment_status`, `occupation_category`, `average_sleep_hours`) VALUES
	('\nP0274', 'synthetic_ai', '1', '36', '30-39', 'Male', 'Undergraduate', 'Full-time employed', '6', '7');
INSERT INTO `todo` (`participant_id`, `data_source`, `synthetic_flag`, `age`, `age_group`, `gender`, `education_level`, `employment_status`, `occupation_category`, `average_sleep_hours`) VALUES
	('\nP0275', 'synthetic_ai', '1', '55', '50-59', 'Female', 'Postgraduate', 'Full-time employed', '2', '7.5');
INSERT INTO `todo` (`participant_id`, `data_source`, `synthetic_flag`, `age`, `age_group`, `gender`, `education_level`, `employment_status`, `occupation_category`, `average_sleep_hours`) VALUES
	('\nP0276', 'synthetic_ai', '1', '21', '21-24', 'Male', 'Undergraduate', 'Student', '1', '5.5');
INSERT INTO `todo` (`participant_id`, `data_source`, `synthetic_flag`, `age`, `age_group`, `gender`, `education_level`, `employment_status`, `occupation_category`, `average_sleep_hours`) VALUES
	('\nP0277', 'synthetic_ai', '1', '47', '40-49', 'Female', 'Postgraduate', 'Full-time employed', '6', '7.5');
INSERT INTO `todo` (`participant_id`, `data_source`, `synthetic_flag`, `age`, `age_group`, `gender`, `education_level`, `employment_status`, `occupation_category`, `average_sleep_hours`) VALUES
	('\nP0278', 'synthetic_ai', '1', '30', '30-39', 'Male', 'Undergraduate', 'Full-time employed', '3', '6.5');
INSERT INTO `todo` (`participant_id`, `data_source`, `synthetic_flag`, `age`, `age_group`, `gender`, `education_level`, `employment_status`, `occupation_category`, `average_sleep_hours`) VALUES
	('\nP0279', 'synthetic_ai', '1', '63', '60+', 'Female', 'Undergraduate', 'Retired', '5', '8');
INSERT INTO `todo` (`participant_id`, `data_source`, `synthetic_flag`, `age`, `age_group`, `gender`, `education_level`, `employment_status`, `occupation_category`, `average_sleep_hours`) VALUES
	('\nP0280', 'synthetic_ai', '1', '34', '30-39', 'Female', 'Undergraduate', 'Freelancer', '7', '6.5');
INSERT INTO `todo` (`participant_id`, `data_source`, `synthetic_flag`, `age`, `age_group`, `gender`, `education_level`, `employment_status`, `occupation_category`, `average_sleep_hours`) VALUES
	('\nP0281', 'synthetic_ai', '1', '25', '25-29', 'Male', 'Diploma', 'Full-time employed', '12', '6.5');
INSERT INTO `todo` (`participant_id`, `data_source`, `synthetic_flag`, `age`, `age_group`, `gender`, `education_level`, `employment_status`, `occupation_category`, `average_sleep_hours`) VALUES
	('\nP0282', 'synthetic_ai', '1', '49', '40-49', 'Female', 'Postgraduate', 'Full-time employed', '2', '7');
INSERT INTO `todo` (`participant_id`, `data_source`, `synthetic_flag`, `age`, `age_group`, `gender`, `education_level`, `employment_status`, `occupation_category`, `average_sleep_hours`) VALUES
	('\nP0283', 'synthetic_ai', '1', '29', '25-29', 'Male', 'Postgraduate', 'Full-time employed', '6', '7');
INSERT INTO `todo` (`participant_id`, `data_source`, `synthetic_flag`, `age`, `age_group`, `gender`, `education_level`, `employment_status`, `occupation_category`, `average_sleep_hours`) VALUES
	('\nP0284', 'synthetic_ai', '1', '39', '30-39', 'Male', 'Doctorate', 'Full-time employed', '4', '7');
INSERT INTO `todo` (`participant_id`, `data_source`, `synthetic_flag`, `age`, `age_group`, `gender`, `education_level`, `employment_status`, `occupation_category`, `average_sleep_hours`) VALUES
	('\nP0285', 'synthetic_ai', '1', '20', '18-20', 'Female', 'High school', 'Student', '1', '6.5');
INSERT INTO `todo` (`participant_id`, `data_source`, `synthetic_flag`, `age`, `age_group`, `gender`, `education_level`, `employment_status`, `occupation_category`, `average_sleep_hours`) VALUES
	('\nP0286', 'synthetic_ai', '1', '43', '40-49', 'Male', 'Undergraduate', 'Full-time employed', '11', '7');
INSERT INTO `todo` (`participant_id`, `data_source`, `synthetic_flag`, `age`, `age_group`, `gender`, `education_level`, `employment_status`, `occupation_category`, `average_sleep_hours`) VALUES
	('\nP0287', 'synthetic_ai', '1', '56', '50-59', 'Female', 'Undergraduate', 'Full-time employed', '1', '7.5');
INSERT INTO `todo` (`participant_id`, `data_source`, `synthetic_flag`, `age`, `age_group`, `gender`, `education_level`, `employment_status`, `occupation_category`, `average_sleep_hours`) VALUES
	('\nP0288', 'synthetic_ai', '1', '27', '25-29', 'Male', 'Undergraduate', 'Full-time employed', '3', '6.5');
INSERT INTO `todo` (`participant_id`, `data_source`, `synthetic_flag`, `age`, `age_group`, `gender`, `education_level`, `employment_status`, `occupation_category`, `average_sleep_hours`) VALUES
	('\nP0289', 'synthetic_ai', '1', '37', '30-39', 'Female', 'Postgraduate', 'Full-time employed', '2', '7');
INSERT INTO `todo` (`participant_id`, `data_source`, `synthetic_flag`, `age`, `age_group`, `gender`, `education_level`, `employment_status`, `occupation_category`, `average_sleep_hours`) VALUES
	('\nP0290', 'synthetic_ai', '1', '70', '60+', 'Male', 'High school', 'Retired', '5', '8.5');
INSERT INTO `todo` (`participant_id`, `data_source`, `synthetic_flag`, `age`, `age_group`, `gender`, `education_level`, `employment_status`, `occupation_category`, `average_sleep_hours`) VALUES
	('\nP0291', 'synthetic_ai', '1', '33', '30-39', 'Female', 'Undergraduate', 'Full-time employed', '10', '7');
INSERT INTO `todo` (`participant_id`, `data_source`, `synthetic_flag`, `age`, `age_group`, `gender`, `education_level`, `employment_status`, `occupation_category`, `average_sleep_hours`) VALUES
	('\nP0292', 'synthetic_ai', '1', '24', '21-24', 'Male', 'Undergraduate', 'Job seeker', '5', '6.5');
INSERT INTO `todo` (`participant_id`, `data_source`, `synthetic_flag`, `age`, `age_group`, `gender`, `education_level`, `employment_status`, `occupation_category`, `average_sleep_hours`) VALUES
	('\nP0293', 'synthetic_ai', '1', '48', '40-49', 'Female', 'Postgraduate', 'Full-time employed', '3', '7');
INSERT INTO `todo` (`participant_id`, `data_source`, `synthetic_flag`, `age`, `age_group`, `gender`, `education_level`, `employment_status`, `occupation_category`, `average_sleep_hours`) VALUES
	('\nP0294', 'synthetic_ai', '1', '22', '21-24', 'Female', 'Undergraduate', 'Student', '1', '5.5');
INSERT INTO `todo` (`participant_id`, `data_source`, `synthetic_flag`, `age`, `age_group`, `gender`, `education_level`, `employment_status`, `occupation_category`, `average_sleep_hours`) VALUES
	('\nP0295', 'synthetic_ai', '1', '40', '40-49', 'Male', 'Doctorate', 'Full-time employed', '4', '6.5');
INSERT INTO `todo` (`participant_id`, `data_source`, `synthetic_flag`, `age`, `age_group`, `gender`, `education_level`, `employment_status`, `occupation_category`, `average_sleep_hours`) VALUES
	('\nP0296', 'synthetic_ai', '1', '54', '50-59', 'Female', 'Postgraduate', 'Full-time employed', '2', '7.5');
INSERT INTO `todo` (`participant_id`, `data_source`, `synthetic_flag`, `age`, `age_group`, `gender`, `education_level`, `employment_status`, `occupation_category`, `average_sleep_hours`) VALUES
	('\nP0297', 'synthetic_ai', '1', '26', '25-29', 'Male', 'Undergraduate', 'Full-time employed', '8', '6.5');
INSERT INTO `todo` (`participant_id`, `data_source`, `synthetic_flag`, `age`, `age_group`, `gender`, `education_level`, `employment_status`, `occupation_category`, `average_sleep_hours`) VALUES
	('\nP0298', 'synthetic_ai', '1', '31', '30-39', 'Female', 'Undergraduate', 'Full-time employed', '9', '6.5');
INSERT INTO `todo` (`participant_id`, `data_source`, `synthetic_flag`, `age`, `age_group`, `gender`, `education_level`, `employment_status`, `occupation_category`, `average_sleep_hours`) VALUES
	('\nP0299', 'synthetic_ai', '1', '44', '40-49', 'Male', 'Undergraduate', 'Full-time employed', '11', '7');
INSERT INTO `todo` (`participant_id`, `data_source`, `synthetic_flag`, `age`, `age_group`, `gender`, `education_level`, `employment_status`, `occupation_category`, `average_sleep_hours`) VALUES
	('\nP0300', 'synthetic_ai', '1', '61', '60+', 'Female', 'Undergraduate', 'Retired', '5', '8');

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
