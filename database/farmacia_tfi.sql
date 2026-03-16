-- MySQL dump 10.13  Distrib 8.0.43, for Win64 (x86_64)
--
-- Host: localhost    Database: farmacia_tfi
-- ------------------------------------------------------
-- Server version	8.0.43

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
-- Table structure for table `cliente`
--

DROP TABLE IF EXISTS `cliente`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cliente` (
  `idCliente` int NOT NULL,
  `Nombre` varchar(45) NOT NULL,
  `Apellido` varchar(45) NOT NULL,
  `DNI` int NOT NULL,
  `Dirección` varchar(45) NOT NULL,
  `Telefono` int NOT NULL,
  `Obra_Social_idObra_Social` int NOT NULL,
  PRIMARY KEY (`idCliente`),
  KEY `fk_Cliente_Obra_Social1_idx` (`Obra_Social_idObra_Social`),
  CONSTRAINT `fk_Cliente_Obra_Social1` FOREIGN KEY (`Obra_Social_idObra_Social`) REFERENCES `obra_social` (`IdObra_Social`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cliente`
--

LOCK TABLES `cliente` WRITE;
/*!40000 ALTER TABLE `cliente` DISABLE KEYS */;
INSERT INTO `cliente` VALUES (1,'Ana','Torres',30123456,'Av. Rivadavia 1234',1156781234,1),(2,'Luis','Gómez',28987654,'Calle 9 de Julio 456',1145678910,2),(3,'María','Fernández',31234567,'Av. San Martín 789',1134567890,3),(4,'Carlos','Pérez',29876543,'Calle Belgrano 321',1167890123,1),(5,'Lucía','Ramírez',30543210,'Av. Corrientes 654',1176543210,4),(6,'Jorge','López',28765432,'Calle Mitre 987',1154321098,2),(7,'Sofía','Martínez',31456789,'Av. Santa Fe 1111',1132109876,5),(8,'Diego','Suárez',29987654,'Calle Lavalle 222',1143210987,3),(9,'Valentina','García',30678901,'Av. Pueyrredón 333',1165432109,1),(10,'Federico','Castro',29543210,'Calle Moreno 444',1178901234,4),(11,'Camila','Domínguez',31345678,'Av. Córdoba 555',1134561234,2),(12,'Martín','Reyes',28876543,'Calle Alsina 666',1143215678,5),(13,'Paula','Molina',30765432,'Av. Callao 777',1156784321,3),(14,'Sebastián','Vega',29654321,'Calle Tucumán 888',1167893456,1),(15,'Florencia','Silva',31543210,'Av. Independencia 999',1176549876,4),(16,'Tomás','Navarro',29012345,'Calle Salta 1010',1132104567,2),(17,'Agustina','Cabrera',30876543,'Av. Entre Ríos 1112',1145678901,5),(18,'Ramiro','Sosa',29765432,'Calle Jujuy 1213',1154321987,3),(19,'Julieta','Ríos',31678901,'Av. La Plata 1314',1165432098,1),(20,'Nicolás','Ortega',29123456,'Calle Catamarca 1415',1178901987,4),(21,'Micaela','Luna',30987654,'Av. Mendoza 1516',1134567891,2),(22,'Gabriel','Moreno',29432109,'Calle Formosa 1617',1143210986,5),(23,'Rocío','Aguilar',31765432,'Av. Misiones 1718',1156781235,3),(24,'Facundo','Benítez',29210987,'Calle Chaco 1819',1167890124,1),(25,'Carolina','Herrera',31098765,'Av. San Juan 1920',1176543211,4),(26,'Matías','Delgado',29345678,'Calle Neuquén 2021',1132109877,2),(27,'Milagros','Ponce',31876543,'Av. Río de Janeiro 2122',1145678911,5),(28,'Bruno','Correa',29678901,'Calle Bolivia 2223',1154321099,3),(29,'Daniela','Villar',31123456,'Av. Brasil 2324',1165432100,1),(30,'Leandro','Funes',28901234,'Calle Perú 2425',1178901235,4),(31,'Mateo','López',32111222,'Av. Rivadavia 2100',115671234,3),(32,'Carla','López',31122334,'Calle Belgrano 1450',116782345,1),(33,'Joaquín','López',32987654,'Av. Independencia 3321',114563987,4),(34,'Milena','Gómez',33123456,'Calle Perú 2210',115432199,2),(35,'Fabián','Gómez',30991234,'Av. La Plata 998',116123854,5),(36,'Lara','Gómez',31567890,'Calle Alsina 1877',113789654,7),(37,'Luciano','Pérez',32234567,'Av. Santa Fe 3400',114562879,1),(38,'Rocío','Pérez',32876543,'Calle Castro Barros 221',115671923,6),(39,'Camilo','Pérez',33567812,'Av. Boedo 999',117894562,3),(40,'Marina','Fernández',29981234,'Calle México 1201',113987451,2),(41,'Gustavo','Fernández',31598712,'Av. Caseros 3300',114789654,4),(42,'Emilia','Fernández',29765412,'Calle Sucre 1123',116543871,1),(43,'Nicolás','Suárez',30871234,'Av. Córdoba 500',115678444,7),(44,'Abril','Suárez',31982345,'Av. Scalabrini 1770',114550912,3),(45,'Martín','García',32211233,'Calle Salta 1780',116708234,6),(46,'Paula','García',32789123,'Calle Brasil 2876',113405912,5),(47,'Tomás','García',33671234,'Av. Directorio 2200',115789432,4),(48,'Renata','Navarro',30234566,'Calle Miró 333',116700321,2),(49,'Agustín','Navarro',31765433,'Av. Eva Perón 4200',113456700,1),(50,'Julieta','Navarro',31890012,'Calle Aranguren 1870',114520309,3);
/*!40000 ALTER TABLE `cliente` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `detalle_receta`
--

DROP TABLE IF EXISTS `detalle_receta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `detalle_receta` (
  `idDetalle_receta` int NOT NULL,
  `Medicamento` varchar(45) NOT NULL,
  `Frecuencia` varchar(45) NOT NULL,
  `Duracion` time NOT NULL,
  `Dosis` varchar(45) NOT NULL,
  `Receta_idReceta` int NOT NULL,
  PRIMARY KEY (`idDetalle_receta`,`Receta_idReceta`),
  KEY `fk_Detalle_receta_Receta1_idx` (`Receta_idReceta`),
  CONSTRAINT `fk_Detalle_receta_Receta1` FOREIGN KEY (`Receta_idReceta`) REFERENCES `receta` (`IdReceta`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `detalle_receta`
--

LOCK TABLES `detalle_receta` WRITE;
/*!40000 ALTER TABLE `detalle_receta` DISABLE KEYS */;
INSERT INTO `detalle_receta` VALUES (1,'Ibuprofeno','Cada 8 horas','08:00:00','400mg',1),(2,'Paracetamol','Cada 6 horas','06:00:00','500mg',1),(3,'Amoxicilina','Cada 12 horas','12:00:00','250mg',2),(4,'Omeprazol','Una vez al día','24:00:00','20mg',2),(5,'Aspirina','Cada 8 horas','08:00:00','100mg',3),(6,'Metformina','Cada 12 horas','12:00:00','850mg',3),(7,'Losartán','Una vez al día','24:00:00','50mg',4),(8,'Enalapril','Cada 12 horas','12:00:00','10mg',4),(9,'Levotiroxina','Una vez al día','24:00:00','100mcg',5),(10,'Clonazepam','Cada 12 horas','12:00:00','0.5mg',5),(11,'Sertralina','Una vez al día','24:00:00','50mg',6),(12,'Diclofenac','Cada 12 horas','12:00:00','75mg',6),(13,'Ranitidina','Cada 12 horas','12:00:00','150mg',7),(14,'Atorvastatina','Una vez al día','24:00:00','20mg',7),(15,'Simvastatina','Una vez al día','24:00:00','10mg',8),(16,'Loratadina','Cada 24 horas','24:00:00','10mg',8),(17,'Salbutamol','Cada 6 horas','06:00:00','2 puff',9),(18,'Insulina NPH','Cada 12 horas','12:00:00','10u',9),(19,'Furosemida','Cada 8 horas','08:00:00','40mg',10),(20,'Ketorolaco','Cada 6 horas','06:00:00','10mg',10),(21,'Omeprazol','Una vez al día','24:00:00','40mg',11),(22,'Ibuprofeno Gel','Cada 8 horas','08:00:00','Aplicación tópica',11),(23,'Paracetamol Jarabe','Cada 6 horas','06:00:00','10ml',12),(24,'Amoxicilina Suspensión','Cada 8 horas','08:00:00','5ml',12),(25,'Vitamina C','Una vez al día','24:00:00','500mg',13),(26,'Hierro Ferroso','Cada 12 horas','12:00:00','100mg',13),(27,'Calcio + Vitamina D','Una vez al día','24:00:00','1 tableta',14),(28,'Melatonina','Antes de dormir','24:00:00','5mg',14),(29,'Benzocaína Spray','Cada 4 horas','04:00:00','2 aplicaciones',15),(30,'Dexametasona','Cada 12 horas','12:00:00','4mg',15),(31,'Metformina','Cada 12 horas','12:00:00','1 tableta',21),(32,'Losartán','Cada 24 horas','24:00:00','1 tableta',22),(33,'Amoxicilina','Cada 08 horas','08:00:00','1 tableta',23),(34,'Enalapril','Cada 12 horas','12:00:00','1 tableta',23),(35,'Omeprazol','Cada 24 horas','24:00:00','1 tableta',24),(36,'Levotiroxina','Cada 08 horas','08:00:00','1 tableta',24),(37,'Clonazepam','Cada 12 horas','12:00:00','1 tableta',25),(38,'Metformina','Cada 24 horas','24:00:00','1 tableta',26),(39,'Sertralina','Cada 08 horas','08:00:00','1 tableta',26),(40,'Losartán','Cada 12 horas','12:00:00','1 tableta',27),(41,'Ranitidina','Cada 24 horas','24:00:00','1 tableta',28),(42,'Enalapril','Cada 08 horas','08:00:00','1 tableta',28),(43,'Levotiroxina','Cada 12 horas','12:00:00','1 tableta',29),(44,'Atorvastatina','Cada 24 horas','24:00:00','1 tableta',29),(45,'Clonazepam','Cada 08 horas','08:00:00','1 tableta',30),(46,'Simvastatina','Cada 12 horas','12:00:00','1 tableta',30),(47,'Sertralina','Cada 24 horas','24:00:00','1 tableta',31),(48,'Salbutamol','Cada 08 horas','08:00:00','1 tableta',31),(49,'Diclofenac','Cada 12 horas','12:00:00','1 tableta',32),(50,'Insulina','Cada 24 horas','24:00:00','1 tableta',32),(51,'Ranitidina','Cada 08 horas','08:00:00','1 tableta',33),(52,'Furosemida','Cada 12 horas','12:00:00','1 tableta',33),(53,'Atorvastatina','Cada 24 horas','24:00:00','1 tableta',34),(54,'Ketorolaco','Cada 08 horas','08:00:00','1 tableta',34),(55,'Simvastatina','Cada 12 horas','12:00:00','1 tableta',35),(56,'Metformina','Cada 24 horas','24:00:00','1 tableta',35),(57,'Sertralina','Cada 08 horas','08:00:00','1 tableta',36),(58,'Insulina','Cada 12 horas','12:00:00','1 tableta',36),(59,'Salbutamol','Cada 24 horas','24:00:00','1 tableta',37),(60,'Amoxicilina','Cada 08 horas','08:00:00','1 tableta',37),(61,'Furosemida','Cada 12 horas','12:00:00','1 tableta',38),(62,'Omeprazol','Cada 24 horas','24:00:00','1 tableta',38),(63,'Ketorolaco','Cada 08 horas','08:00:00','1 tableta',39),(64,'Metformina','Cada 12 horas','12:00:00','1 tableta',39),(65,'Sertralina','Cada 24 horas','24:00:00','1 tableta',40),(66,'Diclofenac','Cada 08 horas','08:00:00','1 tableta',40),(67,'Insulina','Cada 12 horas','12:00:00','1 tableta',41),(68,'Amoxicilina','Cada 24 horas','24:00:00','1 tableta',41),(69,'Furosemida','Cada 08 horas','08:00:00','1 tableta',42),(70,'Losartán','Cada 24 horas','24:00:00','1 tableta',46),(71,'Metformina','Cada 12 horas','12:00:00','1 tableta',46),(72,'Sertralina','Cada 24 horas','24:00:00','1 tableta',47),(73,'Clonazepam','Cada 12 horas','12:00:00','1 tableta',47);
/*!40000 ALTER TABLE `detalle_receta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `detalle_venta`
--

DROP TABLE IF EXISTS `detalle_venta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `detalle_venta` (
  `iddetalle_venta` int NOT NULL,
  `nombre` varchar(45) NOT NULL,
  `cantidad` int NOT NULL,
  `precio_unitario` int NOT NULL,
  `descuento_item` varchar(45) NOT NULL,
  `requiere_receta` varchar(45) NOT NULL,
  `Venta_idVenta` int NOT NULL,
  PRIMARY KEY (`iddetalle_venta`),
  KEY `fk_detalle_venta_Venta1_idx` (`Venta_idVenta`),
  CONSTRAINT `fk_detalle_venta_Venta1` FOREIGN KEY (`Venta_idVenta`) REFERENCES `venta` (`IdVenta`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `detalle_venta`
--

LOCK TABLES `detalle_venta` WRITE;
/*!40000 ALTER TABLE `detalle_venta` DISABLE KEYS */;
INSERT INTO `detalle_venta` VALUES (1,'Ibuprofeno 400mg',2,950,'10%','No',1),(2,'Paracetamol 500mg',1,870,'5%','No',1),(3,'Amoxicilina 250mg',1,1200,'15%','Sí',2),(4,'Omeprazol 20mg',2,1100,'10%','Sí',2),(5,'Aspirina 100mg',3,780,'0%','No',3),(6,'Metformina 850mg',1,1350,'20%','Sí',3),(7,'Losartán 50mg',2,1450,'10%','Sí',4),(8,'Enalapril 10mg',1,980,'5%','Sí',4),(9,'Levotiroxina 100mcg',1,1600,'10%','Sí',5),(10,'Clonazepam 0.5mg',2,1750,'15%','Sí',5),(11,'Sertralina 50mg',1,1850,'10%','Sí',6),(12,'Diclofenac 75mg',2,990,'0%','No',6),(13,'Ranitidina 150mg',1,1050,'5%','Sí',7),(14,'Atorvastatina 20mg',1,1950,'10%','Sí',7),(15,'Simvastatina 10mg',2,880,'10%','Sí',8),(16,'Loratadina 10mg',1,720,'0%','No',8),(17,'Salbutamol Inhalador',1,2100,'20%','Sí',9),(18,'Insulina NPH',1,3200,'15%','Sí',9),(19,'Furosemida 40mg',2,950,'5%','Sí',10),(20,'Ketorolaco 10mg',1,1150,'10%','Sí',10),(21,'Omeprazol 40mg',1,1250,'10%','Sí',11),(22,'Ibuprofeno Gel',2,890,'0%','No',11),(23,'Paracetamol Jarabe',1,980,'5%','No',12),(24,'Amoxicilina Suspensión',1,1320,'15%','Sí',12),(25,'Vitamina C 500mg',3,650,'0%','No',13),(26,'Hierro Ferroso 100mg',2,870,'10%','Sí',13),(27,'Calcio + Vitamina D',1,1450,'5%','No',14),(28,'Melatonina 5mg',1,1100,'10%','No',14),(29,'Benzocaína Spray',2,950,'0%','No',15),(30,'Dexametasona 4mg',1,1250,'15%','Sí',15),(31,'Ibuprofeno 400mg',1,950,'5%','No',16),(32,'Paracetamol 500mg',2,870,'10%','No',16),(33,'Amoxicilina 250mg',1,1200,'20%','Sí',17),(34,'Omeprazol 20mg',1,1100,'10%','Sí',17),(35,'Aspirina 100mg',2,780,'0%','No',18),(36,'Metformina 850mg',1,1350,'10%','Sí',18),(37,'Losartán 50mg',1,1450,'5%','Sí',19),(38,'Enalapril 10mg',2,980,'10%','Sí',19),(39,'Levotiroxina 100mcg',1,1600,'15%','Sí',20),(40,'Clonazepam 0.5mg',1,1750,'10%','Sí',20),(41,'Ibuprofeno 400mg',1,950,'0%','No',31),(42,'Metformina 850mg',1,1350,'0%','Sí',31),(43,'Paracetamol 500mg',2,870,'5%','No',32),(44,'Losartán 50mg',2,1450,'5%','Sí',32),(45,'Amoxicilina 250mg',3,1200,'10%','Sí',33),(46,'Enalapril 10mg',1,980,'10%','Sí',33),(47,'Omeprazol 20mg',1,1100,'15%','Sí',34),(48,'Levotiroxina 100mcg',2,1600,'0%','Sí',34),(49,'Aspirina 100mg',2,780,'20%','No',35),(50,'Clonazepam 0.5mg',1,1750,'5%','Sí',35),(51,'Metformina 850mg',3,1350,'0%','Sí',36),(52,'Sertralina 50mg',2,1850,'10%','Sí',36),(53,'Losartán 50mg',1,1450,'5%','Sí',37),(54,'Diclofenac 75mg',1,990,'15%','No',37),(55,'Enalapril 10mg',2,980,'10%','Sí',38),(56,'Ranitidina 150mg',2,1050,'0%','Sí',38),(57,'Levotiroxina 100mcg',3,1600,'15%','Sí',39),(58,'Atorvastatina 20mg',1,1950,'5%','Sí',39),(59,'Clonazepam 0.5mg',1,1750,'0%','Sí',40),(60,'Simvastatina 10mg',2,880,'10%','Sí',40),(61,'Sertralina 50mg',2,1850,'20%','Sí',41),(62,'Loratadina 10mg',1,720,'0%','No',41),(63,'Diclofenac 75mg',3,990,'5%','No',42),(64,'Salbutamol Inhalador',2,2100,'5%','Sí',42),(65,'Ranitidina 150mg',1,1050,'10%','Sí',43),(66,'Insulina NPH',1,3200,'10%','Sí',43),(67,'Atorvastatina 20mg',2,1950,'15%','Sí',44),(68,'Furosemida 40mg',1,950,'0%','Sí',44),(69,'Simvastatina 10mg',3,880,'20%','Sí',45),(70,'Ketorolaco 10mg',1,1150,'5%','Sí',45),(71,'Loratadina 10mg',1,720,'0%','No',46),(72,'Ibuprofeno 400mg',2,950,'10%','No',46),(73,'Salbutamol Inhalador',2,2100,'5%','Sí',47),(74,'Paracetamol 500mg',1,870,'15%','No',47),(75,'Insulina NPH',1,3200,'10%','Sí',48),(76,'Amoxicilina 250mg',2,1200,'0%','Sí',48),(77,'Furosemida 40mg',2,950,'15%','Sí',49),(78,'Omeprazol 20mg',1,1100,'5%','Sí',49),(79,'Ketorolaco 10mg',1,1150,'0%','Sí',50),(80,'Metformina 850mg',2,1350,'10%','Sí',50),(81,'Ibuprofeno 400mg',2,950,'5%','No',51),(82,'Losartán 50mg',1,1450,'10%','Sí',51),(83,'Paracetamol 500mg',3,870,'15%','No',52),(84,'Enalapril 10mg',1,980,'0%','Sí',52),(85,'Amoxicilina 250mg',1,1200,'20%','Sí',53),(86,'Levotiroxina 100mcg',2,1600,'5%','Sí',53),(87,'Omeprazol 20mg',2,1100,'10%','Sí',54),(88,'Clonazepam 0.5mg',1,1750,'0%','Sí',54),(89,'Aspirina 100mg',1,780,'5%','No',55),(90,'Sertralina 50mg',2,1850,'10%','Sí',55),(91,'Metformina 850mg',3,1350,'15%','Sí',56),(92,'Diclofenac 75mg',1,990,'0%','No',56),(93,'Losartán 50mg',1,1450,'5%','Sí',57),(94,'Ranitidina 150mg',1,1050,'10%','Sí',57),(95,'Enalapril 10mg',2,980,'0%','Sí',58),(96,'Atorvastatina 20mg',1,1950,'5%','Sí',58),(97,'Levotiroxina 100mcg',1,1600,'10%','Sí',59),(98,'Simvastatina 10mg',2,880,'0%','Sí',59),(99,'Clonazepam 0.5mg',1,1750,'5%','Sí',60),(100,'Loratadina 10mg',1,720,'10%','No',60),(101,'Sertralina 50mg',2,1850,'0%','Sí',61),(102,'Salbutamol Inhalador',1,2100,'5%','Sí',61),(103,'Diclofenac 75mg',3,990,'10%','No',62),(104,'Insulina NPH',1,3200,'0%','Sí',62),(105,'Ranitidina 150mg',1,1050,'5%','Sí',63),(106,'Furosemida 40mg',2,950,'10%','Sí',63),(107,'Atorvastatina 20mg',2,1950,'0%','Sí',64),(108,'Ketorolaco 10mg',1,1150,'5%','Sí',64),(109,'Simvastatina 10mg',1,880,'10%','Sí',65),(110,'Metformina 850mg',2,1350,'0%','Sí',65),(111,'Loratadina 10mg',1,720,'5%','No',66),(112,'Ibuprofeno 400mg',1,950,'10%','No',66),(113,'Salbutamol Inhalador',2,2100,'0%','Sí',67),(114,'Paracetamol 500mg',2,870,'5%','No',67),(115,'Insulina NPH',1,3200,'10%','Sí',68),(116,'Amoxicilina 250mg',1,1200,'0%','Sí',68),(117,'Furosemida 40mg',1,950,'5%','Sí',69),(118,'Omeprazol 20mg',2,1100,'10%','Sí',69),(119,'Ketorolaco 10mg',1,1150,'0%','Sí',70),(120,'Metformina 850mg',2,1350,'5%','Sí',70),(121,'Ibuprofeno 400mg',1,950,'10%','No',71),(122,'Losartán 50mg',2,1450,'0%','Sí',71),(123,'Paracetamol 500mg',3,870,'5%','No',72),(124,'Enalapril 10mg',1,980,'10%','Sí',72),(125,'Amoxicilina 250mg',2,1200,'0%','Sí',73),(126,'Levotiroxina 100mcg',1,1600,'5%','Sí',73),(127,'Omeprazol 20mg',2,1100,'10%','Sí',74),(128,'Clonazepam 0.5mg',1,1750,'0%','Sí',74),(129,'Aspirina 100mg',1,780,'5%','No',75),(130,'Sertralina 50mg',2,1850,'10%','Sí',75),(131,'Metformina 850mg',3,1350,'0%','Sí',76),(132,'Diclofenac 75mg',1,990,'5%','No',76),(133,'Losartán 50mg',1,1450,'10%','Sí',77),(134,'Ranitidina 150mg',1,1050,'0%','Sí',77),(135,'Enalapril 10mg',2,980,'5%','Sí',78),(136,'Atorvastatina 20mg',1,1950,'10%','Sí',78),(137,'Levotiroxina 100mcg',1,1600,'0%','Sí',79),(138,'Simvastatina 10mg',2,880,'5%','Sí',79),(139,'Clonazepam 0.5mg',1,1750,'10%','Sí',80),(140,'Loratadina 10mg',1,720,'0%','No',80),(141,'Ibuprofeno 400mg',1,950,'0%','No',81),(142,'Paracetamol 500mg',1,870,'0%','No',81),(143,'Losartán 50mg',1,1450,'5%','Sí',82),(144,'Metformina 850mg',2,1350,'0%','Sí',82),(145,'Sertralina 50mg',1,1850,'10%','Sí',83);
/*!40000 ALTER TABLE `detalle_venta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `distribuidor`
--

DROP TABLE IF EXISTS `distribuidor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `distribuidor` (
  `idDistribuidor` int NOT NULL,
  `Nombre` varchar(45) NOT NULL,
  `dirección` varchar(45) NOT NULL,
  `teleono` int NOT NULL,
  PRIMARY KEY (`idDistribuidor`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `distribuidor`
--

LOCK TABLES `distribuidor` WRITE;
/*!40000 ALTER TABLE `distribuidor` DISABLE KEYS */;
INSERT INTO `distribuidor` VALUES (1,'Distribuidora Central Pharma','Av. Rivadavia 1023',1156789012),(2,'Medicor Logística','Calle 9 de Julio 2045',1143210987),(3,'Salud Express S.A.','Av. San Martín 3567',1134567890),(4,'Farmalog Distribuciones','Calle Belgrano 4789',1178901234),(5,'BioRed Argentina','Av. Corrientes 5890',1165432109);
/*!40000 ALTER TABLE `distribuidor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `distribuidor_has_medicamento`
--

DROP TABLE IF EXISTS `distribuidor_has_medicamento`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `distribuidor_has_medicamento` (
  `Distribuidor_idDistribuidor` int NOT NULL,
  `Medicamento_idMedicamento` int NOT NULL,
  PRIMARY KEY (`Distribuidor_idDistribuidor`,`Medicamento_idMedicamento`),
  KEY `fk_Distribuidor_has_Medicamento_Medicamento1_idx` (`Medicamento_idMedicamento`),
  KEY `fk_Distribuidor_has_Medicamento_Distribuidor1_idx` (`Distribuidor_idDistribuidor`),
  CONSTRAINT `fk_Distribuidor_has_Medicamento_Distribuidor1` FOREIGN KEY (`Distribuidor_idDistribuidor`) REFERENCES `distribuidor` (`idDistribuidor`),
  CONSTRAINT `fk_Distribuidor_has_Medicamento_Medicamento1` FOREIGN KEY (`Medicamento_idMedicamento`) REFERENCES `medicamento` (`IdMedicamento`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `distribuidor_has_medicamento`
--

LOCK TABLES `distribuidor_has_medicamento` WRITE;
/*!40000 ALTER TABLE `distribuidor_has_medicamento` DISABLE KEYS */;
INSERT INTO `distribuidor_has_medicamento` VALUES (1,1),(1,2),(1,3),(1,4),(1,5),(1,6),(2,7),(2,8),(2,9),(2,10),(2,11),(2,12),(3,13),(3,14),(3,15),(3,16),(3,17),(3,18),(4,19),(4,20),(4,21),(4,22),(4,23),(4,24),(5,25),(5,26),(5,27),(5,28),(5,29),(5,30);
/*!40000 ALTER TABLE `distribuidor_has_medicamento` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `empleado`
--

DROP TABLE IF EXISTS `empleado`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `empleado` (
  `idEmpleado` int NOT NULL,
  `Nombre` varchar(45) NOT NULL,
  `Apellido` varchar(45) NOT NULL,
  `Sueldo` int NOT NULL,
  `DNI` int NOT NULL,
  `Cargo` varchar(45) NOT NULL,
  PRIMARY KEY (`idEmpleado`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `empleado`
--

LOCK TABLES `empleado` WRITE;
/*!40000 ALTER TABLE `empleado` DISABLE KEYS */;
INSERT INTO `empleado` VALUES (1,'Lucía','Paredes',180000,30123456,'farmaceutico'),(2,'Marcos','Gutiérrez',145000,28987654,'empleado_de_comercio'),(3,'Sofía','López',160000,31234567,'auxiliar medico'),(4,'Diego','Martínez',185000,29876543,'farmaceutico'),(5,'Camila','Fernández',150000,30543210,'empleado_de_comercio'),(6,'Tomás','Ramírez',155000,28765432,'auxiliar medico'),(7,'Valentina','Suárez',190000,31456789,'farmaceutico'),(8,'Julián','Gómez',148000,29987654,'empleado_de_comercio'),(9,'Agustina','Reyes',158000,30678901,'auxiliar medico'),(10,'Federico','Silva',175000,29543210,'farmaceutico'),(11,'Brenda','Moreno',152000,31345678,'empleado_de_comercio'),(12,'Nicolás','Vega',162000,28876543,'auxiliar medico');
/*!40000 ALTER TABLE `empleado` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `laboratorio`
--

DROP TABLE IF EXISTS `laboratorio`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `laboratorio` (
  `idLaboratorio` int NOT NULL,
  `Nombre` varchar(45) NOT NULL,
  `Dirección` varchar(45) NOT NULL,
  `telefono` int NOT NULL,
  PRIMARY KEY (`idLaboratorio`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `laboratorio`
--

LOCK TABLES `laboratorio` WRITE;
/*!40000 ALTER TABLE `laboratorio` DISABLE KEYS */;
INSERT INTO `laboratorio` VALUES (1,'Laboratorios Bagó','Av. Santa Fe 3456',1156789012),(2,'Roemmers S.A.','Calle Córdoba 789',1143210987),(3,'Elea Phoenix','Av. Rivadavia 1234',1134567890),(4,'Gador S.A.','Calle Belgrano 456',1178901234),(5,'Richmond Pharma','Av. San Martín 987',1165432109);
/*!40000 ALTER TABLE `laboratorio` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `laboratorio_has_distribuidor`
--

DROP TABLE IF EXISTS `laboratorio_has_distribuidor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `laboratorio_has_distribuidor` (
  `Laboratorio_idLaboratorio` int NOT NULL,
  `Distribuidor_idDistribuidor` int NOT NULL,
  PRIMARY KEY (`Laboratorio_idLaboratorio`,`Distribuidor_idDistribuidor`),
  KEY `fk_Laboratorio_has_Distribuidor_Distribuidor1_idx` (`Distribuidor_idDistribuidor`),
  KEY `fk_Laboratorio_has_Distribuidor_Laboratorio_idx` (`Laboratorio_idLaboratorio`),
  CONSTRAINT `fk_Laboratorio_has_Distribuidor_Distribuidor1` FOREIGN KEY (`Distribuidor_idDistribuidor`) REFERENCES `distribuidor` (`idDistribuidor`),
  CONSTRAINT `fk_Laboratorio_has_Distribuidor_Laboratorio` FOREIGN KEY (`Laboratorio_idLaboratorio`) REFERENCES `laboratorio` (`idLaboratorio`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `laboratorio_has_distribuidor`
--

LOCK TABLES `laboratorio_has_distribuidor` WRITE;
/*!40000 ALTER TABLE `laboratorio_has_distribuidor` DISABLE KEYS */;
INSERT INTO `laboratorio_has_distribuidor` VALUES (1,1),(2,1),(4,1),(1,2),(3,2),(5,2),(1,3),(3,3),(4,3),(2,4),(4,4),(5,4),(2,5),(3,5),(5,5);
/*!40000 ALTER TABLE `laboratorio_has_distribuidor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `medicamento`
--

DROP TABLE IF EXISTS `medicamento`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `medicamento` (
  `idMedicamento` int NOT NULL,
  `Nombre` varchar(45) NOT NULL,
  `forma_farmaceutica` varchar(45) NOT NULL,
  `requiere_receta` varchar(45) NOT NULL,
  `fecha_venc` date NOT NULL,
  `stock` int NOT NULL,
  `precio` int NOT NULL,
  `Venta_idVenta` int NOT NULL,
  PRIMARY KEY (`idMedicamento`),
  KEY `fk_Medicamento_Venta1_idx` (`Venta_idVenta`),
  CONSTRAINT `fk_Medicamento_Venta1` FOREIGN KEY (`Venta_idVenta`) REFERENCES `venta` (`IdVenta`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `medicamento`
--

LOCK TABLES `medicamento` WRITE;
/*!40000 ALTER TABLE `medicamento` DISABLE KEYS */;
INSERT INTO `medicamento` VALUES (1,'Ibuprofeno 400mg','Tableta','No','2026-03-15',33,950,1),(2,'Paracetamol 500mg','Tableta','No','2026-05-10',31,870,2),(3,'Amoxicilina 250mg','Cápsula','Sí','2026-02-28',55,1200,3),(4,'Omeprazol 20mg','Cápsula','Sí','2026-04-20',83,1100,4),(5,'Aspirina 100mg','Tableta','No','2026-06-30',46,780,5),(6,'Metformina 850mg','Tableta','Sí','2026-07-15',86,1350,6),(7,'Losartán 50mg','Tableta','Sí','2026-08-01',88,1450,7),(8,'Enalapril 10mg','Tableta','Sí','2026-09-10',84,980,8),(9,'Levotiroxina 100mcg','Tableta','Sí','2026-10-05',56,1600,9),(10,'Clonazepam 0.5mg','Tableta','Sí','2026-11-30',27,1750,10),(11,'Sertralina 50mg','Tableta','Sí','2026-12-20',68,1850,11),(12,'Diclofenac 75mg','Tableta','No','2027-01-15',59,990,12),(13,'Ranitidina 150mg','Tableta','Sí','2027-02-28',89,1050,13),(14,'Atorvastatina 20mg','Tableta','Sí','2027-03-10',68,1950,14),(15,'Simvastatina 10mg','Tableta','Sí','2027-04-25',74,880,15),(16,'Loratadina 10mg','Tableta','No','2027-05-30',63,720,16),(17,'Salbutamol Inhalador','Inhalador','Sí','2027-06-15',95,2100,17),(18,'Insulina NPH','Inyectable','Sí','2027-07-20',84,3200,18),(19,'Furosemida 40mg','Tableta','Sí','2027-08-10',36,950,19),(20,'Ketorolaco 10mg','Tableta','Sí','2027-09-05',27,1150,20),(21,'Omeprazol 40mg','Cápsula','Sí','2027-10-01',28,1250,21),(22,'Ibuprofeno Gel','Gel tópico','No','2027-11-15',59,890,22),(23,'Paracetamol Jarabe','Jarabe','No','2027-12-10',8,980,23),(24,'Amoxicilina Suspensión','Suspensión','Sí','2028-01-05',69,1320,24),(25,'Vitamina C 500mg','Tableta','No','2028-02-20',17,650,25),(26,'Hierro Ferroso 100mg','Tableta','Sí','2028-03-30',79,870,26),(27,'Calcio + Vitamina D','Tableta','No','2028-04-25',41,1450,27),(28,'Melatonina 5mg','Tableta','No','2028-05-15',72,1100,28),(29,'Benzocaína Spray','Spray','No','2028-06-10',32,950,29),(30,'Dexametasona 4mg','Inyectable','Sí','2028-07-01',49,1250,30);
/*!40000 ALTER TABLE `medicamento` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `obra_social`
--

DROP TABLE IF EXISTS `obra_social`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `obra_social` (
  `idObra_Social` int NOT NULL,
  `Nombre` varchar(45) DEFAULT NULL,
  `Descuento` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idObra_Social`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `obra_social`
--

LOCK TABLES `obra_social` WRITE;
/*!40000 ALTER TABLE `obra_social` DISABLE KEYS */;
INSERT INTO `obra_social` VALUES (1,'PAMI','80%'),(2,'OSDE','70%'),(3,'Swiss Medical','60%'),(4,'IOMA','50%'),(5,'Medicus','65%'),(6,'Galeno','55%'),(7,'Accord Salud','75%');
/*!40000 ALTER TABLE `obra_social` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `producto`
--

DROP TABLE IF EXISTS `producto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `producto` (
  `idProducto` int NOT NULL,
  `Nombre` varchar(45) NOT NULL,
  `Precio` int NOT NULL,
  `Stock` varchar(45) NOT NULL,
  `fecha_venc` date NOT NULL,
  `Proveedor_idProveedor` int NOT NULL,
  PRIMARY KEY (`idProducto`),
  KEY `fk_Producto_Proveedor1_idx` (`Proveedor_idProveedor`),
  CONSTRAINT `fk_Producto_Proveedor1` FOREIGN KEY (`Proveedor_idProveedor`) REFERENCES `proveedor` (`IdProveedor`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `producto`
--

LOCK TABLES `producto` WRITE;
/*!40000 ALTER TABLE `producto` DISABLE KEYS */;
INSERT INTO `producto` VALUES (1,'Ibuprofeno 400mg',950,'Disponible','2026-03-15',1),(2,'Paracetamol 500mg',870,'Disponible','2026-05-10',2),(3,'Amoxicilina 250mg',1200,'Disponible','2026-02-28',3),(4,'Omeprazol 20mg',1100,'Disponible','2026-04-20',1),(5,'Aspirina 100mg',780,'Disponible','2026-06-30',2),(6,'Metformina 850mg',1350,'Disponible','2026-07-15',3),(7,'Losartán 50mg',1450,'Disponible','2026-08-01',1),(8,'Enalapril 10mg',980,'Disponible','2026-09-10',2),(9,'Levotiroxina 100mcg',1600,'Disponible','2026-10-05',3),(10,'Clonazepam 0.5mg',1750,'Disponible','2026-11-30',1),(11,'Sertralina 50mg',1850,'Disponible','2026-12-20',2),(12,'Diclofenac 75mg',990,'Disponible','2027-01-15',3),(13,'Ranitidina 150mg',1050,'Disponible','2027-02-28',1),(14,'Atorvastatina 20mg',1950,'Disponible','2027-03-10',2),(15,'Simvastatina 10mg',880,'Disponible','2027-04-25',3),(16,'Loratadina 10mg',720,'Disponible','2027-05-30',1),(17,'Salbutamol Inhalador',2100,'Disponible','2027-06-15',2),(18,'Insulina NPH',3200,'Disponible','2027-07-20',3),(19,'Furosemida 40mg',950,'Disponible','2027-08-10',1),(20,'Ketorolaco 10mg',1150,'Disponible','2027-09-05',2),(21,'Omeprazol 40mg',1250,'Disponible','2027-10-01',3),(22,'Ibuprofeno Gel',890,'Disponible','2027-11-15',1),(23,'Paracetamol Jarabe',980,'Disponible','2027-12-10',2),(24,'Amoxicilina Suspensión',1320,'Disponible','2028-01-05',3),(25,'Vitamina C 500mg',650,'Disponible','2028-02-20',1),(26,'Hierro Ferroso 100mg',870,'Disponible','2028-03-30',2),(27,'Calcio + Vitamina D',1450,'Disponible','2028-04-25',3),(28,'Melatonina 5mg',1100,'Disponible','2028-05-15',1),(29,'Benzocaína Spray',950,'Disponible','2028-06-10',2),(30,'Dexametasona 4mg',1250,'Disponible','2028-07-01',3),(31,'Alcohol en gel 250ml',650,'Disponible','2027-01-01',1),(32,'Toallitas húmedas x50',720,'Disponible','2027-06-01',2),(33,'Protector solar FPS50',2100,'Disponible','2026-12-01',3),(34,'Shampoo anticaspa 400ml',1450,'Disponible','2027-03-01',1),(35,'Pasta dental fluor x90g',890,'Disponible','2027-05-01',2),(36,'Cepillo de dientes adulto',450,'Disponible','2028-01-01',3),(37,'Curitas x20 unidades',380,'Disponible','2028-06-01',1),(38,'Termómetro digital',1850,'Disponible','2029-01-01',2),(39,'Vitamina C 500mg',650,'Disponible','2028-02-20',3),(40,'Calcio + Vitamina D',1450,'Disponible','2028-04-25',1),(41,'Melatonina 5mg',1100,'Disponible','2028-05-15',2),(42,'Colágeno hidrolizado',2200,'Disponible','2027-11-01',3),(43,'Crema hidratante facial',1800,'Disponible','2027-08-01',1),(44,'Desodorante roll-on',950,'Disponible','2027-09-01',2),(45,'Jabón neutro x125g',430,'Disponible','2028-03-01',3),(46,'Aceite de ricino',980,'Disponible','2027-12-01',1),(47,'Algodón x100g',390,'Disponible','2028-01-01',2),(48,'Gasas estériles x10',520,'Disponible','2028-02-01',3),(49,'Alcohol 70% x500ml',780,'Disponible','2027-10-01',1),(50,'Guantes descartables x10',650,'Disponible','2028-04-01',2),(51,'Tijera de primeros auxilios',1150,'Disponible','2029-01-01',3),(52,'Preservativos x3 unidades',480,'Disponible','2028-06-01',1),(53,'Test de embarazo',1350,'Disponible','2028-07-01',2),(54,'Solución fisiológica 500ml',890,'Disponible','2027-11-01',3),(55,'Bálsamo labial hidratante',670,'Disponible','2028-01-01',1),(56,'Peine plástico antiséptico',300,'Disponible','2029-01-01',2),(57,'Esparadrapo hipoalergénico',560,'Disponible','2028-08-01',3),(58,'Crema para pañalitis',980,'Disponible','2027-09-01',1),(59,'Spray nasal salino',1150,'Disponible','2028-03-01',2),(60,'Gotas para ojos lubricantes',1250,'Disponible','2028-05-01',3);
/*!40000 ALTER TABLE `producto` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `producto_has_venta`
--

DROP TABLE IF EXISTS `producto_has_venta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `producto_has_venta` (
  `Producto_idProducto` int NOT NULL,
  `Venta_idVenta` int NOT NULL,
  PRIMARY KEY (`Producto_idProducto`,`Venta_idVenta`),
  KEY `fk_Producto_has_Venta_Venta1_idx` (`Venta_idVenta`),
  KEY `fk_Producto_has_Venta_Producto1_idx` (`Producto_idProducto`),
  CONSTRAINT `fk_Producto_has_Venta_Producto1` FOREIGN KEY (`Producto_idProducto`) REFERENCES `producto` (`idProducto`),
  CONSTRAINT `fk_Producto_has_Venta_Venta1` FOREIGN KEY (`Venta_idVenta`) REFERENCES `venta` (`IdVenta`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `producto_has_venta`
--

LOCK TABLES `producto_has_venta` WRITE;
/*!40000 ALTER TABLE `producto_has_venta` DISABLE KEYS */;
INSERT INTO `producto_has_venta` VALUES (1,1),(2,1),(3,2),(4,2),(5,3),(6,3),(7,4),(8,4),(9,5),(10,5),(11,6),(12,6),(13,7),(14,7),(15,8),(16,8),(17,9),(18,9),(19,10),(20,10),(21,11),(22,11),(23,12),(24,12),(25,13),(26,13),(27,14),(28,14),(29,15),(30,15),(1,16),(3,16),(5,17),(7,17),(9,18),(11,18),(13,19),(15,19),(17,20),(19,20);
/*!40000 ALTER TABLE `producto_has_venta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `proveedor`
--

DROP TABLE IF EXISTS `proveedor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `proveedor` (
  `idProveedor` int NOT NULL,
  `Nombre` varchar(45) NOT NULL,
  `Dirección` varchar(45) NOT NULL,
  `telefono` int NOT NULL,
  PRIMARY KEY (`idProveedor`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `proveedor`
--

LOCK TABLES `proveedor` WRITE;
/*!40000 ALTER TABLE `proveedor` DISABLE KEYS */;
INSERT INTO `proveedor` VALUES (1,'PharmaLog S.A.','Av. Independencia 1234',1156789012),(2,'Distribuciones Médicas Sur','Calle Tucumán 567',1143210987),(3,'Vital Farma SRL','Av. Córdoba 890',1134567890);
/*!40000 ALTER TABLE `proveedor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `receta`
--

DROP TABLE IF EXISTS `receta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `receta` (
  `idReceta` int NOT NULL,
  `Matricula_medica` int NOT NULL,
  `Nombre_medico` varchar(45) NOT NULL,
  `Fecha_emision` datetime NOT NULL,
  `fecha_venc` date NOT NULL,
  `Diagnostico` varchar(45) NOT NULL,
  `Cliente_idCliente` int NOT NULL,
  `Venta_idVenta` int NOT NULL,
  PRIMARY KEY (`idReceta`),
  KEY `fk_Receta_Cliente1_idx` (`Cliente_idCliente`),
  KEY `fk_Receta_Venta1_idx` (`Venta_idVenta`),
  CONSTRAINT `fk_Receta_Cliente1` FOREIGN KEY (`Cliente_idCliente`) REFERENCES `cliente` (`idCliente`),
  CONSTRAINT `fk_Receta_Venta1` FOREIGN KEY (`Venta_idVenta`) REFERENCES `venta` (`IdVenta`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `receta`
--

LOCK TABLES `receta` WRITE;
/*!40000 ALTER TABLE `receta` DISABLE KEYS */;
INSERT INTO `receta` VALUES (1,12345,'Dr. Juan Pérez','2025-10-01 09:00:00','2025-11-01','Hipertensión',1,1),(2,23456,'Dra. Laura Gómez','2025-10-02 10:15:00','2025-11-02','Diabetes tipo 2',2,2),(3,34567,'Dr. Martín Ruiz','2025-10-03 11:30:00','2025-11-03','Gastritis',3,3),(4,45678,'Dra. Carla López','2025-10-04 12:45:00','2025-11-04','Dolor crónico',4,4),(5,56789,'Dr. Pablo Sánchez','2025-10-05 14:00:00','2025-11-05','Resfrío común',5,5),(6,67890,'Dra. Mariana Torres','2025-10-06 15:15:00','2025-11-06','Hipotiroidismo',6,6),(7,78901,'Dr. Andrés Fernández','2025-10-07 16:30:00','2025-11-07','Ansiedad',7,7),(8,89012,'Dra. Cecilia Ramírez','2025-10-08 17:45:00','2025-11-08','Alergia estacional',8,8),(9,90123,'Dr. Gustavo Molina','2025-10-09 09:30:00','2025-11-09','Colesterol alto',9,9),(10,11234,'Dra. Verónica Díaz','2025-10-10 10:45:00','2025-11-10','Migraña',10,10),(11,22345,'Dr. Sergio Herrera','2025-10-11 12:00:00','2025-11-11','Bronquitis',11,11),(12,33456,'Dra. Natalia Castro','2025-10-12 13:15:00','2025-11-12','Artrosis',12,12),(13,44567,'Dr. Esteban Varela','2025-10-13 14:30:00','2025-11-13','Dermatitis',13,13),(14,55678,'Dra. Lucía Medina','2025-10-14 15:45:00','2025-11-14','Infección urinaria',14,14),(15,66789,'Dr. Ramiro Acosta','2025-10-15 17:00:00','2025-11-15','Hipertensión',15,15),(16,77890,'Dra. Julieta Ríos','2025-10-16 09:15:00','2025-11-16','Diabetes tipo 2',16,16),(17,88901,'Dr. Tomás Aguirre','2025-10-17 10:30:00','2025-11-17','Gastritis',17,17),(18,99012,'Dra. Florencia Núñez','2025-10-18 11:45:00','2025-11-18','Dolor crónico',18,18),(19,10123,'Dr. Javier Ortega','2025-10-19 13:00:00','2025-11-19','Resfrío común',19,19),(20,21234,'Dra. Mónica Salas','2025-10-20 14:15:00','2025-11-20','Hipotiroidismo',20,20),(21,12345,'Dr. Juan Pérez','2025-01-01 09:00:00','2025-01-31','Hipertensión',1,31),(22,23456,'Dra. Laura Gómez','2025-01-08 09:00:00','2025-02-07','Diabetes tipo 2',2,32),(23,34567,'Dr. Martín Ruiz','2025-01-15 09:00:00','2025-02-14','Gastritis',3,33),(24,45678,'Dra. Carla López','2025-01-22 09:00:00','2025-02-21','Dolor crónico',4,34),(25,56789,'Dr. Pablo Sánchez','2025-01-29 09:00:00','2025-02-28','Resfrío común',5,35),(26,12345,'Dr. Juan Pérez','2025-02-05 09:00:00','2025-03-07','Hipotiroidismo',6,36),(27,23456,'Dra. Laura Gómez','2025-02-12 09:00:00','2025-03-14','Ansiedad',7,37),(28,34567,'Dr. Martín Ruiz','2025-02-19 09:00:00','2025-03-21','Alergia estacional',8,38),(29,45678,'Dra. Carla López','2025-02-26 09:00:00','2025-03-28','Colesterol alto',9,39),(30,56789,'Dr. Pablo Sánchez','2025-03-05 09:00:00','2025-04-04','Migraña',10,40),(31,12345,'Dr. Juan Pérez','2025-03-12 09:00:00','2025-04-11','Hipertensión',11,41),(32,23456,'Dra. Laura Gómez','2025-03-19 09:00:00','2025-04-18','Diabetes tipo 2',12,42),(33,34567,'Dr. Martín Ruiz','2025-03-26 09:00:00','2025-04-25','Gastritis',13,43),(34,45678,'Dra. Carla López','2025-04-02 09:00:00','2025-05-02','Dolor crónico',14,44),(35,56789,'Dr. Pablo Sánchez','2025-04-09 09:00:00','2025-05-09','Resfrío común',15,45),(36,12345,'Dr. Juan Pérez','2025-04-16 09:00:00','2025-05-16','Hipotiroidismo',16,46),(37,23456,'Dra. Laura Gómez','2025-04-23 09:00:00','2025-05-23','Ansiedad',17,47),(38,34567,'Dr. Martín Ruiz','2025-04-30 09:00:00','2025-05-30','Alergia estacional',18,48),(39,45678,'Dra. Carla López','2025-05-07 09:00:00','2025-06-06','Colesterol alto',19,49),(40,56789,'Dr. Pablo Sánchez','2025-05-14 09:00:00','2025-06-13','Migraña',20,50),(41,12345,'Dr. Juan Pérez','2025-05-21 09:00:00','2025-06-20','Hipertensión',21,51),(42,23456,'Dra. Laura Gómez','2025-05-28 09:00:00','2025-06-27','Diabetes tipo 2',22,52),(43,34567,'Dr. Martín Ruiz','2025-06-04 09:00:00','2025-07-04','Gastritis',23,53),(44,45678,'Dra. Carla López','2025-06-11 09:00:00','2025-07-11','Dolor crónico',24,54),(45,56789,'Dr. Pablo Sánchez','2025-06-18 09:00:00','2025-07-18','Resfrío común',25,55),(46,12345,'Dr. Juan Pérez','2025-12-01 10:00:00','2026-01-01','Hipertensión',27,82),(47,23456,'Dra. Laura Gómez','2025-12-01 17:30:00','2026-01-01','Ansiedad',44,83);
/*!40000 ALTER TABLE `receta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `turno`
--

DROP TABLE IF EXISTS `turno`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `turno` (
  `idTurno` int NOT NULL,
  `motivo` varchar(45) NOT NULL,
  `hora_inicio` time NOT NULL,
  `hora_fin` time NOT NULL,
  `fecha` date NOT NULL,
  `Empleado_idEmpleado` int NOT NULL,
  `Cliente_idCliente` int NOT NULL,
  PRIMARY KEY (`idTurno`),
  KEY `fk_Turno_Empleado1_idx` (`Empleado_idEmpleado`),
  KEY `fk_Turno_Cliente1_idx` (`Cliente_idCliente`),
  CONSTRAINT `fk_Turno_Cliente1` FOREIGN KEY (`Cliente_idCliente`) REFERENCES `cliente` (`idCliente`),
  CONSTRAINT `fk_Turno_Empleado1` FOREIGN KEY (`Empleado_idEmpleado`) REFERENCES `empleado` (`idEmpleado`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `turno`
--

LOCK TABLES `turno` WRITE;
/*!40000 ALTER TABLE `turno` DISABLE KEYS */;
INSERT INTO `turno` VALUES (1,'Consulta medicación','09:00:00','09:30:00','2025-11-01',1,3),(2,'Entrega receta','10:00:00','10:15:00','2025-11-01',2,5),(3,'Asesoramiento farmacéutico','11:00:00','11:30:00','2025-11-02',3,7),(4,'Control de dosis','12:00:00','12:20:00','2025-11-02',4,9),(5,'Consulta obra social','13:00:00','13:30:00','2025-11-03',5,11),(6,'Entrega medicación crónica','14:00:00','14:15:00','2025-11-03',6,13),(7,'Revisión receta','15:00:00','15:30:00','2025-11-04',7,15),(8,'Consulta efectos secundarios','16:00:00','16:30:00','2025-11-04',8,17),(9,'Entrega insulina','17:00:00','17:20:00','2025-11-05',9,19),(10,'Control medicación pediátrica','09:30:00','10:00:00','2025-11-05',10,21),(11,'Asesoramiento sobre interacciones','10:30:00','11:00:00','2025-11-06',11,23),(12,'Entrega receta digital','11:30:00','11:45:00','2025-11-06',12,25),(13,'Consulta por cambio de dosis','12:30:00','13:00:00','2025-11-07',1,27),(14,'Entrega medicación especial','13:30:00','13:50:00','2025-11-07',2,29),(15,'Revisión de tratamiento','14:30:00','15:00:00','2025-11-08',3,30),(16,'Consulta medicación','09:00:00','09:20:00','2025-01-05',1,1),(17,'Entrega receta','09:30:00','09:50:00','2025-01-17',2,4),(18,'Asesoramiento farmacéutico','10:00:00','10:20:00','2025-01-29',3,7),(19,'Control de dosis','10:30:00','10:50:00','2025-02-10',4,10),(20,'Consulta obra social','11:00:00','11:20:00','2025-02-22',5,13),(21,'Entrega medicación crónica','11:30:00','11:50:00','2025-03-06',6,16),(22,'Revisión tratamiento','12:00:00','12:20:00','2025-03-18',7,19),(23,'Control rutina','12:30:00','12:50:00','2025-03-30',8,22),(24,'Consulta medicación','13:00:00','13:20:00','2025-04-11',9,25),(25,'Entrega receta','13:30:00','13:50:00','2025-04-23',10,28),(26,'Asesoramiento farmacéutico','14:00:00','14:20:00','2025-05-05',11,31),(27,'Control de dosis','14:30:00','14:50:00','2025-05-17',12,34),(28,'Consulta obra social','15:00:00','15:20:00','2025-05-29',1,37),(29,'Entrega medicación crónica','15:30:00','15:50:00','2025-06-10',2,40),(30,'Revisión tratamiento','16:00:00','16:20:00','2025-06-22',3,43);
/*!40000 ALTER TABLE `turno` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `venta`
--

DROP TABLE IF EXISTS `venta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `venta` (
  `idVenta` int NOT NULL,
  `Cantidad_total` int NOT NULL,
  `Descuento` varchar(45) NOT NULL,
  `Precio_total` int NOT NULL,
  `fecha` datetime NOT NULL,
  `Cliente_idCliente` int NOT NULL,
  `Empleado_idEmpleado` int NOT NULL,
  PRIMARY KEY (`idVenta`),
  KEY `fk_Venta_Cliente1_idx` (`Cliente_idCliente`),
  KEY `fk_Venta_Empleado1_idx` (`Empleado_idEmpleado`),
  CONSTRAINT `fk_Venta_Cliente1` FOREIGN KEY (`Cliente_idCliente`) REFERENCES `cliente` (`idCliente`),
  CONSTRAINT `fk_Venta_Empleado1` FOREIGN KEY (`Empleado_idEmpleado`) REFERENCES `empleado` (`idEmpleado`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `venta`
--

LOCK TABLES `venta` WRITE;
/*!40000 ALTER TABLE `venta` DISABLE KEYS */;
INSERT INTO `venta` VALUES (1,3,'10%',2700,'2025-10-01 10:15:00',1,2),(2,5,'15%',4250,'2025-10-02 11:30:00',2,4),(3,2,'5%',1900,'2025-10-03 09:45:00',3,1),(4,4,'20%',3200,'2025-10-04 14:10:00',4,3),(5,6,'10%',5400,'2025-10-05 16:00:00',5,5),(6,1,'0%',950,'2025-10-06 12:20:00',6,6),(7,3,'5%',2850,'2025-10-07 13:35:00',7,2),(8,2,'10%',1800,'2025-10-08 15:50:00',8,7),(9,4,'15%',3400,'2025-10-09 17:05:00',9,3),(10,5,'20%',4000,'2025-10-10 18:30:00',10,8),(11,3,'10%',2700,'2025-10-11 09:00:00',11,1),(12,6,'5%',5700,'2025-10-12 10:45:00',12,4),(13,2,'0%',1900,'2025-10-13 11:15:00',13,5),(14,4,'10%',3600,'2025-10-14 12:40:00',14,6),(15,1,'5%',900,'2025-10-15 13:10:00',15,2),(16,3,'15%',2550,'2025-10-16 14:25:00',16,7),(17,5,'10%',4500,'2025-10-17 15:55:00',17,3),(18,2,'20%',1600,'2025-10-18 16:35:00',18,8),(19,4,'5%',3800,'2025-10-19 17:45:00',19,1),(20,6,'10%',5400,'2025-10-20 18:20:00',20,4),(21,1,'0%',950,'2025-10-21 09:30:00',21,5),(22,3,'10%',2700,'2025-10-22 10:50:00',22,6),(23,2,'5%',1900,'2025-10-23 11:40:00',23,2),(24,4,'15%',3400,'2025-10-24 12:30:00',24,7),(25,5,'20%',4000,'2025-10-25 13:20:00',25,3),(26,6,'10%',5400,'2025-10-26 14:10:00',26,8),(27,1,'0%',950,'2025-10-27 15:00:00',27,1),(28,3,'5%',2850,'2025-10-28 16:00:00',28,4),(29,2,'10%',1800,'2025-10-29 17:00:00',29,5),(30,4,'15%',3400,'2025-10-30 18:00:00',30,6),(31,1,'0%',2000,'2025-01-01 10:00:00',1,1),(32,2,'5%',2150,'2025-01-08 10:00:00',2,2),(33,3,'10%',2300,'2025-01-15 10:00:00',3,3),(34,4,'15%',2450,'2025-01-22 10:00:00',4,4),(35,1,'20%',2600,'2025-01-29 10:00:00',5,5),(36,2,'0%',2750,'2025-02-05 10:00:00',6,6),(37,3,'5%',2900,'2025-02-12 10:00:00',7,7),(38,4,'10%',3050,'2025-02-19 10:00:00',8,8),(39,1,'15%',3200,'2025-02-26 10:00:00',9,9),(40,2,'20%',3350,'2025-03-05 10:00:00',10,10),(41,3,'0%',2000,'2025-03-12 10:00:00',11,11),(42,4,'5%',2150,'2025-03-19 10:00:00',12,12),(43,1,'10%',2300,'2025-03-26 10:00:00',13,1),(44,2,'15%',2450,'2025-04-02 10:00:00',14,2),(45,3,'20%',2600,'2025-04-09 10:00:00',15,3),(46,4,'0%',2750,'2025-04-16 10:00:00',16,4),(47,1,'5%',2900,'2025-04-23 10:00:00',17,5),(48,2,'10%',3050,'2025-04-30 10:00:00',18,6),(49,3,'15%',3200,'2025-05-07 10:00:00',19,7),(50,4,'20%',3350,'2025-05-14 10:00:00',20,8),(51,1,'0%',2000,'2025-05-21 10:00:00',21,9),(52,2,'5%',2150,'2025-05-28 10:00:00',22,10),(53,3,'10%',2300,'2025-06-04 10:00:00',23,11),(54,4,'15%',2450,'2025-06-11 10:00:00',24,12),(55,1,'20%',2600,'2025-06-18 10:00:00',25,1),(56,2,'0%',2750,'2025-06-25 10:00:00',26,2),(57,3,'5%',2900,'2025-07-02 10:00:00',27,3),(58,4,'10%',3050,'2025-07-09 10:00:00',28,4),(59,1,'15%',3200,'2025-07-16 10:00:00',29,5),(60,2,'20%',3350,'2025-07-23 10:00:00',30,6),(61,3,'0%',2000,'2025-07-30 10:00:00',31,7),(62,4,'5%',2150,'2025-08-06 10:00:00',32,8),(63,1,'10%',2300,'2025-08-13 10:00:00',33,9),(64,2,'15%',2450,'2025-08-20 10:00:00',34,10),(65,3,'20%',2600,'2025-08-27 10:00:00',35,11),(66,4,'0%',2750,'2025-09-03 10:00:00',36,12),(67,1,'5%',2900,'2025-09-10 10:00:00',37,1),(68,2,'10%',3050,'2025-09-17 10:00:00',38,2),(69,3,'15%',3200,'2025-09-24 10:00:00',39,3),(70,4,'20%',3350,'2025-10-01 10:00:00',40,4),(71,1,'0%',2000,'2025-10-08 10:00:00',41,5),(72,2,'5%',2150,'2025-10-15 10:00:00',42,6),(73,3,'10%',2300,'2025-10-22 10:00:00',43,7),(74,4,'15%',2450,'2025-10-29 10:00:00',44,8),(75,1,'20%',2600,'2025-11-05 10:00:00',45,9),(76,2,'0%',2750,'2025-11-12 10:00:00',46,10),(77,3,'5%',2900,'2025-11-19 10:00:00',47,11),(78,4,'10%',3050,'2025-11-26 10:00:00',48,12),(79,1,'15%',3200,'2025-12-01 10:00:00',49,1),(80,2,'20%',3350,'2025-12-01 10:00:00',50,2),(81,2,'0%',2200,'2025-12-01 09:45:00',12,3),(82,3,'5%',3400,'2025-12-01 14:10:00',27,6),(83,1,'10%',1800,'2025-12-01 17:25:00',44,9);
/*!40000 ALTER TABLE `venta` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2026-03-16 15:38:25
