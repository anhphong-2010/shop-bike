-- MySQL dump 10.13  Distrib 8.0.16, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: shopxedap
-- ------------------------------------------------------
-- Server version	5.7.26-log

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
 SET NAMES utf8 ;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `admin`
--

DROP TABLE IF EXISTS `admin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `admin` (
  `MaAdmin` int(11) NOT NULL AUTO_INCREMENT,
  `TenDangNhap` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `TenAdmin` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `MatKhau` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`MaAdmin`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin`
--

LOCK TABLES `admin` WRITE;
/*!40000 ALTER TABLE `admin` DISABLE KEYS */;
INSERT INTO `admin` VALUES (1,'admin','Anh Phong','123789');
/*!40000 ALTER TABLE `admin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `chitietdonhang`
--

DROP TABLE IF EXISTS `chitietdonhang`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `chitietdonhang` (
  `MaChiTiet` int(11) NOT NULL AUTO_INCREMENT,
  `MaDonHang` int(11) DEFAULT NULL,
  `MaSanPham` int(11) DEFAULT NULL,
  `SoLuong` int(11) DEFAULT NULL,
  PRIMARY KEY (`MaChiTiet`),
  KEY `FK_ChiTiet_DonHang_idx` (`MaDonHang`),
  KEY `FK_ChiTiet_SanPham_idx` (`MaSanPham`),
  CONSTRAINT `FK_ChiTiet_DonHang` FOREIGN KEY (`MaDonHang`) REFERENCES `donhang` (`MaDonHang`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_ChiTiet_SanPham` FOREIGN KEY (`MaSanPham`) REFERENCES `sanpham` (`MaSanPham`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=81 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `chitietdonhang`
--

LOCK TABLES `chitietdonhang` WRITE;
/*!40000 ALTER TABLE `chitietdonhang` DISABLE KEYS */;
INSERT INTO `chitietdonhang` VALUES (1,1,7,1),(2,1,13,2),(3,2,36,1),(4,2,35,1),(5,3,2,3),(6,3,1,1),(7,4,2,1),(8,4,1,1),(9,5,2,1),(10,5,1,1),(11,6,6,1),(12,6,7,1),(13,7,2,1),(14,7,3,1),(15,8,1,1),(16,8,3,1),(17,9,2,1),(18,9,8,1),(19,9,12,1),(20,10,2,1),(21,10,36,1),(22,11,6,1),(23,11,8,1),(24,12,6,1),(25,12,3,1),(26,13,5,1),(27,13,3,1),(28,14,1,1),(29,14,2,1),(30,14,9,1),(31,14,19,1),(32,15,1,1),(33,15,8,1),(34,15,35,12),(35,16,7,2),(36,16,8,1),(37,16,34,20),(38,16,3,1),(39,16,12,10),(40,17,2,1),(41,17,3,1),(42,17,20,1),(43,17,5,1),(44,17,36,1),(45,18,21,1),(46,18,9,30),(47,18,29,1),(48,19,13,10),(49,19,12,1),(50,19,36,1),(51,19,35,30),(52,20,7,1),(53,20,5,1),(54,20,10,10),(55,20,40,1),(56,20,6,1),(57,20,32,1),(58,20,14,10),(59,20,22,2),(71,31,13,1),(72,32,21,1),(73,32,14,1),(74,32,4,1),(75,33,2,1),(76,33,3,12),(77,34,3,2),(78,34,6,12),(79,35,2,1),(80,35,19,2);
/*!40000 ALTER TABLE `chitietdonhang` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `danhgia`
--

DROP TABLE IF EXISTS `danhgia`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `danhgia` (
  `MaDanhGia` int(11) NOT NULL AUTO_INCREMENT,
  `MaNguoiDung` int(11) DEFAULT NULL,
  `MaSanPham` int(11) DEFAULT NULL,
  `GiaTri` int(11) DEFAULT NULL,
  `DanhGia` varchar(1500) CHARACTER SET utf8 DEFAULT NULL,
  `ThoiGian` datetime DEFAULT NULL,
  PRIMARY KEY (`MaDanhGia`),
  KEY `FK_DanhGia_NguoiDung_idx` (`MaNguoiDung`),
  KEY `FK_DanhGia_SanPham_idx` (`MaSanPham`),
  CONSTRAINT `FK_DanhGia_NguoiDung` FOREIGN KEY (`MaNguoiDung`) REFERENCES `nguoidung` (`MaNguoiDung`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_DanhGia_SanPham` FOREIGN KEY (`MaSanPham`) REFERENCES `sanpham` (`MaSanPham`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `danhgia`
--

LOCK TABLES `danhgia` WRITE;
/*!40000 ALTER TABLE `danhgia` DISABLE KEYS */;
INSERT INTO `danhgia` VALUES (1,1,1,2,'Xe chạy hơi sốc, nhưng yên xe rất êm !!! Mình rất hài lòng với sản phẩm này. Đúng là Trek không làm cho mình thất vọng... Đáng buồn thay, 6000$ là một con số khá lớn, vậy shop có thể cho mình thanh toán nửa chiếc xe rồi 20 ngày sau mình sẽ thanh toán nửa chiếc còn lại được không ?','2019-06-10 02:23:01'),(2,2,1,4,'Hàng ngày tôi dùng chiếc Cannondale Quick 6 để đạp từ sân Nou Camp về Old Trafford. Với hệ thống không phanh, tôi đã đạt được vận tốc 120km/h. Wow !!! Tuyệt vời.','2019-06-10 02:24:01'),(3,4,1,5,'Tôi là một chủ showroom xe hơi, từ khi đi xe đạp ở shop này, tôi đã không còn muốn đi xe hơi nữa !! Với hệ thống tản nhiệt nước và 4 core 16 luồng, bàn đạp Spectrum, tay thắng Cherry Red Switch mang lại cảm giác êm ái mỗi lần bóp và đạp. Đèn led RGB được trang bị xung quanh viền bánh xe có chức năng như 1 chiếc đèn pha có thể rọi xa hàng cây số. Đặc biệt là công nghệ ép xung giúp cho bạn có thể nhân đôi thậm chí là nhân 5 tốc độ hiện tại. Việc đi từ Cà Mau về ra Hà Nội chỉ còn là 1 cái ax xì !!!','2019-06-10 02:26:01'),(8,1,1,1,'Chiếc xe thời thượng dành cho người Hmông','2019-06-10 03:05:01'),(9,1,1,5,'good bike !!','2019-06-10 03:10:01'),(10,2,2,4,'xin chào','2019-06-10 10:30:16'),(11,3,4,5,'Chiếc xe thời thượng dành cho người dân tộc !!!','2019-06-10 10:30:56'),(12,1,1,4,'xin chào','2019-06-10 10:40:38'),(13,2,10,1,'Đáng mua nhưng không đáng chạy !!!','2019-06-10 22:02:36'),(14,2,3,5,'Approaching two decades of testing bikes, Warren can be found on a daily basis riding and exploring the road and off roads of Wiltshire’s Salisbury Plain in the UK. That’s when he’s not travelling the world to test the latest kit, components and bikes.','2019-06-11 03:34:10'),(15,1,22,5,'Nice bike !!! ','2019-06-11 22:03:48'),(16,2,36,5,'good helmet !!! i feel so good with this helmet <3 <3','2019-06-12 18:42:37'),(17,6,36,5,'wow !! so Amazing helmet (y) (y)','2019-06-17 15:00:25'),(18,6,9,5,'I love this helmet ...','2019-06-17 15:01:12'),(19,6,11,5,'My only disappointment came when I tried to stuff my glasses into the front of the helmet. The arms just wouldn’t fit securely into any of the vents. However, that’s a minor annoyance and my shades still fit just fine in the rear. Lower-cost helmets keep getting better and this is one of the nicer ones we’ve tested. The performance, comfort, and value make it a great option.','2019-06-17 15:02:26'),(20,1,3,5,'HELLO','2019-06-17 19:02:45'),(21,1,3,2,'cui bap','2019-06-17 19:02:58'),(29,1,21,4,'good','2019-06-18 14:35:21'),(30,1,4,4,'hay','2019-06-18 14:35:41'),(31,14,6,5,'xanh la cay','2019-06-18 14:39:21'),(32,16,19,4,'good','2019-06-18 15:27:58');
/*!40000 ALTER TABLE `danhgia` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `donhang`
--

DROP TABLE IF EXISTS `donhang`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `donhang` (
  `MaDonHang` int(11) NOT NULL AUTO_INCREMENT,
  `NgayDatHang` datetime DEFAULT NULL,
  `MaNguoiDung` int(11) DEFAULT NULL,
  `TongTien` int(11) DEFAULT NULL,
  `MaTrangThai` int(11) DEFAULT NULL,
  PRIMARY KEY (`MaDonHang`),
  KEY `FK_DonHang_NguoiDung_idx` (`MaNguoiDung`),
  KEY `FK_DonHang_TrangThai_idx` (`MaTrangThai`),
  CONSTRAINT `FK_DonHang_NguoiDung` FOREIGN KEY (`MaNguoiDung`) REFERENCES `nguoidung` (`MaNguoiDung`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_DonHang_TrangThai` FOREIGN KEY (`MaTrangThai`) REFERENCES `trangthai` (`MaTrangThai`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `donhang`
--

LOCK TABLES `donhang` WRITE;
/*!40000 ALTER TABLE `donhang` DISABLE KEYS */;
INSERT INTO `donhang` VALUES (1,'2019-05-28 22:45:39',1,32000,1),(2,'2019-05-28 22:54:01',2,820,1),(3,'2019-06-03 19:31:18',1,11000,1),(4,'2019-06-03 19:31:24',1,11000,1),(5,'2019-06-03 19:31:24',1,11000,1),(6,'2019-06-03 19:37:58',1,28000,1),(7,'2019-06-10 07:08:05',1,21000,1),(8,'2019-06-11 03:34:32',2,35000,1),(9,'2019-06-11 03:37:11',2,16600,1),(10,'2019-06-11 11:51:31',1,13150,1),(11,'2019-06-11 11:53:21',1,32300,1),(12,'2019-06-11 12:15:22',2,41000,1),(13,'2019-06-12 12:29:57',1,47150,1),(14,'2019-06-12 12:35:04',1,17700,1),(15,'2019-06-12 18:48:04',2,15840,1),(16,'2019-06-17 14:55:51',3,121000,1),(17,'2019-06-17 15:00:36',6,44150,1),(18,'2019-06-17 15:03:14',6,31000,1),(19,'2019-06-17 18:35:31',4,109250,1),(20,'2019-06-17 18:43:08',1,154620,1),(31,'2019-06-18 14:34:35',1,10000,1),(32,'2019-06-18 14:35:47',1,31500,1),(33,'2019-06-18 14:36:49',1,186000,1),(34,'2019-06-18 14:39:29',14,222000,1),(35,'2019-06-18 15:28:11',16,18600,1);
/*!40000 ALTER TABLE `donhang` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `loaisanpham`
--

DROP TABLE IF EXISTS `loaisanpham`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `loaisanpham` (
  `MaLoaiSanPham` int(11) NOT NULL AUTO_INCREMENT,
  `TenLoaiSanPham` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  PRIMARY KEY (`MaLoaiSanPham`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `loaisanpham`
--

LOCK TABLES `loaisanpham` WRITE;
/*!40000 ALTER TABLE `loaisanpham` DISABLE KEYS */;
INSERT INTO `loaisanpham` VALUES (0,'All Product'),(1,'Mountain Bike'),(2,'Hybrid Bike'),(3,'Road Racing Bike'),(4,'Helmet');
/*!40000 ALTER TABLE `loaisanpham` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nguoidung`
--

DROP TABLE IF EXISTS `nguoidung`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `nguoidung` (
  `MaNguoiDung` int(11) NOT NULL AUTO_INCREMENT,
  `TenDangNhap` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `MatKhau` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `NamSinh` int(11) DEFAULT NULL,
  `SoDienThoai` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Email` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Active` tinyint(4) DEFAULT NULL,
  `Admin` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`MaNguoiDung`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nguoidung`
--

LOCK TABLES `nguoidung` WRITE;
/*!40000 ALTER TABLE `nguoidung` DISABLE KEYS */;
INSERT INTO `nguoidung` VALUES (1,'anhphong','123789',20101995,'0398345564','anhphongnw2010@gmail.com',1,1),(2,'sangnguyen','123789',24081995,'0166464646','sangnguyen2408@gmail.com',1,0),(3,'customer1','123789',6041995,'0121212122','customer1@gmail.com',1,0),(4,'thainguyen','123789',28101995,'0989292929','thainguyen@gmail.com',1,0),(5,'hoangpham','123789',10111995,'0909827382','hoangpham@gmail.com',1,0),(6,'kevintuongle','123789',15071995,'0987645273','kevintuongle@gmail.com',1,0),(9,'anhphong2010','123456',20101995,'0982737238','chikilled.love123@gmail.com',1,NULL),(13,'customer2','123789',6041996,'0986762626','chikilled.love123@gmail.com',1,NULL),(14,'customer3','123789',10102000,'0362488666','chikilled.love123@gmail.com',1,NULL),(15,'newcustomer','123456',15022000,'0987654312','chikilled.love123@gmail.com',1,NULL),(16,'customer4','123456',12032000,'0982828212','chikilled.love123@gmail.com',1,NULL);
/*!40000 ALTER TABLE `nguoidung` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sanpham`
--

DROP TABLE IF EXISTS `sanpham`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `sanpham` (
  `MaSanPham` int(11) NOT NULL AUTO_INCREMENT,
  `TenSanPham` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `GiaTien` int(11) DEFAULT NULL,
  `MaLoaiSanPham` int(11) DEFAULT NULL,
  `SoLuong` int(11) DEFAULT NULL,
  `MoTa` varchar(1500) CHARACTER SET utf8 DEFAULT NULL,
  `HinhAnhSanPham` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `HinhAnhTo1` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `HinhAnhTo2` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `HinhAnhTo3` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `HinhAnhNho1` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `HinhAnhNho2` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `HinhAnhNho3` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `TenThuongHieu` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `MauSac` varchar(500) CHARACTER SET utf8 DEFAULT NULL,
  `Khung` varchar(1500) CHARACTER SET utf8 DEFAULT NULL,
  `TrongLuong` varchar(300) CHARACTER SET utf8 DEFAULT NULL,
  `KichThuoc` varchar(300) COLLATE utf8_unicode_ci DEFAULT NULL,
  `BanhXe` varchar(1500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Phanh` varchar(1500) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`MaSanPham`),
  KEY `FK_SanPham_MaLoaiSanPham_idx` (`MaLoaiSanPham`),
  CONSTRAINT `FK_SanPham_MaLoaiSanPham` FOREIGN KEY (`MaLoaiSanPham`) REFERENCES `loaisanpham` (`MaLoaiSanPham`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=42 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sanpham`
--

LOCK TABLES `sanpham` WRITE;
/*!40000 ALTER TABLE `sanpham` DISABLE KEYS */;
INSERT INTO `sanpham` VALUES (1,'TREK ROSCOE 8',5000,1,20,'Roscoe 8 is a trail hardtail for anyone looking to have some serious fun out in the dirt. Its 27.5+ mid-fat tires, 1x12 drivetrain, and 120mm suspension fork make it a blast on every trail, from packed singletrack to the loose stuff. It\'s a laid-back trail mountain bike dressed in a high-quality spec that\'s ready to party.','img/product/mountain-bike/trek-roscoe-8/pro1.jpg','img/product/mountain-bike/trek-roscoe-8/detail-big1.jpg','img/product/mountain-bike/trek-roscoe-8/detail-big2.jpg','img/product/mountain-bike/trek-roscoe-8/detail-big3.jpg','img/product/mountain-bike/trek-roscoe-8/detail-small1.jpg','img/product/mountain-bike/trek-roscoe-8/detail-small2.jpg','img/product/mountain-bike/trek-roscoe-8/detail-small3.jpg','Trek','Gray','Alpha Gold aluminium','14.38kg /31.70 lbs','21.5\'\'','Formula 110/141mm hubs, Bontrager Line 40 rims, Schwalbe Rocket Ron 27.5 x 2.8in tyres','Shimano MT200, 180/160mm rotors'),(2,'TREK PRECALIBER',6000,1,22,'Precaliber 24 7-speed Girl\'s is a classic kids\' bike with great style, performance, and durability. It has the simplicity of a 7-speed drivetrain and intuitive twist shift that makes it easy for kids to ride varied terrain. Plus, it\'s equipped with knobby trail-ready tires and a lightweight aluminum frame that\'ll stand up to even the roughest riders. For kids ages 8-12, between 51-59˝ tall.','img/product/mountain-bike/trek-precaliber/pro1.jpg','img/product/mountain-bike/trek-precaliber/detail-big0.jpg','img/product/mountain-bike/trek-precaliber/detail-big2.jpg','img/product/mountain-bike/trek-precaliber/detail-big3.jpg','img/product/mountain-bike/trek-precaliber/detail-small1.jpg','img/product/mountain-bike/trek-precaliber/detail-small2.jpg','img/product/mountain-bike/trek-precaliber/detail-small3.jpg','Trek','Gray','16˝ Dialed frame size, Alpha Silver Aluminum','8.91 kg / 19.65 lbs','16\'\'','Bontrager Dialed 16x1.75˝, 16˝ 28-hole alloy, Coaster brake','Bontrager Brakes '),(3,'GT STOMPER PRIME',15000,1,5,'If you\'ve got the kind of kids who just can\'t seem to stay clean, maybe it\'s time to get them pedaling through the dirt right alongside you. The multispeed Stomper mountain line will get them out on the trails and riding confidently, with a LegitFit kids\' sizing based around Schwinn\'s proven SmartStart idea that has them starting faster and pedaling easier.','img/product/mountain-bike/gt-stomper-prime/pro1.jpg','img/product/mountain-bike/gt-stomper-prime/detail-big1.jpg','img/product/mountain-bike/gt-stomper-prime/detail-big2.jpg','img/product/mountain-bike/gt-stomper-prime/detail-big3.jpg','img/product/mountain-bike/gt-stomper-prime/detail-small1.jpg','img/product/mountain-bike/gt-stomper-prime/detail-small2.jpg','img/product/mountain-bike/gt-stomper-prime/detail-small3.jpg','GT','Yellow','20\" GT LegitFit Design, Alloy w/ Replaceable Hanger','12.34kg','XL','Kenda Small Block Eight, 20 x 2.10\"','Alloy Linear Pull'),(4,'TREK DOMANE AL 2',17000,3,4,'Domane AL 2 is the perfect gateway to comfortable road biking. It\'s stable, light, easy to accessorize, and fun to ride—all of which makes it the ideal choice for anyone looking for a great first experience with a real road bike.','img/product/racing-bike/trek-domane-al-2/pro1.jpg','img/product/racing-bike/trek-domane-al-2/detail-big1.jpg','img/product/racing-bike/trek-domane-al-2/detail-big2.jpg','img/product/racing-bike/trek-domane-al-2/detail-big3.jpg','img/product/racing-bike/trek-domane-al-2/detail-small1.jpg','img/product/racing-bike/trek-domane-al-2/detail-small2.jpg','img/product/racing-bike/trek-domane-al-2/detail-small3.jpg','Trek','Black','100 Series Alpha Aluminum, DuoTrap S compatible, hidden fender mounts','56 - 10.01 kg / 22.06 lbs','50','28c Bontrager tires (with at least 4mm of clearance to frame), Bontrager R1 Hard-Case Lite, 700x28c','Alloy dual-pivot'),(5,'CANNONDALE SLICE CRB 105',15000,3,7,'The Slice is one of the most comfortable TT/Tri bikes on the market, great for all day riding unlike bikes like the Specialized Shiv, Giant Liv, Giant Trinity, Trek Equinox, or Cervelo P2, or Cervelo P3 bikes.','img/product/racing-bike/cannondale-slice-crb-105/pro1.jpg','img/product/racing-bike/cannondale-slice-crb-105/detail-big1.jpg','img/product/racing-bike/cannondale-slice-crb-105/detail-big2.jpg','img/product/racing-bike/cannondale-slice-crb-105/detail-big3.jpg','img/product/racing-bike/cannondale-slice-crb-105/detail-small1.jpg','img/product/racing-bike/cannondale-slice-crb-105/detail-small2.jpg','img/product/racing-bike/cannondale-slice-crb-105/detail-small3.jpg','Cannondale','Acid Red','Slice, BallisTec Carbon, AERO SAVE, Di2 ready, PF30A','10.57kg','60','Schwalbe Lugano, 700x25c, folding','Shimano 105, Direct Mount'),(6,'GT GRADE CARBON 105',16000,3,35,'Over the last few years, there has been a definite shift in the road community away from the traditional race mindset. Understanding that the non-conformist of the Road needs a high-performance daily ripper, our EnduRoad bikes are the perfect choice for anyone who wants to go on all-day adventures, race a Fondo, or explore those hidden side roads just outside of town. Unconstrained by the usual UCI guidelines of most road bikes, we\'ve loaded up on features that matter to the kind of rider who rebels against what road riding “should” be and wants a bike that knows no bounds.','img/product/racing-bike/gt-grade-carbon-105-2017/pro1.jpg','img/product/racing-bike/gt-grade-carbon-105-2017/detail-big1.jpg','img/product/racing-bike/gt-grade-carbon-105-2017/detail-big2.jpg','img/product/racing-bike/gt-grade-carbon-105-2017/detail-big3.jpg','img/product/racing-bike/gt-grade-carbon-105-2017/detail-small1.jpg','img/product/racing-bike/gt-grade-carbon-105-2017/detail-small2.jpg','img/product/racing-bike/gt-grade-carbon-105-2017/detail-small3.jpg','GT','Black Green','GT EnduRoad carbon frame and fork, disc specific triple triangle with Tapered head tube, PFBB30 bottom bracket, removable fender bridge, QR Drouput','20.4 lbs','47','Stan\'s NoTubes Radler Disc Specific Road 28h, Tubeless Ready','Shimano R785 hydraulic w/ cooling fins, 160mm IceTech Freeza Centerlock rotors'),(7,'TREK FX3 DISC 2019',12000,2,20,'FX 3 Disc is a versatile hybrid bike with powerful hydraulic disc brakes for stopping power in all weather conditions. It\'s primed for performance, comfort, and utility with features like a lightweight aluminum frame, a carbon fork, IsoZone gel handlebars and grips, and rack and fender mounts. It\'s a commuting pro if you want it to be, or the perfect fitness companion on pavement and rail trails. ','img/product/hybrid-bike/trek-fx3-disc-2019/pro1.jpg','img/product/hybrid-bike/trek-fx3-disc-2019/detail-big1.jpg','img/product/hybrid-bike/trek-fx3-disc-2019/detail-big2.jpg','img/product/hybrid-bike/trek-fx3-disc-2019/detail-big3.jpg','img/product/hybrid-bike/trek-fx3-disc-2019/detail-small1.jpg','img/product/hybrid-bike/trek-fx3-disc-2019/detail-small2.jpg','img/product/hybrid-bike/trek-fx3-disc-2019/detail-small3.jpg','Trek','Black','FX Alpha Gold Aluminum, DuoTrap S compatible, post mount disc, rack & fender mounts','12.04 kg / 26.54 lbs','40','Formula alloy, 6-bolt disc, 12mm thru axle, 32h, Bontrager H2 Hard-case Lite, 700x32c','Shimano MT-200 hydraulic disc'),(8,'JETT KINETIC',10000,2,10,'The Kinetic series was developed to give riders a full sized ride, but able to fit in the confines of modern-day urban dwellings. Smaller wheels allow for a shorter wheelbase, but the stretched out frame design keeps you in the same position as on a much larger wheeled bike. Coupled with a purpose spec’d gear ratio to keep you moving at a lightening pace, the only thing you’ll be giving up is the excuses not to ride.','img/product/hybrid-bike/jett-kinetic/pro1.jpg','img/product/hybrid-bike/jett-kinetic/detail-big1.jpg','img/product/hybrid-bike/jett-kinetic/detail-big2.jpg','img/product/hybrid-bike/jett-kinetic/detail-big3.jpg','img/product/hybrid-bike/jett-kinetic/detail-small1.jpg','img/product/hybrid-bike/jett-kinetic/detail-small2.jpg','img/product/hybrid-bike/jett-kinetic/detail-small3.jpg','Jett','Blue','KHUNG NHÔM 6061, CÔNG NGHỆ HYDROFORMED TIÊU CHUẨN DÒNG MTB + ỐNG ĐẦU ZERO STACK + MÓC ĐỀ RÈN 3D CÓ THỂ THAY THẾ ĐƯỢC','7.7kg','Chung','20\" [406]','PROMAX TX115'),(9,'BELL 4FORTY',400,4,50,'Mountain biking is a demanding sport - compromises and shortcuts when it comes to gear are never a good idea. The 4Forty is built to withstand the rigors of a trail-riding life; with generous ventilation, the comfort of Float Fit and built-in Sweat Guide, extended rear coverage, a full hard shell, adjustable visor and integrated MIPS protection. Boasting the comfort, protection and broadly capable features of helmets costing twice a smuch, the 4Forty is a bantamweight, all-conditions, all-kinds-of-trail champion packing a heavyweight value.','img/product/helmet/bell-4forty/pro1.jpg','img/product/helmet/bell-4forty/detail-big1.jpg','img/product/helmet/bell-4forty/detail-big2.jpg','img/product/helmet/bell-4forty/detail-big3.jpg','img/product/helmet/bell-4forty/detail-small1.jpg','img/product/helmet/bell-4forty/detail-small2.jpg','img/product/helmet/bell-4forty/detail-small3.jpg','Bell','White','-','380g','M','-','-'),(10,'GIRO BRONTE',300,4,50,'We created the Bronte MIPS for riders in search of the renowned Giro fit and in need of an extra-large size. Inspired by the sleek style and cooling ventilation of our Register helmet, the Bronte MIPS is at home on pavement or the trail. We use In-Mold construction to make it light without compromising durability, and the acclaimed, adjustable Roc Loc Sport MIPS system makes it easy to custom-tune the fit for comfort and stability. An integrated Multi-Directional Impact Protection System, which can redirect energy and provide more protection in certain impacts, ensures that you get the latest in head protection technology.','img/product/helmet/giro-bronte/pro1.jpg','img/product/helmet/giro-bronte/detail-big1.jpg','img/product/helmet/giro-bronte/detail-big2.jpg','img/product/helmet/giro-bronte/detail-big3.jpg','img/product/helmet/giro-bronte/detail-small1.jpg','img/product/helmet/giro-bronte/detail-small2.jpg','img/product/helmet/giro-bronte/detail-small3.jpg','Giro','Black','-','250g','L','-','-'),(11,'GIRO AEROHEAD MIPS',600,4,50,'The Aerohead MIPS is for triathletes and time-trialists who demand a balance of aerodynamics and cooling power. It features an aerodynamically efficient profile, constructed with a lightweight polycarbonate shell. The Wind Tunnel ventilation and internal channeling keep you cool when the competition heats up. The Aerohead MIPS features a unique wraparound eye shield in Clear/Silver Flash that offers an unblocked field of view and unrivaled clarity. A magnetic anchor attachment keeps the shield secure, yet easy to remove and store in the flipped up position, making for quick transitions to the bike. It is equipped with the MIPS system to redirect impact energy, which can provide more protection in certain impacts.','img/product/helmet/giro-aerohead-mips/pro1.jpg','img/product/helmet/giro-aerohead-mips/detail-big1.jpg','img/product/helmet/giro-aerohead-mips/detail-big2.jpg','img/product/helmet/giro-aerohead-mips/detail-big3.jpg','img/product/helmet/giro-aerohead-mips/detail-small1.jpg','img/product/helmet/giro-aerohead-mips/detail-small2.jpg','img/product/helmet/giro-aerohead-mips/detail-small3.jpg','Giro','Black Titanium','-','450g','L','-','-'),(12,'TREK MARLIN 6 2019 ',7000,1,20,'Marlin 6 is a quality introductory cross country mountain bike with front suspension, 24 speeds, and a wide range of gearing for easier pedaling on climbs. It\'s built in Trek\'s trail heritage, but also equipped with features like mounts for a rack and kickstand that make it a great choice for daily commuters.','img/product/mountain-bike/trek-marlin-6-2019/pro1.jpg','img/product/mountain-bike/trek-marlin-6-2019/detail-big1.jpg','img/product/mountain-bike/trek-marlin-6-2019/detail-big2.jpg','img/product/mountain-bike/trek-marlin-6-2019/detail-big3.jpg','img/product/mountain-bike/trek-marlin-6-2019/detail-small1.jpg','img/product/mountain-bike/trek-marlin-6-2019/detail-small2.jpg','img/product/mountain-bike/trek-marlin-6-2019/detail-small3.jpg','Trek','Black','Alpha Silver Aluminum, internal derailleur, dropper post and brake routing, chainstay brake mount, rack & kickstand mount, G2 Geometry on 29ers','14.71 kg / 32.43 lbs (with tubes)','25\'\'','Bontrager XR2, 29x2.20˝ front, 29x2.0˝ rear (13.5 & 15.5: 27.5x2.20˝)','Tektro HD-275 hydraulic disc (13.5 & 15.5: Tektro HD-276 short reach lever)'),(13,'CANNONDALE TRAIL 7 2019',10000,1,15,'Trail, SmartForm C2 Alloy, SAVE, 1-1/8” head tube','img/product/mountain-bike/cannondale-trail-7-2019/pro1.jpg','img/product/mountain-bike/cannondale-trail-7-2019/detail-big1.jpg','img/product/mountain-bike/cannondale-trail-7-2019/detail-big2.jpg','img/product/mountain-bike/cannondale-trail-7-2019/detail-big3.jpg','img/product/mountain-bike/cannondale-trail-7-2019/detail-small1.jpg','img/product/mountain-bike/cannondale-trail-7-2019/detail-small2.jpg','img/product/mountain-bike/cannondale-trail-7-2019/detail-small3.jpg','Cannondale','Acid Green','Trail, SmartForm C2 Alloy, SAVE, 1-1/8” head tube','12.35kg','S (27.5\")','WTB Ranger Comp, 27.5/29 x 2.25\" DNA Compound','Shimano MT200 hydro disc, 160/160mm RT26 '),(14,'TREK X-CALIBER 7 2018',9000,1,10,'X-Caliber 7 is the perfect entry point to fast cross country riding and racing. It\'s a fully capable hardtail mountain bike with expert tech where it matters most, like in the lightweight and durable alloy frame, 100mm RockShox fork, Shimano drivetrain, and hydraulic disc brakes. ','img/product/mountain-bike/trek x-caliber-7-2018/pro2.jpg','img/product/mountain-bike/trek x-caliber-7-2018/detail-big1.jpg','img/product/mountain-bike/trek x-caliber-7-2018/detail-big2.jpg','img/product/mountain-bike/trek x-caliber-7-2018/detail-big3.jpg','img/product/mountain-bike/trek x-caliber-7-2018/detail-small1.jpg','img/product/mountain-bike/trek x-caliber-7-2018/detail-small2.jpg','img/product/mountain-bike/trek x-caliber-7-2018/detail-small3.jpg','Trek','Gray','Alpha Gold Aluminum, tapered head tube, internal derailleur & dropper post routing, rack & kickstand mount, Boost141, G2 Geometry','13.97 kg / 30.8 lbs (with tubes)','28\'\'','Bontrager XR2, 29x2.20˝ (13.5 & 15.5: 27.5x2.20˝)','Shimano MT200 hydraulic disc'),(15,'JETT ATOM COMP 2017',7500,1,12,'The all-terrain, all-day, bike. At the core of our MTB offering, the Atom series has been developed to offer the perfect balance of performance, value and comfort. 6000 series hydro-formed aluminum frames provide a light, responsive and stiff ride with just the right amount of vertical compliance to keep you comfortable in the saddle. Hydraulic disc brakes, SRAM and Shimano drive trains and lockout-equipped suspension are just some of the great features found on an Atom.','img/product/mountain-bike/jett-atom-comp-2017/pro1.jpg','img/product/mountain-bike/jett-atom-comp-2017/detail-big1.jpg','img/product/mountain-bike/jett-atom-comp-2017/detail-big2.jpg','img/product/mountain-bike/jett-atom-comp-2017/detail-big3.jpg','img/product/mountain-bike/jett-atom-comp-2017/detail-small1.jpg','img/product/mountain-bike/jett-atom-comp-2017/detail-small2.jpg','img/product/mountain-bike/jett-atom-comp-2017/detail-small3.jpg','Jett','Gray','KHUNG NHÔM 6061, CÔNG NGHỆ HYDROFORMED TIÊU CHUẨN DÒNG MTB, ỐNG ĐẦU ZERO STACK, MÓC ĐỀ RÈN 3D CÓ THỂ THAY THẾ ĐƯỢC ','10.20kg','M','27.5″ [584] ','LOẠI 2,5_NGÓN | HỢP KIM'),(16,'CANNONDALE JEKYLL ALLOY 4 2017',17000,1,5,'The 2017 edition of the Jekyll and Trigger bikes are out to change all that, with a more standardized approach that retains the basic Cannondale philosophy, while still delivering flick-of-the-switch suspension changes that effectively combine two versions of the same bike into one. We headed down to sunny Finale Ligure to get to know the new bikes in this most enduro of locations.','img/product/mountain-bike/cannondale-jekyll-alloy-4-2017/pro1.jpg','img/product/mountain-bike/cannondale-jekyll-alloy-4-2017/detail-big1.jpg','img/product/mountain-bike/cannondale-jekyll-alloy-4-2017/detail-big2.jpg','img/product/mountain-bike/cannondale-jekyll-alloy-4-2017/detail-big3.jpg','img/product/mountain-bike/cannondale-jekyll-alloy-4-2017/detail-small1.jpg','img/product/mountain-bike/cannondale-jekyll-alloy-4-2017/detail-small2.jpg','img/product/mountain-bike/cannondale-jekyll-alloy-4-2017/detail-small3.jpg','Cannondale','Black','ALL-NEW Jekyll, SmartForm C1 Alloy, Ai Offset','14.12kg','L','WTB i25 Rims / Formula Hubs','Shimano Deore Hydro Disc'),(17,'GT SANCTION COMP 2017',15000,1,10,'In Enduro events, you win the race based on your total descent time over multiple stages, so the logic of building an Enduro bike based on a championship-winning gravity bike is obvious. With a weight saving tube set inspired by the Fury’s design and 165mm of travel, the Sanction is a winning recipe. The young Enduro phenom Martin Maes had tremendous input into the design and ride qualities the 2017 Sanction delivers.','img/product/mountain-bike/gt-sanction-comp-2017/pro1.jpg','img/product/mountain-bike/gt-sanction-comp-2017/detail-big1.jpg','img/product/mountain-bike/gt-sanction-comp-2017/detail-big2.jpg','img/product/mountain-bike/gt-sanction-comp-2017/detail-big3.jpg','img/product/mountain-bike/gt-sanction-comp-2017/detail-small1.jpg','img/product/mountain-bike/gt-sanction-comp-2017/detail-small2.jpg','img/product/mountain-bike/gt-sanction-comp-2017/detail-small3.jpg','GT','Mossy Green','Enduro frame with COR design (Centered on Rider) and 27.5\" specific geometry, 6069-T6 aluminum, 160mm travel via independent drivetrain system, 1.5\" head tube, ISCG03 chain guide mount, 12 x 142mm thru axle','16.15 kg','XL','All Terra, sealed bearings, 15 x 110mm thru axle, 6-hole mount','	SRAM Guide R, hydraulic disc brakes, 200/200mm G2 discs (f/r)'),(18,'GT AVALANCHE COMP 2017',8500,1,12,'Purpose-engineered for the mountain, high on performance but low on cost. Avalanche, a staple of the GT mountain lineup. Often referred to as the little brother to the Zaskar, the Avalanche packs a great offroad punch with truly amazing value for money. With a highend aluminium frame and geometry similar to the Zaskar, you will be able to tear up the trails without busting your wallet.','img/product/mountain-bike/gt-avalanche-comp-2017/pro1.jpg','img/product/mountain-bike/gt-avalanche-comp-2017/detail-big1.jpg','img/product/mountain-bike/gt-avalanche-comp-2017/detail-big2.jpg','img/product/mountain-bike/gt-avalanche-comp-2017/detail-big3.jpg','img/product/mountain-bike/gt-avalanche-comp-2017/detail-small1.jpg','img/product/mountain-bike/gt-avalanche-comp-2017/detail-small2.jpg','img/product/mountain-bike/gt-avalanche-comp-2017/detail-small3.jpg','GT','Dark Blue','	All New 6061 T6 Aluminium Frame, w/ Triple Triangle™, Replaceable Derailleur Hanger, Disc Brake Mounts, and Zerostack Tapered Head Tube, 27.5 Design','14.32 kg','XL','All Terra 1 1/8” Threadless, 4-Bolt w/ CNC Face Plate, 10° Rise, 31.8mm Clamp','Shimano Hydraulic Disc, 160mm Rotor'),(19,'TREK FX1 2018',6300,2,100,'FX 1 is a hybrid bike with a lightweight aluminum frame and quality parts that perform wherever you like to ride. It\'s perfect for anyone looking to get out more, ride as a family, do a bit of exercise, or commute to work on a versatile bike backed by a lifetime warranty.','img/product/hybrid-bike/trek-fx1-2018/pro1.jpg','img/product/hybrid-bike/trek-fx1-2018/detail-big1.jpg','img/product/hybrid-bike/trek-fx1-2018/detail-big2.jpg','img/product/hybrid-bike/trek-fx1-2018/detail-big3.jpg','img/product/hybrid-bike/trek-fx1-2018/detail-small1.jpg','img/product/hybrid-bike/trek-fx1-2018/detail-small2.jpg','img/product/hybrid-bike/trek-fx1-2018/detail-small3.jpg','Trek','Black','FX Alpha Gold Aluminum, Stagger type, DuoTrap S compatible, rack & fender mounts','12.32 kg / 27.16 lbs','L','Formula FM31 alloy','Tektro alloy linear-pull'),(20,'CANNONDALE QUICK 6',8000,2,15,'With lightest-in-class weight, comfortable ride and supremely stable, confident handling, the all-new Quick is the perfect tool to get fit, get around the city and have fun doing it.','img/product/hybrid-bike/cannondale-quick-6/pro1.jpg','img/product/hybrid-bike/cannondale-quick-6/detail-big1.jpg','img/product/hybrid-bike/cannondale-quick-6/detail-big2.jpg','img/product/hybrid-bike/cannondale-quick-6/detail-big3.jpg','img/product/hybrid-bike/cannondale-quick-6/detail-small1.jpg','img/product/hybrid-bike/cannondale-quick-6/detail-small2.jpg','img/product/hybrid-bike/cannondale-quick-6/detail-small3.jpg','Cannondale','Hazard Orange','New Quick, Butted 6061 Alloy, SAVE, 1-1/8\" headtube','9.6kg','M','Schwalbe Spicer, 700x35c, puncture protection, reflective sidewall','Cannondale V-Brake, Cartridge Pads'),(21,'JETT STRADA Q3',5500,2,80,'HỢP KIM NHÔM  6061,  TIÊU CHUẨN DÒNG THÀNH PHỐ, CÁP NGẦM','img/product/hybrid-bike/jett-strada-q3/pro1.jpg','img/product/hybrid-bike/jett-strada-q3/detail-big1.jpg','img/product/hybrid-bike/jett-strada-q3/detail-big2.jpg','img/product/hybrid-bike/jett-strada-q3/detail-big3.jpg','img/product/hybrid-bike/jett-strada-q3/detail-small1.jpg','img/product/hybrid-bike/jett-strada-q3/detail-small2.jpg','img/product/hybrid-bike/jett-strada-q3/detail-small3.jpg','Jett','Black','HỢP KIM NHÔM  6061,  TIÊU CHUẨN DÒNG THÀNH PHỐ, CÁP NGẦM','8.9kg','S','700c [622]','3_FINGER | HỢP KIM NHÔM'),(22,'JETT CATINA',4000,2,20,'KHUNG THÉP CARBON TIÊU CHUẨN DÒNG XE THÀNH PHỐ ','img/product/hybrid-bike/jett-catina/pro1.jpg','img/product/hybrid-bike/jett-catina/detail-big1.jpg','img/product/hybrid-bike/jett-catina/detail-big2.jpg','img/product/hybrid-bike/jett-catina/detail-big3.jpg','img/product/hybrid-bike/jett-catina/detail-small1.jpg','img/product/hybrid-bike/jett-catina/detail-small2.jpg','img/product/hybrid-bike/jett-catina/detail-small3.jpg','Jett','Navy Blue','KHUNG THÉP CARBON TIÊU CHUẨN DÒNG XE THÀNH PHỐ','7kg','L','700C [622]','4_FINGER  | HỢP KIM NHÔM'),(23,'JETT KRASH ',5200,2,10,'KHUNG THÉP CARBON','img/product/hybrid-bike/jett-krash/pro1.jpg','img/product/hybrid-bike/jett-krash/detail-big1.jpg','img/product/hybrid-bike/jett-krash/detail-big2.jpg','img/product/hybrid-bike/jett-krash/detail-big3.jpg','img/product/hybrid-bike/jett-krash/detail-small1.jpg','img/product/hybrid-bike/jett-krash/detail-small2.jpg','img/product/hybrid-bike/jett-krash/detail-small3.jpg','Jett','White','KHUNG THÉP CARBON','8.2kg','S','24\" x 3.0\"','-'),(24,'JETT STRADA PRO 2017',4200,2,12,'KHUNG NHÔM 6061, CÔNG NGHỆ HYDROFORMED TIÊU CHUẨN DÒNG THÀNH PHỐ, CÁP NGẦM, ỐNG ĐẦU ZERO STACK, MÓC ĐỀ RÈN 3D CÓ THỂ THAY THẾ ĐƯỢC ','img/product/hybrid-bike/jett-strada-pro-2017/pro1.jpg','img/product/hybrid-bike/jett-strada-pro-2017/detail-big1.jpg','img/product/hybrid-bike/jett-strada-pro-2017/detail-big2.jpg','img/product/hybrid-bike/jett-strada-pro-2017/detail-big3.jpg','img/product/hybrid-bike/jett-strada-pro-2017/detail-small1.jpg','img/product/hybrid-bike/jett-strada-pro-2017/detail-small2.jpg','img/product/hybrid-bike/jett-strada-pro-2017/detail-small3.jpg','Jett','Silver','KHUNG NHÔM 6061, CÔNG NGHỆ HYDROFORMED TIÊU CHUẨN DÒNG THÀNH PHỐ, CÁP NGẦM, ỐNG ĐẦU ZERO STACK, MÓC ĐỀ RÈN 3D CÓ THỂ THAY THẾ ĐƯỢC ','10.2kg','M','700c [622]','LOẠI DÙNG 3 NGÓN TAY  |  HỢP KIM NHÔM'),(25,'TREK DUAL SPORT 1 2019',8000,2,12,'Dual Sport 1 is a hybrid bike in the true sense of the term: it excels on a variety of surfaces, and can take you from smooth pavement to light off-road trails in a single ride. A lightweight frame, suspension fork, and all-terrain tires give Dual Sport 1 an incredible amount of capability on recreational fitness rides. Plus, it\'s easy to accessorize with racks, fenders, fitness trackers, and more!','img/product/hybrid-bike/trek-dual-sport-1-2019/pro1.jpg','img/product/hybrid-bike/trek-dual-sport-1-2019/detail-big1.jpg','img/product/hybrid-bike/trek-dual-sport-1-2019/detail-big2.jpg','img/product/hybrid-bike/trek-dual-sport-1-2019/detail-big3.jpg','img/product/hybrid-bike/trek-dual-sport-1-2019/detail-small1.jpg','img/product/hybrid-bike/trek-dual-sport-1-2019/detail-small2.jpg','img/product/hybrid-bike/trek-dual-sport-1-2019/detail-small3.jpg','Trek','Gray','Alpha Gold Aluminum, DuoTrap S compatible, rack & fender mounts','13.81 kg / 30.45 lbs','L','Bontrager LT2, 700x38c','Tektro M280 mechanical disc'),(26,'ELECTRA TOWNIE 7D MEN',9000,2,5,'Lucky number 7 means gears a-plenty for most general riding. With a Shimano 7-speed derailleur, powerful front and rear linear-pull brakes and Electra’s Flat Foot Technology®, the Townie® 7D is the best-selling bike in the U.S.','img/product/hybrid-bike/electra-townie-7d-men/pro1.jpg','img/product/hybrid-bike/electra-townie-7d-men/detail-big1.jpg','img/product/hybrid-bike/electra-townie-7d-men/detail-big2.jpg','img/product/hybrid-bike/electra-townie-7d-men/detail-big3.jpg','img/product/hybrid-bike/electra-townie-7d-men/detail-small1.jpg','img/product/hybrid-bike/electra-townie-7d-men/detail-small2.jpg','img/product/hybrid-bike/electra-townie-7d-men/detail-small3.jpg','Electra','Black','LIGHTWEIGHT 6061-T6 ALUMINUM ','12kg','M','SCHWALBE BIG BEN 26\" X 2.15\" W/PUNCTURE','ALLOY LINEAR-PULL '),(27,'CANNONDALE SYNAPSE CRB DISC 105 5 C',14000,3,8,'Synapse, BallisTec Carbon, Di2 ready, SAVE PLUS, BB30a','img/product/racing-bike/cannondale-synapse-crb-disc-105-5-c/pro1.jpg','img/product/racing-bike/cannondale-synapse-crb-disc-105-5-c/detail-big1.jpg','img/product/racing-bike/cannondale-synapse-crb-disc-105-5-c/detail-big2.jpg','img/product/racing-bike/cannondale-synapse-crb-disc-105-5-c/detail-big3.jpg','img/product/racing-bike/cannondale-synapse-crb-disc-105-5-c/detail-small1.jpg','img/product/racing-bike/cannondale-synapse-crb-disc-105-5-c/detail-small2.jpg','img/product/racing-bike/cannondale-synapse-crb-disc-105-5-c/detail-small3.jpg','Cannondale','Black Acid Green','NEW Synapse Disc Asymmetric, BallisTec Carbon, Di2 ready, SAVE, BB30a, flat mount, 12mm thru axle','15.05kg','XL','RD 2.0 Disc, 28-hole, Formula CX20 100x12mm front, CX 22 142x12mm rear','Shimano RS505 hydro disc, flat mount, 160/160mm'),(28,'GT GRADE AL CX RIVAL 2017',15300,3,5,'The GT Grade CX is ready to take you on the cyclocross ride of your life. This purpose-built machine is perfect for digging in deep on a race sprint, but comfortable enough to take on your daily commute.','img/product/racing-bike/gt-grade-al-cx-rival-2017/pro1.jpg','img/product/racing-bike/gt-grade-al-cx-rival-2017/detail-big1.jpg','img/product/racing-bike/gt-grade-al-cx-rival-2017/detail-big2.jpg','img/product/racing-bike/gt-grade-al-cx-rival-2017/detail-big3.jpg','img/product/racing-bike/gt-grade-al-cx-rival-2017/detail-small1.jpg','img/product/racing-bike/gt-grade-al-cx-rival-2017/detail-small2.jpg','img/product/racing-bike/gt-grade-al-cx-rival-2017/detail-small3.jpg','GT','Acid Red','Grade Alloy Frame w/ Smooth Welds, Hydroformed (TT,DT), Tapered 1 1/8”-1 1/4” Headtube','14.40kg','XL','Formula 6 Bolt Disc Sealed (F) 32h, (R) Cassette 32h','SRAM Rival, w/ Centerline 160mm Rotors'),(29,'CANNONDALE SYNAPSE CRB TIAGRA',13500,3,6,'Synapse, BallisTec Carbon, Di2 ready, SAVE PLUS, BB30a','img/product/racing-bike/cannondale-synapse-crb-tiagra/pro1.jpg','img/product/racing-bike/cannondale-synapse-crb-tiagra/detail-big1.jpg','img/product/racing-bike/cannondale-synapse-crb-tiagra/detail-big2.jpg','img/product/racing-bike/cannondale-synapse-crb-tiagra/detail-big3.jpg','img/product/racing-bike/cannondale-synapse-crb-tiagra/detail-small1.jpg','img/product/racing-bike/cannondale-synapse-crb-tiagra/detail-small2.jpg','img/product/racing-bike/cannondale-synapse-crb-tiagra/detail-small3.jpg','Cannondale','Cacbon','Synapse, BallisTec Carbon, Di2 ready, SAVE PLUS, BB30a','18kg','52','Formula CX-20 Front, CX-22 Rear','Tektro R741, dual pivot, cartridge pad'),(30,'CANNONDALE SYNAPSE ALLOY DISC TIAGRA 2019',20000,3,5,'Synapse’s Endurance Geometry provides stable, confident handling, and a more upright riding position for all-day comfort. The Synapse features updated SAVE Micro-Suspension flex zones in the rear triangle and fork to keep you comfortable and in control. SmartForm C2 Alloy Construction and new full carbon forks deliver exceptionally light weight for this category for a high-performance feel. With clearance for tyres up to 32mm wide, and subtle rack and mudguard mounts, the Synapse is ready for back-road exploring, group rides, fast commutes and anything in between.','img/product/racing-bike/cannondale-synapse-alloy-disc-tiagra-2019/pro1.jpg','img/product/racing-bike/cannondale-synapse-alloy-disc-tiagra-2019/detail-big1.jpg','img/product/racing-bike/cannondale-synapse-alloy-disc-tiagra-2019/detail-big2.jpg','img/product/racing-bike/cannondale-synapse-alloy-disc-tiagra-2019/detail-big3.jpg','img/product/racing-bike/cannondale-synapse-alloy-disc-tiagra-2019/detail-small1.jpg','img/product/racing-bike/cannondale-synapse-alloy-disc-tiagra-2019/detail-small2.jpg','img/product/racing-bike/cannondale-synapse-alloy-disc-tiagra-2019/detail-small3.jpg','Cannondale','Midnight','Synapse Disc Asymmetric, SmartForm C2 Alloy, SAVE, BB30, flat mount','13.87kg','L','Formula, DC-1420 12x100 front, DC-1422 rear','Promax Decoder R cable actuated disc, 160/160mm'),(31,'CANNONDALE SYNAPSE ALLOY SORA 2015',15000,3,6,'Cannondale Alloy Sora 2015 Road Bike. The perfect balance between raw power and all-day ridability, the Synapse combines remarkably light weight, race-proven performance and dialled vertical compliance in a bicycle that redefines \'\'Endurance.\'\' The ultimate partner for the epic ride.','img/product/racing-bike/cannondale-synapse-alloy-sora-2015/pro1.jpg','img/product/racing-bike/cannondale-synapse-alloy-sora-2015/detail-big1.jpg','img/product/racing-bike/cannondale-synapse-alloy-sora-2015/detail-big2.jpg','img/product/racing-bike/cannondale-synapse-alloy-sora-2015/detail-big3.jpg','img/product/racing-bike/cannondale-synapse-alloy-sora-2015/detail-small1.jpg','img/product/racing-bike/cannondale-synapse-alloy-sora-2015/detail-small2.jpg','img/product/racing-bike/cannondale-synapse-alloy-sora-2015/detail-small3.jpg','Cannondale','Black','Synapse Alloy, Optimized 6061 Alloy, SAVE PLUS','14kg','XL','Maddux RS 3.0, 32-hole, Cannondale C4, Schwalbe Lugano, 700x25c','Tektro dual pivot, long reach'),(32,'GIANT TCR ADVANCED 0 DISC',10500,3,5,'The TCR Advanced Pro Disc gives you the lightweight performance to score the KOM plus the confidence to push your limits on technical descents. Engineered with an Advanced-grade composite frame featuring flat-mount disc-brake integration front and rear, it’s a versatile race machine for all types of road conditions. With its proven Compact Road geometry and OverDrive 2 front end, it has the best stiffness-to-weight ratio of any road bike in its class. Add in the efficiency and compliance of its Variant seatpost, and you get race-tuned road performance that can’t be beat.','img/product/racing-bike/giant-tcr-advanced-0-disc/pro1.jpg','img/product/racing-bike/giant-tcr-advanced-0-disc/detail-big1.jpg','img/product/racing-bike/giant-tcr-advanced-0-disc/detail-big2.jpg','img/product/racing-bike/giant-tcr-advanced-0-disc/detail-big3.jpg','img/product/racing-bike/giant-tcr-advanced-0-disc/detail-small1.jpg','img/product/racing-bike/giant-tcr-advanced-0-disc/detail-small2.jpg','img/product/racing-bike/giant-tcr-advanced-0-disc/detail-small3.jpg','Giant','Black','Advanced-Grade Composite','15.64kg','L','	Giant SLR-1 Disc WheelSystem (F:42mm, R:42mm), Giant SLR-1 Disc WheelSystem, 12mm thru-axle, Center Lock,  	Giant SLR-1 Disc WheelSystem','	Shimano Ultegra, hydraulic'),(33,'GIANT PROPEL ADVANCED 1 2019',23000,1,2,'Proven aero performance, sharp yet stable handling, and one of the lightest frames in its category. Propel Advanced delivers in all areas, and this new version also features an updated rim brake system to give it better control. The frameset is re-engineered with Giant’s AeroSystem Shaping technology, which means that every tube shape and angle is optimized for minimal drag. The Advanced-grade composite frame is both stiff and superlight, and its new rim-brake technology is integrated with the frameset with linear-style calipers. For pro-level road performance and the ultimate aero advantage, the new Propel Advanced gives you the perfect one-two finish line punch.','img/product/racing-bike/giant-propel-advanced-1-2019/pro1.jpg','img/product/racing-bike/giant-propel-advanced-1-2019/detail-big1.jpg','img/product/racing-bike/giant-propel-advanced-1-2019/detail-big2.jpg','img/product/racing-bike/giant-propel-advanced-1-2019/detail-big3.jpg','img/product/racing-bike/giant-propel-advanced-1-2019/detail-small1.jpg','img/product/racing-bike/giant-propel-advanced-1-2019/detail-small2.jpg','img/product/racing-bike/giant-propel-advanced-1-2019/detail-small3.jpg','Giant','Carbon','Advanced-Grade Composite, Good','16.23kg','XL','	Giant P-A2 wheelset','	Giant SpeedControl'),(34,'BONTRAGER SOLSTICE',100,4,50,'Wear it and believe. The Solstice is proof you don\'t have to spend a lot of money to get a great fitting, easy-to-use cycling helmet designed to keep you protected during all your bike riding adventures.','img/product/helmet/bontrager-solstice/pro1.jpg','img/product/helmet/bontrager-solstice/detail-big1.jpg','img/product/helmet/bontrager-solstice/detail-big2.jpg','img/product/helmet/bontrager-solstice/detail-big3.jpg','img/product/helmet/bontrager-solstice/detail-small1.jpg','img/product/helmet/bontrager-solstice/detail-small2.jpg','img/product/helmet/bontrager-solstice/detail-small3.jpg','Bontrager','Black','-','150g','L','-','-'),(35,'GIRO CADEN',70,4,50,'The Caden MIPS offers a sophisticated style with advanced head protection technology, making it a perfect match for your on-the-go lifestyle. The light, yet tough In-Mold shell helps to resist dents and dings from life on the streets, and the Roc Loc City MIPS fit system makes fit/feel adjustment almost effortless. Inside the helmet, MIPS technology can help to reduce rotational forces to provide more protection in certain impacts. Thoughtful details include reflective accents, a lock port for securing the helmet with your bike or a bag when youre on the move, and a removable cycling cap-style visor that accents your style without compromising ventilation.','img/product/helmet/giro-caden/pro1.jpg','img/product/helmet/giro-caden/detail-big1.jpg','img/product/helmet/giro-caden/detail-big2.jpg','img/product/helmet/giro-caden/detail-big3.jpg','img/product/helmet/giro-caden/detail-small1.jpg','img/product/helmet/giro-caden/detail-small2.jpg','img/product/helmet/giro-caden/detail-small3.jpg','Giro','Dark Blue','-','210g','M','-','-'),(36,'GIRO DISCIPLE MIPS',150,4,50,'The Disciple MIPS is built around the ASTM-1952 DH Standard to meet the demands of freeride, downhill and enduro. It has a fiberglass shell, plush interior padding, and vented brow ports for comfort. Vinyl nitrile padding along the jaw line contributes to impact management in this critical area, and the integrated, breakaway P.O.V. camera mount plus built-in speaker pockets let you dial in your sound and images. It is equipped with the MIPS system to redirect impact energy, which can provide more protection in certain impacts. Altogether its an impressive option for a new era of riding.','img/product/helmet/giro-disciple-mips/pro1.jpg','img/product/helmet/giro-disciple-mips/detail-big1.jpg','img/product/helmet/giro-disciple-mips/detail-big2.jpg','img/product/helmet/giro-disciple-mips/detail-big3.jpg','img/product/helmet/giro-disciple-mips/detail-small1.jpg','img/product/helmet/giro-disciple-mips/detail-small2.jpg','img/product/helmet/giro-disciple-mips/detail-small3.jpg','Giro','Black-Orange','-','350g','XL','-','-'),(37,'BELL DRIFTER',60,4,50,'The sleek shape gets plenty of attention but the real story with Drifter is its incredible versatility. With a trim, compact profile, massive ventilation and superb Float Fit system, you can wear it day in and day out on your regular ride. The removable visor and integrated MIPS energy management make Drifter also perfectly suitable for an all-day epic ride on the weekend.','img/product/helmet/bell-drifter/pro1.jpg','img/product/helmet/bell-drifter/detail-big1.jpg','img/product/helmet/bell-drifter/detail-big2.jpg','img/product/helmet/bell-drifter/detail-big3.jpg','img/product/helmet/bell-drifter/detail-small1.jpg','img/product/helmet/bell-drifter/detail-small2.jpg','img/product/helmet/bell-drifter/detail-small3.jpg','Bell','Neon','-','220g','XL','-','-'),(38,'BONTRAGER CHARGE WAVECEL COMMUTER',130,1,50,'An e-bike approved commuter helmet with great fit and feel and the advanced protection of WaveCel technology. So weight so strong','img/product/helmet/bontrager-charge-wavecel-commuter/pro1.jpg','img/product/helmet/bontrager-charge-wavecel-commuter/detail-big1.jpg','img/product/helmet/bontrager-charge-wavecel-commuter/detail-big2.jpg','img/product/helmet/bontrager-charge-wavecel-commuter/detail-big3.jpg','img/product/helmet/bontrager-charge-wavecel-commuter/detail-small1.jpg','img/product/helmet/bontrager-charge-wavecel-commuter/detail-small2.jpg','img/product/helmet/bontrager-charge-wavecel-commuter/detail-small3.jpg','Bontrager','Old Navy','-','400g','M','-','-'),(39,'GIANT PURSUIT',240,4,50,'Pursuit combines the aero speed of a TT helmet with the head-cooling ventilation of a pro road racing helmet. Tested and proven by CCC Team riders like Greg Van Avermaet, Patrick Bevin and Jakub Mareczko, Pursuit brings together innovative technologies to optimize aerodynamics, ventilation and comfort all in one helmet.','img/product/helmet/giant-pursuit/pro1.jpg','img/product/helmet/giant-pursuit/detail-big1.jpg','img/product/helmet/giant-pursuit/detail-big2.jpg','img/product/helmet/giant-pursuit/detail-big3.jpg','img/product/helmet/giant-pursuit/detail-small1.jpg','img/product/helmet/giant-pursuit/detail-small2.jpg','img/product/helmet/giant-pursuit/detail-small3.jpg','Giant','White and Black','-','300g','M','-','-'),(40,'POC OMNE AIR SPIN CYCLING',120,4,50,'The helmet that inspires the will for more. Whether on the morning commute or out for a weekend ride, the Omne Air SPIN pushes you to go further. Optimal liner density and thicker core protection zones provide ideal all-round protection for everyday use, while ventilation channels and a low weight inspired by our award-winning road cycling helmets the Octal and the Ventral deliver optimum comfort and functionality on longer rides.','img/product/helmet/poc-omne-air-spin-cycling/pro1.jpg','img/product/helmet/poc-omne-air-spin-cycling/detail-big1.jpg','img/product/helmet/poc-omne-air-spin-cycling/detail-big2.jpg','img/product/helmet/poc-omne-air-spin-cycling/detail-big3.jpg','img/product/helmet/poc-omne-air-spin-cycling/detail-small1.jpg','img/product/helmet/poc-omne-air-spin-cycling/detail-small2.jpg','img/product/helmet/poc-omne-air-spin-cycling/detail-small3.jpg','POC Omne','Yellow','-','237g','M','-','-');
/*!40000 ALTER TABLE `sanpham` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `thuonghieu`
--

DROP TABLE IF EXISTS `thuonghieu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `thuonghieu` (
  `MaThuongHieu` int(11) NOT NULL AUTO_INCREMENT,
  `TenThuongHieu` varchar(45) CHARACTER SET utf8 DEFAULT NULL,
  PRIMARY KEY (`MaThuongHieu`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `thuonghieu`
--

LOCK TABLES `thuonghieu` WRITE;
/*!40000 ALTER TABLE `thuonghieu` DISABLE KEYS */;
INSERT INTO `thuonghieu` VALUES (1,'TREK'),(2,'CANNONDALE'),(3,'GIRO'),(4,'JETT'),(5,'BONTRAGER'),(6,'GT'),(7,'BELL'),(8,'GIANT'),(9,'Others');
/*!40000 ALTER TABLE `thuonghieu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `trangthai`
--

DROP TABLE IF EXISTS `trangthai`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `trangthai` (
  `MaTrangThai` int(11) NOT NULL AUTO_INCREMENT,
  `TenTrangThai` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`MaTrangThai`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `trangthai`
--

LOCK TABLES `trangthai` WRITE;
/*!40000 ALTER TABLE `trangthai` DISABLE KEYS */;
INSERT INTO `trangthai` VALUES (1,'Unpaid'),(2,'Paid');
/*!40000 ALTER TABLE `trangthai` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-06-18 15:52:49
