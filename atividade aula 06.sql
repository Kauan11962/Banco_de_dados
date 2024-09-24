CREATE DATABASE  IF NOT EXISTS `emporio_kauan` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci */;
USE `emporio_kauan`;
-- MariaDB dump 10.19  Distrib 10.4.32-MariaDB, for Win64 (AMD64)
--
-- Host: localhost    Database: emporio_kauan
-- ------------------------------------------------------
-- Server version	10.4.32-MariaDB

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
-- Table structure for table `categorias`
--

DROP TABLE IF EXISTS `categorias`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `categorias` (
  `id_categoria` int(11) NOT NULL AUTO_INCREMENT,
  `nome_categoria` varchar(100) NOT NULL,
  `descricao` varchar(255) NOT NULL,
  PRIMARY KEY (`id_categoria`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categorias`
--

LOCK TABLES `categorias` WRITE;
/*!40000 ALTER TABLE `categorias` DISABLE KEYS */;
INSERT INTO `categorias` VALUES (1,'Beverages','Soft drinks, coffees, teas, beers, and ales'),(2,'Condiments','Sweet and savory sauces, relishes, spreads, and seasonings'),(3,'Confections','Desserts, candies, and sweet breads'),(4,'Dairy Products','Cheeses'),(5,'Grains/Cereals','Breads, crackers, pasta, and cereal'),(6,'Meat/Poultry','Prepared meats'),(7,'Produce','Dried fruit and bean curd'),(8,'Seafood','Seaweed and fish');
/*!40000 ALTER TABLE `categorias` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `clientes`
--

DROP TABLE IF EXISTS `clientes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `clientes` (
  `id_cliente` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(80) NOT NULL,
  `nome_contato` varchar(100) NOT NULL,
  `endereco` varchar(255) NOT NULL,
  `cidade` varchar(100) NOT NULL,
  `CEP` varchar(20) NOT NULL,
  `pais` varchar(100) NOT NULL,
  `telefone` varchar(20) NOT NULL,
  PRIMARY KEY (`id_cliente`)
) ENGINE=InnoDB AUTO_INCREMENT=93 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `clientes`
--

LOCK TABLES `clientes` WRITE;
/*!40000 ALTER TABLE `clientes` DISABLE KEYS */;
INSERT INTO `clientes` VALUES (2,'Ana Trujillo Emparedados y helados','Ana Trujillo','Avda. de la ConstituciÃ³n 2222','MÃ©xico D.F.','0','Mexico',''),(3,'Antonio Moreno TaquerÃ­a','Antonio Moreno','Mataderos 2312','MÃ©xico D.F.','0','Mexico',''),(4,'Around the Horn','Thomas Hardy','120 Hanover Sq.','London','WA1 1DP','UK',''),(5,'Berglunds snabbkÃ¶p','Christina Berglund','BerguvsvÃ¤gen 8','LuleÃ¥','S-958 22','Sweden',''),(6,'Blauer See Delikatessen','Hanna Moos','Forsterstr. 57','Mannheim','68306','Germany',''),(7,'Blondel pÃ¨re et fils','FrÃ©dÃ©rique Citeaux','24, place KlÃ©ber','Strasbourg','67000','France',''),(8,'BÃ³lido Comidas preparadas','MartÃ­n Sommer','C/ Araquil, 67','Madrid','28023','Spain',''),(9,'Bon app\'\'','Laurence Lebihans','12, rue des Bouchers','Marseille','13008','France',''),(10,'Bottom-Dollar Marketse','Elizabeth Lincoln','23 Tsawassen Blvd.','Tsawassen','T2F 8M4','Canada',''),(11,'B\'\'s Beverages','Victoria Ashworth','Fauntleroy Circus','London','EC2 5NT','UK',''),(12,'Cactus Comidas para llevar','Patricio Simpson','Cerrito 333','Buenos Aires','1010','Argentina',''),(13,'Centro comercial Moctezuma','Francisco Chang','Sierras de Granada 9993','MÃ©xico D.F.','0','Mexico',''),(14,'Chop-suey Chinese','Yang Wang','Hauptstr. 29','Bern','3012','Switzerland',''),(15,'ComÃ©rcio Mineiro','Pedro Afonso','Av. dos LusÃ­adas, 23','SÃ£o Paulo','05432-043','Brazil',''),(16,'Consolidated Holdings','Elizabeth Brown','Berkeley Gardens 12 Brewery','London','WX1 6LT','UK',''),(17,'Drachenblut Delikatessend','Sven Ottlieb','Walserweg 21','Aachen','52066','Germany',''),(18,'Du monde entier','Janine Labrune','67, rue des Cinquante Otages','Nantes','44000','France',''),(19,'Eastern Connection','Ann Devon','35 King George','London','WX3 6FW','UK',''),(20,'Ernst Handel','Roland Mendel','Kirchgasse 6','Graz','8010','Austria',''),(21,'Familia Arquibaldo','Aria Cruz','Rua OrÃ³s, 92','SÃ£o Paulo','05442-030','Brazil',''),(22,'FISSA Fabrica Inter. Salchichas S.A.','Diego Roel','C/ Moralzarzal, 86','Madrid','28034','Spain',''),(23,'Folies gourmandes','Martine RancÃ©','184, chaussÃ©e de Tournai','Lille','59000','France',''),(24,'Folk och fÃ¤ HB','Maria Larsson','Ã…kergatan 24','BrÃ¤cke','S-844 67','Sweden',''),(25,'Frankenversand','Peter Franken','Berliner Platz 43','MÃ¼nchen','80805','Germany',''),(26,'France restauration','Carine Schmitt','54, rue Royale','Nantes','44000','France',''),(27,'Franchi S.p.A.','Paolo Accorti','Via Monte Bianco 34','Torino','10100','Italy',''),(28,'Furia Bacalhau e Frutos do Mar','Lino Rodriguez','Jardim das rosas n. 32','Lisboa','1675','Portugal',''),(29,'GalerÃ­a del gastrÃ³nomo','Eduardo Saavedra','Rambla de CataluÃ±a, 23','Barcelona','8022','Spain',''),(30,'Godos Cocina TÃ­pica','JosÃ© Pedro Freyre','C/ Romero, 33','Sevilla','41101','Spain',''),(31,'Gourmet Lanchonetes','AndrÃ© Fonseca','Av. Brasil, 442','Campinas','04876-786','Brazil',''),(32,'Great Lakes Food Market','Howard Snyder','2732 Baker Blvd.','Eugene','97403','USA',''),(33,'GROSELLA-Restaurante','Manuel Pereira','5Âª Ave. Los Palos Grandes','Caracas','1081','Venezuela',''),(34,'Hanari Carnes','Mario Pontes','Rua do PaÃ§o, 67','Rio de Janeiro','05454-876','Brazil',''),(35,'HILARIÃ“N-Abastos','Carlos HernÃ¡ndez','Carrera 22 con Ave. Carlos Soublette #8-35','San CristÃ³bal','5022','Venezuela',''),(36,'Hungry Coyote Import Store','Yoshi Latimer','City Center Plaza 516 Main St.','Elgin','97827','USA',''),(37,'Hungry Owl All-Night Grocers','Patricia McKenna','8 Johnstown Road','Cork','','Ireland',''),(38,'Island Trading','Helen Bennett','Garden House Crowther Way','Cowes','PO31 7PJ','UK',''),(39,'KÃ¶niglich Essen','Philip Cramer','Maubelstr. 90','Brandenburg','14776','Germany',''),(40,'La corne d\'\'abondance','Daniel Tonini','67, avenue de l\'\'Europe','Versailles','78000','France',''),(41,'La maison d\'\'Asie','Annette Roulet','1 rue Alsace-Lorraine','Toulouse','31000','France',''),(42,'Laughing Bacchus Wine Cellars','Yoshi Tannamuri','1900 Oak St.','Vancouver','V3F 2K1','Canada',''),(43,'Lazy K Kountry Store','John Steel','12 Orchestra Terrace','Walla Walla','99362','USA',''),(44,'Lehmanns Marktstand','Renate Messner','Magazinweg 7','Frankfurt a.M.','60528','Germany',''),(45,'Let\'\'s Stop N Shop','Jaime Yorres','87 Polk St. Suite 5','San Francisco','94117','USA',''),(46,'LILA-Supermercado','Carlos GonzÃ¡lez','Carrera 52 con Ave. BolÃ­var #65-98 Llano Largo','Barquisimeto','3508','Venezuela',''),(47,'LINO-Delicateses','Felipe Izquierdo','Ave. 5 de Mayo Porlamar','I. de Margarita','4980','Venezuela',''),(48,'Lonesome Pine Restaurant','Fran Wilson','89 Chiaroscuro Rd.','Portland','97219','USA',''),(49,'Magazzini Alimentari Riuniti','Giovanni Rovelli','Via Ludovico il Moro 22','Bergamo','24100','Italy',''),(50,'Maison Dewey','Catherine Dewey','Rue Joseph-Bens 532','Bruxelles','B-1180','Belgium',''),(51,'MÃ¨re Paillarde','Jean FresniÃ¨re','43 rue St. Laurent','MontrÃ©al','H1J 1C3','Canada',''),(52,'Morgenstern Gesundkost','Alexander Feuer','Heerstr. 22','Leipzig','4179','Germany',''),(53,'North/South','Simon Crowther','South House 300 Queensbridge','London','SW7 1RZ','UK',''),(54,'OcÃ©ano AtlÃ¡ntico Ltda.','Yvonne Moncada','Ing. Gustavo Moncada 8585 Piso 20-A','Buenos Aires','1010','Argentina',''),(55,'Old World Delicatessen','Rene Phillips','2743 Bering St.','Anchorage','99508','USA',''),(56,'Ottilies KÃ¤seladen','Henriette Pfalzheim','Mehrheimerstr. 369','KÃ¶ln','50739','Germany',''),(57,'Paris spÃ©cialitÃ©s','Marie Bertrand','265, boulevard Charonne','Paris','75012','France',''),(58,'Pericles Comidas clÃ¡sicas','Guillermo FernÃ¡ndez','Calle Dr. Jorge Cash 321','MÃ©xico D.F.','0','Mexico',''),(59,'Piccolo und mehr','Georg Pipps','Geislweg 14','Salzburg','5020','Austria',''),(60,'Princesa Isabel Vinhoss','Isabel de Castro','Estrada da saÃºde n. 58','Lisboa','1756','Portugal',''),(61,'Que DelÃ­cia','Bernardo Batista','Rua da Panificadora, 12','Rio de Janeiro','02389-673','Brazil',''),(62,'Queen Cozinha','LÃºcia Carvalho','Alameda dos CanÃ rios, 891','SÃ£o Paulo','05487-020','Brazil',''),(63,'QUICK-Stop','Horst Kloss','TaucherstraÃŸe 10','Cunewalde','1307','Germany',''),(64,'Rancho grande','Sergio GutiÃ©rrez','Av. del Libertador 900','Buenos Aires','1010','Argentina',''),(65,'Rattlesnake Canyon Grocery','Paula Wilson','2817 Milton Dr.','Albuquerque','87110','USA',''),(66,'Reggiani Caseifici','Maurizio Moroni','Strada Provinciale 124','Reggio Emilia','42100','Italy',''),(67,'Ricardo Adocicados','Janete Limeira','Av. Copacabana, 267','Rio de Janeiro','02389-890','Brazil',''),(68,'Richter Supermarkt','Michael Holz','Grenzacherweg 237','GenÃ¨ve','1203','Switzerland',''),(69,'Romero y tomillo','Alejandra Camino','Gran VÃ­a, 1','Madrid','28001','Spain',''),(70,'SantÃ© Gourmet','Jonas Bergulfsen','Erling Skakkes gate 78','Stavern','4110','Norway',''),(71,'Save-a-lot Markets','Jose Pavarotti','187 Suffolk Ln.','Boise','83720','USA',''),(72,'Seven Seas Imports','Hari Kumar','90 Wadhurst Rd.','London','OX15 4NB','UK',''),(73,'Simons bistro','Jytte Petersen','VinbÃ¦ltet 34','KÃ¸benhavn','1734','Denmark',''),(74,'SpÃ©cialitÃ©s du monde','Dominique Perrier','25, rue Lauriston','Paris','75016','France',''),(75,'Split Rail Beer & Ale','Art Braunschweiger','P.O. Box 555','Lander','82520','USA',''),(76,'SuprÃªmes dÃ©lices','Pascale Cartrain','Boulevard Tirou, 255','Charleroi','B-6000','Belgium',''),(77,'The Big Cheese','Liz Nixon','89 Jefferson Way Suite 2','Portland','97201','USA',''),(78,'The Cracker Box','Liu Wong','55 Grizzly Peak Rd.','Butte','59801','USA',''),(79,'Toms SpezialitÃ¤ten','Karin Josephs','Luisenstr. 48','MÃ¼nster','44087','Germany',''),(80,'Tortuga Restaurante','Miguel Angel Paolino','Avda. Azteca 123','MÃ©xico D.F.','0','Mexico',''),(81,'TradiÃ§Ã£o Hipermercados','Anabela Domingues','Av. InÃªs de Castro, 414','SÃ£o Paulo','05634-030','Brazil',''),(82,'Trail\'\'s Head Gourmet Provisioners','Helvetius Nagy','722 DaVinci Blvd.','Kirkland','98034','USA',''),(83,'Vaffeljernet','Palle Ibsen','SmagslÃ¸get 45','Ã…rhus','8200','Denmark',''),(84,'Victuailles en stock','Mary Saveley','2, rue du Commerce','Lyon','69004','France',''),(85,'Vins et alcools Chevalier','Paul Henriot','59 rue de l\'\'Abbaye','Reims','51100','France',''),(86,'Die Wandernde Kuh','Rita MÃ¼ller','Adenauerallee 900','Stuttgart','70563','Germany',''),(87,'Wartian Herkku','Pirkko Koskitalo','Torikatu 38','Oulu','90110','Finland',''),(88,'Wellington Importadora','Paula Parente','Rua do Mercado, 12','Resende','08737-363','Brazil',''),(89,'White Clover Markets','Karl Jablonski','305 - 14th Ave. S. Suite 3B','Seattle','98128','USA',''),(90,'Wilman Kala','Matti Karttunen','Keskuskatu 45','Helsinki','21240','Finland',''),(91,'Wolski','Zbyszek','ul. Filtrowa 68','Walla','01-012','Poland',''),(92,'Cardinal','Tom B. Erichsen','Skagen 21','Stavanger','4006','Norway','');
/*!40000 ALTER TABLE `clientes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `detales_pedido`
--

DROP TABLE IF EXISTS `detales_pedido`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `detales_pedido` (
  `id_detalhes_pedido` int(11) NOT NULL AUTO_INCREMENT,
  `id_pedido` int(11) DEFAULT NULL,
  `id_produto` int(11) DEFAULT NULL,
  `quantidade` int(11) NOT NULL,
  PRIMARY KEY (`id_detalhes_pedido`),
  KEY `id_pedido` (`id_pedido`),
  KEY `id_produto` (`id_produto`),
  CONSTRAINT `detales_pedido_ibfk_1` FOREIGN KEY (`id_pedido`) REFERENCES `pedidos` (`id_pedido`),
  CONSTRAINT `detales_pedido_ibfk_2` FOREIGN KEY (`id_produto`) REFERENCES `produtos` (`id_produto`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `detales_pedido`
--

LOCK TABLES `detales_pedido` WRITE;
/*!40000 ALTER TABLE `detales_pedido` DISABLE KEYS */;
/*!40000 ALTER TABLE `detales_pedido` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fornecedores`
--

DROP TABLE IF EXISTS `fornecedores`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fornecedores` (
  `id_fornecedor` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(50) NOT NULL,
  `nome_contato` varchar(50) NOT NULL,
  `endereco` varchar(100) NOT NULL,
  `cidade` varchar(100) NOT NULL,
  `CEP` varchar(20) NOT NULL,
  `pais` varchar(50) NOT NULL,
  `tefefone` varchar(20) NOT NULL,
  PRIMARY KEY (`id_fornecedor`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fornecedores`
--

LOCK TABLES `fornecedores` WRITE;
/*!40000 ALTER TABLE `fornecedores` DISABLE KEYS */;
INSERT INTO `fornecedores` VALUES (1,'Exotic Liquid','Charlotte Cooper','49 Gilbert St.','Londona','EC1 4SD','UK','(171) 555-2222'),(2,'New Orleans Cajun Delights','Shelley Burke','P.O. Box 78934','New Orleans','70117','USA','(100) 555-4822'),(3,'Grandma Kelly\'s Homestead','Regina Murphy','707 Oxford Rd.','Ann Arbor','48104','USA','(313) 555-5735'),(4,'Tokyo Traders','Yoshi Nagase','9-8 Sekimai Musashino-shi','Tokyo','100','Japan','(03) 3555-5011'),(5,'Cooperativa de Quesos \'Las Cabras\'','Antonio del Valle Saavedra','Calle del Rosal 4','Oviedo','33007','Spain','(98) 598 76 54'),(6,'Mayumi\'s','Mayumi Ohno','92 Setsuko Chuo-ku','Osaka','545','Japan','(06) 431-7877'),(7,'Pavlova, Ltd.','Ian Devling','74 Rose St. Moonie Ponds','Melbourne','3058','Australia','(03) 444-2343'),(8,'Specialty Biscuits, Ltd.','Peter Wilson','29 King\'s Way','Manchester','M14 GSD','UK','(161) 555-4448'),(9,'PB KnÃ¤ckebrÃ¶d AB','Lars Peterson','Kaloadagatan 13','GÃ¶teborg','S-345 67','Sweden','031-987 65 43'),(10,'Refrescos Americanas LTDA','Carlos Diaz','Av. das Americanas 12.890','SÃ£o Paulo','5442','Brazil','(11) 555 4640'),(11,'Heli SÃ¼ÃŸwaren GmbH & Co. KG','Petra Winkler','TiergartenstraÃŸe 5','Berlin','10785','Germany','(010) 9984510'),(12,'Plutzer LebensmittelgroÃŸmÃ¤rkte AG','Martin Bein','Bogenallee 51','Frankfurt','60439','Germany','(069) 992755'),(13,'Nord-Ost-Fisch Handelsgesellschaft mbH','Sven Petersen','Frahmredder 112a','Cuxhaven','27478','Germany','(04721) 8713'),(14,'Formaggi Fortini s.r.l.','Elio Rossi','Viale Dante, 75','Ravenna','48100','Italy','(0544) 60323'),(15,'Norske Meierier','Beate Vileid','Hatlevegen 5','Sandvika','1320','Norway','(0)2-953010'),(16,'Bigfoot Breweries','Cheryl Saylor','3400 - 8th Avenue Suite 210','Bend','97101','USA','(503) 555-9931'),(17,'Svensk SjÃ¶fÃ¶da AB','Michael BjÃ¶rn','BrovallavÃ¤gen 231','Stockholm','S-123 45','Sweden','08-123 45 67'),(18,'Aux joyeux ecclÃ©siastiques','GuylÃ¨ne Nodier','203, Rue des Francs-Bourgeois','Paris','75004','France','(1) 03.83.00.68'),(19,'New England Seafood Cannery','Robb Merchant','Order Processing Dept. 2100 Paul Revere Blvd.','Boston','2134','USA','(617) 555-3267'),(20,'Leka Trading','Chandra Leka','471 Serangoon Loop, Suite #402','Singapore','512','Singapore','555-8787'),(21,'Lyngbysild','Niels Petersen','Lyngbysild Fiskebakken 10','Lyngby','2800','Denmark','43844108'),(22,'Zaanse Snoepfabriek','Dirk Luchte','Verkoop Rijnweg 22','Zaandam','9999 ZZ','Netherlands','(12345) 1212'),(23,'Karkki Oy','Anne Heikkonen','Valtakatu 12','Lappeenranta','53120','Finland','(953) 10956'),(24,'G\'day, Mate','Wendy Mackenzie','170 Prince Edward Parade Hunter\'s Hill','Sydney','2042','Australia','(02) 555-5914'),(25,'Ma Maison','Jean-Guy Lauzon','2960 Rue St. Laurent','MontrÃ©al','H1J 1C3','Canada','(514) 555-9022'),(26,'Pasta Buttini s.r.l.','Giovanni Giudici','Via dei Gelsomini, 153','Salerno','84100','Italy','(089) 6547665'),(27,'Escargots Nouveaux','Marie Delamare','22, rue H. Voiron','Montceau','71300','France','85.57.00.07'),(28,'Gai pÃ¢turage','Eliane Noz','Bat. B 3, rue des Alpes','Annecy','74000','France','38.76.98.06'),(29,'ForÃªts d\'Ã©rables','Chantal Goulet','148 rue Chasseur','Ste-Hyacinthe','J2S 7S8','Canada','(514) 555-2955');
/*!40000 ALTER TABLE `fornecedores` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `funcionarios`
--

DROP TABLE IF EXISTS `funcionarios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `funcionarios` (
  `id_func` int(11) NOT NULL AUTO_INCREMENT,
  `sobrenome` varchar(50) NOT NULL,
  `nome` varchar(50) NOT NULL,
  `data_nasc` datetime NOT NULL,
  `foto` varchar(50) DEFAULT NULL,
  `observacoes` varchar(1024) NOT NULL,
  PRIMARY KEY (`id_func`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `funcionarios`
--

LOCK TABLES `funcionarios` WRITE;
/*!40000 ALTER TABLE `funcionarios` DISABLE KEYS */;
INSERT INTO `funcionarios` VALUES (1,'Davolio','Nancy','1968-12-08 00:00:00','EmpID1.pic','Education includes a BA in psychology from Colorado State University. She also completed (The Art of the Cold Call). Nancy is a member of \'Toastmasters International\'.'),(2,'Fuller','Andrew','1952-02-19 00:00:00','EmpID2.pic','Andrew received his BTS commercial and a Ph.D. in international marketing from the University of Dallas. He is fluent in French and Italian and reads German. He joined the company as a sales representative, was promoted to sales manager and was then named vice president of sales. Andrew is a member of the Sales Management Roundtable, the Seattle Chamber of Commerce, and the Pacific Rim Importers Association.'),(3,'Leverling','Janet','1963-08-30 00:00:00','EmpID3.pic','Janet has a BS degree in chemistry from Boston College). She has also completed a certificate program in food retailing management. Janet was hired as a sales associate and was promoted to sales representative.'),(4,'Peacock','Margaret','1958-09-19 00:00:00','EmpID4.pic','Margaret holds a BA in English literature from Concordia College and an MA from the American Institute of Culinary Arts. She was temporarily assigned to the London office before returning to her permanent post in Seattle.'),(5,'Buchanan','Steven','1955-03-04 00:00:00','EmpID5.pic','Steven Buchanan graduated from St. Andrews University, Scotland, with a BSC degree. Upon joining the company as a sales representative, he spent 6 months in an orientation program at the Seattle office and then returned to his permanent post in London, where he was promoted to sales manager. Mr. Buchanan has completed the courses \'Successful Telemarketing\' and \'International Sales Management\'. He is fluent in French.'),(6,'Suyama','Michael','1963-07-02 00:00:00','EmpID6.pic','Michael is a graduate of Sussex University (MA, economics) and the University of California at Los Angeles (MBA, marketing). He has also taken the courses \'Multi-Cultural Selling\' and \'Time Management for the Sales Professional\'. He is fluent in Japanese and can read and write French, Portuguese, and Spanish.'),(7,'King','Robert','1960-05-29 00:00:00','EmpID7.pic','Robert King served in the Peace Corps and traveled extensively before completing his degree in English at the University of Michigan and then joining the company. After completing a course entitled \'Selling in Europe\', he was transferred to the London office.'),(8,'Callahan','Laura','1958-01-09 00:00:00','EmpID8.pic','Laura received a BA in psychology from the University of Washington. She has also completed a course in business French. She reads and writes French.'),(9,'Dodsworth','Anne','1969-07-02 00:00:00','EmpID9.pic','Anne has a BA degree in English from St. Lawrence College. She is fluent in French and German.'),(10,'West','Adam','1928-09-19 00:00:00','EmpID10.pic','An old chum.');
/*!40000 ALTER TABLE `funcionarios` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pedidos`
--

DROP TABLE IF EXISTS `pedidos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pedidos` (
  `id_pedido` int(11) NOT NULL AUTO_INCREMENT,
  `id_cliente` int(11) DEFAULT NULL,
  `id_func` int(11) DEFAULT NULL,
  `data_pedido` datetime NOT NULL,
  `id_transportadora` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_pedido`),
  KEY `id_cliente` (`id_cliente`),
  KEY `id_func` (`id_func`),
  KEY `id_transportadora` (`id_transportadora`),
  CONSTRAINT `pedidos_ibfk_1` FOREIGN KEY (`id_cliente`) REFERENCES `clientes` (`id_cliente`),
  CONSTRAINT `pedidos_ibfk_2` FOREIGN KEY (`id_func`) REFERENCES `funcionarios` (`id_func`),
  CONSTRAINT `pedidos_ibfk_3` FOREIGN KEY (`id_transportadora`) REFERENCES `transportadoras` (`id_transportadora`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pedidos`
--

LOCK TABLES `pedidos` WRITE;
/*!40000 ALTER TABLE `pedidos` DISABLE KEYS */;
/*!40000 ALTER TABLE `pedidos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `produtos`
--

DROP TABLE IF EXISTS `produtos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `produtos` (
  `id_produto` int(11) NOT NULL AUTO_INCREMENT,
  `nome_produto` varchar(50) NOT NULL,
  `unidade` varchar(50) NOT NULL,
  `preco` decimal(10,0) NOT NULL,
  `id_fornecedor` int(11) DEFAULT NULL,
  `id_categoria` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_produto`),
  KEY `id_fornecedor` (`id_fornecedor`),
  KEY `id_categoria` (`id_categoria`),
  CONSTRAINT `produtos_ibfk_1` FOREIGN KEY (`id_fornecedor`) REFERENCES `fornecedores` (`id_fornecedor`),
  CONSTRAINT `produtos_ibfk_2` FOREIGN KEY (`id_categoria`) REFERENCES `categorias` (`id_categoria`)
) ENGINE=InnoDB AUTO_INCREMENT=76 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `produtos`
--

LOCK TABLES `produtos` WRITE;
/*!40000 ALTER TABLE `produtos` DISABLE KEYS */;
INSERT INTO `produtos` VALUES (13,'Konbu','6',8,2,6),(24,'GuaranÃ¡ FantÃ¡stica','10',1,12,5),(52,'Filo Mix','24',5,16,7),(54,'TourtiÃ¨re','25',6,16,7),(75,'RhÃ¶nbrÃ¤u Klosterbier','12',1,24,8);
/*!40000 ALTER TABLE `produtos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `transportadoras`
--

DROP TABLE IF EXISTS `transportadoras`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `transportadoras` (
  `id_transportadora` int(11) NOT NULL AUTO_INCREMENT,
  `nome_transp` varchar(100) NOT NULL,
  `tefefone` varchar(20) NOT NULL,
  PRIMARY KEY (`id_transportadora`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `transportadoras`
--

LOCK TABLES `transportadoras` WRITE;
/*!40000 ALTER TABLE `transportadoras` DISABLE KEYS */;
INSERT INTO `transportadoras` VALUES (1,'Speedy Express','(503) 555-9831'),(2,'United Package','(503) 555-3199'),(3,'Federal Shipping','(503) 555-9931');
/*!40000 ALTER TABLE `transportadoras` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-09-13 10:30:02
