-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Versión del servidor:         10.2.3-MariaDB-log - mariadb.org binary distribution
-- SO del servidor:              Win32
-- HeidiSQL Versión:             12.0.0.6468
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Volcando estructura de base de datos para challangedenis
DROP DATABASE IF EXISTS `challangedenis`;
CREATE DATABASE IF NOT EXISTS `challangedenis` /*!40100 DEFAULT CHARACTER SET armscii8 COLLATE armscii8_bin */;
USE `challangedenis`;

-- Volcando estructura para tabla challangedenis.candidatos
DROP TABLE IF EXISTS `candidatos`;
CREATE TABLE IF NOT EXISTS `candidatos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(50) COLLATE armscii8_bin NOT NULL DEFAULT '0',
  `partido` varchar(50) COLLATE armscii8_bin NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=armscii8 COLLATE=armscii8_bin;

-- Volcando datos para la tabla challangedenis.candidatos: ~3 rows (aproximadamente)
INSERT INTO `candidatos` (`id`, `nombre`, `partido`) VALUES
	(1, 'Candidato 1', 'Partido 1'),
	(2, 'Candidato 2', 'Partido 2'),
	(3, 'Candidato 3', 'Partido 3');

-- Volcando estructura para tabla challangedenis.comunas
DROP TABLE IF EXISTS `comunas`;
CREATE TABLE IF NOT EXISTS `comunas` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_provincia` int(11) NOT NULL DEFAULT 0,
  `descripcion` varchar(50) CHARACTER SET latin1 COLLATE latin1_spanish_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=347 DEFAULT CHARSET=armscii8 COLLATE=armscii8_bin;

