CREATE DATABASE  IF NOT EXISTS `Spotify` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `Spotify`;
-- MySQL dump 10.17  Distrib 10.3.23-MariaDB, for Win64 (AMD64)
--
-- Host: 161.35.119.162    Database: Spotify
-- ------------------------------------------------------
-- Server version	10.4.13-MariaDB-1:10.4.13+maria~bionic

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `Artista`
--

DROP TABLE IF EXISTS `Artista`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Artista` (
  `Id_Artista` int(11) NOT NULL AUTO_INCREMENT,
  `Nombre_Artista` varchar(50) NOT NULL,
  `Apellido_Artista` varchar(50) NOT NULL,
  `Nombre_Artististico` varchar(50) NOT NULL,
  `fecha_Nacimiento_Artista` date NOT NULL,
  `Nacionalidad` varchar(50) NOT NULL,
  `Numero_Seguidores` int(11) DEFAULT NULL,
  PRIMARY KEY (`Id_Artista`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Artista`
--

LOCK TABLES `Artista` WRITE;
/*!40000 ALTER TABLE `Artista` DISABLE KEYS */;
INSERT INTO `Artista` VALUES (1,'Lillian','Dean','Selma Conrad','2000-01-20','Spain',25391),(2,'Aileen','Joseph','Alexa Wells','2014-02-02','Senegal',470078),(3,'Xavier','Craig','Lunea Valencia','2002-05-05','Syria',293776),(4,'Adena','Vaughan','Rina Cooke','2015-01-01','Côte D\'Ivoire (Ivory Coast)',542869),(5,'Elliott','Gardner','Tallulah Mckenzie','2000-02-05','Cocos (Keeling) Islands',1588),(6,'Hilel','Guerrero','Sara Hill','2017-05-01','Virgin Islands, United States',928510),(7,'Constance','Fields','Chastity Lancaster','2001-08-09','Kyrgyzstan',193),(8,'Alyssa','Booth','Amena Wooten','2009-07-09','Isle of Man',146932),(9,'Darrel','Carey','Christine Curtis','2012-09-08','Falkland Islands',705333),(10,'Kyla','Powers','Victoria Yates','2001-12-02','Jordan',622402),(11,'Guinevere','Underwood','Xyla Ortega','2096-01-25','Grenada',520698),(12,'William','Zamora','Kirsten Bryant','2012-01-03','Viet Nam',564836),(13,'Veda','Simon','Halla Russo','2005-06-07','Iraq',96270),(14,'Serina','Lawrence','Beverly Newton','2008-02-20','Antigua and Barbuda',481379),(15,'Harlan','Nixon','Linda Richard','2004-03-09','Moldova',643654),(16,'Fletcher','Castro','Amanda Dotson','2009-02-08','Denmark',408724),(17,'Channing','Simon','Maxine Patrick','2015-05-07','Virgin Islands, United States',369419),(18,'Lavinia','Pope','Yen Wallace','2001-03-05','Bangladesh',408166),(19,'Charissa','Rice','Basia Richardson','1998-10-25','Ireland',134871),(20,'Brandon','Malone','Hadassah Pace','2005-12-02','Fiji',914816),(21,'Guinevere','Underwood','Xyla Ortega','2096-01-25','Grenada',520698),(22,'William','Zamora','Kirsten Bryant','2012-01-03','Viet Nam',564836),(23,'Veda','Simon','Halla Russo','2005-06-07','Iraq',96270),(24,'Serina','Lawrence','Beverly Newton','2008-02-20','Antigua and Barbuda',481379),(25,'Harlan','Nixon','Linda Richard','2004-03-09','Moldova',643654),(26,'Fletcher','Castro','Amanda Dotson','2009-02-08','Denmark',408724),(27,'Channing','Simon','Maxine Patrick','2015-05-07','Virgin Islands, United States',369419),(28,'Lavinia','Pope','Yen Wallace','2001-03-05','Bangladesh',408166),(29,'Charissa','Rice','Basia Richardson','1998-10-25','Ireland',134871),(30,'Brandon','Malone','Hadassah Pace','2005-12-02','Fiji',914816),(31,'Damian','Dejesus','Keelie Wade','2020-11-25','Namibia',620935),(32,'Shaine','Savage','Eliana Michael','2012-02-01','Chad',733627),(33,'Wing','Emerson','Jael Baker','2009-10-10','Malta',850214),(34,'Desiree','Richards','Candice Lopez','2003-03-01','Belarus',291216),(35,'Cyrus','Bartlett','Madeline Kennedy','2019-01-01','France',47818),(36,'Brody','Guerrero','Jasmine Kline','2000-07-03','Hong Kong',163116),(37,'Clark','Strickland','Blythe Tran','2000-03-19','New Caledonia',827968),(38,'Haviva','Chaney','Velma Jimenez','1992-11-15','Cocos (Keeling) Islands',741812),(39,'Harper','Mccoy','Emma Benton','2003-11-25','Taiwan',570756),(40,'Elizabeth','Carrillo','Stephanie Bryant','2005-05-05','Burkina Faso',462331);
/*!40000 ALTER TABLE `Artista` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Auditoria`
--

DROP TABLE IF EXISTS `Auditoria`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Auditoria` (
  `Id_Auditoria` int(11) NOT NULL AUTO_INCREMENT,
  `Procedimiento` varchar(50) DEFAULT NULL,
  `Entrada` time DEFAULT NULL,
  `Salida` time DEFAULT NULL,
  `Id_Usuario` int(11) NOT NULL,
  `fecha_ingreso` date DEFAULT NULL,
  PRIMARY KEY (`Id_Auditoria`),
  KEY `Id_Usuario` (`Id_Usuario`),
  CONSTRAINT `Id_Usuario` FOREIGN KEY (`Id_Usuario`) REFERENCES `Usuario` (`Id_Usuario`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Auditoria`
--

LOCK TABLES `Auditoria` WRITE;
/*!40000 ALTER TABLE `Auditoria` DISABLE KEYS */;
INSERT INTO `Auditoria` VALUES (2,'Editar Usuario','04:30:00','06:30:00',2,'1996-02-20'),(3,'Escuchar musica','02:15:00','02:50:00',3,'1996-03-26'),(4,'Escuchar musica','01:10:00','04:20:00',3,'2000-02-15'),(5,'Escuchar musica','01:15:00','10:20:00',3,'2001-02-12'),(6,'Escuchar musica','14:10:00','16:25:00',3,'2002-12-23'),(7,'Escuchar musica','02:25:00','06:25:00',4,'2005-11-10'),(8,'Subir Cancion','01:00:00','04:00:00',2,'2006-05-06'),(9,'Escuchar musica','02:10:00','04:05:00',5,'2007-07-12'),(10,'Escuchar musica','16:15:00','18:25:00',14,'2008-07-14'),(11,'Escuchar musica','10:02:00','12:00:00',15,'2009-01-12'),(12,'Escuchar musica','10:00:00','12:00:00',16,'2010-02-03'),(13,'Escuchar musica','10:00:00','14:00:00',17,'1996-03-21'),(14,'Escuchar musica','12:14:00','14:30:00',16,'2014-03-21'),(15,'Solicitar artista','01:00:00','02:00:00',20,'2015-03-18'),(16,'Escuchar musica','02:00:00','03:00:00',3,'2016-03-21'),(17,'Escuchar musica','03:00:00','04:00:00',19,'2017-03-17'),(18,'Escuchar musica','04:00:00','05:00:00',20,'2018-03-25'),(19,'Escuchar musica','05:00:00','06:00:00',17,'2019-03-18'),(20,'Solisitar Artista','06:00:00','07:00:00',42,'2020-04-18'),(21,'Escuchar musica','07:00:00','08:00:00',20,'2020-05-14'),(22,'Escuchar musica','08:00:00','09:00:00',45,'2020-05-30'),(23,'Escuchar musica','09:00:00','10:00:00',18,'2020-04-25'),(24,'Escuchar musica','10:00:00','11:00:00',49,'2020-03-23'),(25,'Escuchar musica','11:00:00','12:00:00',50,'2020-03-31');
/*!40000 ALTER TABLE `Auditoria` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Canciones`
--

DROP TABLE IF EXISTS `Canciones`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Canciones` (
  `Id_Canciones` int(11) NOT NULL AUTO_INCREMENT,
  `Id_Disco` int(11) DEFAULT NULL,
  `Nombre_Cancion` varchar(50) NOT NULL,
  `Numero_Visitas` int(11) DEFAULT NULL,
  `Duracion_Cancion` double DEFAULT NULL,
  `Descripcion_De_Cancion` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`Id_Canciones`),
  KEY `Id_Disco` (`Id_Disco`),
  CONSTRAINT `Canciones_ibfk_1` FOREIGN KEY (`Id_Disco`) REFERENCES `Disco` (`Id_Disco`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Canciones`
--

LOCK TABLES `Canciones` WRITE;
/*!40000 ALTER TABLE `Canciones` DISABLE KEYS */;
INSERT INTO `Canciones` VALUES (1,1,'Adan y Eva',25000,3,'Historia de un amor'),(2,1,'La Valse D’Amélie',33333,3,' escritas pensando en el nombre de una mujer'),(3,2,'La bella y la bestia',20000,4,'jamintented del rick'),(4,2,' Blanca',10000,2,'la mujer de mi vida '),(5,1,'La mas bella',16000,3,'salsa cubana en la abana'),(6,2,'El amor',12000,3,'La magia del amor Ricardo Arjona'),(7,6,'Señora Mia',10000,2,'Una historia de amor'),(8,3,'El Dial',12000,2,'Historia del dial ambiental Mauricio Sarri'),(9,5,'La diabla ',10000,3,'Romeo santos albun 2012'),(10,4,'El tiburon',100000,3,'llego tu tiburon anbiente regueton'),(11,4,'Amigo',14254,1,'Romeo santos '),(12,2,'Lluvia',1425872,3,'salsa romantica '),(13,2,'pedro',100000,4,'salsa romantica ');
/*!40000 ALTER TABLE `Canciones` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary table structure for view `Canciones_favoritas_De_Usuarios`
--

DROP TABLE IF EXISTS `Canciones_favoritas_De_Usuarios`;
/*!50001 DROP VIEW IF EXISTS `Canciones_favoritas_De_Usuarios`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `Canciones_favoritas_De_Usuarios` (
  `Id_Usuario` tinyint NOT NULL,
  `Usuario` tinyint NOT NULL,
  `Nombre_Cancion` tinyint NOT NULL,
  `Duracion_Cancion` tinyint NOT NULL,
  `Numero_Visitas` tinyint NOT NULL,
  `Descripcion_De_Cancion` tinyint NOT NULL,
  `Nombre_Disco` tinyint NOT NULL,
  `Numero_De_Canciones` tinyint NOT NULL,
  `Fecha_Lanzamiento` tinyint NOT NULL,
  `Nombre_Artista` tinyint NOT NULL,
  `Apellido_Artista` tinyint NOT NULL,
  `Alias` tinyint NOT NULL,
  `Fecha_Nacimento` tinyint NOT NULL,
  `Nacionalidad` tinyint NOT NULL,
  `Numero_Seguidores` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `Disco`
--

DROP TABLE IF EXISTS `Disco`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Disco` (
  `Id_Disco` int(11) NOT NULL AUTO_INCREMENT,
  `Id_Artista` int(11) DEFAULT NULL,
  `Nombre_Disco` varchar(50) NOT NULL,
  `Numero_De_Canciones` int(11) DEFAULT NULL,
  `Fecha_Lanzamiento` date DEFAULT NULL,
  `Descripcion_Disco` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`Id_Disco`),
  KEY `Id_Artista` (`Id_Artista`),
  CONSTRAINT `Disco_ibfk_1` FOREIGN KEY (`Id_Artista`) REFERENCES `Artista` (`Id_Artista`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Disco`
--

LOCK TABLES `Disco` WRITE;
/*!40000 ALTER TABLE `Disco` DISABLE KEYS */;
INSERT INTO `Disco` VALUES (1,1,'Mi Corazon',10,'2000-12-20','Leto en Mi corazon'),(2,2,'Siembra',20,'1986-10-15','Fania Records'),(3,3,'Live at the Cheetah',10,'1996-02-10','Es el gran disco de las Estrellas de Fania'),(4,4,'De ti depende',6,'1995-11-01','El mayor icono del género'),(5,5,'Yo soy del son a la salsa',22,'1986-12-25','Varios artistas, Universal'),(6,6,'En vivo',10,'2000-10-30','EL universal cantante'),(7,7,'Lo mejor de Joe Arrollo',20,'2010-03-09','Lo mejor '),(8,8,'Una década',10,'2010-12-03','Desde cuba con amor'),(9,9,'Una década',6,'2015-09-02','Sonora Ponceña, Música Latina Internacional, 1985');
/*!40000 ALTER TABLE `Disco` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Favoritas`
--

DROP TABLE IF EXISTS `Favoritas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Favoritas` (
  `Id_Favotitas` int(11) NOT NULL AUTO_INCREMENT,
  `Id_Usuario` int(11) DEFAULT NULL,
  `Id_Canciones` int(11) DEFAULT NULL,
  PRIMARY KEY (`Id_Favotitas`),
  KEY `Id_Usuario` (`Id_Usuario`),
  KEY `Id_Canciones` (`Id_Canciones`),
  CONSTRAINT `Favoritas_ibfk_1` FOREIGN KEY (`Id_Usuario`) REFERENCES `Usuario` (`Id_Usuario`),
  CONSTRAINT `Favoritas_ibfk_2` FOREIGN KEY (`Id_Canciones`) REFERENCES `Canciones` (`Id_Canciones`)
) ENGINE=InnoDB AUTO_INCREMENT=58 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Favoritas`
--

LOCK TABLES `Favoritas` WRITE;
/*!40000 ALTER TABLE `Favoritas` DISABLE KEYS */;
INSERT INTO `Favoritas` VALUES (38,2,1),(39,3,2),(49,4,3),(50,5,4),(51,14,5),(52,15,6),(53,16,7),(54,17,8),(55,18,9),(56,19,10),(57,20,11);
/*!40000 ALTER TABLE `Favoritas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Lista_Reproducciones`
--

DROP TABLE IF EXISTS `Lista_Reproducciones`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Lista_Reproducciones` (
  `Id_LR` int(11) NOT NULL AUTO_INCREMENT,
  `Id_Usuario` int(11) DEFAULT NULL,
  PRIMARY KEY (`Id_LR`),
  KEY `Id_Usuario` (`Id_Usuario`),
  CONSTRAINT `Lista_Reproducciones_ibfk_1` FOREIGN KEY (`Id_Usuario`) REFERENCES `Usuario` (`Id_Usuario`)
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Lista_Reproducciones`
--

LOCK TABLES `Lista_Reproducciones` WRITE;
/*!40000 ALTER TABLE `Lista_Reproducciones` DISABLE KEYS */;
INSERT INTO `Lista_Reproducciones` VALUES (15,2),(16,3),(30,4),(31,5),(32,14),(33,15),(34,16),(35,17),(36,18),(37,19),(38,20);
/*!40000 ALTER TABLE `Lista_Reproducciones` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Login`
--

DROP TABLE IF EXISTS `Login`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Login` (
  `Id_Login` int(11) NOT NULL AUTO_INCREMENT,
  `Correo` varchar(50) NOT NULL,
  `Recuperacion_Pass` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`Id_Login`),
  UNIQUE KEY `Correo` (`Correo`)
) ENGINE=InnoDB AUTO_INCREMENT=113 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Login`
--

LOCK TABLES `Login` WRITE;
/*!40000 ALTER TABLE `Login` DISABLE KEYS */;
INSERT INTO `Login` VALUES (1,'vitae.semper@faucibusorci.co.uk','Austin'),(2,'feugiat@cursusNunc.edu','Fritz'),(3,'Phasellus@mauris.org','Zenia'),(4,'eget.ipsum.Suspendisse@in.co.uk','Patricia'),(5,'vulputate.posuere@Nullamnisl.org','Zachery'),(6,'convallis@placerat.edu','Brenden'),(7,'elit.pellentesque.a@pedeCum.co.uk','Igor'),(8,'et@scelerisqueneque.org','Galvin'),(9,'fermentum.metus.Aenean@dictumeueleifend.org','Basil'),(10,'eu.nulla.at@ipsum.edu','Shafira'),(11,'Vestibulum.ante@sagittisDuis.ca','Kaye'),(12,'luctus@dapibusrutrumjusto.net','Yen'),(13,'magna.Praesent.interdum@Donecelementum.co.uk','Yolanda'),(14,'amet.ante@lectusCumsociis.edu','TaShya'),(15,'cursus.luctus@euismod.edu','Declan'),(16,'Vestibulum.ut@tinciduntdui.edu','Otto'),(17,'amet@etlaciniavitae.ca','Nicholas'),(18,'iaculis@erat.ca','Larissa'),(19,'Proin.velit@Phasellusinfelis.co.uk','Macon'),(20,'Mauris.eu@maurissit.co.uk','Bernard'),(21,'Maecenas.iaculis.aliquet@etmalesuadafames.net','GBV46PQH7NY'),(22,'ligula@molestie.co.uk','ZDZ64WYE1HM'),(23,'malesuada.fringilla@magna.ca','OUM94OIY0QB'),(24,'dolor.quam.elementum@Integerid.com','BIF41CJV0QM'),(25,'egestas@Phasellus.edu','JDK08HCB0TT'),(26,'vulputate@Aliquamauctorvelit.co.uk','HMV78JQW1WQ'),(27,'arcu.eu@Inornare.ca','DOH87PJH3VK'),(28,'arcu@iaculisquispede.co.uk','KNN20CEW6XR'),(29,'Maecenas.libero.est@ettristiquepellentesque.co.uk','JEU11CHT3MW'),(30,'gravida.mauris@pedeetrisus.ca','IQA49ROZ5EV'),(31,'neque.Nullam@neceuismodin.edu','NLT66PDC8QL'),(32,'pede.ultrices.a@ametrisus.com','HJB71IVI6NY'),(33,'quis@lacuspede.edu','GQH94OQJ4ZR'),(34,'sagittis.Nullam.vitae@dictumauguemalesuada.net','TOF54MJD7ZB'),(35,'non.enim.commodo@dictumplacerataugue.ca','SEI28EUI4LU'),(36,'magna@laciniamattis.org','QBG97JHV0XN'),(37,'Nulla.tincidunt@feugiattelluslorem.com','CPT02LAI9OL'),(38,'felis.ullamcorper@ultriciesligulaNullam.com','XPZ16IFQ1GC'),(39,'laoreet.libero.et@erosProin.net','ZRU83KUU4EG'),(40,'nascetur@Donec.net','CAN48SQO8OT'),(41,'velit.eu@atortorNunc.org','WAF40VHQ0VF'),(42,'vestibulum.massa@risus.edu','LEB77BPO2MJ'),(43,'Donec.luctus@blanditmattisCras.org','ICD19NUV9BH'),(44,'in.molestie.tortor@ac.ca','OIN37PIS2KV'),(45,'elit@temporerat.ca','SHX45ONI9KC'),(46,'senectus.et.netus@Uttinciduntorci.edu','TNE83WDL9RO'),(47,'Phasellus@nisiMauris.co.uk','KLS15TXH9KQ'),(48,'blandit@amet.org','HMM01ETK9KN'),(49,'Proin.velit.Sed@sitamet.net','TCC88OKB3MS'),(50,'natoque@tellussemmollis.co.uk','FSW47JUP7AU'),(51,'est.tempor@inceptoshymenaeosMauris.net','GPS12JJX4NX'),(52,'lacus.Quisque.purus@feugiat.net','RBV05IRP8VM'),(53,'ut@fringillapurusmauris.com','RLO48FCY6ZD'),(54,'nec.quam.Curabitur@loremfringilla.org','PMW38UYF6OZ'),(55,'lorem.ac.risus@Uttincidunt.net','OFP26DBW9AL'),(56,'porttitor.vulputate.posuere@gravida.org','OSB47SEY1DC'),(57,'enim.nec.tempus@adipiscing.org','XJR36AAY8EU'),(58,'vestibulum.neque@necmaurisblandit.net','TDR47CSX1CN'),(59,'Mauris@dolor.net','FJC61SII6LY'),(60,'eu.neque.pellentesque@ligula.net','OEJ54WPH9ZN'),(69,'nulla.vulputate@inceptoshymenaeos.co.uk','VMM55HLQ1JD'),(70,'sed.sapien@necimperdiet.edu','FAX65GOY3TD'),(71,'Integer@neque.co.uk','UQT98GQZ4US'),(72,'consequat@atlacus.ca','FJV66WYL9RJ'),(73,'lectus.rutrum@Sednunc.co.uk','COP54YEQ6GT'),(74,'vulputate.velit@consectetueradipiscing.edu','WSS16VMN7TE'),(75,'Praesent.eu.dui@metusvitaevelit.ca','SYC57EWO7DF'),(76,'Cras@quam.org','KKQ93NWK3LT'),(77,'Donec@quamquisdiam.ca','XFY32BNF6JW'),(78,'pede.sagittis@aceleifendvitae.edu','YWV56SRP2FX'),(79,'orci.luctus.et@nisiCumsociis.org','NGC90PPV5ZE'),(80,'nec.urna.et@mauris.net','MAB69FNZ2ZZ'),(81,'nibh.lacinia.orci@erosturpis.net','GYG65DLB2IO'),(82,'a.felis.ullamcorper@eu.ca','UXK22LCX4SF'),(83,'vitae.mauris@vitaeorciPhasellus.edu','NLE30MGZ6UM'),(84,'feugiat@posuereenim.net','SHF42RMT8HF'),(85,'lectus.sit.amet@acsem.org','ROU62UNW4PD'),(86,'vel.faucibus@vitae.org','TGP26BNM5JX'),(87,'Quisque.ac@loremsit.co.uk','RYJ36UIO0NX'),(88,'ante.ipsum.primis@quam.edu','OFT07QTJ7UN'),(89,'mus.Proin@Uttinciduntvehicula.ca','TJA90PGX4MH'),(90,'mauris.sit@consequatenimdiam.ca','AQN30SDV8NM'),(91,'orci.luctus.et@dolordolortempus.co.uk','TWK30ZME6HH'),(92,'ornare.tortor.at@Etiamligulatortor.org','SFM26GTQ6PE'),(93,'accumsan.neque.et@Aliquam.com','IRS44DYP2XB'),(94,'gravida.mauris.ut@sed.edu','ICG22IWX0TH'),(95,'ligula@quamquisdiam.ca','DNW65DOR8DI'),(96,'tempus.lorem@nuncestmollis.ca','HVM99LXH9HS'),(97,'mauris.a@gravida.ca','QMR37HNO2ZW'),(98,'scelerisque@necimperdietnec.com','OID98WKL1JY'),(99,'tincidunt@non.ca','VLG90WZE8NU'),(100,'Mauris.vel@ipsumleo.net','GGA23UFM2RC'),(101,'Sed.molestie.Sed@orciPhasellus.ca','INF42DVI2WW'),(102,'eleifend@convallis.com','IND29QAL0GU'),(103,'eget.ipsum@aliquetPhasellusfermentum.net','DUN27FFX8DK'),(104,'Donec@elit.net','NWX16NBB8EA'),(105,'Nullam.lobortis.quam@Proin.edu','WWU50QBU6NN'),(106,'Nunc.pulvinar@orci.com','PND31HHR9BP'),(107,'Fusce@velvenenatisvel.org','BVQ49KJG8AP'),(108,'orci.Donec.nibh@purus.co.uk','CBF70RNF9IP'),(109,'libero.Proin.sed@fringillaest.net','TVN92KTI6MZ'),(110,'tellus@pedemalesuadavel.edu','LWK00UAB5ON'),(111,'vehicula.risus.Nulla@duisemper.edu','NGZ29OKC7TF'),(112,'quis@vitaevelitegestas.ca','MOG30CWC0GD');
/*!40000 ALTER TABLE `Login` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Pago`
--

DROP TABLE IF EXISTS `Pago`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Pago` (
  `Id_Pago` int(11) NOT NULL AUTO_INCREMENT,
  `Id_Usuario` int(11) DEFAULT NULL,
  `Nombre_Pro_Tarjeta` varchar(50) NOT NULL,
  `Numero_Tarjeta` float DEFAULT NULL,
  `Fecha_Vencimiento` varchar(7) NOT NULL,
  `Codigo_Seguridad` int(3) NOT NULL,
  PRIMARY KEY (`Id_Pago`),
  UNIQUE KEY `Nombre_Pro_Tarjeta` (`Nombre_Pro_Tarjeta`),
  UNIQUE KEY `Numero_Tarjeta` (`Numero_Tarjeta`),
  KEY `Id_Usuario` (`Id_Usuario`),
  CONSTRAINT `Pago_ibfk_1` FOREIGN KEY (`Id_Usuario`) REFERENCES `Usuario` (`Id_Usuario`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Pago`
--

LOCK TABLES `Pago` WRITE;
/*!40000 ALTER TABLE `Pago` DISABLE KEYS */;
INSERT INTO `Pago` VALUES (1,2,'Brayan Mina',2.12542e16,'02/2020',625),(2,3,'Elias Mai',2.14524e15,'03/2015',675);
/*!40000 ALTER TABLE `Pago` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary table structure for view `ReporteIngresoDeUsuario`
--

DROP TABLE IF EXISTS `ReporteIngresoDeUsuario`;
/*!50001 DROP VIEW IF EXISTS `ReporteIngresoDeUsuario`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `ReporteIngresoDeUsuario` (
  `Nombre_Usuario` tinyint NOT NULL,
  `Ultima_fecha_Ingreso` tinyint NOT NULL,
  `Entrada` tinyint NOT NULL,
  `Salida` tinyint NOT NULL,
  `Cantidad_Ingreso` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `Reporte_Canciones_Mas_Escuchadas`
--

DROP TABLE IF EXISTS `Reporte_Canciones_Mas_Escuchadas`;
/*!50001 DROP VIEW IF EXISTS `Reporte_Canciones_Mas_Escuchadas`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `Reporte_Canciones_Mas_Escuchadas` (
  `Nombre_Cancion` tinyint NOT NULL,
  `Nombre_Disco` tinyint NOT NULL,
  `Nombre_Artististico` tinyint NOT NULL,
  `Cant_visitas` tinyint NOT NULL,
  `Usuarios_diferentes` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `Restrincion`
--

DROP TABLE IF EXISTS `Restrincion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Restrincion` (
  `Id_Restrincion` int(11) NOT NULL AUTO_INCREMENT,
  `Nombre_Restrincion` varchar(50) NOT NULL,
  PRIMARY KEY (`Id_Restrincion`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Restrincion`
--

LOCK TABLES `Restrincion` WRITE;
/*!40000 ALTER TABLE `Restrincion` DISABLE KEYS */;
INSERT INTO `Restrincion` VALUES (1,'lectura'),(2,'lectura y escriptura'),(3,'lectura, escriptura'),(4,'lectura, escriptura, eliminar');
/*!40000 ALTER TABLE `Restrincion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Rol`
--

DROP TABLE IF EXISTS `Rol`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Rol` (
  `Id_Rol` int(11) NOT NULL AUTO_INCREMENT,
  `Nombre_Del_Rol` varchar(50) NOT NULL,
  `Id_Restrincion` int(11) DEFAULT NULL,
  PRIMARY KEY (`Id_Rol`),
  KEY `fk_id_Rol` (`Id_Restrincion`),
  CONSTRAINT `fk_id_Rol` FOREIGN KEY (`Id_Restrincion`) REFERENCES `Restrincion` (`Id_Restrincion`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Rol`
--

LOCK TABLES `Rol` WRITE;
/*!40000 ALTER TABLE `Rol` DISABLE KEYS */;
INSERT INTO `Rol` VALUES (1,'Administrador',4),(2,'Digitador',3),(3,'Coordinador',2),(4,'Monitor Evaluador',2),(5,'Investigador de Recursos',2),(6,'Invitado',1),(7,'Implementador',2),(8,'Cohesionador',2);
/*!40000 ALTER TABLE `Rol` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary table structure for view `Roles_de_Usuario`
--

DROP TABLE IF EXISTS `Roles_de_Usuario`;
/*!50001 DROP VIEW IF EXISTS `Roles_de_Usuario`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `Roles_de_Usuario` (
  `Id_Usuario` tinyint NOT NULL,
  `Nombre_Usuario` tinyint NOT NULL,
  `Apellido_Usuario` tinyint NOT NULL,
  `fecha_Nacimiento` tinyint NOT NULL,
  `RolDeUsuario` tinyint NOT NULL,
  `Permisos` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `Seguidores`
--

DROP TABLE IF EXISTS `Seguidores`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Seguidores` (
  `Id_Seguidores` int(11) NOT NULL AUTO_INCREMENT,
  `Id_Usuario` int(11) DEFAULT NULL,
  PRIMARY KEY (`Id_Seguidores`),
  KEY `Id_Usuario` (`Id_Usuario`),
  CONSTRAINT `Seguidores_ibfk_1` FOREIGN KEY (`Id_Usuario`) REFERENCES `Usuario` (`Id_Usuario`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Seguidores`
--

LOCK TABLES `Seguidores` WRITE;
/*!40000 ALTER TABLE `Seguidores` DISABLE KEYS */;
INSERT INTO `Seguidores` VALUES (3,2),(4,3),(24,4),(25,5),(26,14),(27,15),(28,16),(29,17),(30,18),(31,19),(32,20);
/*!40000 ALTER TABLE `Seguidores` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Sugerencia_Canciones`
--

DROP TABLE IF EXISTS `Sugerencia_Canciones`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Sugerencia_Canciones` (
  `Id_Sugerencias` int(11) NOT NULL AUTO_INCREMENT,
  `Id_LR` int(11) DEFAULT NULL,
  `Id_Canciones` int(11) DEFAULT NULL,
  PRIMARY KEY (`Id_Sugerencias`),
  KEY `Id_Canciones` (`Id_Canciones`),
  KEY `Id_LR` (`Id_LR`),
  CONSTRAINT `Sugerencia_Canciones_ibfk_1` FOREIGN KEY (`Id_Canciones`) REFERENCES `Canciones` (`Id_Canciones`),
  CONSTRAINT `Sugerencia_Canciones_ibfk_2` FOREIGN KEY (`Id_LR`) REFERENCES `Lista_Reproducciones` (`Id_LR`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Sugerencia_Canciones`
--

LOCK TABLES `Sugerencia_Canciones` WRITE;
/*!40000 ALTER TABLE `Sugerencia_Canciones` DISABLE KEYS */;
INSERT INTO `Sugerencia_Canciones` VALUES (1,15,1),(2,16,2),(3,31,3),(4,32,4),(5,33,5),(6,34,6),(7,35,7),(8,36,8),(9,37,9),(10,37,10);
/*!40000 ALTER TABLE `Sugerencia_Canciones` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Usuario`
--

DROP TABLE IF EXISTS `Usuario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Usuario` (
  `Id_Usuario` int(11) NOT NULL AUTO_INCREMENT,
  `Nombre_Usuario` varchar(50) NOT NULL,
  `Apellido_Usuario` varchar(50) NOT NULL,
  `fecha_Nacimiento` date NOT NULL,
  `Id_Rol` int(11) DEFAULT NULL,
  `Id_Login` int(11) DEFAULT NULL,
  PRIMARY KEY (`Id_Usuario`),
  KEY `Id_Rol` (`Id_Rol`),
  KEY `Id_Login` (`Id_Login`),
  CONSTRAINT `Usuario_ibfk_1` FOREIGN KEY (`Id_Rol`) REFERENCES `Rol` (`Id_Rol`),
  CONSTRAINT `Usuario_ibfk_2` FOREIGN KEY (`Id_Login`) REFERENCES `Login` (`Id_Login`)
) ENGINE=InnoDB AUTO_INCREMENT=54 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Usuario`
--

LOCK TABLES `Usuario` WRITE;
/*!40000 ALTER TABLE `Usuario` DISABLE KEYS */;
INSERT INTO `Usuario` VALUES (2,'Brayan','Morres','1992-01-25',1,1),(3,'Antonio','Milik','1892-05-30',2,2),(4,'Migel','Mael','1996-11-25',3,3),(5,'Marco','Merlin','1996-12-10',4,4),(14,'Deborah','Cochran','1996-02-15',2,93),(15,'Travis','Phillips','1996-02-15',7,39),(16,'Rebecca','Carver','1996-02-15',8,100),(17,'Abbot','Garrison','1996-02-15',1,41),(18,'Alexander','Carter','1996-02-15',8,84),(19,'Joseph','Trujillo','1996-02-15',6,94),(20,'Kirsten','Huffman','1996-02-15',4,73),(21,'Amery','Shaw','1996-02-15',3,23),(40,'Brett','Haley','1996-02-15',6,89),(42,'Giacomo','Oconnor','1996-02-15',4,39),(43,'Lacy','Warner','1996-02-15',3,91),(45,'Zelenia','Oneal','1996-02-15',5,28),(46,'Chandler','Cox','1996-02-15',2,59),(48,'Chelsea','Campbell','1996-02-15',3,38),(49,'Kendall','Brooks','1996-02-15',5,93),(50,'Octavius','Mclean','1996-02-15',7,72),(51,'Jada','Gibbs','1996-02-15',1,22),(52,'Fleur','Stark','1996-02-15',6,31),(53,'Macey','Strickland','1996-02-15',5,88);
/*!40000 ALTER TABLE `Usuario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Final view structure for view `Canciones_favoritas_De_Usuarios`
--

/*!50001 DROP TABLE IF EXISTS `Canciones_favoritas_De_Usuarios`*/;
/*!50001 DROP VIEW IF EXISTS `Canciones_favoritas_De_Usuarios`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `Canciones_favoritas_De_Usuarios` AS select `Usuario`.`Id_Usuario` AS `Id_Usuario`,concat(`Usuario`.`Nombre_Usuario`,'',`Usuario`.`Apellido_Usuario`) AS `Usuario`,`Canciones`.`Nombre_Cancion` AS `Nombre_Cancion`,`Canciones`.`Duracion_Cancion` AS `Duracion_Cancion`,`Canciones`.`Numero_Visitas` AS `Numero_Visitas`,`Canciones`.`Descripcion_De_Cancion` AS `Descripcion_De_Cancion`,`Disco`.`Nombre_Disco` AS `Nombre_Disco`,`Disco`.`Numero_De_Canciones` AS `Numero_De_Canciones`,`Disco`.`Fecha_Lanzamiento` AS `Fecha_Lanzamiento`,`Artista`.`Nombre_Artista` AS `Nombre_Artista`,`Artista`.`Apellido_Artista` AS `Apellido_Artista`,`Artista`.`Nombre_Artististico` AS `Alias`,`Artista`.`fecha_Nacimiento_Artista` AS `Fecha_Nacimento`,`Artista`.`Nacionalidad` AS `Nacionalidad`,`Artista`.`Numero_Seguidores` AS `Numero_Seguidores` from ((((`Artista` join `Disco` on(`Artista`.`Id_Artista` = `Disco`.`Id_Artista`)) join `Canciones` on(`Disco`.`Id_Disco` = `Canciones`.`Id_Disco`)) join `Favoritas` on(`Favoritas`.`Id_Canciones` = `Canciones`.`Id_Canciones`)) join `Usuario` on(`Usuario`.`Id_Usuario` = `Favoritas`.`Id_Usuario`)) order by `Artista`.`Numero_Seguidores` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `ReporteIngresoDeUsuario`
--

/*!50001 DROP TABLE IF EXISTS `ReporteIngresoDeUsuario`*/;
/*!50001 DROP VIEW IF EXISTS `ReporteIngresoDeUsuario`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `ReporteIngresoDeUsuario` AS select `Usuario`.`Nombre_Usuario` AS `Nombre_Usuario`,max(`Auditoria`.`fecha_ingreso`) AS `Ultima_fecha_Ingreso`,`Auditoria`.`Entrada` AS `Entrada`,`Auditoria`.`Salida` AS `Salida`,count(`Auditoria`.`Id_Usuario`) AS `Cantidad_Ingreso` from (`Usuario` join `Auditoria` on(`Usuario`.`Id_Usuario` = `Auditoria`.`Id_Usuario`)) group by `Usuario`.`Id_Usuario` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `Reporte_Canciones_Mas_Escuchadas`
--

/*!50001 DROP TABLE IF EXISTS `Reporte_Canciones_Mas_Escuchadas`*/;
/*!50001 DROP VIEW IF EXISTS `Reporte_Canciones_Mas_Escuchadas`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `Reporte_Canciones_Mas_Escuchadas` AS select `Canciones`.`Nombre_Cancion` AS `Nombre_Cancion`,`Disco`.`Nombre_Disco` AS `Nombre_Disco`,`Artista`.`Nombre_Artististico` AS `Nombre_Artististico`,`Canciones`.`Numero_Visitas` AS `Cant_visitas`,count(`Usuario`.`Nombre_Usuario`) AS `Usuarios_diferentes` from ((((`Artista` join `Disco` on(`Artista`.`Id_Artista` = `Disco`.`Id_Artista`)) join `Canciones` on(`Disco`.`Id_Disco` = `Canciones`.`Id_Disco`)) join `Favoritas` on(`Favoritas`.`Id_Canciones` = `Canciones`.`Id_Canciones`)) join `Usuario` on(`Usuario`.`Id_Usuario` = `Favoritas`.`Id_Usuario`)) group by `Usuario`.`Id_Usuario` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `Roles_de_Usuario`
--

/*!50001 DROP TABLE IF EXISTS `Roles_de_Usuario`*/;
/*!50001 DROP VIEW IF EXISTS `Roles_de_Usuario`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `Roles_de_Usuario` AS select `Usuario`.`Id_Usuario` AS `Id_Usuario`,`Usuario`.`Nombre_Usuario` AS `Nombre_Usuario`,`Usuario`.`Apellido_Usuario` AS `Apellido_Usuario`,`Usuario`.`fecha_Nacimiento` AS `fecha_Nacimiento`,`Rol`.`Nombre_Del_Rol` AS `RolDeUsuario`,`Restrincion`.`Nombre_Restrincion` AS `Permisos` from ((`Usuario` join `Rol` on(`Usuario`.`Id_Rol` = `Rol`.`Id_Rol`)) join `Restrincion` on(`Rol`.`Id_Restrincion` = `Restrincion`.`Id_Restrincion`)) order by `Rol`.`Nombre_Del_Rol` */;
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

-- Dump completed on 2020-06-02 23:07:39
