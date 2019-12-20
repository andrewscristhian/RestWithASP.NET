-- MySQL dump 10.13  Distrib 8.0.18, for Win64 (x86_64)
--
-- Host: localhost    Database: rest_with_asp_net
-- ------------------------------------------------------
-- Server version	8.0.18

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
-- Table structure for table `books`
--

DROP TABLE IF EXISTS `books`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `books` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `Author` longtext,
  `LaunchDate` datetime(6) NOT NULL,
  `Price` decimal(65,2) NOT NULL,
  `Title` longtext,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `books`
--

LOCK TABLES `books` WRITE;
/*!40000 ALTER TABLE `books` DISABLE KEYS */;
INSERT INTO `books` VALUES (1,'Michael C. Feathers','2017-11-29 13:50:05.878000',49.00,'Working effectively with legacy code'),(2,'Ralph Johnson, Erich Gamma, John Vlissides e Richard Helm','2017-11-29 15:15:13.636000',45.00,'Design Patterns'),(3,'Robert C. Martin','2009-01-10 00:00:00.000000',77.00,'Clean Code'),(4,'Crockford','2017-11-07 15:09:01.674000',67.00,'JavaScript'),(5,'Steve McConnell','2017-11-07 15:09:01.674000',58.00,'Code complete'),(6,'Martin Fowler e Kent Beck','2017-11-07 15:09:01.674000',88.00,'Refactoring'),(7,'Eric Freeman, Elisabeth Freeman, Kathy Sierra, Bert Bates','2017-11-07 15:09:01.674000',110.00,'Head First Design Patterns'),(8,'Eric Evans','2017-11-07 15:09:01.674000',92.00,'Domain Driven Design'),(9,'Brian Goetz e Tim Peierls','2017-11-07 15:09:01.674000',80.00,'Java Concurrency in Practice'),(10,'Susan Cain','2017-11-07 15:09:01.674000',123.00,'O poder dos quietos'),(11,'Roger S. Pressman','2017-11-07 15:09:01.674000',56.00,'Engenharia de Software: uma abordagem profissional'),(12,'Viktor Mayer-Schonberger e Kenneth Kukier','2017-11-07 15:09:01.674000',54.00,'Big Data: como extrair volume, variedade, velocidade e valor da avalanche de informação cotidiana'),(13,'Richard Hunter e George Westerman','2017-11-07 15:09:01.674000',95.00,'O verdadeiro valor de TI'),(14,'Marc J. Schiller','2017-11-07 15:09:01.674000',45.00,'Os 11 segredos de líderes de TI altamente influentes'),(15,'Aguinaldo Aragon Fernandes e Vladimir Ferraz de Abreu','2017-11-07 15:09:01.674000',54.00,'Implantando a governança de TI');
/*!40000 ALTER TABLE `books` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `changelog`
--

DROP TABLE IF EXISTS `changelog`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `changelog` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` tinyint(4) DEFAULT NULL,
  `version` varchar(50) DEFAULT NULL,
  `description` varchar(200) NOT NULL,
  `name` varchar(300) NOT NULL,
  `checksum` varchar(32) DEFAULT NULL,
  `installed_by` varchar(100) NOT NULL,
  `installed_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `success` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `changelog`
--

LOCK TABLES `changelog` WRITE;
/*!40000 ALTER TABLE `changelog` DISABLE KEYS */;
INSERT INTO `changelog` VALUES (1,2,'0','Empty schema found: rest_with_asp_net.','rest_with_asp_net','','root','2019-12-18 21:08:41',1),(2,0,'1.0.1','Create Table Persons','V1_0_1__Create_Table_Persons.sql','5C57601C086E1B99BBB04D07959D0F8D','root','2019-12-18 21:08:41',1),(3,0,'1.0.2','Alter Table Persons','V1_0_2__Alter_Table_Persons.sql','CD743A62C549732597DD40FB2A37EAEA','root','2019-12-18 21:08:42',1),(4,0,'1.0.3','Create table books','V1_0_3__Create_table_books.sql','F549A23CB0D53684731DC7BCBD1C2CD2','root','2019-12-18 21:08:42',1),(5,0,'1.0.6','Drop table books','V1_0_6__Drop_table_books.sql','996116D4AC3B9566301DE7B869018E5E','root','2019-12-18 21:08:42',1),(6,0,'1.0.7','Recreate table books','V1_0_7__Recreate_table_books.sql','A24695A9F3D42357BCC78C08BF2FFD6C','root','2019-12-18 21:08:42',1);
/*!40000 ALTER TABLE `changelog` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `persons`
--

DROP TABLE IF EXISTS `persons`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `persons` (
  `Id` int(10) NOT NULL AUTO_INCREMENT,
  `FirstName` varchar(50) DEFAULT NULL,
  `LastName` varchar(50) DEFAULT NULL,
  `Address` varchar(50) DEFAULT NULL,
  `Gender` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=305 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `persons`
--

LOCK TABLES `persons` WRITE;
/*!40000 ALTER TABLE `persons` DISABLE KEYS */;
INSERT INTO `persons` VALUES (1,'Leandro','Costa','Uberlândia - Minas Gerais - Brasil','Male'),(2,'Flávio','Costa','Patos de Minas - Minas Gerais - Brasil','Male'),(5,'Blanch','Yakobovicz','9855 Moulton Pass','Female'),(6,'Opaline','Killgus','4 Armistice Center','Female'),(7,'Fredrika','Brakespear','7187 Carpenter Lane','Female'),(8,'Lilyan','De la Zenne','1959 Corry Plaza','Female'),(9,'Alvin','Kenrick','34641 Hayes Hill','Male'),(10,'Benjie','Maharey','23 1st Crossing','Male'),(11,'Brandise','Daybell','996 Kedzie Crossing','Female'),(12,'Petr','Pettko','26385 Sherman Hill','Male'),(13,'Mercedes','Lickorish','0 Spaight Lane','Female'),(14,'Rea','Lehon','988 Clyde Gallagher Lane','Female'),(15,'Whitney','McJarrow','00989 Dapin Hill','Male'),(16,'Vivyanne','Keinrat','24384 Meadow Ridge Trail','Female'),(17,'Delores','Land','5842 Bunker Hill Drive','Female'),(18,'Alexina','Herity','72 Grayhawk Center','Female'),(19,'Sacha','Ogers','956 Farwell Parkway','Female'),(20,'Nils','Swindlehurst','303 Gerald Pass','Male'),(21,'Elia','Ferrao','65 Anniversary Avenue','Male'),(22,'Derby','Blackaby','66548 Buena Vista Avenue','Male'),(23,'Charin','Klampt','92 Debs Pass','Female'),(24,'Netty','Riach','50 Eggendart Hill','Female'),(25,'Vallie','Menhci','82592 Red Cloud Terrace','Female'),(26,'Gage','Plumptre','055 High Crossing Circle','Male'),(27,'Perry','Bauduccio','42 Ridgeview Hill','Male'),(28,'Spencer','Kinmond','21 Johnson Street','Male'),(29,'Pennie','Fillery','8 Kinsman Road','Male'),(30,'Drucy','Clowney','34 Carberry Circle','Female'),(31,'Susan','Josefsen','9 Gina Drive','Female'),(32,'Leah','Cozzi','07 Dexter Lane','Female'),(33,'Cyndia','Goldsworthy','22010 Tennyson Point','Female'),(34,'Danell','Janacek','071 Northview Hill','Female'),(35,'Neils','Melhuish','1056 Ohio Pass','Male'),(36,'Athena','Tiery','0282 Garrison Way','Female'),(37,'Dallon','Anthon','5 Talisman Street','Male'),(38,'Giralda','Bourges','8 Aberg Road','Female'),(39,'Annora','Blowick','8 Memorial Court','Female'),(40,'Bart','Redfern','25 Lakewood Gardens Drive','Male'),(41,'Pebrook','Willmetts','1 Packers Center','Male'),(42,'Verile','Buckler','68818 Schurz Center','Female'),(43,'Raeann','Alpe','062 Hazelcrest Place','Female'),(44,'Hasty','Moorhouse','23709 Ryan Junction','Male'),(45,'Everett','Bruun','1 Kipling Place','Male'),(46,'Elizabeth','Cranshaw','2 Loeprich Street','Female'),(47,'Andy','Welden','8 Dottie Parkway','Female'),(48,'Arlyn','McNae','1553 Charing Cross Way','Female'),(49,'Finley','Champerlen','3796 American Alley','Male'),(50,'Filberte','Martonfi','53 Fuller Alley','Male'),(51,'Darcy','Gunston','89984 Acker Avenue','Male'),(52,'Anatol','Ratcliff','0235 Mosinee Crossing','Male'),(53,'Deane','Stirland','081 Everett Point','Female'),(54,'Dianna','Mathou','4 Grover Hill','Female'),(55,'Rory','Rawnsley','942 Petterle Lane','Female'),(56,'Meir','Di Biasi','107 South Terrace','Male'),(57,'Alleyn','Laundon','5950 Browning Lane','Male'),(58,'Clemens','Elwin','7170 Roxbury Junction','Male'),(59,'Amie','Petren','17785 Express Point','Female'),(60,'Eleanore','Kilbride','3967 Namekagon Way','Female'),(61,'Torre','Stack','9028 7th Drive','Male'),(62,'Holmes','Gyrgorcewicx','6 Raven Parkway','Male'),(63,'Pierrette','Maulden','80 Mayer Parkway','Female'),(64,'Libby','Isson','776 Declaration Pass','Female'),(65,'Amelie','Pol','82 Leroy Alley','Female'),(66,'Hazlett','Seden','649 Elka Circle','Male'),(67,'Ermina','Newbegin','05 Mallory Street','Female'),(68,'Mareah','Lantoph','485 Towne Point','Female'),(69,'Ashli','Norvill','3702 Shelley Avenue','Female'),(70,'Axel','Crease','11217 Morning Avenue','Male'),(71,'Hadrian','Mathouse','7 Center Center','Male'),(72,'Ariella','Newall','0 Ohio Point','Female'),(73,'Nancie','Inchcomb','7 South Circle','Female'),(74,'Sammie','Thorold','565 Manufacturers Hill','Male'),(75,'Wally','Burling','4957 Merrick Crossing','Male'),(76,'Marlene','Stygall','1376 David Place','Female'),(77,'Jania','Pierri','4 Stang Crossing','Female'),(78,'Blane','Dunnan','7250 Eastlawn Junction','Male'),(79,'Nicolette','Assiter','056 Sugar Park','Female'),(80,'Catrina','MacTague','323 West Plaza','Female'),(81,'Bee','Garshore','2892 Bluejay Center','Female'),(82,'Patti','Whitehead','7839 Blaine Lane','Female'),(83,'Hilarius','Hatchard','0661 Judy Court','Male'),(84,'Blane','Bodley','79546 Lindbergh Hill','Male'),(85,'Donica','Hughesdon','40377 Buena Vista Lane','Female'),(86,'Jerrie','Pitcaithley','828 Farwell Way','Female'),(87,'Ken','Gadsden','40325 Main Street','Male'),(88,'Minnie','Steaning','29 Nancy Alley','Female'),(89,'Barnabe','Membry','5515 New Castle Road','Male'),(90,'Car','MacQuarrie','348 Myrtle Way','Male'),(91,'Georgina','Zannotti','3 Gina Plaza','Female'),(92,'Ivory','Blowers','6453 Eastlawn Road','Female'),(93,'Sergei','Staddart','4254 Miller Park','Male'),(94,'Randal','Raun','1427 Meadow Ridge Center','Male'),(95,'Lannie','Mahon','475 Golf Course Trail','Male'),(96,'Jazmin','Clubb','0 Emmet Center','Female'),(97,'Ber','Onion','7475 Stang Court','Male'),(98,'Evangelia','Trice','4 Killdeer Point','Female'),(99,'Ave','Izzett','83486 Scoville Hill','Male'),(100,'Saw','Scading','8 Washington Court','Male'),(101,'Broderick','McLernon','0 Fieldstone Alley','Male'),(102,'Sophey','McCurry','76 Meadow Ridge Crossing','Female'),(103,'Linoel','Radke','0497 Londonderry Drive','Male'),(104,'Veriee','Bartolacci','343 Upham Court','Female'),(105,'Johnette','Joint','6 Susan Drive','Female'),(106,'Nan','Powers','964 Warrior Point','Female'),(107,'Silvain','Waulker','1 Brickson Park Parkway','Male'),(108,'Quintus','Ackenhead','7 Heath Lane','Male'),(109,'Gene','Gier','37 Debs Center','Male'),(110,'Edmon','Kelle','78 Reinke Drive','Male'),(111,'Kessia','Baldocci','33890 Truax Park','Female'),(112,'Annis','Gilyatt','3 Blue Bill Park Point','Female'),(113,'Caralie','Orrah','88461 Pepper Wood Parkway','Female'),(114,'Josselyn','Fetherstonhaugh','0904 Union Crossing','Female'),(115,'Cally','Amber','98 Bayside Place','Female'),(116,'Wolfie','Bosward','25313 Crownhardt Place','Male'),(117,'Ivie','Cona','990 Bayside Crossing','Female'),(118,'Lory','Clampe','6 Calypso Plaza','Female'),(119,'Rhett','Dudeney','8 Bayside Place','Male'),(120,'Udall','Grigorio','74 Bay Center','Male'),(121,'Tye','Wartonby','5 Eggendart Way','Male'),(122,'Jewel','Winborn','40261 International Pass','Female'),(123,'Holly','Rust','47177 Morning Terrace','Male'),(124,'Yasmeen','Tingly','25921 Arizona Place','Female'),(125,'Winonah','Bosley','3318 Donald Hill','Female'),(126,'Teena','Perone','9 Shoshone Hill','Female'),(127,'Perrine','Kinmond','90 Linden Alley','Female'),(128,'Karena','Tummond','53421 Hayes Center','Female'),(129,'Welsh','Howden','89062 Upham Alley','Male'),(130,'Siward','Gwillim','7317 Dexter Lane','Male'),(131,'Lovell','Beardshall','7 Trailsway Lane','Male'),(132,'Rees','Townley','9 Ludington Street','Male'),(133,'Edd','Sherel','38 Cambridge Court','Male'),(134,'Maurine','Ronchi','3 Melvin Crossing','Female'),(135,'Jenni','Salmoni','4296 Dapin Hill','Female'),(136,'Easter','Novacek','977 Bultman Street','Female'),(137,'Shawn','Tretter','324 Lindbergh Plaza','Male'),(138,'Balduin','Covill','0492 Sunfield Center','Male'),(139,'Lucien','Hewell','5545 Swallow Drive','Male'),(140,'Norrie','Colliss','06 Scott Point','Male'),(141,'Dee dee','Ostler','0 Bluestem Place','Female'),(142,'Calhoun','Birks','77 Hauk Place','Male'),(143,'Marjorie','Dionisetti','666 Surrey Drive','Female'),(144,'Jazmin','Yegoshin','8320 Sunbrook Terrace','Female'),(145,'Eugenio','Godsell','65093 Nova Hill','Male'),(146,'Hettie','Dannehl','40264 Norway Maple Junction','Female'),(147,'Lorant','Ffoulkes','103 Mccormick Street','Male'),(148,'Fransisco','Sextie','19 Russell Park','Male'),(149,'Marigold','Wolfindale','404 South Center','Female'),(150,'Dewain','Rollin','57 Lukken Crossing','Male'),(151,'Paulo','Insworth','4 Myrtle Center','Male'),(152,'Sean','Pavia','116 Ramsey Junction','Male'),(153,'Pattie','Rizzello','8974 Maryland Junction','Male'),(154,'Killy','Brackenbury','46 Grasskamp Point','Male'),(155,'Zaneta','McGahern','8019 Londonderry Drive','Female'),(156,'Josey','Milberry','25589 Stoughton Way','Female'),(157,'Janie','Lynes','5 Pankratz Court','Female'),(158,'Karrie','Woolaston','1867 Division Parkway','Female'),(159,'Hadria','Connick','51975 Shasta Plaza','Female'),(160,'Weston','Sturgess','6 Toban Junction','Male'),(161,'Fair','Grinnikov','717 Miller Park','Male'),(162,'Victor','Woodthorpe','20 Derek Court','Male'),(163,'Arabele','Walkey','4528 Del Sol Alley','Female'),(164,'Meagan','Blowick','89 Moose Parkway','Female'),(165,'Chancey','Lindemann','808 Westport Drive','Male'),(166,'Sibeal','Crowcombe','3623 Killdeer Crossing','Female'),(167,'Brigitta','Edwards','3308 Northview Pass','Female'),(168,'Benji','Tromans','720 Stone Corner Alley','Male'),(169,'Marylin','Pratley','59 American Circle','Female'),(170,'Clio','Clarke-Williams','28 Nobel Avenue','Female'),(171,'Batsheva','Joule','30484 Goodland Crossing','Female'),(172,'Orton','Felgate','3 Waubesa Parkway','Male'),(173,'Oralle','Moorman','1034 Crowley Terrace','Female'),(174,'Cindee','Crisell','48428 Loeprich Junction','Female'),(175,'Tamqrah','Ravilus','60 Twin Pines Circle','Female'),(176,'Lisette','Van De Cappelle','8 Annamark Center','Female'),(177,'Morgana','Forrington','892 Mayer Trail','Female'),(178,'Gunar','Roughan','538 Vernon Street','Male'),(179,'Leigha','Vidler','396 Oriole Avenue','Female'),(180,'Adeline','Barsham','290 Ohio Trail','Female'),(181,'Leopold','Mc Elory','07 Onsgard Junction','Male'),(182,'Flinn','Grimsdike','0061 Mandrake Plaza','Male'),(183,'Peri','Parfett','83 Porter Pass','Female'),(184,'Hastings','Marchington','34 Goodland Road','Male'),(185,'Ira','Pairpoint','27 Red Cloud Court','Female'),(186,'Erda','Langstaff','2551 Leroy Drive','Female'),(187,'Hale','Scopes','92 Pawling Parkway','Male'),(188,'Luigi','Maestro','28458 Schlimgen Lane','Male'),(189,'Ray','Tye','60 Logan Plaza','Male'),(190,'Igor','Postill','6 Pearson Park','Male'),(191,'Linnell','Capps','00530 Hallows Hill','Female'),(192,'Tiena','Callacher','1 Barby Plaza','Female'),(193,'Leena','Huntall','70 Esch Plaza','Female'),(194,'Randie','Arcase','847 Dryden Trail','Male'),(195,'Analiese','Margerrison','239 Hanover Court','Female'),(196,'Dulcinea','Holtom','04092 Brentwood Court','Female'),(197,'Bernard','Hayzer','77208 Parkside Center','Male'),(198,'Rutherford','Lacotte','33664 Center Court','Male'),(199,'Jock','Battle','08381 Anthes Plaza','Male'),(200,'Juliet','Harse','275 Sage Circle','Female'),(201,'Arabel','O\'Corrane','1 Marcy Place','Female'),(202,'Bernadina','Curtois','889 Morning Court','Female'),(203,'Eddy','Walklate','95537 Ilene Circle','Female'),(204,'Etty','Picton','5 Fallview Road','Female'),(205,'Lucian','Dwine','71893 La Follette Plaza','Male'),(206,'Leandra','Ewbank','56 Maple Court','Female'),(207,'Welsh','Exon','5 Mendota Way','Male'),(208,'Dennis','Corrie','99380 Sutteridge Place','Male'),(209,'Liane','Shillinglaw','951 Crescent Oaks Lane','Female'),(210,'Binnie','Maffioni','993 Meadow Ridge Park','Female'),(211,'Debby','Ginnaly','86888 Butternut Crossing','Female'),(212,'Ruthanne','Serjeant','8 Welch Place','Female'),(213,'Camellia','Dorn','64569 Portage Lane','Female'),(214,'Luke','Tegeller','02718 Luster Court','Male'),(215,'Kris','Lockitt','252 Rieder Avenue','Male'),(216,'Any','Gutierrez','14 Claremont Plaza','Male'),(217,'Roland','Stenson','930 Ludington Center','Male'),(218,'Herby','Goulstone','8963 Crowley Trail','Male'),(219,'Ezequiel','Gusticke','3195 Caliangt Road','Male'),(220,'Howie','Daulton','6171 Homewood Street','Male'),(221,'Arri','Bangs','847 Summit Terrace','Male'),(222,'Anna','Gwinnell','28 Aberg Road','Female'),(223,'Torin','Kuscha','42825 Hollow Ridge Avenue','Male'),(224,'Brien','Trudgion','9454 Gateway Way','Male'),(225,'Rodrique','Hanstock','8 Quincy Trail','Male'),(226,'Caleb','Pavett','9479 Fair Oaks Pass','Male'),(227,'Cele','Denes','12295 Loeprich Drive','Female'),(228,'Retha','Brunelleschi','03 Dahle Road','Female'),(229,'Cullin','Bransden','8585 Tennyson Parkway','Male'),(230,'Antony','Guiver','9184 Merry Drive','Male'),(231,'Janeva','Stanmer','1 Barby Circle','Female'),(232,'Cirstoforo','Jachimczak','966 Sherman Drive','Male'),(233,'Tonye','Abramzon','85150 Canary Parkway','Female'),(234,'Ambros','Hadcock','71 Kings Terrace','Male'),(235,'Budd','O\'Hern','23 Kipling Pass','Male'),(236,'Peggi','Quigley','60107 Montana Drive','Female'),(237,'Wildon','Pankhurst.','96 7th Hill','Male'),(238,'Eachelle','Boyle','0 Lyons Center','Female'),(239,'Lucius','Ravenhills','1932 Sachs Avenue','Male'),(240,'Amberly','Park','11745 Westerfield Road','Female'),(241,'Darla','Thomton','71973 Brickson Park Lane','Female'),(242,'Regan','Grubbe','3 Pennsylvania Junction','Male'),(243,'Jennine','Schorah','5329 Oxford Center','Female'),(244,'Maryrose','Wennam','08 Talmadge Plaza','Female'),(245,'Flori','Horry','672 Memorial Crossing','Female'),(246,'Edvard','Pegden','4152 Pierstorff Pass','Male'),(247,'Waylan','Bohlens','896 Stephen Park','Male'),(248,'Lyndel','Pymar','15 Southridge Alley','Female'),(249,'Bertina','Earie','14954 Susan Alley','Female'),(250,'Hyacinthia','Mathiot','1603 Claremont Lane','Female'),(251,'Hyman','Etridge','9318 Oriole Circle','Male'),(252,'Russ','Vaughten','5 Dayton Parkway','Male'),(253,'Baxy','Baseke','0855 Autumn Leaf Point','Male'),(254,'Augusto','Eastes','2515 Anthes Pass','Male'),(255,'Danika','Tuley','45 Welch Point','Female'),(256,'Michel','Brock','243 Elgar Park','Male'),(257,'Emma','Rothermel','113 Fulton Center','Female'),(258,'Ingram','Rao','70177 Bartillon Junction','Male'),(259,'Karmen','Kerslake','8026 Katie Pass','Female'),(260,'Roxie','Rappa','14567 Glendale Parkway','Female'),(261,'Miltie','Maseres','3 Gateway Crossing','Male'),(262,'Nicolle','Shiril','56 Lien Parkway','Female'),(263,'Christos','Dossetter','7 Kipling Drive','Male'),(264,'Sargent','Bentson','7033 Ohio Way','Male'),(265,'Dukey','Bellson','783 Lerdahl Way','Male'),(266,'Haywood','Bowld','41 Sachs Court','Male'),(267,'Valida','Commings','37768 Pine View Drive','Female'),(268,'Kev','Sarfatti','4 Lien Drive','Male'),(269,'Gearard','Frayne','91928 Arrowood Terrace','Male'),(270,'Nelia','Sinclair','846 West Parkway','Female'),(271,'Daveta','Malt','96181 Pond Trail','Female'),(272,'Hugues','Blaylock','06059 Loftsgordon Circle','Male'),(273,'Reta','Dingivan','093 Crest Line Alley','Female'),(274,'Zebadiah','Goodspeed','6 Gateway Parkway','Male'),(275,'Pate','Hiskey','2 Donald Avenue','Male'),(276,'Addia','Kuhn','0694 Ridge Oak Junction','Female'),(277,'Izaak','Squire','973 Vahlen Avenue','Male'),(278,'Crissy','Macauley','0557 Stuart Park','Female'),(279,'Todd','Di Franceschi','2354 Mitchell Trail','Male'),(280,'Lissa','Tewelson','1 Lakewood Trail','Female'),(281,'Norby','Schubert','08 Becker Plaza','Male'),(282,'Arleyne','Dudmarsh','9057 Rowland Court','Female'),(283,'Cass','Picknett','78 Westend Trail','Male'),(284,'Harrietta','Ryhorovich','6017 Canary Plaza','Female'),(285,'Adele','Bulfoot','609 Randy Way','Female'),(286,'Joelle','Gittus','17245 Utah Parkway','Female'),(287,'Chester','Sullivan','9 Truax Way','Male'),(288,'Leeanne','Karchowski','055 Chinook Junction','Female'),(289,'Lucky','Schimonek','2 Oak Valley Pass','Female'),(290,'Edythe','Fozzard','6359 Myrtle Junction','Female'),(291,'Layney','Ritch','7 Vernon Court','Female'),(292,'Daphene','Fogg','28142 Coleman Avenue','Female'),(293,'Curtis','Penrice','1 Nobel Road','Male'),(294,'Buddy','Cassam','7 Butterfield Avenue','Male'),(295,'Lem','Manns','82 Clemons Point','Male'),(296,'Alphonso','Eborn','067 Nelson Lane','Male'),(297,'Augustine','Sevier','058 Meadow Valley Alley','Male'),(298,'Elwyn','Ruter','13702 Crowley Place','Male'),(299,'Cirstoforo','Otteridge','36 Truax Terrace','Male'),(300,'Karrie','Divers','6 Lawn Trail','Female'),(301,'Mirabelle','Dwyer','659 Lien Place','Female'),(302,'Fields','MacKessock','56045 Moulton Junction','Male'),(303,'Francois','Canto','40939 Havey Trail','Male'),(304,'Helge','O\'Lynn','14533 Holmberg Pass','Female');
/*!40000 ALTER TABLE `persons` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `ID` int(10) NOT NULL AUTO_INCREMENT,
  `Login` varchar(50) NOT NULL,
  `AccessKey` varchar(50) NOT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `Login` (`Login`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'andrews','admin123'),(2,'flavio','user123');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-12-19 22:56:48