-- Volcando datos para la tabla challangedenis.comunas: ~346 rows (aproximadamente)
INSERT INTO `comunas` (`id`, `id_provincia`, `descripcion`) VALUES
	(1, 1, 'ARICA'),
	(2, 1, 'CAMARONES'),
	(3, 2, 'PUTRE'),
	(4, 2, 'GENERAL LAGOS'),
	(5, 3, 'IQUIQUE'),
	(6, 3, 'ALTO HOSPICIO'),
	(7, 4, 'POZO ALMONTE'),
	(8, 4, 'CAMIÑA'),
	(9, 4, 'COLCHANE'),
	(10, 4, 'HUARA'),
	(11, 4, 'PICA'),
	(12, 5, 'ANTOFAGASTA'),
	(13, 5, 'MEJILLONES'),
	(14, 5, 'SIERRA GORDA'),
	(15, 5, 'TALTAL'),
	(16, 6, 'CALAMA'),
	(17, 6, 'OLLAGÜE'),
	(18, 6, 'SAN PEDRO DE ATACAMA'),
	(19, 7, 'TOCOPILLA'),
	(20, 7, 'MARÍA ELENA'),
	(21, 8, 'COPIAPÓ'),
	(22, 8, 'CALDERA'),
	(23, 8, 'TIERRA AMARILLA'),
	(24, 9, 'CHAÑARAL'),
	(25, 9, 'DIEGO DE ALMAGRO'),
	(26, 10, 'VALLENAR'),
	(27, 10, 'ALTO DEL CARMEN'),
	(28, 10, 'FREIRINA'),
	(29, 10, 'HUASCO'),
	(30, 11, 'LA SERENA'),
	(31, 11, 'COQUIMBO'),
	(32, 11, 'ANDACOLLO'),
	(33, 11, 'LA HIGUERA'),
	(34, 11, 'PAIGUANO'),
	(35, 11, 'VICUÑA'),
	(36, 12, 'ILLAPEL'),
	(37, 12, 'CANELA'),
	(38, 12, 'LOS VILOS'),
	(39, 12, 'SALAMANCA'),
	(40, 13, 'OVALLE'),
	(41, 13, 'COMBARBALÁ'),
	(42, 13, 'MONTE PATRIA'),
	(43, 13, 'PUNITAQUI'),
	(44, 13, 'RÍO HURTADO'),
	(45, 14, 'VALPARAÍSO'),
	(46, 14, 'CASABLANCA'),
	(47, 14, 'CONCÓN'),
	(48, 14, 'JUAN FERNÁNDEZ'),
	(49, 14, 'PUCHUNCAVÍ'),
	(50, 14, 'QUINTERO'),
	(51, 14, 'VIÑA DEL MAR'),
	(52, 15, 'ISLA DE PASCUA'),
	(53, 16, 'LOS ANDES'),
	(54, 16, 'CALLE LARGA'),
	(55, 16, 'RINCONADA'),
	(56, 16, 'SAN ESTEBAN'),
	(57, 17, 'LA LIGUA'),
	(58, 17, 'CABILDO'),
	(59, 17, 'PAPUDO'),
	(60, 17, 'PETORCA'),
	(61, 17, 'ZAPALLAR'),
	(62, 18, 'QUILLOTA'),
	(63, 18, 'CALERA'),
	(64, 18, 'HIJUELAS'),
	(65, 18, 'LA CRUZ'),
	(66, 18, 'NOGALES'),
	(67, 19, 'SAN ANTONIO'),
	(68, 19, 'ALGARROBO'),
	(69, 19, 'CARTAGENA'),
	(70, 19, 'EL QUISCO'),
	(71, 19, 'EL TABO'),
	(72, 19, 'SANTO DOMINGO'),
	(73, 20, 'SAN FELIPE'),
	(74, 20, 'CATEMU'),
	(75, 20, 'LLAILLAY'),
	(76, 20, 'PANQUEHUE'),
	(77, 20, 'PUTAENDO'),
	(78, 20, 'SANTA MARÍA'),
	(79, 21, 'LIMACHE'),
	(80, 21, 'QUILPUÉ'),
	(81, 21, 'VILLA ALEMANA'),
	(82, 21, 'OLMUÉ'),
	(83, 22, 'RANCAGUA'),
	(84, 22, 'CODEGUA'),
	(85, 22, 'COINCO'),
	(86, 22, 'COLTAUCO'),
	(87, 22, 'DOÑIHUE'),
	(88, 22, 'GRANEROS'),
	(89, 22, 'LAS CABRAS'),
	(90, 22, 'MACHALÍ'),
	(91, 22, 'MALLOA'),
	(92, 22, 'MOSTAZAL'),
	(93, 22, 'OLIVAR'),
	(94, 22, 'PEUMO'),
	(95, 22, 'PICHIDEGUA'),
	(96, 22, 'QUINTA DE TILCOCO'),
	(97, 22, 'RENGO'),
	(98, 22, 'REQUÍNOA'),
	(99, 22, 'SAN VICENTE'),
	(100, 23, 'PICHILEMU'),
	(101, 23, 'LA ESTRELLA'),
	(102, 23, 'LITUECHE'),
	(103, 23, 'MARCHIHUE'),
	(104, 23, 'NAVIDAD'),
	(105, 23, 'PAREDONES'),
	(106, 24, 'SAN FERNANDO'),
	(107, 24, 'CHÉPICA'),
	(108, 24, 'CHIMBARONGO'),
	(109, 24, 'LOLOL'),
	(110, 24, 'NANCAGUA'),
	(111, 24, 'PALMILLA'),
	(112, 24, 'PERALILLO'),
	(113, 24, 'PLACILLA'),
	(114, 24, 'PUMANQUE'),
	(115, 24, 'SANTA CRUZ'),
	(116, 25, 'TALCA'),
	(117, 25, 'CONSTITUCIÓN'),
	(118, 25, 'CUREPTO'),
	(119, 25, 'EMPEDRADO'),
	(120, 25, 'MAULE'),
	(121, 25, 'PELARCO'),
	(122, 25, 'PENCAHUE'),
	(123, 25, 'RÍO CLARO'),
	(124, 25, 'SAN CLEMENTE'),
	(125, 25, 'SAN RAFAEL'),
	(126, 26, 'CAUQUENES'),
	(127, 26, 'CHANCO'),
	(128, 26, 'PELLUHUE'),
	(129, 27, 'CURICÓ'),
	(130, 27, 'HUALAÑÉ'),
	(131, 27, 'LICANTÉN'),
	(132, 27, 'MOLINA'),
	(133, 27, 'RAUCO'),
	(134, 27, 'ROMERAL'),
	(135, 27, 'SAGRADA FAMILIA'),
	(136, 27, 'TENO'),
	(137, 27, 'VICHUQUÉN'),
	(138, 28, 'LINARES'),
	(139, 28, 'COLBÚN'),
	(140, 28, 'LONGAVÍ'),
	(141, 28, 'PARRAL'),
	(142, 28, 'RETIRO'),
	(143, 28, 'SAN JAVIER'),
	(144, 28, 'VILLA ALEGRE'),
	(145, 28, 'YERBAS BUENAS'),
	(146, 29, 'CONCEPCIÓN'),
	(147, 29, 'CORONEL'),
	(148, 29, 'CHIGUAYANTE'),
	(149, 29, 'FLORIDA'),
	(150, 29, 'HUALQUI'),
	(151, 29, 'LOTA'),
	(152, 29, 'PENCO'),
	(153, 29, 'SAN PEDRO DE LA PAZ'),
	(154, 29, 'SANTA JUANA'),
	(155, 29, 'TALCAHUANO'),
	(156, 29, 'TOMÉ'),
	(157, 29, 'HUALPÉN'),
	(158, 30, 'LEBU'),
	(159, 30, 'ARAUCO'),
	(160, 30, 'CAÑETE'),
	(161, 30, 'CONTULMO'),
	(162, 30, 'CURANILAHUE'),
	(163, 30, 'LOS ALAMOS'),
	(164, 30, 'TIRÚA'),
	(165, 31, 'LOS ANGELES'),
	(166, 31, 'ANTUCO'),
	(167, 31, 'CABRERO'),
	(168, 31, 'LAJA'),
	(169, 31, 'MULCHÉN'),
	(170, 31, 'NACIMIENTO'),
	(171, 31, 'NEGRETE'),
	(172, 31, 'QUILACO'),
	(173, 31, 'QUILLECO'),
	(174, 31, 'SAN ROSENDO'),
	(175, 31, 'SANTA BÁRBARA'),
	(176, 31, 'TUCAPEL'),
	(177, 31, 'YUMBEL'),
	(178, 31, 'ALTO BIOBÍO'),
	(179, 32, 'CHILLÁN'),
	(180, 32, 'BULNES'),
	(181, 32, 'COBQUECURA'),
	(182, 32, 'COELEMU'),
	(183, 32, 'COIHUECO'),
	(184, 32, 'CHILLÁN VIEJO'),
	(185, 32, 'EL CARMEN'),
	(186, 32, 'NINHUE'),
	(187, 32, 'ÑIQUÉN'),
	(188, 32, 'PEMUCO'),
	(189, 32, 'PINTO'),
	(190, 32, 'PORTEZUELO'),
	(191, 32, 'QUILLÓN'),
	(192, 32, 'QUIRIHUE'),
	(193, 32, 'RÁNQUIL'),
	(194, 32, 'SAN CARLOS'),
	(195, 32, 'SAN FABIÁN'),
	(196, 32, 'SAN IGNACIO'),
	(197, 32, 'SAN NICOLÁS'),
	(198, 32, 'TREGUACO'),
	(199, 32, 'YUNGAY'),
	(200, 33, 'TEMUCO'),
	(201, 33, 'CARAHUE'),
	(202, 33, 'CUNCO'),
	(203, 33, 'CURARREHUE'),
	(204, 33, 'FREIRE'),
	(205, 33, 'GALVARINO'),
	(206, 33, 'GORBEA'),
	(207, 33, 'LAUTARO'),
	(208, 33, 'LONCOCHE'),
	(209, 33, 'MELIPEUCO'),
	(210, 33, 'NUEVA IMPERIAL'),
	(211, 33, 'PADRE LAS CASAS'),
	(212, 33, 'PERQUENCO'),
	(213, 33, 'PITRUFQUÉN'),
	(214, 33, 'PUCÓN'),
	(215, 33, 'SAAVEDRA'),
	(216, 33, 'TEODORO SCHMIDT'),
	(217, 33, 'TOLTÉN'),
	(218, 33, 'VILCÚN'),
	(219, 33, 'VILLARRICA'),
	(220, 33, 'CHOLCHOL'),
	(221, 34, 'ANGOL'),
	(222, 34, 'COLLIPULLI'),
	(223, 34, 'CURACAUTÍN'),
	(224, 34, 'ERCILLA'),
	(225, 34, 'LONQUIMAY'),
	(226, 34, 'LOS SAUCES'),
	(227, 34, 'LUMACO'),
	(228, 34, 'PURÉN'),
	(229, 34, 'RENAICO'),
	(230, 34, 'TRAIGUÉN'),
	(231, 34, 'VICTORIA'),
	(232, 35, 'VALDIVIA'),
	(233, 35, 'CORRAL'),
	(234, 35, 'LANCO'),
	(235, 35, 'LOS LAGOS'),
	(236, 35, 'MÁFIL'),
	(237, 35, 'MARIQUINA'),
	(238, 35, 'PAILLACO'),
	(239, 35, 'PANGUIPULLI'),
	(240, 36, 'LA UNIÓN'),
	(241, 36, 'FUTRONO'),
	(242, 36, 'LAGO RANCO'),
	(243, 36, 'RÍO BUENO'),
	(244, 37, 'PUERTO MONTT'),
	(245, 37, 'CALBUCO'),
	(246, 37, 'COCHAMÓ'),
	(247, 37, 'FRESIA'),
	(248, 37, 'FRUTILLAR'),
	(249, 37, 'LOS MUERMOS'),
	(250, 37, 'LLANQUIHUE'),
	(251, 37, 'MAULLÍN'),
	(252, 37, 'PUERTO VARAS'),
	(253, 38, 'CASTRO'),
	(254, 38, 'ANCUD'),
	(255, 38, 'CHONCHI'),
	(256, 38, 'CURACO DE VÉLEZ'),
	(257, 38, 'DALCAHUE'),
	(258, 38, 'PUQUELDÓN'),
	(259, 38, 'QUEILÉN'),
	(260, 38, 'QUELLÓN'),
	(261, 38, 'QUEMCHI'),
	(262, 38, 'QUINCHAO'),
	(263, 39, 'OSORNO'),
	(264, 39, 'PUERTO OCTAY'),
	(265, 39, 'PURRANQUE'),
	(266, 39, 'PUYEHUE'),
	(267, 39, 'RÍO NEGRO'),
	(268, 39, 'SAN JUAN DE LA COSTA'),
	(269, 39, 'SAN PABLO'),
	(270, 40, 'CHAITÉN'),
	(271, 40, 'FUTALEUFÚ'),
	(272, 40, 'HUALAIHUÉ'),
	(273, 40, 'PALENA'),
	(274, 41, 'COIHAIQUE'),
	(275, 41, 'LAGO VERDE'),
	(276, 42, 'AISÉN'),
	(277, 42, 'CISNES'),
	(278, 42, 'GUAITECAS'),
	(279, 43, 'COCHRANE'),
	(280, 43, 'O\'HIGGINS'),
	(281, 43, 'TORTEL'),
	(282, 44, 'CHILE CHICO'),
	(283, 44, 'RÍO IBÁÑEZ'),
	(284, 45, 'PUNTA ARENAS'),
	(285, 45, 'LAGUNA BLANCA'),
	(286, 45, 'RÍO VERDE'),
	(287, 45, 'SAN GREGORIO'),
	(288, 46, 'CABO DE HORNOS'),
	(289, 46, 'ANTÁRTICA'),
	(290, 47, 'PORVENIR'),
	(291, 47, 'PRIMAVERA'),
	(292, 47, 'TIMAUKEL'),
	(293, 48, 'NATALES'),
	(294, 48, 'TORRES DEL PAINE'),
	(295, 49, 'SANTIAGO'),
	(296, 49, 'CERRILLOS'),
	(297, 49, 'CERRO NAVIA'),
	(298, 49, 'CONCHALÍ'),
	(299, 49, 'EL BOSQUE'),
	(300, 49, 'ESTACIÓN CENTRAL'),
	(301, 49, 'HUECHURABA'),
	(302, 49, 'INDEPENDENCIA'),
	(303, 49, 'LA CISTERNA'),
	(304, 49, 'LA FLORIDA'),
	(305, 49, 'LA GRANJA'),
	(306, 49, 'LA PINTANA'),
	(307, 49, 'LA REINA'),
	(308, 49, 'LAS CONDES'),
	(309, 49, 'LO BARNECHEA'),
	(310, 49, 'LO ESPEJO'),
	(311, 49, 'LO PRADO'),
	(312, 49, 'MACUL'),
	(313, 49, 'MAIPÚ'),
	(314, 49, 'ÑUÑOA'),
	(315, 49, 'PEDRO AGUIRRE CERDA'),
	(316, 49, 'PEÑALOLÉN'),
	(317, 49, 'PROVIDENCIA'),
	(318, 49, 'PUDAHUEL'),
	(319, 49, 'QUILICURA'),
	(320, 49, 'QUINTA NORMAL'),
	(321, 49, 'RECOLETA'),
	(322, 49, 'RENCA'),
	(323, 49, 'SAN JOAQUÍN'),
	(324, 49, 'SAN MIGUEL'),
	(325, 49, 'SAN RAMÓN'),
	(326, 49, 'VITACURA'),
	(327, 50, 'PUENTE ALTO'),
	(328, 50, 'PIRQUE'),
	(329, 50, 'SAN JOSÉ DE MAIPO'),
	(330, 51, 'COLINA'),
	(331, 51, 'LAMPA'),
	(332, 51, 'TILTIL'),
	(333, 52, 'SAN BERNARDO'),
	(334, 52, 'BUIN'),
	(335, 52, 'CALERA DE TANGO'),
	(336, 52, 'PAINE'),
	(337, 53, 'MELIPILLA'),
	(338, 53, 'ALHUÉ'),
	(339, 53, 'CURACAVÍ'),
	(340, 53, 'MARÍA PINTO'),
	(341, 53, 'SAN PEDRO'),
	(342, 54, 'TALAGANTE'),
	(343, 54, 'EL MONTE'),
	(344, 54, 'ISLA DE MAIPO'),
	(345, 54, 'PADRE HURTADO'),
	(346, 54, 'PEÑAFLOR');

