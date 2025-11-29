-- MySQL dump 10.13  Distrib 8.0.43, for Win64 (x86_64)
--
-- Host: localhost    Database: 7502420046_18_appcine_v2
-- ------------------------------------------------------
-- Server version	8.0.43

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `adaptaciones`
--

DROP TABLE IF EXISTS `adaptaciones`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `adaptaciones` (
  `pelicula_id` int NOT NULL,
  `libro` varchar(200) NOT NULL,
  PRIMARY KEY (`pelicula_id`,`libro`),
  CONSTRAINT `adaptaciones_ibfk_1` FOREIGN KEY (`pelicula_id`) REFERENCES `peliculas` (`pelicula_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `adaptaciones`
--

LOCK TABLES `adaptaciones` WRITE;
/*!40000 ALTER TABLE `adaptaciones` DISABLE KEYS */;
INSERT INTO `adaptaciones` VALUES (1,'Aventura Final: El libro'),(3,'Risas sin Fin: Novela Cómica'),(5,'Viaje Estelar: Ciencia Ficción en Papel'),(7,'Documental Tierra: Libro de Naturaleza');
/*!40000 ALTER TABLE `adaptaciones` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `adaptaciones_comics`
--

DROP TABLE IF EXISTS `adaptaciones_comics`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `adaptaciones_comics` (
  `pelicula_id` int NOT NULL,
  `comic` varchar(200) NOT NULL,
  PRIMARY KEY (`pelicula_id`,`comic`),
  CONSTRAINT `adaptaciones_comics_ibfk_1` FOREIGN KEY (`pelicula_id`) REFERENCES `peliculas` (`pelicula_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `adaptaciones_comics`
--

LOCK TABLES `adaptaciones_comics` WRITE;
/*!40000 ALTER TABLE `adaptaciones_comics` DISABLE KEYS */;
INSERT INTO `adaptaciones_comics` VALUES (1,'Comic Aventura Final'),(5,'Viaje Estelar Comic');
/*!40000 ALTER TABLE `adaptaciones_comics` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `adaptaciones_series`
--

DROP TABLE IF EXISTS `adaptaciones_series`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `adaptaciones_series` (
  `pelicula_id` int NOT NULL,
  `serie` varchar(200) NOT NULL,
  PRIMARY KEY (`pelicula_id`,`serie`),
  CONSTRAINT `adaptaciones_series_ibfk_1` FOREIGN KEY (`pelicula_id`) REFERENCES `peliculas` (`pelicula_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `adaptaciones_series`
--

LOCK TABLES `adaptaciones_series` WRITE;
/*!40000 ALTER TABLE `adaptaciones_series` DISABLE KEYS */;
INSERT INTO `adaptaciones_series` VALUES (3,'Risas sin Fin: La Serie'),(6,'Pequeños Héroes: Serie Animada');
/*!40000 ALTER TABLE `adaptaciones_series` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `adaptaciones_videojuegos`
--

DROP TABLE IF EXISTS `adaptaciones_videojuegos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `adaptaciones_videojuegos` (
  `pelicula_id` int NOT NULL,
  `videojuego` varchar(200) NOT NULL,
  PRIMARY KEY (`pelicula_id`,`videojuego`),
  CONSTRAINT `adaptaciones_videojuegos_ibfk_1` FOREIGN KEY (`pelicula_id`) REFERENCES `peliculas` (`pelicula_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `adaptaciones_videojuegos`
--

LOCK TABLES `adaptaciones_videojuegos` WRITE;
/*!40000 ALTER TABLE `adaptaciones_videojuegos` DISABLE KEYS */;
INSERT INTO `adaptaciones_videojuegos` VALUES (2,'Amor en Invierno: El Juego'),(8,'Terror en la Noche: Game Edition');
/*!40000 ALTER TABLE `adaptaciones_videojuegos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `calificaciones`
--

DROP TABLE IF EXISTS `calificaciones`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `calificaciones` (
  `calificacion_id` int NOT NULL AUTO_INCREMENT,
  `pelicula_id` int NOT NULL,
  `usuario` varchar(100) DEFAULT NULL,
  `puntuacion` int DEFAULT NULL,
  `comentario` text,
  `fecha` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`calificacion_id`),
  KEY `pelicula_id` (`pelicula_id`),
  CONSTRAINT `calificaciones_ibfk_1` FOREIGN KEY (`pelicula_id`) REFERENCES `peliculas` (`pelicula_id`),
  CONSTRAINT `calificaciones_chk_1` CHECK ((`puntuacion` between 1 and 5))
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `calificaciones`
--

LOCK TABLES `calificaciones` WRITE;
/*!40000 ALTER TABLE `calificaciones` DISABLE KEYS */;
INSERT INTO `calificaciones` VALUES (1,1,'usuario1',5,'Excelente','2025-11-18 16:58:06'),(2,1,'usuario2',4,'Muy buena','2025-11-18 16:58:06'),(3,2,'usuario3',3,'Regular','2025-11-18 16:58:06'),(4,3,'usuario4',4,'Divertida','2025-11-18 16:58:06'),(5,3,'usuario5',5,'Me encantó','2025-11-18 16:58:06'),(6,4,'usuario6',2,'Aburrida','2025-11-18 16:58:06'),(7,5,'usuario7',5,'Increíble','2025-11-18 16:58:06'),(8,5,'usuario8',5,'Muy buena historia','2025-11-18 16:58:06'),(9,5,'usuario9',4,'Me gustó','2025-11-18 16:58:06'),(10,6,'usuario10',3,'Normal','2025-11-18 16:58:06'),(11,7,'usuario11',4,'Interesante','2025-11-18 16:58:06'),(12,7,'usuario12',3,'Regular','2025-11-18 16:58:06'),(13,8,'usuario13',5,'Muy aterradora','2025-11-18 16:58:06'),(14,9,'usuario14',4,'Bonito musical','2025-11-18 16:58:06'),(15,10,'usuario15',2,'No me gustó','2025-11-18 16:58:06');
/*!40000 ALTER TABLE `calificaciones` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cines`
--

DROP TABLE IF EXISTS `cines`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cines` (
  `cine_id` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(200) NOT NULL,
  `direccion` varchar(255) DEFAULT NULL,
  `telefono` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`cine_id`),
  UNIQUE KEY `nombre` (`nombre`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cines`
--

LOCK TABLES `cines` WRITE;
/*!40000 ALTER TABLE `cines` DISABLE KEYS */;
INSERT INTO `cines` VALUES (1,'Cine Norte','Calle 10 #45-20, Norte','+57 3011111111'),(2,'Cine Centro','Carrera 5 #12-34, Centro','+57 3102222222'),(3,'Cine Plaza','Av. Principal #100, Plaza','+57 3203333333');
/*!40000 ALTER TABLE `cines` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `clientes`
--

DROP TABLE IF EXISTS `clientes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `clientes` (
  `cliente_id` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(200) NOT NULL,
  `correo` varchar(150) DEFAULT NULL,
  `telefono` varchar(30) DEFAULT NULL,
  `fecha_registro` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`cliente_id`),
  UNIQUE KEY `correo` (`correo`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `clientes`
--

LOCK TABLES `clientes` WRITE;
/*!40000 ALTER TABLE `clientes` DISABLE KEYS */;
INSERT INTO `clientes` VALUES (1,'Andrés Márquez','andres.marquez@example.com','+57 3001000100','2025-11-18 15:28:31'),(2,'María Gómez','maria.gomez@example.com','+57 3002000200','2025-11-18 15:28:31'),(3,'Juan Pérez','juan.perez@example.com','+57 3003000300','2025-11-18 15:28:31'),(4,'Laura Rodríguez','laura.rodriguez@example.com','+57 3004000400','2025-11-18 15:28:31'),(5,'Carlos Sánchez','carlos.sanchez@example.com','+57 3005000500','2025-11-18 15:28:31'),(6,'Ana Torres','ana.torres@example.com','+57 3006000600','2025-11-18 15:28:31'),(7,'José Fernández','jose.fernandez@example.com','+57 3007000700','2025-11-18 15:28:31'),(8,'Sofía López','sofia.lopez@example.com','+57 3008000800','2025-11-18 15:28:31'),(9,'Diego Rivera','diego.rivera@example.com','+57 3009000900','2025-11-18 15:28:31'),(10,'Valentina Morales','valentina.morales@example.com','+57 3010001000','2025-11-18 15:28:31');
/*!40000 ALTER TABLE `clientes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dias_festivos`
--

DROP TABLE IF EXISTS `dias_festivos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dias_festivos` (
  `fecha` date NOT NULL,
  `nombre` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`fecha`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dias_festivos`
--

LOCK TABLES `dias_festivos` WRITE;
/*!40000 ALTER TABLE `dias_festivos` DISABLE KEYS */;
INSERT INTO `dias_festivos` VALUES ('2025-01-01','Año Nuevo'),('2025-03-24','Día de San José'),('2025-04-18','Viernes Santo'),('2025-05-01','Día del Trabajo'),('2025-06-16','Corpus Christi'),('2025-11-17','Independencia de Cartagena'),('2025-12-25','Navidad');
/*!40000 ALTER TABLE `dias_festivos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `festivos`
--

DROP TABLE IF EXISTS `festivos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `festivos` (
  `fecha` date NOT NULL,
  `descripcion` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`fecha`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `festivos`
--

LOCK TABLES `festivos` WRITE;
/*!40000 ALTER TABLE `festivos` DISABLE KEYS */;
INSERT INTO `festivos` VALUES ('2025-12-08','Inmaculada Concepción'),('2025-12-25','Navidad');
/*!40000 ALTER TABLE `festivos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `funciones`
--

DROP TABLE IF EXISTS `funciones`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `funciones` (
  `funcion_id` int NOT NULL AUTO_INCREMENT,
  `sala_id` int NOT NULL,
  `pelicula_id` int NOT NULL,
  `fecha` date NOT NULL,
  `hora` time NOT NULL,
  `formato` varchar(50) DEFAULT NULL,
  `precio` decimal(10,2) NOT NULL DEFAULT '0.00',
  PRIMARY KEY (`funcion_id`),
  KEY `fk_funciones_salas` (`sala_id`),
  KEY `ix_funcion_fecha` (`fecha`),
  KEY `ix_funcion_pelicula` (`pelicula_id`),
  CONSTRAINT `fk_funciones_peliculas` FOREIGN KEY (`pelicula_id`) REFERENCES `peliculas` (`pelicula_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_funciones_salas` FOREIGN KEY (`sala_id`) REFERENCES `salas` (`sala_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `funciones`
--

LOCK TABLES `funciones` WRITE;
/*!40000 ALTER TABLE `funciones` DISABLE KEYS */;
INSERT INTO `funciones` VALUES (1,1,1,'2025-11-17','14:00:00','2D',12.50),(2,1,1,'2025-11-18','18:30:00','2D',12.50),(3,2,2,'2025-11-18','16:00:00','2D',10.00),(4,2,2,'2025-11-19','20:00:00','2D',10.00),(5,3,3,'2025-11-18','11:00:00','2D',8.50),(6,3,3,'2025-11-19','15:00:00','2D',8.50),(7,4,4,'2025-11-18','19:00:00','2D',11.00),(8,4,5,'2025-11-20','21:30:00','IMAX',18.00),(9,5,5,'2025-11-18','20:00:00','IMAX',18.00),(10,5,6,'2025-11-18','10:30:00','2D',7.00),(11,6,7,'2025-11-19','13:00:00','2D',6.50),(12,6,8,'2025-11-18','22:00:00','3D',16.00),(13,1,9,'2025-11-20','17:00:00','2D',13.00),(14,2,9,'2025-11-21','19:30:00','2D',13.00),(15,3,10,'2025-11-22','20:00:00','2D',11.50),(16,4,1,'2025-11-22','14:00:00','2D',12.50),(17,5,4,'2025-11-18','12:00:00','2D',11.00),(18,6,2,'2025-11-23','16:30:00','2D',10.00),(19,1,5,'2025-11-24','21:00:00','IMAX',18.00),(20,2,6,'2025-11-24','10:00:00','2D',7.00),(21,3,8,'2025-11-25','22:30:00','3D',16.00),(22,4,10,'2025-11-25','18:00:00','2D',11.50),(23,5,1,'2025-11-19','16:30:00','2D',12.50),(24,6,9,'2025-11-19','18:15:00','2D',13.00),(25,1,4,'2025-11-20','20:00:00','2D',11.00),(26,2,5,'2025-11-20','22:00:00','IMAX',18.00),(27,3,6,'2025-11-21','11:30:00','2D',7.00),(28,4,7,'2025-11-21','13:45:00','2D',6.50),(29,5,8,'2025-11-22','23:00:00','3D',16.00),(30,6,10,'2025-11-23','20:30:00','2D',11.50),(31,1,2,'2025-11-28','13:00:00','Digital',14.00),(32,3,5,'2025-11-29','16:30:00','Digital',18.00),(33,6,8,'2025-11-30','20:00:00','Digital',16.50),(34,2,3,'2025-12-01','10:00:00','Fisico',9.00),(35,4,6,'2025-12-02','14:30:00','Fisico',8.50),(36,5,9,'2025-12-03','19:00:00','Fisico',11.00);
/*!40000 ALTER TABLE `funciones` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `funciones_idioma`
--

DROP TABLE IF EXISTS `funciones_idioma`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `funciones_idioma` (
  `id` int NOT NULL AUTO_INCREMENT,
  `funcion_id` int NOT NULL,
  `idioma_audio` varchar(50) DEFAULT NULL,
  `idioma_subtitulo` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `funcion_id` (`funcion_id`),
  CONSTRAINT `funciones_idioma_ibfk_1` FOREIGN KEY (`funcion_id`) REFERENCES `funciones` (`funcion_id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `funciones_idioma`
--

LOCK TABLES `funciones_idioma` WRITE;
/*!40000 ALTER TABLE `funciones_idioma` DISABLE KEYS */;
INSERT INTO `funciones_idioma` VALUES (1,1,'Español','Español'),(2,2,'Inglés','Español'),(3,3,'Español',NULL),(4,4,'Inglés','Español'),(5,5,'Español','Español'),(6,6,'Español',NULL),(7,7,'Inglés','Español'),(8,8,'Inglés','Español'),(9,9,'Español',NULL),(10,10,'Español','Español'),(11,11,'Inglés','Español'),(12,12,'Inglés','Español'),(13,13,'Inglés',NULL),(14,14,'Español','Español'),(15,15,'Inglés','Español'),(16,16,'Español',NULL),(17,17,'Inglés','Español'),(18,18,'Español',NULL),(19,19,'Inglés','Español'),(20,20,'Español','Español');
/*!40000 ALTER TABLE `funciones_idioma` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `peliculas`
--

DROP TABLE IF EXISTS `peliculas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `peliculas` (
  `pelicula_id` int NOT NULL AUTO_INCREMENT,
  `titulo` varchar(200) NOT NULL,
  `genero` varchar(100) DEFAULT NULL,
  `duracion` int DEFAULT NULL,
  `clasificacion` varchar(20) DEFAULT NULL,
  `idioma_original` varchar(50) DEFAULT 'Español',
  `version_original` tinyint(1) DEFAULT '0',
  `pais_origen` varchar(100) DEFAULT 'Desconocido',
  `estreno_mundial` tinyint(1) DEFAULT '0',
  `preestreno` tinyint(1) DEFAULT '0',
  `reestreno` tinyint(1) DEFAULT '0',
  `anio_produccion` int DEFAULT '2020',
  `nominada_premios` tinyint(1) DEFAULT '0',
  `ganadora_premios` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`pelicula_id`),
  UNIQUE KEY `titulo` (`titulo`),
  CONSTRAINT `chk_peliculas_duracion` CHECK (((`duracion` is null) or (`duracion` > 0)))
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `peliculas`
--

LOCK TABLES `peliculas` WRITE;
/*!40000 ALTER TABLE `peliculas` DISABLE KEYS */;
INSERT INTO `peliculas` VALUES (1,'La Aventura Final','Acción',125,'+13','Español',0,'Estados Unidos',1,0,0,2024,1,1),(2,'Amor en Invierno','Romance',98,'+12','Inglés',1,'España',0,1,0,2023,0,0),(3,'Risas sin Fin','Comedia',87,'+7','Español',0,'México',0,0,1,2022,0,1),(4,'El Misterio del Lago','Suspenso',110,'+13','Español',0,'Reino Unido',0,1,0,2023,1,0),(5,'Viaje Estelar','Ciencia Ficción',140,'+13','Español',0,'Estados Unidos',1,0,0,2024,0,0),(6,'Pequeños Héroes','Familiar',82,'Apto para todo públi','Español',0,'Colombia',0,0,1,2021,0,0),(7,'Documental Tierra','Documental',60,'Apto para todo públi','Español',0,'Francia',0,1,0,2020,1,0),(8,'Terror en la Noche','Terror',100,'+18','Inglés',1,'Japón',1,0,0,2021,0,1),(9,'Musical de Ciudad','Musical',115,'+12','Español',0,'Estados Unidos',0,0,0,2020,1,0),(10,'Comedia Negra','Comedia',105,'+15','Español',0,'Estados Unidos',0,0,1,2022,0,0),(11,'Historia de Vida','Drama',110,'+13','Español',0,'Desconocido',0,0,0,2020,0,0);
/*!40000 ALTER TABLE `peliculas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `peliculas_detalle`
--

DROP TABLE IF EXISTS `peliculas_detalle`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `peliculas_detalle` (
  `detalle_id` int NOT NULL AUTO_INCREMENT,
  `pelicula_id` int NOT NULL,
  `director` varchar(200) DEFAULT NULL,
  `elenco` text,
  `resumen` text,
  PRIMARY KEY (`detalle_id`),
  KEY `pelicula_id` (`pelicula_id`),
  CONSTRAINT `peliculas_detalle_ibfk_1` FOREIGN KEY (`pelicula_id`) REFERENCES `peliculas` (`pelicula_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `peliculas_detalle`
--

LOCK TABLES `peliculas_detalle` WRITE;
/*!40000 ALTER TABLE `peliculas_detalle` DISABLE KEYS */;
INSERT INTO `peliculas_detalle` VALUES (1,1,'Carlos Mendoza','Ana Ruiz, Pedro Gómez, Laura Silva','Un exsoldado debe enfrentar su última misión para salvar a su familia.'),(2,2,'María Torres','Julia Martínez, Andrés Salazar','Una historia romántica que transcurre durante un invierno especialmente frío.'),(3,3,'José Fernández','Carlos López, Marta Díaz','Una comedia ligera sobre un grupo de amigos que se mete en problemas.'),(4,4,'Ricardo Páez','Sofía Ríos, Daniel Cruz','Un misterio profundo sobre un lago en el que suceden eventos extraños.'),(5,5,'Elena Castillo','Marco Rivas, Diana Torres','Aventura espacial sobre un grupo de exploradores en una misión interestelar.'),(6,6,'Luis Herrera','Niños actores varios','Una historia familiar llena de aventuras y valores.'),(7,7,'Carmen Vega','Narrador: Alberto Salas','Documental sobre el planeta Tierra y sus maravillas naturales.'),(8,8,'Gabriel Soto','Lucía Aragón, Javier Molina','Una historia de terror que se desarrolla durante una noche oscura.'),(9,9,'Diego Morales','Mónica Pérez, Santiago Vélez','Un musical vibrante con coreografías impresionantes.'),(10,10,'Andrés Cruz','Varios comediantes','Comedia negra con humor ácido y situaciones inesperadas.');
/*!40000 ALTER TABLE `peliculas_detalle` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `precuelas`
--

DROP TABLE IF EXISTS `precuelas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `precuelas` (
  `pelicula_id` int NOT NULL,
  `pelicula_posterior_id` int NOT NULL,
  PRIMARY KEY (`pelicula_id`),
  KEY `pelicula_posterior_id` (`pelicula_posterior_id`),
  CONSTRAINT `precuelas_ibfk_1` FOREIGN KEY (`pelicula_id`) REFERENCES `peliculas` (`pelicula_id`),
  CONSTRAINT `precuelas_ibfk_2` FOREIGN KEY (`pelicula_posterior_id`) REFERENCES `peliculas` (`pelicula_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `precuelas`
--

LOCK TABLES `precuelas` WRITE;
/*!40000 ALTER TABLE `precuelas` DISABLE KEYS */;
INSERT INTO `precuelas` VALUES (2,5),(7,10);
/*!40000 ALTER TABLE `precuelas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `promociones`
--

DROP TABLE IF EXISTS `promociones`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `promociones` (
  `promo_id` int NOT NULL AUTO_INCREMENT,
  `pelicula_id` int NOT NULL,
  `descripcion` varchar(300) DEFAULT NULL,
  `descuento` decimal(5,2) DEFAULT NULL,
  `fecha_inicio` date DEFAULT NULL,
  `fecha_fin` date DEFAULT NULL,
  `tipo` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`promo_id`),
  KEY `pelicula_id` (`pelicula_id`),
  CONSTRAINT `promociones_ibfk_1` FOREIGN KEY (`pelicula_id`) REFERENCES `peliculas` (`pelicula_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `promociones`
--

LOCK TABLES `promociones` WRITE;
/*!40000 ALTER TABLE `promociones` DISABLE KEYS */;
INSERT INTO `promociones` VALUES (1,1,'Promo 2x1 en funciones de la tarde',50.00,'2025-11-15','2025-11-30',NULL),(2,3,'Descuento especial por comedia familiar',20.00,'2025-11-10','2025-11-25',NULL),(3,5,'Promo lanzamiento - Precio reducido',30.00,'2025-11-18','2025-12-05',NULL),(4,8,'Terror Night - 25% de descuento',25.00,'2025-11-17','2025-11-30',NULL),(5,10,'Promoción de comedia negra',15.00,'2025-11-20','2025-12-01',NULL),(6,3,'Descuento estudiantes 30%',30.00,'2025-11-01','2025-12-01','Estudiantes'),(7,5,'Descuento Adulto Mayor 40%',40.00,'2025-11-01','2025-12-31','Adulto Mayor');
/*!40000 ALTER TABLE `promociones` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `remakes`
--

DROP TABLE IF EXISTS `remakes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `remakes` (
  `pelicula_id` int NOT NULL,
  `pelicula_original_id` int NOT NULL,
  PRIMARY KEY (`pelicula_id`),
  KEY `pelicula_original_id` (`pelicula_original_id`),
  CONSTRAINT `remakes_ibfk_1` FOREIGN KEY (`pelicula_id`) REFERENCES `peliculas` (`pelicula_id`),
  CONSTRAINT `remakes_ibfk_2` FOREIGN KEY (`pelicula_original_id`) REFERENCES `peliculas` (`pelicula_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `remakes`
--

LOCK TABLES `remakes` WRITE;
/*!40000 ALTER TABLE `remakes` DISABLE KEYS */;
INSERT INTO `remakes` VALUES (6,3),(8,4);
/*!40000 ALTER TABLE `remakes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reservas`
--

DROP TABLE IF EXISTS `reservas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `reservas` (
  `reserva_id` int NOT NULL AUTO_INCREMENT,
  `cliente_id` int NOT NULL,
  `funcion_id` int NOT NULL,
  `cantidad` int NOT NULL,
  `fecha_reserva` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `total` decimal(10,2) DEFAULT '0.00',
  PRIMARY KEY (`reserva_id`),
  KEY `ix_reserva_cliente` (`cliente_id`),
  KEY `ix_reserva_funcion` (`funcion_id`),
  CONSTRAINT `fk_reservas_clientes` FOREIGN KEY (`cliente_id`) REFERENCES `clientes` (`cliente_id`) ON DELETE RESTRICT ON UPDATE CASCADE,
  CONSTRAINT `fk_reservas_funciones` FOREIGN KEY (`funcion_id`) REFERENCES `funciones` (`funcion_id`) ON DELETE RESTRICT ON UPDATE CASCADE,
  CONSTRAINT `chk_reservas_cantidad` CHECK ((`cantidad` > 0))
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reservas`
--

LOCK TABLES `reservas` WRITE;
/*!40000 ALTER TABLE `reservas` DISABLE KEYS */;
INSERT INTO `reservas` VALUES (1,1,2,2,'2025-11-17 10:00:00',25.00),(2,2,3,1,'2025-11-18 09:30:00',10.00),(3,3,5,3,'2025-11-17 14:20:00',25.50),(4,4,9,2,'2025-11-18 18:00:00',36.00),(5,5,12,1,'2025-11-18 20:30:00',16.00),(6,6,1,4,'2025-11-16 12:00:00',50.00),(7,7,7,1,'2025-11-18 17:00:00',11.00),(8,8,10,2,'2025-11-20 09:00:00',14.00),(9,9,8,3,'2025-11-19 19:15:00',54.00),(10,10,4,2,'2025-11-19 16:00:00',20.00),(11,1,13,2,'2025-11-19 12:00:00',26.00),(12,2,14,1,'2025-11-21 10:30:00',13.00),(13,3,15,3,'2025-11-22 09:00:00',34.50),(14,4,16,1,'2025-11-22 12:00:00',12.50),(15,5,17,4,'2025-11-18 11:00:00',44.00),(16,6,18,1,'2025-11-20 14:30:00',10.00),(17,7,19,2,'2025-11-23 19:00:00',36.00),(18,8,20,1,'2025-11-24 08:00:00',7.00),(19,9,21,2,'2025-11-25 20:00:00',32.00),(20,10,22,3,'2025-11-25 16:30:00',34.50);
/*!40000 ALTER TABLE `reservas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `salas`
--

DROP TABLE IF EXISTS `salas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `salas` (
  `sala_id` int NOT NULL AUTO_INCREMENT,
  `cine_id` int NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `capacidad` int NOT NULL,
  PRIMARY KEY (`sala_id`),
  KEY `fk_salas_cines` (`cine_id`),
  CONSTRAINT `fk_salas_cines` FOREIGN KEY (`cine_id`) REFERENCES `cines` (`cine_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `chk_salas_capacidad` CHECK ((`capacidad` > 0))
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `salas`
--

LOCK TABLES `salas` WRITE;
/*!40000 ALTER TABLE `salas` DISABLE KEYS */;
INSERT INTO `salas` VALUES (1,1,'Sala 1 - Norte',120),(2,1,'Sala 2 - Norte',80),(3,2,'Sala 1 - Centro',150),(4,2,'Sala 2 - Centro',90),(5,3,'Sala 1 - Plaza',200),(6,3,'Sala 2 - Plaza',100);
/*!40000 ALTER TABLE `salas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `secuelas`
--

DROP TABLE IF EXISTS `secuelas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `secuelas` (
  `pelicula_id` int NOT NULL,
  `pelicula_original_id` int NOT NULL,
  PRIMARY KEY (`pelicula_id`),
  KEY `pelicula_original_id` (`pelicula_original_id`),
  CONSTRAINT `secuelas_ibfk_1` FOREIGN KEY (`pelicula_id`) REFERENCES `peliculas` (`pelicula_id`),
  CONSTRAINT `secuelas_ibfk_2` FOREIGN KEY (`pelicula_original_id`) REFERENCES `peliculas` (`pelicula_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `secuelas`
--

LOCK TABLES `secuelas` WRITE;
/*!40000 ALTER TABLE `secuelas` DISABLE KEYS */;
INSERT INTO `secuelas` VALUES (5,1),(10,3);
/*!40000 ALTER TABLE `secuelas` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-11-28  8:39:08


SELECT * FROM adaptaciones;



USE 7502420046_18_appcine_v2;

-- 1) Películas en cartelera para el día de hoy
SELECT p.pelicula_id, p.titulo, f.funcion_id, f.fecha, f.hora, s.nombre AS sala, c.nombre AS cine
FROM peliculas p
JOIN funciones f ON p.pelicula_id = f.pelicula_id
JOIN salas s ON f.sala_id = s.sala_id
JOIN cines c ON s.cine_id = c.cine_id
WHERE f.fecha = CURDATE()
ORDER BY f.hora;

-- 2) Buscar películas por título (ej.: 'Aventura') — parámetro: '%Aventura%'
SELECT pelicula_id, titulo, genero, duracion, anio_produccion
FROM peliculas
WHERE titulo LIKE '%Aventura%';

-- 3) Películas mejor calificadas (promedio)
SELECT p.pelicula_id, p.titulo, ROUND(AVG(ca.puntuacion),2) AS promedio_puntuacion, COUNT(ca.calificacion_id) AS num_opiniones
FROM peliculas p
JOIN calificaciones ca ON p.pelicula_id = ca.pelicula_id
GROUP BY p.pelicula_id, p.titulo
HAVING COUNT(ca.calificacion_id) >= 1
ORDER BY promedio_puntuacion DESC
LIMIT 10;

-- 4) Promociones vigentes por cine (ejemplo cine_id = 1)
SELECT DISTINCT pr.promo_id, pr.pelicula_id, p.titulo, pr.descripcion, pr.descuento, pr.fecha_inicio, pr.fecha_fin, pr.tipo
FROM promociones pr
JOIN peliculas p ON pr.pelicula_id = p.pelicula_id
JOIN funciones f ON f.pelicula_id = p.pelicula_id
JOIN salas s ON f.sala_id = s.sala_id
WHERE s.cine_id = 1
  AND pr.fecha_inicio <= CURDATE() AND pr.fecha_fin >= CURDATE()
ORDER BY pr.fecha_inicio;

-- 5) Funciones disponibles para una película específica (ej: pelicula_id = 1)
SELECT f.funcion_id, f.fecha, f.hora, s.nombre AS sala, c.nombre AS cine, f.formato, f.precio
FROM funciones f
JOIN salas s ON f.sala_id = s.sala_id
JOIN cines c ON s.cine_id = c.cine_id
WHERE f.pelicula_id = 1
ORDER BY f.fecha, f.hora;

INSERT INTO peliculas (titulo, genero, duracion, clasificacion, idioma_original, pais_origen, anio_produccion)
VALUES ('Prueba Pelicula Entrega', 'Drama', 95, '+13', 'Español', 'Colombia', 2025);

-- Verificar INSERT
SELECT pelicula_id, titulo FROM peliculas WHERE titulo = 'Prueba Pelicula Entrega';

-- INSERT cliente y reserva (ejemplo)
INSERT INTO clientes (nombre, correo, telefono)
VALUES ('Alumno Prueba', 'alumno.prueba@example.com', '+57 3000000000');

-- Obtener cliente_id recien creado
SELECT cliente_id FROM clientes WHERE correo='alumno.prueba@example.com' ORDER BY fecha_registro DESC LIMIT 1;

-- Asumir funcion_id disponible (si no existe, consulta primero SELECT funcion_id FROM funciones LIMIT 1)
INSERT INTO reservas (cliente_id, funcion_id, cantidad, total)
SELECT c.cliente_id, f.funcion_id, 2, f.precio * 2
FROM clientes c, funciones f
WHERE c.correo='alumno.prueba@example.com' AND f.funcion_id = 1
LIMIT 1;

-- Verificar reserva
SELECT r.reserva_id, c.nombre, r.cantidad, r.total FROM reservas r JOIN clientes c ON r.cliente_id = c.cliente_id WHERE c.correo='alumno.prueba@example.com';

-- UPDATE: ajustar duración de la película de prueba
UPDATE peliculas SET duracion = 100 WHERE titulo = 'Prueba Pelicula Entrega';
SELECT pelicula_id, titulo, duracion FROM peliculas WHERE titulo = 'Prueba Pelicula Entrega';

-- DELETE: eliminar reserva y cliente de prueba
DELETE r FROM reservas r JOIN clientes c ON r.cliente_id = c.cliente_id WHERE c.correo='alumno.prueba@example.com';
DELETE FROM clientes WHERE correo='alumno.prueba@example.com';

-- DELETE: eliminar la película de prueba
DELETE FROM peliculas WHERE titulo = 'Prueba Pelicula Entrega';

-- Verificación final: no debe existir la pelicula de prueba
SELECT pelicula_id, titulo FROM peliculas WHERE titulo = 'Prueba Pelicula Entrega';

