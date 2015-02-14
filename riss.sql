-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Versión del servidor:         5.6.20 - MySQL Community Server (GPL)
-- SO del servidor:              Win32
-- HeidiSQL Versión:             9.1.0.4867
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

-- Volcando estructura de base de datos para riss
CREATE DATABASE IF NOT EXISTS `riss` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `riss`;


-- Volcando estructura para tabla riss.encuesta
CREATE TABLE IF NOT EXISTS `encuesta` (
  `ID` int(11) NOT NULL,
  `municipio` varchar(50) NOT NULL,
  `categoria` varchar(50) NOT NULL,
  `entidad` varchar(50) NOT NULL,
  `cargo` varchar(50) NOT NULL,
  `tserv` varchar(50) NOT NULL,
  `formacion` varchar(50) NOT NULL,
  `p1` int(11) NOT NULL,
  `p2` int(11) NOT NULL,
  `p3` int(1) NOT NULL,
  `p4` int(1) NOT NULL,
  `p5` int(1) NOT NULL,
  `p6` int(1) NOT NULL,
  `p7` int(1) NOT NULL,
  `p8` int(1) NOT NULL,
  `p9` int(1) NOT NULL,
  `p10` int(1) NOT NULL,
  `p11` int(1) NOT NULL,
  `p12` int(1) NOT NULL,
  `p13` int(1) NOT NULL,
  `p14` int(1) NOT NULL,
  `p15` int(1) NOT NULL,
  `p16` int(1) NOT NULL,
  `p17` int(1) NOT NULL,
  `p18` int(1) NOT NULL,
  `p19` int(1) NOT NULL,
  `p20` int(1) NOT NULL,
  `p21` int(1) NOT NULL,
  `p22` int(1) NOT NULL,
  `p23` int(1) NOT NULL,
  `p24` int(1) NOT NULL,
  `p25` int(1) NOT NULL,
  `p26` int(1) NOT NULL,
  `p27` int(1) NOT NULL,
  `p28` int(1) NOT NULL,
  `p29` int(1) NOT NULL,
  `p30` int(1) NOT NULL,
  `p31` int(1) NOT NULL,
  `p32` int(1) NOT NULL,
  `p33` int(1) NOT NULL,
  `p34` int(1) NOT NULL,
  `p35` int(1) NOT NULL,
  `p36` int(1) NOT NULL,
  `p37` int(1) NOT NULL,
  `p38` int(1) NOT NULL,
  `p39` int(1) NOT NULL,
  `p40` int(1) NOT NULL,
  `p41` int(1) NOT NULL,
  `p42` int(1) NOT NULL,
  `p43` int(1) NOT NULL,
  `p44` int(1) NOT NULL,
  `p45` int(1) NOT NULL,
  `p46` int(1) NOT NULL,
  `p47` int(1) NOT NULL,
  `p48` int(1) NOT NULL,
  `p49` int(1) NOT NULL,
  `p50` int(1) NOT NULL,
  `p51` int(1) NOT NULL,
  `p52` int(1) NOT NULL,
  `p53` int(1) NOT NULL,
  `p54` int(1) NOT NULL,
  `p55` int(1) NOT NULL,
  `p56` int(1) NOT NULL,
  `p57` int(1) NOT NULL,
  `p58` int(1) NOT NULL,
  `p59` int(1) NOT NULL,
  `p60` int(1) NOT NULL,
  `p61` int(1) NOT NULL,
  `p62` int(1) NOT NULL,
  `p63` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='tabla que contiene las respuestas de la encuesta';

-- Volcando datos para la tabla riss.encuesta: ~0 rows (aproximadamente)
DELETE FROM `encuesta`;
/*!40000 ALTER TABLE `encuesta` DISABLE KEYS */;
/*!40000 ALTER TABLE `encuesta` ENABLE KEYS */;


-- Volcando estructura para tabla riss.municipios
CREATE TABLE IF NOT EXISTS `municipios` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(50) DEFAULT '0',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla riss.municipios: ~0 rows (aproximadamente)
DELETE FROM `municipios`;
/*!40000 ALTER TABLE `municipios` DISABLE KEYS */;
INSERT INTO `municipios` (`ID`, `nombre`) VALUES
	(1, 'Cali'),
	(2, 'Tulua'),
	(3, 'Cartago');
/*!40000 ALTER TABLE `municipios` ENABLE KEYS */;


-- Volcando estructura para tabla riss.preguntas
CREATE TABLE IF NOT EXISTS `preguntas` (
  `no` int(3) NOT NULL AUTO_INCREMENT,
  `pregunta` varchar(500) NOT NULL,
  `opcion1` varchar(50) NOT NULL,
  `opcion2` varchar(50) NOT NULL,
  `opcion3` varchar(50) NOT NULL,
  PRIMARY KEY (`no`)
) ENGINE=InnoDB AUTO_INCREMENT=69 DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla riss.preguntas: ~67 rows (aproximadamente)
DELETE FROM `preguntas`;
/*!40000 ALTER TABLE `preguntas` DISABLE KEYS */;
INSERT INTO `preguntas` (`no`, `pregunta`, `opcion1`, `opcion2`, `opcion3`) VALUES
	(1, 'Municipio', 'Si', 'No', 'No sabe / No responde'),
	(2, 'Categoría', 'Si', 'No', 'No sabe / No responde'),
	(3, 'Entidad', 'Si', 'No', 'No sabe / No responde'),
	(4, 'Cargo', 'Si', 'No', 'No sabe / No responde'),
	(5, 'Tiempo de servicio', 'Si', 'No', 'No sabe / No responde'),
	(6, 'Formación Académica', 'Si', 'No', 'No sabe / No responde'),
	(7, '1. ¿Plan de desarrollo actualizado para los últimos cuatro años?', 'Si', 'No', 'No sabe / No responde'),
	(8, '2. ¿Análisis de Situación de Salud actualizado en menos de dos años?', 'Si', 'No', 'No sabe / No responde'),
	(9, '3. ¿Perfil epidemiológico de los últimos dos años?', 'Si', 'No', 'No sabe / No responde'),
	(10, '4. ¿Análisis de ordenamiento territorial? ', 'Si', 'No', 'No sabe / No responde'),
	(11, '5. ¿Identificación actualizada de la población según régimen de afiliación en el último año?', 'Si', 'No', 'No sabe / No responde'),
	(12, '6. ¿Identificación formal de grupos étnicos en el último año?', 'Si', 'No', 'No sabe / No responde'),
	(13, '7. ¿Referenciación geográfica de la oferta de servicios de salud, incluida la zona rural?', 'Si', 'No', 'No sabe / No responde'),
	(14, '8. ¿Caracterización de la oferta y demanda de servicios de salud?', 'Si', 'No', 'No sabe / No responde'),
	(15, '9. ¿Información de la red de servicios de salud en el área de influencia actualizada en el último año? ', 'Si', 'No', 'No sabe / No responde'),
	(16, '10. ¿La organización de una Red de Servicios para promoción, prevención, tratamiento (con especialidades médicas) o rehabilitación?', 'Si', 'No', 'No sabe / No responde'),
	(17, '11. ¿Alianzas entre prestadores de servicios de salud  para la prestación de los servicios?', 'Si', 'No', 'No sabe / No responde'),
	(18, '12. ¿Alianzas del sector salud con redes de apoyo a grupos poblacionales específicos? ', 'Si', 'No', 'No sabe / No responde'),
	(19, '13. ¿La entidad territorial tiene vínculos con la comunidad en espacios formales de articulación?', 'Si', 'No', 'No sabe / No responde'),
	(20, '14. ¿Se existen las ligas de usuarios, las veedurías u otras instancias de participación?', 'Si', 'No', 'No sabe / No responde'),
	(21, '15. ¿La entidad territorial de salud dispone de mecanismos de comunicación permanente con los actores que representan a la comunidad?', 'Si', 'No', 'No sabe / No responde'),
	(22, '16. ¿Se cuenta con un sistema de información entre los integrantes de la Red de prestadores de  Salud desde el primer nivel de atención al nivel superior?', 'Si', 'No', 'No sabe / No responde'),
	(23, '17. ¿Existe un Modelo de Atención en salud definido por la entidad territorial?', 'Si', 'No', 'No sabe / No responde'),
	(24, '18. ¿Las aseguradoras de su región tienen definido un modelo de atención en salud? ', 'Si', 'No', 'No sabe / No responde'),
	(25, '19. ¿Se tienen identificados por la entidad territorial municipal los prestadores de servicios de salud en entornos extra hospitalarios? ', 'Si', 'No', 'No sabe / No responde'),
	(26, '20. ¿En su región existen instituciones que prestan servicios especializados de mediana y alta complejidad? ', 'Si', 'No', 'No sabe / No responde'),
	(27, '21. ¿Están diseñados los procesos para la recepción, ingreso y revisión de los usuarios entre las diferentes entidades de salud del municipio?', 'Si', 'No', 'No sabe / No responde'),
	(28, '22. ¿Se han adoptado y adaptado las guías de práctica clínica dadas por el ministerio de salud', 'Si', 'No', 'No sabe / No responde'),
	(29, '23. ¿Está definido un sistema de referencia y contrarreferencia por la entidad territorial de salud municipal?', 'Si', 'No', 'No sabe / No responde'),
	(30, '24. La entidad territorial municipal de salud aplica lineamientos y directrices dadas por la autoridad sanitaria en temas de prestación de servicios?', 'Si', 'No', 'No sabe / No responde'),
	(31, '25. ¿La entidad territorial municipal tiene caracterizadas las organizaciones que atienden poblaciones especificas?', 'Si', 'No', 'No sabe / No responde'),
	(32, '26. ¿Las instituciones de salud articulan sus acciones con las redes de apoyo social?', 'Si', 'No', 'No sabe / No responde'),
	(33, '27. ¿Las condiciones de vida y trabajo son consideradas por las IPS para la prestación de los servicios de salud?', 'Si', 'No', 'No sabe / No responde'),
	(34, '28. ¿Los prestadores de servicios de salud integran estrategias con enfoque etnocultural para la atención?\r\n', 'Si', 'No', 'No sabe / No responde'),
	(35, '29. ¿Los planes de prestación de servicios de salud consideran la participación comunitaria?', 'Si', 'No', 'No sabe / No responde'),
	(36, '30. ¿La entidad territorial departamental tiene lineamientos que den un orden general a la organización y operación de la red de servicios en la jurisdicción', 'Si', 'No', 'No sabe / No responde'),
	(37, '31. ¿Las instituciones de salud de la región reconocen las capacidades de oferta y limitaciones entre sí?', 'Si', 'No', 'No sabe / No responde'),
	(38, '32. ¿Hay articulación administrativa entre actores del sector salud a nivel regional para el desarrollo de sus funciones?', 'Si', 'No', 'No sabe / No responde'),
	(39, '33. ¿La entidad territorial municipal mantiene un vínculo con las entidades de salud de la jurisdicción, desde la asistencia técnica hasta el monitoreo de sus funciones?', 'Si', 'No', 'No sabe / No responde'),
	(40, '34. ¿Los actores del sistema de salud en la región tienen definidos mecanismos o instancias de trabajo con las comunidades para asegurar la atención de necesidades en salud?', 'Si', 'No', 'No sabe / No responde'),
	(41, '35. ¿La comunidad participa de las decisiones de gobierno local frente a la organización y planeación de la oferta de red?', 'Si', 'No', 'No sabe / No responde'),
	(42, '36. ¿Las entidades de salud (IPS, EPS, ARL, y otras) brindan a la comunidad orientación y educación para hagan uso de sus derechos y deberes en salud?', 'Si', 'No', 'No sabe / No responde'),
	(43, '37. La entidad territorial municipal de salud brinda asistencia técnica a la comunidad para que conozcan la operación del sistema de salud y actúen sobre él?', 'Si', 'No', 'No sabe / No responde'),
	(44, '38. ¿Las instituciones de salud han implementado sistemas de garantía y mejoramiento continuo de la calidad? ', 'Si', 'No', 'No sabe / No responde'),
	(45, '39. ¿La entidad territorial municipal ha definido políticas explicitas de calidad en la atención para la población en su jurisdicción?', 'Si', 'No', 'No sabe / No responde'),
	(46, '40. ¿Las instituciones de salud tienen definidos indicadores de gestión clínica y administrativa conforme a lineamientos generales de la entidad territorial? ', 'Si', 'No', 'No sabe / No responde'),
	(47, '41. ¿Las instituciones de salud tienen estrategias de economía de escala para la prestación de servicios de salud?', 'Si', 'No', 'No sabe / No responde'),
	(48, '42. ¿La comunidad recibe información de la gestión clínica y administrativa de las instituciones de salud?', 'Si', 'No', 'No sabe / No responde'),
	(49, '43. La entidad territorial de salud realiza capacitación continua a sus equipos de trabajo técnico en temas de fortalecimiento y organización de la red de servicios?', 'Si', 'No', 'No sabe / No responde'),
	(50, '44. Se brinda por parte de la entidad territorial de salud asistencia técnica orientada a fortalecer el conocimiento en temas relacionados con organización de la red, el modelo de atención, análisis de situación de salud?', 'Si', 'No', 'No sabe / No responde'),
	(51, '45. Las entidades de salud, generan estrategias encaminadas a mejorar su cultura organizacional, a partir de trabajo en equipo y apoyo colaborativo entre IPS?', 'Si', 'No', 'No sabe / No responde'),
	(52, '46. Se evidencia en las diferentes entidades de salud, acciones para mantener el recurso humano capacitado, motivado y valorado?', 'Si', 'No', 'No sabe / No responde'),
	(53, '47. Las entidades desarrollan análisis orientados a reconocer las condiciones del talento humano en salud, para mejorar sus condiciones?\r\n', 'Si', 'No', 'No sabe / No responde'),
	(54, '48. La instituciones de salud tienen definidas directrices orientadas a medir sus resultados, basándose en  las variables y datos definidas por la entidad territorial?', 'Si', 'No', 'No sabe / No responde'),
	(55, '49. Los actores del sistema en su territorio disponen de la información y datos generados entre si? ', 'Si', 'No', 'No sabe / No responde'),
	(56, '50. Las instituciones de salud han incorporado la tecnología para mejorar los sistemas de información para la gestión clínica y administrativa?', 'Si', 'No', 'No sabe / No responde'),
	(57, '51. Las entidades de salud de la región, integran desarrollos tecnológicos ‘para la comunicación interna y con otros actores del sistema?', 'Si', 'No', 'No sabe / No responde'),
	(58, '52. La entidad territorial de salud tiene definidos lineamientos, para el reporte de información por parte de los actores del sistema de salud según sus competencias?', 'Si', 'No', 'No sabe / No responde'),
	(59, '53. Las instituciones de salud realizan análisis de costo/efectividad de sus operaciones? ', 'Si', 'No', 'No sabe / No responde'),
	(60, '54. Se tienen definidas estrategias de articulación entre los actores del sistema para optimizar recursos, a través de economías de escala?', 'Si', 'No', 'No sabe / No responde'),
	(61, '55. La entidad territorial de salud concerta con las instituciones de salud para redefinir la oferta de servicios  específicas según demanda?', 'Si', 'No', 'No sabe / No responde'),
	(62, '56. Las entidades de salud integran lineamientos orientados a mejorar las condiciones laborales del talento humano en salud?', 'Si', 'No', 'No sabe / No responde'),
	(63, '57. La entidad territorial de salud tiene definido espacios de planeación intersectorial', 'Si', 'No', 'No sabe / No responde'),
	(64, '58. La entidad territorial de salud tiene definidos lineamientos para el monitoreo de la equidad en salud de salud?   ', 'Si', 'No', 'No sabe / No responde'),
	(65, '59. Las entidades de salud participan activamente de consejos consultivos, comités permanentes, grupos de trabajo de otros sectores diferente a salud?', 'Si', 'No', 'No sabe / No responde'),
	(66, '60. La entidad territorial cuenta con análisis en Determinantes Sociales de la Salud  conocido por los diferentes actores del sistema?', 'Si', 'No', 'No sabe / No responde'),
	(67, '61. La entidad de salud reconoce los determinantes sociales como pertinente para el análisis de equidad  en salud?', 'Si', 'No', 'No sabe / No responde');
/*!40000 ALTER TABLE `preguntas` ENABLE KEYS */;


-- Volcando estructura para tabla riss.usuario
CREATE TABLE IF NOT EXISTS `usuario` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(50) NOT NULL DEFAULT '0',
  `user` varchar(50) NOT NULL DEFAULT '0',
  `password` varchar(50) NOT NULL DEFAULT '0',
  `tipo_entidad` varchar(50) NOT NULL DEFAULT '0',
  `email` varchar(50) NOT NULL DEFAULT '0',
  `intentos` int(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1 COMMENT='tabla de usuarios con datos personales';

-- Volcando datos para la tabla riss.usuario: ~0 rows (aproximadamente)
DELETE FROM `usuario`;
/*!40000 ALTER TABLE `usuario` DISABLE KEYS */;
INSERT INTO `usuario` (`ID`, `nombre`, `user`, `password`, `tipo_entidad`, `email`, `intentos`) VALUES
	(1, 'Cristian Rojas', 'crisivar', 'cir0324', '2', 'crisivar@gmail.com', 0);
/*!40000 ALTER TABLE `usuario` ENABLE KEYS */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
