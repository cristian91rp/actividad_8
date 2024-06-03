-- MySQL dump 10.13  Distrib 8.0.36, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: actividad_8
-- ------------------------------------------------------
-- Server version	8.0.36

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
-- Table structure for table `posts`
--

DROP TABLE IF EXISTS `posts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `posts` (
  `id` int NOT NULL AUTO_INCREMENT,
  `titulo` varchar(100) NOT NULL,
  `descripcion` text,
  `fecha_creacion` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `categoria` varchar(50) NOT NULL,
  `autor_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `posts_ibfk_1` (`autor_id`),
  CONSTRAINT `posts_ibfk_1` FOREIGN KEY (`autor_id`) REFERENCES `autores` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=48 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `posts`
--

LOCK TABLES `posts` WRITE;
/*!40000 ALTER TABLE `posts` DISABLE KEYS */;
INSERT INTO `posts` VALUES (1,'Increíbles aventuras en el espacio','Descubre las maravillas del cosmos en este emocionante viaje intergaláctico.','2024-05-24 22:00:00','Ciencia Ficción',1),(2,'El secreto mejor guardado del Amazonas','Adéntrate en la selva amazónica y descubre un tesoro oculto que cambiará tu vida para siempre.','2024-05-23 22:00:00','Aventura',2),(3,'Recetas exóticas de cocina internacional','Viaja por el mundo a través de los sabores con estas deliciosas recetas que te transportarán a lugares lejanos.','2024-05-22 22:00:00','Gastronomía',3),(4,'El misterio del antiguo templo','Explora ruinas ancestrales y descubre el enigma que ha desconcertado a arqueólogos durante siglos.','2024-05-21 22:00:00','Arqueología',4),(5,'Desafío extremo en las montañas','Supera tus límites escalando las cumbres más altas del mundo en esta emocionante expedición alpina.','2024-05-20 22:00:00','Deportes',5),(6,'La magia de la fotografía en blanco y negro','Explora la belleza atemporal capturada en cada imagen en este fascinante viaje por el arte de la fotografía.','2024-05-19 22:00:00','Arte',6),(7,'Secretos ocultos de la ciudad perdida','Descubre los misterios enterrados bajo las ruinas de una civilización antigua en esta aventura arqueológica.','2024-05-18 22:00:00','Historia',7),(8,'Viaje gastronómico por Italia','Embárcate en un viaje culinario por las regiones más exquisitas de Italia y descubre los sabores auténticos de la cocina italiana.','2024-05-17 22:00:00','Gastronomía',8),(9,'Atrévete a explorar el fondo del océano','Sumérgete en las profundidades marinas y descubre un mundo submarino lleno de criaturas fascinantes en esta aventura submarina.','2024-05-16 22:00:00','Naturaleza',9),(10,'El arte perdido de la caligrafía','Descubre la elegancia y la belleza del arte de escribir a mano en esta exploración del arte de la caligrafía.','2024-05-15 22:00:00','Arte',10),(11,'El enigma de la esfinge','Resuelve el misterio que envuelve a la Gran Esfinge de Giza y descubre los secretos ocultos en sus milenarias piedras.','2024-05-14 22:00:00','Arqueología',11),(12,'Aventuras en la Tierra Media','Embárcate en una épica aventura inspirada en el mundo de Tolkien y descubre los peligros y maravillas de la Tierra Media.','2024-05-13 22:00:00','Fantasía',12),(13,'Sabores exóticos de Asia','Explora la diversidad culinaria del continente asiático y déjate seducir por los sabores únicos de la cocina oriental.','2024-05-12 22:00:00','Gastronomía',1),(14,'El secreto de la inmortalidad','Descubre el elixir de la vida eterna en esta búsqueda legendaria que ha obsesionado a alquimistas a lo largo de los siglos.','2024-05-11 22:00:00','Misterio',2),(15,'Travesía por el desierto de Sahara','Atrévete a cruzar el desierto más grande del mundo y descubre los secretos que se esconden bajo sus ardientes arenas.','2024-05-10 22:00:00','Aventura',3),(16,'La danza de las auroras boreales','Contempla el fascinante espectáculo de las luces del norte en este viaje a las regiones árticas donde la naturaleza se viste de colores.','2024-05-09 22:00:00','Naturaleza',4),(17,'El misterio del Triángulo de las Bermudas','Descubre los secretos que rodean esta misteriosa región marina donde los barcos y aviones desaparecen sin dejar rastro.','2024-05-08 22:00:00','Misterio',5),(18,'Viaje en el tiempo al antiguo Egipto','Viaja al pasado y sumérgete en la fascinante cultura del antiguo Egipto en esta aventura histórica sin igual.','2024-05-07 22:00:00','Historia',6),(19,'El arte del bonsái: belleza en miniatura','Descubre la paciencia y la delicadeza necesarias para crear estas pequeñas obras de arte en forma de árboles.','2024-05-06 22:00:00','Jardinería',7),(20,'Misterios del fondo marino','Explora los secretos ocultos en las profundidades del océano y descubre criaturas que desafían toda lógica en este viaje submarino.','2024-05-05 22:00:00','Naturaleza',8),(21,'El arte de la cocina molecular','Descubre la ciencia detrás de la gastronomía en esta aventura culinaria donde los ingredientes se transforman en obras de arte.','2024-05-04 22:00:00','Gastronomía',9),(22,'En busca del dorado perdido','Embárcate en una trepidante búsqueda del legendario tesoro.','2024-05-03 22:00:00','Aventura',10),(23,'El enigma de Stonehenge','Resuelve el misterio de los antiguos constructores de Stonehenge y descubre los secretos que yacen entre las piedras.','2024-05-02 22:00:00','Arqueología',11),(24,'La ciencia detrás de los sueños','Explora el mundo de los sueños y descubre las últimas investigaciones científicas sobre este fenómeno misterioso.','2024-05-01 22:00:00','Ciencia',12),(25,'El renacimiento de la alquimia','Descubre el arte perdido de la alquimia y explora los misterios de la transmutación en esta fascinante odisea alquímica.','2024-04-30 22:00:00','Historia',1),(26,'El arte de la seducción en la literatura','Explora las técnicas de seducción utilizadas por los grandes escritores a lo largo de la historia y descubre cómo aplicarlas en tu propia vida.','2024-04-29 22:00:00','Literatura',2),(27,'Secretos de la mente humana','Sumérgete en el laberinto de la mente humana y descubre los misterios que se esconden en los rincones más profundos de la psique humana.','2024-04-28 22:00:00','Psicología',3),(28,'El camino del samurái: honor y disciplina','Adéntrate en el código de honor samurái y descubre los valores fundamentales que guiaron a estos guerreros en su búsqueda de la perfección.','2024-04-27 22:00:00','Historia',4),(29,'El poder de la meditación mindfulness','Explora los beneficios de la meditación mindfulness y aprende a cultivar la atención plena en tu vida diaria para alcanzar la paz interior.','2024-04-26 22:00:00','Salud Mental',5),(30,'Aventuras en la selva amazónica','Embárcate en una emocionante expedición por la selva amazónica y descubre la biodiversidad única de este ecosistema fascinante.','2024-04-25 22:00:00','Naturaleza',6),(31,'Los secretos de la alquimia china','Descubre los antiguos secretos de la alquimia china y explora las prácticas místicas que dieron forma a la cultura oriental.','2024-04-24 22:00:00','Historia',7),(32,'El arte del origami: creatividad en papel','Explora la belleza y la creatividad del arte del origami y aprende a crear tus propias obras maestras con simples hojas de papel.','2024-04-23 22:00:00','Arte',8),(33,'Viaje espiritual por la India','Embárcate en un viaje espiritual por la India y descubre las enseñanzas milenarias de la sabiduría hindú en este viaje transformador.','2024-04-22 22:00:00','Religión',9),(34,'Misterios del Triángulo de las Azores','Descubre los enigmas que rodean al Triángulo de las Azores y explora las teorías sobre los fenómenos inexplicables que ocurren en esta región del Atlántico.','2024-04-21 22:00:00','Misterio',10),(35,'El arte de la cocina tailandesa','Explora los sabores exóticos de Tailandia y aprende a preparar platos tradicionales que te transportarán a las calles de Bangkok en cada bocado.','2024-04-20 22:00:00','Gastronomía',11),(36,'Los secretos de la civilización maya','Descubre los misterios de la civilización maya y explora las ruinas de antiguas ciudades que revelan la grandeza y el misterio de esta cultura perdida.','2024-04-19 22:00:00','Arqueología',12),(37,'El arte de la negociación: estrategias ganadoras','Domina el arte de la negociación y aprende las estrategias ganadoras que te permitirán alcanzar acuerdos beneficiosos en cualquier situación.','2024-04-18 22:00:00','Negocios',1),(38,'Travesía por el Camino de Santiago','Embárcate en una travesía espiritual por el Camino de Santiago y descubre las maravillas naturales y culturales de esta antigua ruta de peregrinación.','2024-04-17 22:00:00','Viajes',2),(39,'El enigma de las líneas de Nazca','Descubre el misterio de las enigmáticas líneas de Nazca en Perú y explora las teorías sobre su origen y propósito en esta fascinante expedición arqueológica.','2024-04-16 22:00:00','Arqueología',3),(40,'El arte de la jardinería zen','Crea tu propio jardín zen y descubre la paz y la serenidad que emana de esta antigua forma de jardinería que busca la armonía con la naturaleza.','2024-04-15 22:00:00','Jardinería',4),(41,'Los secretos de la mitología nórdica','Descubre los mitos y leyendas de la mitología nórdica y explora el fascinante mundo de dioses, héroes y criaturas míticas que poblaron el universo vikingo.','2024-04-14 22:00:00','Mitología',5),(42,'Aventuras en la Antigua Roma','Embárcate en un viaje en el tiempo a la Antigua Roma y descubre la grandeza y la decadencia de una de las civilizaciones más poderosas de la historia.','2024-04-13 22:00:00','Historia',6),(43,'El arte de la cerámica: creatividad en barro','Explora la belleza y la creatividad del arte de la cerámica y aprende las técnicas tradicionales para crear tus propias obras maestras en barro.','2024-04-12 22:00:00','Arte',7),(44,'Los secretos de la Atlántida','Descubre los enigmas que rodean a la mítica Atlántida y explora las teorías sobre su ubicación y su posible existencia en este fascinante viaje arqueológico.','2024-04-11 22:00:00','Misterio',8);
/*!40000 ALTER TABLE `posts` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-06-03 18:39:15
