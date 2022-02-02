-- MySQL dump 10.13  Distrib 8.0.27, for macos11 (x86_64)
--
-- Host: localhost    Database: tp_individual
-- ------------------------------------------------------
-- Server version	8.0.27

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
-- Table structure for table `categorias`
--

DROP TABLE IF EXISTS `categorias`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `categorias` (
  `id` int NOT NULL,
  `categoria` varchar(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categorias`
--

LOCK TABLES `categorias` WRITE;
/*!40000 ALTER TABLE `categorias` DISABLE KEYS */;
INSERT INTO `categorias` VALUES (1,'salud'),(2,'nutricion'),(3,'interés general'),(4,'filosofia'),(5,'informática'),(6,'reflexiones'),(7,'entrenamiento'),(8,'lorem ipsum'),(9,'ipsum lorem'),(10,'economía');
/*!40000 ALTER TABLE `categorias` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `eliminar_notas`
--

DROP TABLE IF EXISTS `eliminar_notas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `eliminar_notas` (
  `id` int NOT NULL AUTO_INCREMENT,
  `puede_eliminarse` varchar(2) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `eliminar_notas`
--

LOCK TABLES `eliminar_notas` WRITE;
/*!40000 ALTER TABLE `eliminar_notas` DISABLE KEYS */;
INSERT INTO `eliminar_notas` VALUES (1,'si'),(2,'no');
/*!40000 ALTER TABLE `eliminar_notas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `notas`
--

DROP TABLE IF EXISTS `notas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `notas` (
  `id` int NOT NULL AUTO_INCREMENT,
  `created_at` datetime NOT NULL,
  `updated_at` date DEFAULT NULL,
  `descripcion` varchar(1000) NOT NULL,
  `usuario_id` int NOT NULL,
  `eliminar_nota_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_usuarios_id_idx` (`usuario_id`),
  KEY `fk_eliminar_nota_id_idx` (`eliminar_nota_id`),
  CONSTRAINT `fk_eliminar_nota_id` FOREIGN KEY (`eliminar_nota_id`) REFERENCES `eliminar_notas` (`id`),
  CONSTRAINT `fk_usuarios_id` FOREIGN KEY (`usuario_id`) REFERENCES `usuarios` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `notas`
--

LOCK TABLES `notas` WRITE;
/*!40000 ALTER TABLE `notas` DISABLE KEYS */;
INSERT INTO `notas` VALUES (1,'2021-06-15 00:00:00',NULL,'Lorem ipsum dolor sit amet consectetur adipiscing elit, sapien velit aliquet viverra tristique parturient, odio commodo sem posuere nibh massa. Iaculis ultrices sapien primis viverra risus potenti vestibulum morbi et, molestie feugiat libero eu sed mattis class augue luctus nunc, consequat nisl cras sem enim suspendisse natoque aptent. Nostra cursus facilisis curae faucibus hendrerit iaculis congue, et urna vitae risus auctor nullam magna, dis torquent taciti malesuada cras viverra.',1,1),(2,'2021-05-20 00:00:00',NULL,'Lorem ipsum dolor sit amet consectetur adipiscing elit, sapien velit aliquet viverra tristique parturient, odio commodo sem posuere nibh massa. Iaculis ultrices sapien primis viverra risus potenti vestibulum morbi et, molestie feugiat libero eu sed mattis class augue luctus nunc, consequat nisl cras sem enim suspendisse natoque aptent. Nostra cursus facilisis curae faucibus hendrerit iaculis congue, et urna vitae risus auctor nullam magna, dis torquent taciti malesuada cras viverra.',2,1),(3,'2021-03-04 00:00:00','2021-03-06','Lorem ipsum dolor sit amet consectetur adipiscing elit, sapien velit aliquet viverra tristique parturient, odio commodo sem posuere nibh massa. Iaculis ultrices sapien primis viverra risus potenti vestibulum morbi et, molestie feugiat libero eu sed mattis class augue luctus nunc, consequat nisl cras sem enim suspendisse natoque aptent. Nostra cursus facilisis curae faucibus hendrerit iaculis congue, et urna vitae risus auctor nullam magna, dis torquent taciti malesuada cras viverra.',3,1),(4,'2021-01-23 00:00:00','2021-03-01','Lorem ipsum dolor sit amet consectetur adipiscing elit, sapien velit aliquet viverra tristique parturient, odio commodo sem posuere nibh massa. Iaculis ultrices sapien primis viverra risus potenti vestibulum morbi et, molestie feugiat libero eu sed mattis class augue luctus nunc, consequat nisl cras sem enim suspendisse natoque aptent. Nostra cursus facilisis curae faucibus hendrerit iaculis congue, et urna vitae risus auctor nullam magna, dis torquent taciti malesuada cras viverra.',4,2),(5,'2020-02-02 00:00:00','2021-02-03','Lorem ipsum dolor sit amet consectetur adipiscing elit, sapien velit aliquet viverra tristique parturient, odio commodo sem posuere nibh massa. Iaculis ultrices sapien primis viverra risus potenti vestibulum morbi et, molestie feugiat libero eu sed mattis class augue luctus nunc, consequat nisl cras sem enim suspendisse natoque aptent. Nostra cursus facilisis curae faucibus hendrerit iaculis congue, et urna vitae risus auctor nullam magna, dis torquent taciti malesuada cras viverra.',1,2),(6,'2020-04-05 00:00:00',NULL,'Lorem ipsum dolor sit amet consectetur adipiscing elit, sapien velit aliquet viverra tristique parturient, odio commodo sem posuere nibh massa. Iaculis ultrices sapien primis viverra risus potenti vestibulum morbi et, molestie feugiat libero eu sed mattis class augue luctus nunc, consequat nisl cras sem enim suspendisse natoque aptent. Nostra cursus facilisis curae faucibus hendrerit iaculis congue, et urna vitae risus auctor nullam magna, dis torquent taciti malesuada cras viverra.',8,1),(7,'2021-04-07 00:00:00','2021-10-12','Lorem ipsum dolor sit amet consectetur adipiscing elit, sapien velit aliquet viverra tristique parturient, odio commodo sem posuere nibh massa. Iaculis ultrices sapien primis viverra risus potenti vestibulum morbi et, molestie feugiat libero eu sed mattis class augue luctus nunc, consequat nisl cras sem enim suspendisse natoque aptent. Nostra cursus facilisis curae faucibus hendrerit iaculis congue, et urna vitae risus auctor nullam magna, dis torquent taciti malesuada cras viverra.',3,2),(8,'2020-10-20 00:00:00','2020-11-23','Lorem ipsum dolor sit amet consectetur adipiscing elit, sapien velit aliquet viverra tristique parturient, odio commodo sem posuere nibh massa. Iaculis ultrices sapien primis viverra risus potenti vestibulum morbi et, molestie feugiat libero eu sed mattis class augue luctus nunc, consequat nisl cras sem enim suspendisse natoque aptent. Nostra cursus facilisis curae faucibus hendrerit iaculis congue, et urna vitae risus auctor nullam magna, dis torquent taciti malesuada cras viverra.',9,2),(9,'2021-10-20 00:00:00','2021-11-04','Lorem ipsum dolor sit amet consectetur adipiscing elit, sapien velit aliquet viverra tristique parturient, odio commodo sem posuere nibh massa. Iaculis ultrices sapien primis viverra risus potenti vestibulum morbi et, molestie feugiat libero eu sed mattis class augue luctus nunc, consequat nisl cras sem enim suspendisse natoque aptent. Nostra cursus facilisis curae faucibus hendrerit iaculis congue, et urna vitae risus auctor nullam magna, dis torquent taciti malesuada cras viverra.',10,1),(10,'2020-10-10 00:00:00','2021-06-15','Lorem ipsum dolor sit amet consectetur adipiscing elit, sapien velit aliquet viverra tristique parturient, odio commodo sem posuere nibh massa. Iaculis ultrices sapien primis viverra risus potenti vestibulum morbi et, molestie feugiat libero eu sed mattis class augue luctus nunc, consequat nisl cras sem enim suspendisse natoque aptent. Nostra cursus facilisis curae faucibus hendrerit iaculis congue, et urna vitae risus auctor nullam magna, dis torquent taciti malesuada cras viverra.',5,1);
/*!40000 ALTER TABLE `notas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `notas_categorias`
--

DROP TABLE IF EXISTS `notas_categorias`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `notas_categorias` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nota_id` int NOT NULL,
  `categoria_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_nota_id_idx` (`nota_id`),
  KEY `fk_categoria_id_idx` (`categoria_id`),
  CONSTRAINT `fk_categoria_id` FOREIGN KEY (`categoria_id`) REFERENCES `categorias` (`id`),
  CONSTRAINT `fk_nota_id` FOREIGN KEY (`nota_id`) REFERENCES `notas` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `notas_categorias`
--

LOCK TABLES `notas_categorias` WRITE;
/*!40000 ALTER TABLE `notas_categorias` DISABLE KEYS */;
INSERT INTO `notas_categorias` VALUES (1,1,1),(2,1,4),(3,2,1),(4,3,3),(5,3,4),(6,4,4),(7,5,6),(8,6,2),(9,6,3),(10,7,1),(11,8,2),(12,8,9),(13,9,2),(14,9,5),(15,9,4),(16,10,1);
/*!40000 ALTER TABLE `notas_categorias` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuarios`
--

DROP TABLE IF EXISTS `usuarios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `usuarios` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(20) NOT NULL,
  `apellido` varchar(45) NOT NULL,
  `email` varchar(45) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email_UNIQUE` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuarios`
--

LOCK TABLES `usuarios` WRITE;
/*!40000 ALTER TABLE `usuarios` DISABLE KEYS */;
INSERT INTO `usuarios` VALUES (1,'santiago','juarez','santiago.juarez@gmail.com'),(2,'johny','lagraña','johny.lagrana@gmail.com'),(3,'jorge','aran','jorge_aran5@gmail.com'),(4,'maxi','ricalde','maxi.ricalde@gmail.com'),(5,'juan','aquino','juanaquino9@live.com'),(6,'juan','altamirano','juan_altamirano@gmail.com'),(7,'ezequiel','barrionuevo','ezebarrionuevo@gmail.com'),(8,'matias','juarez','matias.juarez@gmail.com');
/*!40000 ALTER TABLE `usuarios` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-11-13 12:00:37