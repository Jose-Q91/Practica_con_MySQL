-- MySQL dump 10.13  Distrib 8.0.34, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: healthybite
-- ------------------------------------------------------
-- Server version	5.5.5-10.4.28-MariaDB

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
-- Table structure for table `category`
--

DROP TABLE IF EXISTS `category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `category` (
  `id_category` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id_category`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `category`
--

LOCK TABLES `category` WRITE;
/*!40000 ALTER TABLE `category` DISABLE KEYS */;
INSERT INTO `category` VALUES (1,'milanesa'),(2,'empanadas'),(3,'pizzas'),(4,'sandwiches'),(5,'helados'),(6,'pastas'),(7,'carnes'),(8,'comida china'),(9,'comida japonesa'),(10,'comida mexicana'),(11,'hamburguesas'),(12,'menu del dia'),(13,'picadas'),(14,'pollo'),(15,'postres'),(16,'tortillas'),(17,'comida vegetariana'),(18,'Bebidas');
/*!40000 ALTER TABLE `category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `company`
--

DROP TABLE IF EXISTS `company`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `company` (
  `id_company` int(11) NOT NULL AUTO_INCREMENT,
  `brand` varchar(45) DEFAULT NULL,
  `adress` varchar(45) DEFAULT NULL,
  `phone` varchar(45) DEFAULT NULL,
  `start_time` varchar(45) DEFAULT NULL,
  `close_time` varchar(45) DEFAULT NULL,
  `photo_logo` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id_company`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `company`
--

LOCK TABLES `company` WRITE;
/*!40000 ALTER TABLE `company` DISABLE KEYS */;
INSERT INTO `company` VALUES (1,'donnatella pizzas','av libertador 234','155551511515','10:00','18:00',NULL),(2,'el gauchito argentina','av corrientes','153231212212','19:00','23:00',NULL),(3,'pizzeria veronica','av directorio 232','154554551111','9:00','22:00',NULL),(4,'tomatitos','av san juan 877','154574545455','10:00','23:00',NULL),(5,'capibar','av dorrego 345','157857575454','19:00','23:00',NULL),(6,'comida anto','av cabildo 2334','154545454545','19:00','3:00',NULL),(7,'sol naciente','av cordoba 234','154545454544','19:00','23:00',NULL),(8,'casa de comidas valentina','rioja 123','154545454544','19:00','23:00',NULL),(9,'rock and burro','callao 765','154545454544','19:00','23:00',NULL),(10,'la tatiana 69','callao 34545','154545454545','19:00','23:00',NULL),(11,'pizza mia','av cordoba 4533','152454545454','19:00','23:00',NULL),(12,'grido helados','av gaona 123','154545454544','19:00','23:00',NULL),(13,'l\'scala heladeria','av avellaneda','154545454545','19:00','23:00',NULL),(14,'gwiyomi','av libertador','154545757577','19:00','23:00',NULL),(15,'el baron de la cerveza de paternal',NULL,'155454545454','19:00','23:00',NULL),(16,'colorado el 20','av cordoba','154545454545','19:00','23:00',NULL),(17,'prolicor','av corrientes 457','157545454454','19:00','23:00',NULL),(18,'picadas ya gourmet','av corrientes 3245','154545454545','19:00','23:00',NULL),(19,'la casa de comidas valentina','av cordoba 1233','154545875454','19:00','23:00',NULL),(20,'el sol de shangai',NULL,'154575454545','8:00','23:00',NULL);
/*!40000 ALTER TABLE `company` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `detail`
--

DROP TABLE IF EXISTS `detail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `detail` (
  `id_detail` int(11) NOT NULL AUTO_INCREMENT,
  `quantity` int(11) DEFAULT NULL,
  `product_id_product` int(11) NOT NULL,
  `sale_id_sale` int(11) NOT NULL,
  PRIMARY KEY (`id_detail`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `detail`
--

LOCK TABLES `detail` WRITE;
/*!40000 ALTER TABLE `detail` DISABLE KEYS */;
INSERT INTO `detail` VALUES (1,2,1,1),(2,2,1,1),(3,3,2,1),(4,3,2,2),(5,2,2,2),(6,2,3,17),(7,1,3,3),(8,2,3,15),(9,2,2,3),(10,2,2,16),(11,2,1,5),(12,2,1,6),(13,3,3,7),(14,3,3,18),(15,3,3,9),(16,4,2,10),(17,4,2,11),(18,2,1,12),(19,2,1,13),(20,1,2,14);
/*!40000 ALTER TABLE `detail` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `employee`
--

DROP TABLE IF EXISTS `employee`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `employee` (
  `id_employee` int(11) NOT NULL AUTO_INCREMENT,
  `dni` varchar(45) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  `phone` varchar(45) DEFAULT NULL,
  `name` varchar(45) DEFAULT NULL,
  `surname` varchar(45) DEFAULT NULL,
  `salary` double DEFAULT NULL,
  PRIMARY KEY (`id_employee`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employee`
--

LOCK TABLES `employee` WRITE;
/*!40000 ALTER TABLE `employee` DISABLE KEYS */;
INSERT INTO `employee` VALUES (1,'36455545','fernando@gmail.com','15451515151','fernando','perez',70000),(2,'36454654','laura@gmail.com','15454545454','laura','gomez',80000),(3,'36456444','martin@gmail.com','15454785454','martin','gonzalez',75000),(4,'36555555','maria@gmail.com','15787878787','maria','lopez',87500),(5,'36445865','luciano@gmail.com','15785454545','luciano','rodriguez',80000),(6,'36446646','mayra@gmail.com','15575454545','mayra','gutierez',90000),(7,'36478555','fernanda@gmail.com','15454545545','fernanda','rodriguez',90000),(8,'36457777','florencia@gmail.com','15454121222','florencia','perez',120000),(9,'45855555','hugo@gmail.com','15445454211','hugo','fernandez',100000),(10,'40454545','leandro@gmail.com','15121212112','leandro','flores',750000),(11,'42455455','rodrigo@gmail.com','15454545411','rodrigo','roldan',140000),(12,'42525555','victor@gmail.com','15454521212','victor','sanchez',120000),(13,'42455545','nadia@gmail.com','15421212111','nadia','guerrero',110000),(14,'45524544','ayelen@gmail.com','15121212121','ayelen','martinez',110000),(15,'46524555','luciana@gmail.com','15451515111','luciana','pereira',150000),(16,'46454545','daniela@gmail.com','15745454545','daniela','dominguez',120000),(17,'46757575','federico@gmail.com','15748454545','federico','dorrego',120000),(18,'47545454','gimena@gmail.com','15454545122','gimena','contreras',110000),(19,'47555545','mailen@gmail.com','15787888888','mailen','juarez',140000),(20,'47545555','brenda@gmail.com','15443333344','brenda','diaz',150000);
/*!40000 ALTER TABLE `employee` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pay`
--

DROP TABLE IF EXISTS `pay`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pay` (
  `id_pay` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) DEFAULT NULL,
  `description` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id_pay`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pay`
--

LOCK TABLES `pay` WRITE;
/*!40000 ALTER TABLE `pay` DISABLE KEYS */;
INSERT INTO `pay` VALUES (1,'mercadopago',NULL),(2,'paypal',NULL);
/*!40000 ALTER TABLE `pay` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product`
--

DROP TABLE IF EXISTS `product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product` (
  `id_product` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) DEFAULT NULL,
  `description` varchar(45) DEFAULT NULL,
  `ingredients` varchar(45) DEFAULT NULL,
  `inf_nutrition` varchar(45) DEFAULT NULL,
  `price` double DEFAULT NULL,
  `stock` int(11) DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  `ranking` int(11) DEFAULT NULL,
  `category_id_category` int(11) NOT NULL,
  `company_id_company` int(11) NOT NULL,
  `photo` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id_product`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product`
--

LOCK TABLES `product` WRITE;
/*!40000 ALTER TABLE `product` DISABLE KEYS */;
INSERT INTO `product` VALUES (1,'pizza muzarella','pizza muzarella',NULL,NULL,4900,2,'2023-11-19 00:00:00',9,3,1,''),(2,'empanadas de jamon y queso','empanadas de jamon y queso',NULL,NULL,1800,2,'2023-11-19 00:00:00',9,2,2,NULL),(3,'empanadas de carne','empanadas de carne',NULL,NULL,800,2,'2023-11-19 00:00:00',9,2,2,NULL),(4,'empanadas de pollo','empanadas de pollo',NULL,NULL,900,2,'2023-11-19 00:00:00',9,2,2,NULL),(5,'pizza cancha','pizza cancha','salsa de tomate, ajo, albahaca',NULL,5000,2,'2023-11-19 00:00:00',9,3,11,NULL),(6,'pizza fugazza con muzzarella','pizza fugazza con muzzarella','cebolla, muzzarella',NULL,5400,2,'2023-11-19 00:00:00',10,3,11,NULL),(7,'pizza napolitana','pizza napolitana','salsa de tomate, muzzarella, rodajas de tomat',NULL,5600,3,'2023-11-19 00:00:00',10,3,11,NULL),(8,'pizza con jamon','pizza con jamon','salsa de tomate, muzzarella, jamon',NULL,5400,3,'2023-11-19 00:00:00',9,3,11,NULL),(9,'sandwich de milanesa completo','sandwich de milanesa completo','jamon, queso, lechuga, tomate, huevo, papas',NULL,2300,3,'2023-11-19 00:00:00',9,4,19,NULL),(10,'hamburguesa doble cheese con fritas','hamburguesa doble cheese con fritas','pan casero, 240gr de carne, cheddarx4',NULL,5060,4,'2023-11-19 00:00:00',9,11,5,NULL),(11,'hamburguesa big mac con fritas','hamburguesa big mac con fritas','lechuga, pepinos, 240gr de carne, doble chedd',NULL,5630,4,'2023-11-19 00:00:00',9,11,5,NULL),(12,'tortilla de papa individual','tortilla de papa individual','papa frita, huevo',NULL,2200,4,'2023-11-19 00:00:00',9,16,2,NULL),(13,'burrito de carne','tortilla de harina de trigo, relleno con vaci','',NULL,3600,3,'2023-11-19 00:00:00',9,10,9,NULL),(14,'burrito de pollo','tortilla de harina de trigo relleno de pollo',NULL,NULL,3600,1,'2023-11-19 00:00:00',9,10,9,NULL),(15,'quesadilla','tortilla de harina de trigo, relleno de zapal',NULL,NULL,3200,3,'2023-11-19 00:00:00',9,10,9,NULL),(16,'helado 1/4hg','helado 1/4hg 3 sabores maximo',NULL,NULL,1840,2,'2023-11-19 00:00:00',9,5,12,NULL),(17,'helado 1kg','helado 1kg hasta 4 sabores',NULL,NULL,4000,4,'2023-11-19 00:00:00',9,5,12,NULL),(18,'conitos cucurucho','cucurucho dulce',NULL,NULL,320,4,'2023-11-19 00:00:00',9,5,12,NULL),(19,'bulgoni deopbab','bulgoni deopbab + 2 dips','carne de cerdo marino en gochuj de aji',NULL,6700,5,'2023-11-19 00:00:00',9,9,14,NULL),(20,'curry rice','curry rice plato vegetariano + 2 dips','arroz salteado con vegetales, aceite de sesan',NULL,5440,4,'2023-11-19 00:00:00',9,14,14,NULL);
/*!40000 ALTER TABLE `product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qualification`
--

DROP TABLE IF EXISTS `qualification`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `qualification` (
  `id_qualification` int(11) NOT NULL AUTO_INCREMENT,
  `description` varchar(45) DEFAULT NULL,
  `qualification` int(11) DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  `sale_id_sale` int(11) NOT NULL,
  PRIMARY KEY (`id_qualification`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qualification`
--

LOCK TABLES `qualification` WRITE;
/*!40000 ALTER TABLE `qualification` DISABLE KEYS */;
INSERT INTO `qualification` VALUES (1,'excelente',10,'2023-11-19 00:00:00',1),(2,'bueno',8,'2023-11-19 00:00:00',2),(3,'recomendable',6,'2023-11-19 00:00:00',3),(4,'excelente',10,'2023-11-19 00:00:00',4),(5,'bueno',8,'2023-11-19 00:00:00',5),(6,'excelente',10,'2023-11-19 00:00:00',6),(7,'excelente',10,'2023-11-19 00:00:00',7),(8,'excelente',10,'2023-11-19 00:00:00',8),(9,'excelente',10,'2023-11-19 00:00:00',9),(10,'bueno',7,'2023-11-19 00:00:00',10),(11,'excelente',10,'2023-11-19 00:00:00',11),(12,'recomendable',6,'2023-11-19 00:00:00',12),(13,'excelente',10,'2023-11-19 00:00:00',13),(14,'recomendable',8,'2023-11-19 00:00:00',14),(15,'recomendable',8,'2023-11-19 00:00:00',15),(16,'bueno',6,'2023-11-19 00:00:00',16),(17,'excelente',10,'2023-11-19 00:00:00',17),(18,'recomendable',7,'2023-11-19 00:00:00',18),(19,'excelente',10,'2023-11-19 00:00:00',19),(20,'recomendable',10,'2023-11-19 00:00:00',20);
/*!40000 ALTER TABLE `qualification` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sale`
--

DROP TABLE IF EXISTS `sale`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sale` (
  `id_sale` int(11) NOT NULL AUTO_INCREMENT,
  `total_price` double DEFAULT NULL,
  `date` date DEFAULT NULL,
  `status_sale` int(11) DEFAULT NULL,
  `user_id_user` int(11) NOT NULL,
  `cod_sale` varchar(45) DEFAULT NULL,
  `pay_id_pay` int(11) NOT NULL,
  PRIMARY KEY (`id_sale`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sale`
--

LOCK TABLES `sale` WRITE;
/*!40000 ALTER TABLE `sale` DISABLE KEYS */;
INSERT INTO `sale` VALUES (1,5400,'2023-11-19',0,1,'00111',0),(2,3600,'2023-11-19',0,2,'01000',0),(3,3600,'2023-11-19',0,3,'00100',0),(4,NULL,'2023-11-19',0,4,'00010',0),(5,9800,'2023-11-19',0,5,'00001',0),(6,9800,'2023-11-19',0,6,'10000',0),(7,2400,'2023-11-19',0,7,'11000',0),(8,NULL,'2023-11-19',0,8,'11100',0),(9,2400,'2023-11-19',0,9,'11110',0),(10,7200,'2023-11-19',0,10,'11111',0),(11,7200,'2023-11-19',0,11,'1010A',0),(12,9800,'2023-11-19',0,12,'1011B',0),(13,9800,'2023-11-19',1,13,'A01S0',0),(14,1800,'2023-11-19',0,14,'A0121',0),(15,1600,'2023-11-19',1,15,'B0123',0),(16,3600,'2023-11-19',0,16,'Q011A',0),(17,1600,'2023-11-19',1,17,'11S00',0),(18,2400,'2023-11-19',1,18,'12AD0',0),(19,NULL,'2023-11-19',0,19,'1010W',0),(20,NULL,'2023-11-19',0,20,'AW012',0);
/*!40000 ALTER TABLE `sale` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shipment`
--

DROP TABLE IF EXISTS `shipment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `shipment` (
  `id_shipment` int(11) NOT NULL AUTO_INCREMENT,
  `description` varchar(45) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `sale_id_sale` int(11) NOT NULL,
  `employee_id_employee` int(11) NOT NULL,
  PRIMARY KEY (`id_shipment`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shipment`
--

LOCK TABLES `shipment` WRITE;
/*!40000 ALTER TABLE `shipment` DISABLE KEYS */;
INSERT INTO `shipment` VALUES (1,NULL,0,1,1),(2,NULL,0,2,2),(3,NULL,0,3,3),(4,NULL,0,4,4),(5,NULL,0,5,5),(6,NULL,0,6,6),(7,NULL,0,7,7),(8,NULL,0,8,8),(9,NULL,0,9,9),(10,NULL,0,10,1),(11,NULL,0,11,2),(12,NULL,1,13,3),(13,NULL,1,15,4),(14,NULL,0,19,5),(15,NULL,0,20,6),(16,NULL,1,18,7),(17,NULL,0,14,8),(18,NULL,0,16,9),(19,NULL,1,17,10),(20,NULL,0,12,1);
/*!40000 ALTER TABLE `shipment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user` (
  `id_user` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(45) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  `password` varchar(45) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `role` varchar(45) DEFAULT 'user',
  `adress` varchar(45) DEFAULT NULL,
  `phone` varchar(45) DEFAULT NULL,
  `deparment` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id_user`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,'walter','walter@gmail.com','123','2023-11-19','admin','Av medrano 123','1534833333','3'),(2,'luis','luis@gmail.com','123','2023-11-19','user','Av Corrientes 764','151515151515','8'),(3,'juan','juan@gmail.com','123','2023-11-19','user','Av Corrientes 1258','155151515151','1'),(4,'pedro','pedro@gmail.com','12345','2023-11-19','user','Av Corrientes 687','15545454545','7'),(5,'sebastian','sebastian@gmail.com','12345','2023-11-19','user','Av Corrientes 852','158748484545','1'),(6,'laura','laura@gmail.com','12345','2023-11-19','user','Av Corrientes 987','158848548484','1'),(7,'maria','maria@gmail.com','12345','2023-11-19','user','Av Cordoba 789','159948948484','1'),(8,'luciana','luciana@gmail.com','12345','2023-11-19','user','Av Cordoba 756','158787484848','2'),(9,'martin','martin@gmail.com','12345','2023-11-19','user','Av Cordoba 1258','4644545','2'),(10,'ramiro','ramiro@gmail.com','12345','2023-11-19','user','Av Cordoba 7895','151848545455','3'),(11,'pamela','pamela@gmail.com','12345','2023-11-19','user','Av Cordoba 45','151541515115','4'),(12,'paula','paula@gmail.com','12345','2023-11-19','user','Av Cordoba 789','151545454545','5'),(13,'pablo','pablo@gmail.com','12345','2023-11-19','user','Av San Juan 123','154454545454','4'),(14,'marta','marta@gmail.com','12345','2023-11-19','user','Av San Juan 123','151515151515','7'),(15,'luciana','luciana@gmail.com','12345','2023-11-19','user','Av San Juan 789','154845454545','4'),(16,'gonzalo','gonzalo@gmail.com','12345','2023-11-19','user','Av San Juan 445','154845454545','8'),(17,'romina','romina@gmail.com','12345','2023-11-19','user','Av San Juan 158','157487484545','1'),(18,'mario','mario@gmail.com','12345','2023-11-19','user','Av San Juan 25','15484848787','1'),(19,'lucas','lucas@gmail.com','12345','2023-11-19','user','Av San Juan 7567','15121215151','1'),(20,'melani','melani@gmail.com','12345','2023-11-19','user','Av San Juan 123','15487845454','1'),(25,'maximo','maximo@gmail.com','123','2023-11-24','user','Av viamonte 456','153487333','2');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `view_alerta_stock_productos`
--

DROP TABLE IF EXISTS `view_alerta_stock_productos`;
/*!50001 DROP VIEW IF EXISTS `view_alerta_stock_productos`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `view_alerta_stock_productos` AS SELECT 
 1 AS `id`,
 1 AS `name`,
 1 AS `stock`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `view_cant_empleados`
--

DROP TABLE IF EXISTS `view_cant_empleados`;
/*!50001 DROP VIEW IF EXISTS `view_cant_empleados`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `view_cant_empleados` AS SELECT 
 1 AS `count(*)`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `view_tot_ventas`
--

DROP TABLE IF EXISTS `view_tot_ventas`;
/*!50001 DROP VIEW IF EXISTS `view_tot_ventas`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `view_tot_ventas` AS SELECT 
 1 AS `total`*/;
SET character_set_client = @saved_cs_client;

--
-- Final view structure for view `view_alerta_stock_productos`
--

/*!50001 DROP VIEW IF EXISTS `view_alerta_stock_productos`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `view_alerta_stock_productos` AS select `product`.`id_product` AS `id`,`product`.`name` AS `name`,`product`.`stock` AS `stock` from `product` where `product`.`stock` < 2 */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `view_cant_empleados`
--

/*!50001 DROP VIEW IF EXISTS `view_cant_empleados`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `view_cant_empleados` AS select count(0) AS `count(*)` from `employee` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `view_tot_ventas`
--

/*!50001 DROP VIEW IF EXISTS `view_tot_ventas`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `view_tot_ventas` AS select sum(`sale`.`total_price`) AS `total` from `sale` where `sale`.`status_sale` = 1 */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-11-24 14:32:14
