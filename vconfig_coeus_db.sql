# Host: localhost  (Version: 5.1.38-community)
# Date: 2013-03-05 09:49:36
# Generator: MySQL-Front 5.3  (Build 2.30)

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE */;
/*!40101 SET SQL_MODE='STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES */;
/*!40103 SET SQL_NOTES='ON' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS */;
/*!40014 SET FOREIGN_KEY_CHECKS=0 */;

DROP DATABASE IF EXISTS `vconfig_coeus_db`;
CREATE DATABASE `vconfig_coeus_db` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `vconfig_coeus_db`;

#
# Source for table "car_models"
#

DROP TABLE IF EXISTS `car_models`;
CREATE TABLE `car_models` (
  `Model_Id` varchar(20) NOT NULL DEFAULT '0',
  `Model_Name` varchar(40) NOT NULL DEFAULT '',
  `Model_Image` varchar(40) DEFAULT NULL,
  `Engine` varchar(30) NOT NULL DEFAULT '',
  `Displacement` varchar(30) NOT NULL DEFAULT '',
  `Color` varchar(10) NOT NULL DEFAULT '',
  `Top_Speed` varchar(30) NOT NULL DEFAULT '',
  `Accelaration` varchar(30) NOT NULL DEFAULT '',
  `Dimension` varchar(30) NOT NULL DEFAULT '',
  `Seating_Capacity` varchar(2) NOT NULL DEFAULT '',
  `Price` int(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`Model_Id`),
  UNIQUE KEY `un1` (`Model_Name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

#
# Data for table "car_models"
#

INSERT INTO `car_models` VALUES ('AD_LC_A4','Audi A4 1.8 TFSI','images/AudiA4.jpg','Automatic, Petrol\n','1798cc','White','190kmph','0-100 kms in 6secs','4703*1826*1427','5',2948000),('AD_SD_A6','Audi A6 2.0 TDI','images/audia6.jpg','Automatic, Petrol\n','1968cc','White','190kmph','0-100 kms in 6secs','4915*1874*1455','5',366200),('AD_SV_Q7 3.0','Audi Q7 3.0 TDI quattro','images/audiq7.jpg','Automatic,Diesel\n','2967cc','White','190kmph','0-100 kms in 6secs','5089*1983*1737','5',5431000),('BmW_SD_3Series','BMW 3 Series 320d Luxuryÿ','images/BMW-3-Series.jpg','Automatic,Diesel\n','1995cc','White','195kmph','0-100 kms in 6secs','4531*1817*1421','5',3150000),('BmW_SD_5 Series','BMW 5 Series GT 530d LE','images/BMW5Series.jpg','Automatic,Diesel\n','2993cc','White','195kmph','0-120 kms in 6secs','4899*1860*1464','5',6808000),('BmW_SV_X6','BMW X6 xDrive 40d','images/BMWX6.jpg','Automatic,Diesel\n','2993cc','White','195kmph','0-120 kms in 6secs','4877*2195*1690','5',7218000),('FR_CC_458Spider','Ferrari 458 Spider 5.0L V8','images/FerrariSpider.jpg','Automatic, Petrol\n','4514cc','White','195kmph','0-120 kms in 6secs','4526*1938*1211','2',35300000),('FR_CC_599GTBFiorano','Ferrari 599GTFiorano','images/ferrari-599fiorano.jpg','Automatic, Petrol','5999cc','White','200kmph','0-110 kms in 6secs','4665*1962*1336','2',35300000),('FR_CC_California','Ferrari California','images/Ferrari-California.jpg','Automatic, Petrol','4275cc','White','200kmph','0-110 kms in 6secs','4527*1937*1213','2',27000000),('FR_CC_F12berlinatta','Ferrari F12berlinatta','images/FerrariF12Berl.jpg','Automatic, Petrol','6262cc','White','200kmph','0-110 kms in 6secs','4618*1942*1273','2',41500000),('FR_SD_FF','Ferrari FF 6.3L V12','images/FerrariFF.jpg','Automatic, Petrol\n','6262cc','White','195kmph','0-120 kms in 6secs','4527*1937*1213','2',41300000),('HO_LC_Civic','Honda Civic 1.8S MT','images/city.jpg','Manual, Petrol','1799cc','White','180kmph','0-95 kms in 6secs','4545*1750*1450','5',1323000),('HO_SD_Ard','Honda Accord 2011 2.4 MT','images/Accord.jpg','Manual, Petrol','2354cc','White','200kmph','0-80 kms in 6secs','4590*1845*1475','5',2096000),('HO_SD_City','Honda City 1.5 Corporate MT','images/city.jpg','Manual, Petrol','1497cc','White','190kmph','0-85 kms in 6secs','4440*1695*1485','5',761000),('HO_SM_Brio','Honda Brio E MT','images/Brio.jpg','Manual, Petrol','1198cc','White','170kmph','0-90 kms in 6secs','3610*1680*1500','5',434000),('HY_SM_Accent','Hyundai Accent Executiveÿ','images/Accent.jpg','Manual, Petrol','1495cc','White','190kmph','0-95 kms in 6secs','4250*1670*1370','5',540000),('HY_SM_Eon','Hyundai Eon D-Liteÿ','images/EonLite.jpeg','Manual, Petrol','814cc','White','170kmph','0-85 kms in 6secs','3495*1550*1500','5',288000),('HY_SM_i10Era','Hyundai i10 Era 1.1 iRDE2ÿ','images/i10.jpeg','Manual, Petrol','1086cc','White','180kmph','0-85 kms in 6secs','3585*1595*1550','5',419000),('MH_SD_Verito','Mahindra Verito','images/Mahindra-Verito.jpg','Manual, Petrol\n','1390cc','White','195kmph','0-120 kms in 6secs','4247*1740*1540','5',518000),('MH_SV_BoleroB53','Mahindra Bolero DI AC BS3','images/mahindra_bolero.jpg','Manual, Diesel\n','2523cc','White','195kmph','0-120 kms in 6secs','4107*1745*1880','7',573000),('MH_SV_XyloD2BS3','Mahindra Xylo D2 BS3','images/MahindraXyl.jpg','Manual, Diesel\n','2498cc','White','195kmph','0-120 kms in 6secs','4247*1740*1540','8',714000),('SD_MR_800','Maruti 800','images/800.jpg','DDiS Petrol Engine','1248cc','White','1600kmph','0-100 kms in 6 secs','3995*1695*1555','5',389000),('SD_MR_ALT','ALTO','images/Alto.jpg','DDiS Petrol Engine','1248cc','White','1600kmph','0-100 kms in 6 secs','3995*1695*1555','5',389000),('SD_MR_DzireVDI','Maruti Suzuki Swift Dzire VDI','images/marutidzire.jpg','Manual,Diesel\n','1248cc','White','190kmph','0-110 kms in 6secs','3995*1695*1555','5',689000),('SD_MR_SDZ','Swift DZire','images/Swift.jpg','DDiS Diesel Engine','1248cc','White','200kmph','0-100 kms in 6 secs','3995*1695*1555','5',689000),('SD_MR_SX4ZDI','Maruti Suzuki SX4 ZDI','images/new-SX4_2.jpg','Manual, Petrol\n','1248cc','White','200kmph','0-110 kms in 6secs','4490*1735*1560','5',937000),('SM_MR_AltoLXi','Maruti Suzuki AltoXLi','images/Maruti-Alto.jpg','Manual, Petrol','796cc','White','190kmph','0-110 kms in 6secs','3495*1475*1460','5',315000),('SM_MR_AStarZXI','Maruti Suzuki AstarZXI','images/maruti-AStar.jpg','Manual, Petrol','998cc','White','200kmph','0-110 kms in 6secs','3500*1600*1490','5',450000),('SM_MR_Ritz','Maruti Suzuki Ritz','images/MarutiRitz.jpg','Manual, Petrol\n','1197cc','White','190kmph','0-110 kms in 6secs','3715*1680*1620','5',430000),('SM_MR_SwiftZDi','MarutiSwiftZDi','images/marutidzire.jpg','Manual,Diesel','1248cc','White','190kmph','0-110 kms in 6secs','3850*1695*1530','5',692000),('SV_GrandVitara','Maruti Suzuki GrandVitara 2.4AT','images/MGrandVitara.jpg','Automatic, Petrol','2393cc','White','200kmph','0-110 kms in 6secs','4500*1810*1695','5',1887000),('VW_LC_Beetle','Volkswagen Beetle 2.0 AT','images/Civic .jpg','Manual,  Diesel','2000cc','White','190kmph','0-100 kms in 6secs','4129*1721*1498','5',2177000),('VW_LC_Vento','Volkswagen Ventoÿ','images/Vento.jpg','Automatic, Petrol','1598cc','White','190kmph','0-90 kms in 6secs','4384*1699*1466','5',947000),('VW_SM_Polo','Volkswagen Polo Comfortline 1.2L (D)','images/VoPolo.jpg','Manual,  Diesel','1199cc','Red','180kmph','0-90 kms in 6secs','3970*1682*1453','5',641000);

#
# Source for table "feature_master"
#

DROP TABLE IF EXISTS `feature_master`;
CREATE TABLE `feature_master` (
  `Model_Id` varchar(50) DEFAULT NULL,
  `Record_No` int(11) DEFAULT NULL,
  `Feature_Id` varchar(50) DEFAULT NULL,
  `Alternate_Features` varchar(50) DEFAULT NULL,
  `Price` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

#
# Data for table "feature_master"
#

INSERT INTO `feature_master` VALUES ('AD_LC_A4',1,'MSC','Sony',10000),('AD_LC_A4',2,'MSC','Boss',-5000),('AD_LC_A4',3,'MSC','Pioneer',4000),('AD_LC_A4',4,'MSC','JBL',-5555),('AD_LC_A4',5,'WH','Alloy',10000),('AD_LC_A4',6,'WH','Chrome',-5000),('AD_LC_A4',7,'ACS','Camaro',4000),('AD_LC_A4',8,'ACS','Bronco',-5555),('AD_LC_A4',9,'ACS','Dorman',1500),('AD_LC_A4',10,'TRSM','Manual',0),('AD_LC_A4',11,'TRSM','Automatic',3500),('AD_LC_A4',12,'ABG','Soft',2500),('AD_LC_A4',13,'ABG','Extra Soft',3500),('AD_SD_L6',15,'WH','Chrome',-5000),('AD_SD_L6',16,'MSC','Sony',10000),('AD_SD_L6',17,'MSC','Boss',-5000),('AD_SD_L6',18,'MSC','Pioneer',4000),('AD_SD_L6',19,'MSC','JBL',-5555),('AD_SD_L6',20,'SBLT','Strong Belt',1000),('AD_SD_L6',21,'SBLT','BBS',-555),('AD_SD_L6',22,'ACS','Camaro',4000),('AD_SD_L6',23,'ACS','Bronco',-5555),('AD_SD_L6',24,'ACS','Dorman',1500),('AD_SD_L6',25,'ABG','Soft',2500),('AD_SD_L6',26,'ABG','Extra Soft',3500),('MH_SD_Verito',28,'WH','Chrome',-5000),('MH_SD_Verito',29,'TRSM','Manual',0),('MH_SD_Verito',30,'TRSM','Automatic',3500),('MH_SD_Verito',31,'ST','Leather Seats',4000),('MH_SD_Verito',32,'ST','Racing Seats',5055),('MH_SD_Verito',33,'ST','JEGS',-1500),('MH_SD_Verito',34,'SBLT','Strong Belt',1000),('MH_SD_Verito',35,'SBLT','BBS',-555),('MH_SV_XyloD2BS3',37,'ACS','Bronco',-555),('MH_SV_XyloD2BS3',38,'ACS','Dorman',1500),('MH_SV_XyloD2BS3',39,'MSC','Sony',10000),('MH_SV_XyloD2BS3',40,'MSC','Boss',-5000),('MH_SV_XyloD2BS3',41,'MSC','Pioneer',4000),('MH_SV_XyloD2BS3',42,'MSC','JBL',-5555),('MH_SV_XyloD2BS3',43,'SBLT','Strong Belt',1000),('MH_SV_XyloD2BS3',44,'SBLT','BBS',-555),('MH_SV_XyloD2BS3',45,'ABG','Soft',2500),('MH_SV_XyloD2BS3',46,'ABG','Extra Soft',3500),('MH_SV_XyloD2BS3',47,'SS','Zicom',1500),('MH_SV_XyloD2BS3',48,'SS','Nova',2500),('SD_MR_SDZ',50,'SS','Nova',2500),('SD_MR_SDZ',51,'WH','Alloy',10000),('SD_MR_SDZ',52,'WH','Chrome',4000),('SD_MR_SDZ',53,'ST','Leather Seats',4000),('SD_MR_SDZ',54,'ST','Racing Seats',5055),('SD_MR_SDZ',55,'ST','JEGS',-1500),('SD_MR_SDZ',56,'GS','Primo GPS',-4000),('SD_MR_SDZ',57,'GS','Map My India',5055),('SD_MR_SDZ',58,'GS','Satguide',-1500),('SD_MR_SDZ',59,'MSC','Sony',10000),('SD_MR_SDZ',60,'MSC','Boss',-5000),('SD_MR_SDZ',61,'MSC','Pioneer',4000),('SD_MR_SDZ',62,'MSC','JBL',-5555),('SD_MR_SDZ',63,'TRSM','Manual',0),('SD_MR_SDZ',64,'TRSM','Automatic',3500),('SD_MR_SDZ',65,'SBLT','Strong Belt',2000),('SD_MR_SDZ',66,'SBLT','BBS',-355),('AD_SD_L6',14,'WH','Alloy',10000),('MH_SD_Verito',27,'WH','Alloy',5000),('SM_MR_AltoLXi',67,'ABG','Soft',2500),('SM_MR_AltoLXi',68,'ABG','Extra Soft',3500),('MH_SV_XyloD2BS3',36,'ACS','Camaro',2000),('SD_MR_SDZ',49,'SS','Zicom',-1500),('SM_MR_AltoLXi',69,'ABS','Digital Locks',6000),('SM_MR_AltoLXi',70,'ABS','Smart Locks',7000),('SM_MR_AltoLXi',71,'MSC','Sony',10000),('SM_MR_AltoLXi',72,'MSC','Boss',-5000),('SM_MR_AltoLXi',73,'MSC','Pioneer',4000),('SM_MR_AltoLXi',74,'MSC','JBL',-5555),('SM_MR_AltoLXi',75,'ACS','Camaro',2000),('SM_MR_AltoLXi',76,'ACS','Bronco',-555),('SM_MR_AltoLXi',77,'ACS','Dorman',1500),('SM_MR_AltoLXi',78,'WH','Alloy',10000),('SM_MR_AltoLXi',79,'WH','Chrome',4000),('SV_GrandVitara',80,'SR','Sun Safe',1900),('SV_GrandVitara',81,'SR','Super Roofs',-2900),('SV_GrandVitara',82,'WH','Alloy',10000),('SV_GrandVitara',83,'WH','Chrome',4000),('SV_GrandVitara',84,'ST','Leather Seats',4000),('SV_GrandVitara',85,'ST','Racing Seats',5055),('SV_GrandVitara',86,'ST','JEGS',-1500),('SV_GrandVitara',87,'MSC','Sony',10000),('SV_GrandVitara',88,'MSC','Boss',-5000),('SV_GrandVitara',89,'MSC','Pioneer',4000),('SV_GrandVitara',90,'MSC','JBL',-5555),('SV_GrandVitara',91,'ABG','Soft',2500),('SV_GrandVitara',92,'ABG','Extra Soft',3500),('VW_LC_Vento',93,'ABG','Soft',2500),('VW_LC_Vento',94,'ABG','Extra Soft',3500),('VW_LC_Vento',95,'MSC','Sony',10000),('VW_LC_Vento',96,'MSC','Boss',-5000),('VW_LC_Vento',97,'MSC','Pioneer',4000),('VW_LC_Vento',98,'MSC','JBL',-5555),('VW_LC_Vento',99,'ACS','Camaro',2000),('VW_LC_Vento',100,'ACS','Bronco',-555),('VW_LC_Vento',101,'ACS','Dorman',1500),('VW_LC_Vento',102,'ST','Leather Seats',4000),('VW_LC_Vento',103,'ST','Racing Seats',5055),('VW_LC_Vento',104,'ST','JEGS',-1500),('VW_LC_Vento',105,'FFL','Green',4500),('VW_LC_Vento',106,'FFL','Blue',2500),('AD_SV_Q7 3.0',107,'ABG','Soft',2500),('AD_SV_Q7 3.0',108,'ABG','Extra Soft',3500),('AD_SV_Q7 3.0',109,'TRSM','Manual',0),('AD_SV_Q7 3.0',110,'TRSM','Automatic',3500),('AD_SV_Q7 3.0',111,'ACS','Camaro',2000),('AD_SV_Q7 3.0',112,'ACS','Bronco',-555),('AD_SV_Q7 3.0',113,'ACS','Dorman',1500),('AD_SV_Q7 3.0',114,'ST','Leather Seats',4000),('AD_SV_Q7 3.0',115,'ST','Racing Seats',5055),('AD_SV_Q7 3.0',116,'ST','JEGS',-1500),('AD_SV_Q7 3.0',117,'FFL','Green',4500),('AD_SV_Q7 3.0',118,'FFL','Blue',2500),('BmW_SD_3Series',119,'FFL','Green',4500),('BmW_SD_3Series',120,'FFL','Blue',2500),('BmW_SD_3Series',121,'ST','Leather Seats',4000),('BmW_SD_3Series',122,'ST','Racing Seats',5055),('BmW_SD_3Series',123,'ST','JEGS',-1500),('BmW_SD_3Series',124,'TRSM','Manual',0),('BmW_SD_3Series',125,'TRSM','Automatic',3500),('BmW_SD_3Series',126,'ABG','Soft',2500),('BmW_SD_3Series',127,'ABG','Extra Soft',3500),('BmW_SD_3Series',128,'ACS','Camaro',2000),('BmW_SD_3Series',129,'ACS','Bronco',-555),('BmW_SD_3Series',130,'ACS','Dorman',1500),('BmW_SV_X6',131,'SS','Zicom',-1500),('BmW_SV_X6',132,'SS','Nova',2500),('BmW_SV_X6',133,'ACS','Camaro',2000),('BmW_SV_X6',134,'ACS','Bronco',-555),('BmW_SV_X6',136,'ACS','Dorman',1500),('BmW_SV_X6',137,'TRSM','Manual',0),('BmW_SV_X6',138,'TRSM','Automatic',3500),('BmW_SV_X6',139,'SBLT','Strong Belt',2000),('BmW_SV_X6',135,'SBLT','BBS',-355),('BmW_SV_X6',140,'ABG','Soft',2500),('BmW_SV_X6',141,'ABG','Extra Soft',3500),('FR_CC_458Spider',142,'ABG','Soft',2500),('FR_CC_458Spider',143,'ABG','Extra Soft',3500),('FR_CC_458Spider',144,'SBLT','Strong Belt',2000),('FR_CC_458Spider',145,'SBLT','BBS',-355),('FR_CC_458Spider',146,'GS','Primo GPS',-4000),('FR_CC_458Spider',147,'GS','Map My India',5055),('FR_CC_458Spider',148,'GS','Satguide',-1500),('FR_CC_458Spider',149,'MSC','Sony',10000),('FR_CC_458Spider',150,'MSC','Boss',-5000),('FR_CC_458Spider',151,'MSC','Pioneer',4000),('FR_CC_458Spider',152,'MSC','JBL',-5555),('FR_CC_458Spider',153,'SS','Zicom',-1500),('FR_CC_458Spider',154,'SS','Nova',2500),('HO_SD_Ard',155,'SBLT','Strong Belt',2000),('HO_SD_Ard',156,'SBLT','BBS',-355),('HO_SD_Ard',157,'FFL','Green',4500),('HO_SD_Ard',158,'FFL','Blue',2500),('HO_SD_Ard',159,'MSC','Sony',10000),('HO_SD_Ard',160,'MSC','Boss',-5000),('HO_SD_Ard',161,'MSC','Pioneer',4000),('HO_SD_Ard',162,'MSC','JBL',-5555),('HO_SD_Ard',163,'ACS','Camaro',2000),('HO_SD_Ard',164,'ACS','Bronco',-555),('HO_SD_Ard',165,'ACS','Dorman',1500),('HO_SD_Ard',166,'ABG','Soft',2500),('HO_SD_Ard',167,'ABG','Extra Soft',3500),('HO_SM_Brio',168,'ACS','Camaro',2000),('HO_SM_Brio',169,'ACS','Bronco',-555),('HO_SM_Brio',170,'ACS','Dorman',1500),('HO_SM_Brio',171,'MSC','Sony',10000),('HO_SM_Brio',172,'MSC','Boss',-5000),('HO_SM_Brio',173,'MSC','Pioneer',4000),('HO_SM_Brio',174,'MSC','JBL',-5555),('HO_SM_Brio',175,'ABG','Soft',2500),('HO_SM_Brio',176,'ABG','Extra Soft',3500),('HO_SM_Brio',177,'ABS','Digital Locks',6000),('HO_SM_Brio',178,'ABS','Smart Locks',7000),('HO_SM_Brio',179,'WH','Alloy',10000),('HO_SM_Brio',180,'WH','Chrome',4000),('HY_SM_Accent',181,'ACS','Camaro',2000),('HY_SM_Accent',182,'ACS','Bronco',-555),('HY_SM_Accent',183,'MSC','Sony',10000),('HY_SM_Accent',184,'MSC','Boss',-5000),('HY_SM_Accent',185,'MSC','Pioneer',4000),('HY_SM_Accent',186,'MSC','JBL',-5555),('HY_SM_Accent',188,'ABS','Smart Locks',7000),('HY_SM_Accent',189,'SBLT','Strong Belt',2000),('HY_SM_Accent',190,'SBLT','BBS',-355),('HY_SM_Accent',191,'ABG','Soft',2500),('HY_SM_Accent',192,'ABG','Extra Soft',3500),('HY_SM_Accent',193,'SS','Zicom',-1500),('HY_SM_Accent',194,'SS','Nova',2500),('HY_SM_Accent',195,'FFL','Green',4500),('HY_SM_Accent',196,'FFL','Blue',2500),('HY_SM_i10Era',197,'FFL','Green',4500),('HY_SM_i10Era',198,'FFL','Blue',2500),('HY_SM_i10Era',199,'ACS','Camaro',2000),('HY_SM_i10Era',200,'ACS','Bronco',-555),('HY_SM_i10Era',201,'ACS','Dorman',1500),('HY_SM_i10Era',202,'SBLT','Strong Belt',2000),('HY_SM_i10Era',203,'SBLT','BBS',-355),('HY_SM_i10Era',205,'ABS','Smart Locks',7000),('HY_SM_i10Era',206,'WH','Alloy',10000),('HY_SM_i10Era',207,'WH','Chrome',4000),('HY_SM_i10Era',208,'MSC','Sony',10000),('HY_SM_i10Era',209,'MSC','Boss',-5000),('HY_SM_i10Era',210,'MSC','Pioneer',4000),('HY_SM_i10Era',211,'MSC','JBL',-5555),('HY_SM_i10Era',204,'ABS','Digital Locks',6000),('HY_SM_Accent',187,'ABS','Digital Locks',6000);

#
# Source for table "model_features"
#

DROP TABLE IF EXISTS `model_features`;
CREATE TABLE `model_features` (
  `Model_Id` varchar(50) DEFAULT NULL,
  `Record_No` int(11) NOT NULL DEFAULT '0',
  `Feature_Type` varchar(50) DEFAULT NULL,
  `Feature_Id` varchar(50) DEFAULT NULL,
  `Feature_Description` varchar(50) DEFAULT NULL,
  `Is_Configurable` int(11) DEFAULT NULL,
  `Default_Value` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`Record_No`),
  KEY `Model_Id` (`Model_Id`),
  CONSTRAINT `model_features_ibfk_1` FOREIGN KEY (`Model_Id`) REFERENCES `car_models` (`Model_Id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

#
# Data for table "model_features"
#

INSERT INTO `model_features` VALUES ('SD_MR_SDZ',1,'Standard','SBLT','Seat Belt',1,'SBX'),('SD_MR_SDZ',2,'Standard','ABG','Air Bags',0,'Bag1'),('SD_MR_SDZ',3,'Standard','TRSM','Transmission',1,'Manual'),('SD_MR_SDZ',4,'Interior','MSC','Music System',1,'sony'),('SD_MR_SDZ',5,'Interior','ACS','AC System',0,'video'),('SD_MR_SDZ',6,'Interior','GS','GPS System',1,'vvv'),('SD_MR_SDZ',7,'Interior','ST','Seats',1,'normal'),('SD_MR_SDZ',8,'Exterior','WH','Wheels',1,'bbb'),('SD_MR_SDZ',9,'Exterior','SS','Security System',1,'zxc'),('SD_MR_SDZ',10,'Exterior','SR','Sun Roof',0,'rtrt'),('SD_MR_SDZ',11,'Exterior','FFL','Front Fog Lights',1,'sss'),('AD_SD_A6',13,'Standard','ABS','Anti-Lock Breaking System',0,'DSI'),('HO_SD_Ard',19,'Standard','SBLT','Seat Belts',1,'HZC'),('HO_SD_Ard',20,'Standard','TRSM','Transmission',0,'Manual'),('HO_SD_Ard',21,'Standard','ABS','Anti-Lock Breaking System',0,'DSI'),('HO_SD_Ard',22,'Standard','ABG','Air Bags',1,'NXA'),('HO_SD_Ard',23,'Interior','ST','Seats',0,'SML'),('HO_SD_Ard',24,'Interior','GS','GPS Systems',0,'CAS'),('HO_SD_Ard',25,'Interior','MSC','Music System',1,'Sony Xplod'),('HO_SD_Ard',26,'Interior','ACS','AC System',1,'DSI'),('HO_SD_Ard',27,'Exterior','SR','Sun Roof',0,'SWM'),('HO_SD_Ard',28,'Exterior','FFL','Front Fog Lights',1,'FFPL'),('HO_SM_Brio',29,'Standard','SBLT','Seat Belts',1,'SBX'),('HO_SM_Brio',30,'Standard','ABS','Anti-Lock Breaking System',1,'HZC'),('HO_SM_Brio',31,'Standard','ABG','Air Bags',1,'ABL'),('HO_SM_Brio',32,'Standard','TRSM','Transmission',0,'Manual'),('HO_SM_Brio',33,'Interior','MSC','Music System',1,'Sony'),('HO_SM_Brio',34,'Interior','ACS','AC System',1,'DSI'),('HO_SM_Brio',35,'Interior','ST','Seats',0,'SML'),('HO_SM_Brio',36,'Interior','GS','GPS Systems',0,'CAS Sys'),('HO_SM_Brio',37,'Exterior','FFL','Front Fog Lights',0,'FFPL'),('HO_SM_Brio',38,'Exterior','WH','Wheels',1,'DZ'),('VW_LC_Vento',79,'Standard','SBLT','Seat Belts',1,'HZC'),('VW_LC_Vento',80,'Standard','TRSM','Transmission',0,'Manual'),('VW_LC_Vento',81,'Standard','ABS','Anti-Lock Breaking System',0,'DSI'),('VW_LC_Vento',82,'Standard','ABG','Air Bags',1,'NXA'),('VW_LC_Vento',83,'Interior','MSC','Music System',1,'Sony'),('VW_LC_Vento',84,'Interior','ACS','AC System',1,'DSI'),('VW_LC_Vento',85,'Interior','GS','GPS System',0,'SIPL'),('VW_LC_Vento',86,'Interior','ST','Seats',1,'PDL'),('VW_LC_Vento',87,'Exterior','SS','Security System',1,'ZICOm'),('VW_LC_Vento',88,'Exterior','SR','Sun Roof',0,'SWM'),('HY_SM_Accent',89,'Standard','SBLT','Seat Belt',1,'SBX'),('HY_SM_Accent',90,'Standard','ABG','Air Bags',1,'ABL'),('HY_SM_Accent',91,'Standard','ABS','Anti-Lock Breaking System',1,'HZC'),('HY_SM_Accent',92,'Standard','TRSM','Transmission',0,'Manual'),('HY_SM_Accent',93,'Interior','MSC','Music System',1,'Sony'),('HY_SM_Accent',94,'Interior','ACS','AC System',1,'DSI'),('HY_SM_Accent',95,'Interior','GS','GPS System',0,'SIPL'),('HY_SM_Accent',96,'Interior','ST','Seats',0,'CAS'),('HY_SM_Accent',97,'Exterior','SS','Security System',1,'ZICOm'),('HY_SM_Accent',98,'Exterior','FFL','Front Fog Lights',1,'FFPL'),('HY_SM_i10Era',109,'Standard','SBLT','Seat Belt',1,'SBX'),('HY_SM_i10Era',111,'Standard','TRSM','Transmission',0,'Manual'),('HY_SM_i10Era',112,'Standard','ABS','Anti-Lock Breaking System',1,'DSI'),('HY_SM_i10Era',113,'Interior','MSC','Music System',1,'Sony'),('HY_SM_i10Era',114,'Interior','ACS','AC System',1,'DSI'),('HY_SM_i10Era',115,'Interior','GS','GPS System',0,'SIPL'),('HY_SM_i10Era',117,'Exterior','FFL','Front Fog Lights',1,'FFPL'),('HY_SM_i10Era',118,'Exterior','WH','Wheels',1,'Chrome'),('AD_LC_A4',119,'Standard','ABG','Air Bags',1,'ABL'),('AD_LC_A4',120,'Standard','SBLT','Seat Belt',0,'HZC'),('AD_LC_A4',121,'Standard','TRSM','Transmission',1,'Manual'),('AD_LC_A4',122,'Standard','ABS','Anti-Lock Breaking System',0,'DSI'),('AD_LC_A4',123,'Interior','MSC','Music System',1,'Sony'),('AD_LC_A4',124,'Interior','ACS','AC System',1,'DSI'),('AD_LC_A4',125,'Interior','GS','GPS System',0,'SIPL'),('AD_LC_A4',126,'Interior','ST','Seats',0,'Leather'),('AD_LC_A4',127,'Exterior','WH','Wheels',1,'WIL'),('AD_LC_A4',128,'Exterior','SR','Sun Roof',0,'SWM'),('AD_SD_A6',129,'Standard','SBLT','Seat Belt',1,'SBX'),('AD_SD_A6',130,'Standard','ABG','Air Bags',1,'SlpWell'),('AD_SD_A6',131,'Standard','TRSM','Transmission',0,'Manual'),('AD_SD_A6',132,'Interior','MSC','Music System',1,'Sony'),('AD_SD_A6',133,'Interior','ACS','AC System',1,'DSI'),('AD_SD_A6',134,'Interior','GS','GPS System',0,'SIPL'),('AD_SD_A6',135,'Interior','ST','Seats',0,'SML'),('AD_SD_A6',136,'Exterior','WH','Wheels',1,'WIL'),('AD_SD_A6',137,'Exterior','SR','Sun Roof',0,'SWM'),('AD_SV_Q7 3.0',138,'Standard','ABG','Air Bags',1,'ABL'),('AD_SV_Q7 3.0',140,'Standard','TRSM','Transmission',1,'Manual'),('AD_SV_Q7 3.0',141,'Standard','ABS','Anti-Lock Breaking System',0,'DSI'),('AD_SV_Q7 3.0',142,'Interior','ACS','AC System',1,'DSI'),('AD_SV_Q7 3.0',143,'Interior','GS','GPS System',0,'SIPL'),('AD_SV_Q7 3.0',144,'Interior','ST','Seats',1,'SML'),('AD_SV_Q7 3.0',145,'Interior','FFL','Front Fog Lights',1,'CAS'),('AD_SV_Q7 3.0',146,'Exterior','SS','Security System',0,'ZICOm'),('AD_SV_Q7 3.0',147,'Exterior','SR','Sun Roof',0,'SWM'),('BmW_SD_3Series',148,'Standard','SBLT','Seat Belt',1,'SBX'),('BmW_SD_3Series',149,'Standard','ABG','Air Bags',1,'ABL'),('BmW_SD_3Series',150,'Standard','ABS','Anti-Lock Breaking System',0,'HZC'),('BmW_SD_3Series',151,'Interior','TRSM','Transmission',1,'Manual'),('BmW_SD_3Series',152,'Interior','ACS','AC System',1,'DSI'),('BmW_SD_3Series',153,'Interior','GS','GPS System',0,'SIPL'),('BmW_SD_3Series',154,'Interior','ST','Seats',1,'SML'),('BmW_SD_3Series',155,'Exterior','SR','Sun Roof',0,'SWM'),('BmW_SD_3Series',156,'Exterior','FFL','Front Fog Lights',1,'FFPL'),('BmW_SV_X6',167,'Standard','SBLT','Seat Belt',1,'SBX'),('BmW_SV_X6',168,'Standard','ABG','Air Bags',1,'ABL'),('BmW_SV_X6',170,'Standard','TRSM','Transmission',1,'Manual'),('BmW_SV_X6',171,'Interior','ACS','AC System',1,'DSI'),('BmW_SV_X6',172,'Interior','GS','GPS System',0,'SIPL'),('BmW_SV_X6',173,'Interior','ST','Seats',0,'Leather'),('BmW_SV_X6',174,'Interior','PW','Power Windows',0,'CAS'),('BmW_SV_X6',175,'Exterior','SS','Security System',1,'ZICOm'),('BmW_SV_X6',176,'Exterior','SR','Sun Roof',0,'SWM'),('FR_CC_458Spider',177,'Standard','SBLT','Seat Belt',1,'SBX'),('FR_CC_458Spider',178,'Standard','ABG','Air Bags',1,'ABL'),('FR_CC_458Spider',180,'Standard','TRSM','Transmission',0,'Automatic'),('FR_CC_458Spider',181,'Interior','GS','GPS System',1,'SIPL'),('FR_CC_458Spider',182,'Interior','ST','Seats',0,'SML'),('FR_CC_458Spider',183,'Interior','MSC','Music System',1,'Sony'),('FR_CC_458Spider',185,'Exterior','SS','Security System',1,'ZICOm'),('FR_CC_458Spider',186,'Exterior','SR','Sun Roof',0,'SWM'),('MH_SD_Verito',208,'Standard','SBLT','Seat Belt',1,'SBX'),('MH_SD_Verito',210,'Standard','TRSM','Transmission',1,'Manual'),('MH_SD_Verito',211,'Standard','ABS','Anti-Lock Breaking System',0,'DSI'),('MH_SD_Verito',212,'Interior','GS','GPS System',0,'SIPL'),('MH_SD_Verito',213,'Interior','ST','Seats',1,'Leather'),('MH_SD_Verito',214,'Interior','MSC','Music System',0,'BOSS'),('MH_SD_Verito',216,'Exterior','WH','Wheels',1,'WIL'),('MH_SD_Verito',217,'Exterior','SR','Sun Roof',0,'SWM'),('MH_SV_XyloD2BS3',218,'Standard','SBLT','Seat Belt',1,'SBX'),('MH_SV_XyloD2BS3',219,'Standard','ABG','Air Bags',1,'ABL'),('MH_SV_XyloD2BS3',221,'Standard','TRSM','Transmission',0,'Manual'),('MH_SV_XyloD2BS3',222,'Interior','MSC','Music System',1,'Sony'),('MH_SV_XyloD2BS3',223,'Interior','ACS','AC System',1,'DSI'),('MH_SV_XyloD2BS3',224,'Interior','GS','GPS System',0,'SIPL'),('MH_SV_XyloD2BS3',225,'Interior','ST','Seats',0,'SML'),('MH_SV_XyloD2BS3',226,'Exterior','SS','Security System',1,'ZICOm'),('MH_SV_XyloD2BS3',227,'Exterior','SR','Sun Roof',0,'SWM'),('SV_GrandVitara',268,'Standard','ABG','Air Bags',1,'ABL'),('SV_GrandVitara',270,'Standard','ABS','Anti-Lock Breaking System',0,'DSI'),('SV_GrandVitara',271,'Standard','MSC','Music System',1,'BOSS'),('SV_GrandVitara',272,'Interior','GS','GPS System',0,'SIPL'),('SV_GrandVitara',273,'Interior','ST','Seats',1,'SML'),('SV_GrandVitara',274,'Interior','PW','Power Windows',0,'CAS'),('SV_GrandVitara',276,'Exterior','WH','Wheels',1,'WIL'),('SV_GrandVitara',277,'Exterior','SR','Sun Roof',1,'SWM'),('SM_MR_AltoLXi',318,'Standard','ABG','Air Bags',1,'ABL'),('SM_MR_AltoLXi',320,'Standard','TRSM','Transmission',0,'Manual'),('SM_MR_AltoLXi',321,'Standard','ABS','Anti-Lock Breaking System',1,'DSI'),('SM_MR_AltoLXi',322,'Interior','MSC','Music System',1,'Sony'),('SM_MR_AltoLXi',323,'Interior','ACS','AC System',1,'DSI'),('SM_MR_AltoLXi',324,'Interior','GS','GPS System',0,'SIPL'),('SM_MR_AltoLXi',325,'Interior','ST','Seats',0,'Leather'),('SM_MR_AltoLXi',326,'Exterior','WH','Wheels',1,'WIL'),('SM_MR_AltoLXi',327,'Exterior','SR','Sun Roof',0,'SWM');

#
# Source for table "price_master"
#

DROP TABLE IF EXISTS `price_master`;
CREATE TABLE `price_master` (
  `record_no` int(10) NOT NULL,
  `Model_Id` varchar(15) NOT NULL,
  `Base_price` int(11) NOT NULL DEFAULT '0',
  `standard` int(11) DEFAULT NULL,
  `interior` int(11) DEFAULT NULL,
  `exterior` int(11) DEFAULT NULL,
  `total_price` int(11) DEFAULT NULL,
  `model_name` varchar(30) DEFAULT NULL,
  `quantity` int(2) DEFAULT NULL,
  `accessories_cost` int(11) DEFAULT NULL,
  PRIMARY KEY (`record_no`),
  KEY `f3` (`Model_Id`),
  KEY `f4` (`model_name`),
  CONSTRAINT `f3` FOREIGN KEY (`Model_Id`) REFERENCES `car_models` (`Model_Id`),
  CONSTRAINT `f4` FOREIGN KEY (`model_name`) REFERENCES `car_models` (`Model_Name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

#
# Data for table "price_master"
#

INSERT INTO `price_master` VALUES (-2021251937,'SD_MR_SDZ',689000,21000,0,0,3562500,'Swift DZire',5,2500),(-163000582,'AD_LC_A4',2948000,21000,-16660,0,5909680,'Audi A4 1.8 TFSI',2,2500);

#
# Source for table "segment"
#

DROP TABLE IF EXISTS `segment`;
CREATE TABLE `segment` (
  `Type_Of_Car` varchar(50) NOT NULL DEFAULT '',
  `Minimum_Quantity` int(11) DEFAULT NULL,
  PRIMARY KEY (`Type_Of_Car`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

#
# Data for table "segment"
#

INSERT INTO `segment` VALUES ('Compact Car',6),('Luxury Car',2),('Sedan',5),('Small Car',8),('SUV',3);

#
# Source for table "model_manufacturer"
#

DROP TABLE IF EXISTS `model_manufacturer`;
CREATE TABLE `model_manufacturer` (
  `Type_Of_Car` varchar(50) NOT NULL DEFAULT '',
  `Manufacturer_Name` varchar(50) NOT NULL DEFAULT '',
  `Model_Id` varchar(50) NOT NULL DEFAULT '',
  KEY `Type_Of_Car` (`Type_Of_Car`),
  KEY `Model_Id` (`Model_Id`),
  CONSTRAINT `model_manufacturer_ibfk_1` FOREIGN KEY (`Type_Of_Car`) REFERENCES `segment` (`Type_Of_Car`),
  CONSTRAINT `model_manufacturer_ibfk_2` FOREIGN KEY (`Model_Id`) REFERENCES `car_models` (`Model_Id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

#
# Data for table "model_manufacturer"
#

INSERT INTO `model_manufacturer` VALUES ('Sedan','Maruti','SD_MR_SDZ'),('Sedan','Honda','HO_SD_Ard'),('Small Car','Honda','HO_SM_Brio'),('Compact Car','Volkswagen','VW_LC_Beetle'),('Luxury Car','Volkswagen','VW_LC_Vento'),('Compact Car','Hyundai','HY_SM_Accent'),('Sedan','Hyundai','HY_SM_Eon'),('Small Car','Hyundai','HY_SM_i10Era'),('Luxury Car','Audi','AD_LC_A4'),('Sedan','Audi','AD_SD_A6'),('SUV','Audi','AD_SV_Q7 3.0'),('Sedan','BMW','BmW_SD_3Series'),('SUV','BMW','BmW_SV_X6'),('Compact Car','Ferrari','FR_CC_458Spider'),('Sedan','Mahindra','MH_SD_Verito'),('SUV','Mahindra','MH_SV_XyloD2BS3'),('SUV','Maruti','SV_GrandVitara'),('Compact Car','Ferrari','FR_CC_F12berlinatta'),('Compact Car','Ferrari','FR_CC_California'),('Compact Car','Ferrari','FR_CC_599GTBFiorano'),('Small Car','Maruti','SM_MR_AltoLXi');

#
# Source for table "users"
#

DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `User_Id` varchar(20) NOT NULL DEFAULT '0',
  `Password` varchar(20) NOT NULL DEFAULT '',
  `Name_Of_The_Company` varchar(15) NOT NULL DEFAULT '',
  `Address` varchar(50) NOT NULL DEFAULT '',
  `Telephone` varchar(12) NOT NULL DEFAULT '',
  `Cell` varchar(10) NOT NULL DEFAULT '',
  `Fax` varchar(15) NOT NULL DEFAULT '',
  `Holding` varchar(20) NOT NULL DEFAULT '',
  `Email_Id` varchar(30) NOT NULL DEFAULT '',
  `Name_Of_Authorized_Person` varchar(20) NOT NULL DEFAULT '',
  `Company_ST_No` varchar(15) NOT NULL DEFAULT '',
  `Company_VAT_Reg_No` varchar(15) NOT NULL DEFAULT '',
  `I_Tax_Pan` varchar(15) NOT NULL DEFAULT '',
  PRIMARY KEY (`User_Id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

#
# Data for table "users"
#

INSERT INTO `users` VALUES ('Shilpa','1111','coeus.vita','mumbai','022-1234567','1234567890','121221','Pvt','shilpu@silu.com','shilpu','1213','323','656354554'),('surya','1234','gjhlkhklhlh','klhklhlh,hlkhklh,lkhhkhl,lhhklhlh,768965','022-776567','7897578905','89768765','Proprietary','surya@gmail.com','blfsklf','345','546','777');

/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