-- Volcando estructura para tabla challangedenis.provincia
DROP TABLE IF EXISTS `provincia`;
CREATE TABLE IF NOT EXISTS `provincia` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_region` int(11) NOT NULL DEFAULT 0,
  `descripcion` varchar(50) CHARACTER SET latin1 COLLATE latin1_spanish_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `FK__regiones` (`id_region`),
  CONSTRAINT `FK__regiones` FOREIGN KEY (`id_region`) REFERENCES `regiones` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=55 DEFAULT CHARSET=armscii8 COLLATE=armscii8_bin;

-- Volcando datos para la tabla challangedenis.provincia: ~54 rows (aproximadamente)
INSERT INTO `provincia` (`id`, `id_region`, `descripcion`) VALUES
	(1, 1, 'ARICA'),
	(2, 1, 'PARINACOTA'),
	(3, 2, 'IQUIQUE'),
	(4, 2, 'TAMARUGAL'),
	(5, 3, 'ANTOFAGASTA'),
	(6, 3, 'EL LOA'),
	(7, 3, 'TOCOPILLA'),
	(8, 4, 'COPIAPÓ'),
	(9, 4, 'CHAÑARAL'),
	(10, 4, 'HUASCO'),
	(11, 5, 'ELQUI'),
	(12, 5, 'CHOAPA'),
	(13, 5, 'LIMARÍ'),
	(14, 6, 'VALPARAÍSO'),
	(15, 6, 'ISLA DE PASCUA'),
	(16, 6, 'LOS ANDES'),
	(17, 6, 'PETORCA'),
	(18, 6, 'QUILLOTA'),
	(19, 6, 'SAN ANTONIO'),
	(20, 6, 'SAN FELIPE DE ACONCAGUA'),
	(21, 6, 'MARGA MARGA'),
	(22, 7, 'CACHAPOAL'),
	(23, 7, 'CARDENAL CARO'),
	(24, 7, 'COLCHAGUA'),
	(25, 8, 'TALCA'),
	(26, 8, 'CAUQUENES'),
	(27, 8, 'CURICÓ'),
	(28, 8, 'LINARES'),
	(29, 9, 'CONCEPCIÓN'),
	(30, 9, 'ARAUCO'),
	(31, 9, 'BIOBÍO'),
	(32, 9, 'ÑUBLE'),
	(33, 10, 'CAUTÍN'),
	(34, 10, 'MALLECO'),
	(35, 11, 'VALDIVIA'),
	(36, 11, 'RANCO'),
	(37, 12, 'LLANQUIHUE'),
	(38, 12, 'CHILOÉ'),
	(39, 12, 'OSORNO'),
	(40, 12, 'PALENA'),
	(41, 13, 'COIHAIQUE'),
	(42, 13, 'AISÉN'),
	(43, 13, 'CAPITÁN PRAT'),
	(44, 13, 'GENERAL CARRERA'),
	(45, 14, 'MAGALLANES'),
	(46, 14, 'ANTÁRTICA CHILENA'),
	(47, 14, 'TIERRA DEL FUEGO'),
	(48, 14, 'ULTIMA ESPERANZA'),
	(49, 15, 'SANTIAGO'),
	(50, 15, 'CORDILLERA'),
	(51, 15, 'CHACABUCO'),
	(52, 15, 'MAIPO'),
	(53, 15, 'MELIPILLA'),
	(54, 15, 'TALAGANTE');

-- Volcando estructura para tabla challangedenis.regiones
DROP TABLE IF EXISTS `regiones`;
CREATE TABLE IF NOT EXISTS `regiones` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `descripcion` varchar(60) CHARACTER SET latin1 COLLATE latin1_spanish_ci DEFAULT NULL,
  `romano` varchar(5) COLLATE armscii8_bin NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=armscii8 COLLATE=armscii8_bin;

-- Volcando datos para la tabla challangedenis.regiones: ~15 rows (aproximadamente)
INSERT INTO `regiones` (`id`, `descripcion`, `romano`) VALUES
	(1, 'ARICA Y PARINACOTA', 'XV'),
	(2, 'TARAPACÁ', 'I'),
	(3, 'ANTOFAGASTA', 'II'),
	(4, 'ATACAMA ', 'III'),
	(5, 'COQUIMBO ', 'IV'),
	(6, 'VALPARAÍSO ', 'V'),
	(7, 'DEL LIBERTADOR GRAL. BERNARDO O\'HIGGINS ', 'VI'),
	(8, 'DEL MAULE', 'VII'),
	(9, 'DEL BIOBÍO ', 'VIII'),
	(10, 'DE LA ARAUCANÍA', 'IX'),
	(11, 'DE LOS RÍOS', 'XIV'),
	(12, 'DE LOS LAGOS', 'X'),
	(13, 'AISÉN DEL GRAL. CARLOS IBAÑEZ DEL CAMPO ', 'XI'),
	(14, 'MAGALLANES Y DE LA ANTÁRTICA CHILENA', 'XII'),
	(15, 'METROPOLITANA DE SANTIAGO', 'RM');

-- Volcando estructura para tabla challangedenis.votos
DROP TABLE IF EXISTS `votos`;
CREATE TABLE IF NOT EXISTS `votos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) COLLATE armscii8_bin NOT NULL,
  `alias` varchar(20) COLLATE armscii8_bin NOT NULL,
  `rut` varchar(12) COLLATE armscii8_bin NOT NULL,
  `email` varchar(100) COLLATE armscii8_bin NOT NULL,
  `region_id` int(11) NOT NULL,
  `comuna_id` int(11) NOT NULL,
  `candidato_id` int(11) NOT NULL,
  `enterado_web` tinyint(1) NOT NULL DEFAULT 0,
  `enterado_tv` tinyint(1) NOT NULL DEFAULT 0,
  `enterado_redes` tinyint(1) NOT NULL DEFAULT 0,
  `enterado_amigo` tinyint(1) NOT NULL DEFAULT 0,
  `fecha_voto` datetime DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  UNIQUE KEY `unq_votos_rut` (`rut`),
  KEY `fk_votos_region` (`region_id`),
  KEY `fk_votos_comuna` (`comuna_id`),
  KEY `fk_votos_candidato` (`candidato_id`),
  CONSTRAINT `fk_votos_candidato` FOREIGN KEY (`candidato_id`) REFERENCES `candidatos` (`id`),
  CONSTRAINT `fk_votos_comuna` FOREIGN KEY (`comuna_id`) REFERENCES `comunas` (`id`),
  CONSTRAINT `fk_votos_region` FOREIGN KEY (`region_id`) REFERENCES `regiones` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=armscii8 COLLATE=armscii8_bin;

-- Volcando datos para la tabla challangedenis.votos: ~0 rows (aproximadamente)

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
