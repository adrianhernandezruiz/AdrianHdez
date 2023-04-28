-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Versión del servidor:         10.4.28-MariaDB - mariadb.org binary distribution
-- SO del servidor:              Win64
-- HeidiSQL Versión:             11.3.0.6295
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Volcando estructura de base de datos para editorial
CREATE DATABASE IF NOT EXISTS `editorial` /*!40100 DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci */;
USE `editorial`;

-- Volcando estructura para tabla editorial.catalogo_libros
CREATE TABLE IF NOT EXISTS `catalogo_libros` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `titulo` varchar(50) NOT NULL,
  `descripcion` varchar(100) NOT NULL,
  `codigo_barras` decimal(10,0) NOT NULL,
  `imagen` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Volcando datos para la tabla editorial.catalogo_libros: ~5 rows (aproximadamente)
/*!40000 ALTER TABLE `catalogo_libros` DISABLE KEYS */;
INSERT INTO `catalogo_libros` (`id`, `titulo`, `descripcion`, `codigo_barras`, `imagen`) VALUES
	(1, 'Decameron', 'Este libro habla de Decameron', 100, 'uploads/1682699971_decameron1.jpg'),
	(2, 'El Golem', 'Este libro trata sobre el Golem', 160, 'uploads/1682700548_elgolem.jpg'),
	(3, 'Insurgentes', 'Este libro cuenta la historia de los insurgentes', 120, 'uploads/1682699878_insurgentes.jpg'),
	(4, 'El Libro De La Selva', 'Este libro trata sobre las aventuras del libro de la selva', 335, 'uploads/1682700992_ellibrodelaselva.jpg'),
	(5, 'Niebla', 'Este libro trata sobre la niebla', 300, 'uploads/1682701236_niebla.jpg');
/*!40000 ALTER TABLE `catalogo_libros` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
