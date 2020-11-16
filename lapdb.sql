-- MySQL dump 10.13  Distrib 8.0.21, for Win64 (x86_64)
--
-- Host: localhost    Database: lap
-- ------------------------------------------------------
-- Server version	8.0.21

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
-- Table structure for table `admin`
--

DROP TABLE IF EXISTS `admin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `admin` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `active` tinyint(1) DEFAULT NULL,
  `username` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  CONSTRAINT `admin_chk_1` CHECK ((`active` in (0,1)))
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin`
--

LOCK TABLES `admin` WRITE;
/*!40000 ALTER TABLE `admin` DISABLE KEYS */;
INSERT INTO `admin` VALUES (1,'admin',0,'admin','202cb962ac59075b964b07152d234b70');
/*!40000 ALTER TABLE `admin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `category`
--

DROP TABLE IF EXISTS `category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `category` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `admin_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `admin_id` (`admin_id`),
  CONSTRAINT `category_ibfk_1` FOREIGN KEY (`admin_id`) REFERENCES `admin` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `category`
--

LOCK TABLES `category` WRITE;
/*!40000 ALTER TABLE `category` DISABLE KEYS */;
INSERT INTO `category` VALUES (1,'Macbook',NULL),(2,'HP',NULL),(3,'DELL',NULL),(4,'ASUS',NULL),(5,'LENOVO',NULL);
/*!40000 ALTER TABLE `category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `color`
--

DROP TABLE IF EXISTS `color`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `color` (
  `id` int NOT NULL AUTO_INCREMENT,
  `color` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_id` int DEFAULT NULL,
  `admin_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `product_id` (`product_id`),
  KEY `admin_id` (`admin_id`),
  CONSTRAINT `color_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `product` (`id`),
  CONSTRAINT `color_ibfk_2` FOREIGN KEY (`admin_id`) REFERENCES `admin` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `color`
--

LOCK TABLES `color` WRITE;
/*!40000 ALTER TABLE `color` DISABLE KEYS */;
INSERT INTO `color` VALUES (1,'Trắng',1,NULL),(2,'Bạc',2,NULL),(3,'Bạc',3,NULL),(4,'Bạc',4,NULL),(5,'Bạc',5,NULL),(6,'Bạc',6,NULL),(7,'Bạc',7,NULL),(8,'Bạc',8,NULL),(9,'Trắng',11,NULL),(10,'Bạc',12,NULL),(11,'Bạc',13,NULL),(12,'Bạc',14,NULL),(13,'Xám',14,NULL),(14,'Bạc',15,NULL),(15,'Xám',15,NULL),(16,'Bạc',16,NULL),(17,'Xám',16,NULL),(18,'Bạc',17,NULL),(19,'Bạc',18,NULL),(20,'Xám',19,NULL),(21,'Xám',20,NULL),(22,'Bạc',21,NULL),(23,'Bạc',22,NULL),(24,'Bạc',23,NULL),(25,'Bạc',24,NULL),(26,'Bạc',25,NULL),(27,'Bạc',26,NULL),(28,'Bạc',27,NULL),(29,'Xám',28,NULL),(30,'Bạc',29,NULL),(31,'Bạc',30,NULL),(32,'Bạc',31,NULL),(33,'Đen',30,NULL),(34,'Đen',31,NULL);
/*!40000 ALTER TABLE `color` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customer`
--

DROP TABLE IF EXISTS `customer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customer` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `admin_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `admin_id` (`admin_id`),
  CONSTRAINT `customer_ibfk_1` FOREIGN KEY (`admin_id`) REFERENCES `admin` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customer`
--

LOCK TABLES `customer` WRITE;
/*!40000 ALTER TABLE `customer` DISABLE KEYS */;
INSERT INTO `customer` VALUES (1,'A','0358209602','123','123@gmail.com',NULL),(2,'a','0358209602','a','a@gmail.com',NULL),(3,'thao','0358209602','123','thao@gmail.com',NULL),(4,'Lê Thị Thu Thảo','0358209602','123 Nguyễn Kiệm','thuthaokg1999@gmail.com',NULL),(5,'Ngân','0358209602','371 Nguyễn Kiệm','ngan@gmail.com',NULL),(6,'thao','0358209602','123 nk','th@gmail.com',NULL),(7,'Khách hàng n','0358209602','123 NK','khn@gmail.com',NULL);
/*!40000 ALTER TABLE `customer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `image`
--

DROP TABLE IF EXISTS `image`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `image` (
  `id` int NOT NULL AUTO_INCREMENT,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_id` int DEFAULT NULL,
  `admin_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `product_id` (`product_id`),
  KEY `admin_id` (`admin_id`),
  CONSTRAINT `image_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `product` (`id`),
  CONSTRAINT `image_ibfk_2` FOREIGN KEY (`admin_id`) REFERENCES `admin` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `image`
--

LOCK TABLES `image` WRITE;
/*!40000 ALTER TABLE `image` DISABLE KEYS */;
/*!40000 ALTER TABLE `image` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product`
--

DROP TABLE IF EXISTS `product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` float NOT NULL,
  `image1` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cpu` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ram` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `hard_drive` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `card_graphic` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `display` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `os` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `weight` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pin` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `category_id` int NOT NULL,
  `admin_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `category_id` (`category_id`),
  KEY `admin_id` (`admin_id`),
  CONSTRAINT `product_ibfk_1` FOREIGN KEY (`category_id`) REFERENCES `category` (`id`),
  CONSTRAINT `product_ibfk_2` FOREIGN KEY (`admin_id`) REFERENCES `admin` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product`
--

LOCK TABLES `product` WRITE;
/*!40000 ALTER TABLE `product` DISABLE KEYS */;
INSERT INTO `product` VALUES (1,'Apple MacBook Air 2020 i3 256GB (MWTJ2SA/A)',28990000,'https://cdn.tgdd.vn/Products/Images/44/226169/apple-macbook-air-2020-i3-11ghz-8gb-256gb-mwtj2sa-600x600.jpg',' Intel Core i3 Thế hệ 10, 1.10 GHz','RAM 8 GB','Ổ cứng SSD 256GB','Intel Iris Plus Graphics','13.3 inch, Retina (2560 x 1600)','Mac OS',' 1.29 kg','Khoảng 10 giờ','Vẫn là ngôn ngữ thiết kế quen thuộc: đẳng cấp - gọn nhẹ, Apple MacBook Air 2020 (MWTJ2SA/A) phiên bản Core i3 Gen 10 mạnh mẽ lại có giá bán hời hơn đáp ứng điều kiện cho những ai muốn sở hữu một con laptop sang xịn nhưng giá không quá cao.',1,NULL),(2,'MacBook Air 2020 i3 256GB (MWTL2SA/A)',28990000,'https://cdn.tgdd.vn/Products/Images/44/220174/apple-macbook-air-2020-i3-220174-1-600x600.jpg','Intel Core i3 Thế hệ 10, 1.10 GHz','RAM 8 GB','Ổ cứng SSD 256GB','Intel Iris Plus Graphics','13.3 inch, Retina (2560 x 1600)','Mac OS',' 1.29 kg','Khoảng 10 giờ','MacBook Air 2020 i3 mới với thiết kế sang trọng, hiệu năng khá, bàn phím Magic lần đầu tiên xuất hiện trên dòng Macbook Air. Với nhiều tính năng hiện đại, đây là chiếc MacBook Air rất đáng sở hữu với mức giá gần như rẻ nhất từ trước đến nay. ',1,NULL),(3,'MacBook Air 2017 128GB (MQD32SA/A)',20990000,'https://cdn.tgdd.vn/Products/Images/44/106875/apple-macbook-air-mqd32sa-a-i5-5350u-600x600.jpg','Intel Core i5 Broadwell, 1.80 GHz','RAM 8 GB','Ổ cứng SSD 128GB','Intel HD Graphics 6000','13.3 inch, WXGA+(1440 x 900)','Mac OS',' 1.35 Kg','Khoảng 12 giờ','MacBook Air 2017 i5 128GB là mẫu laptop văn phòng, có thiết kế siêu mỏng và nhẹ, vỏ nhôm nguyên khối sang trọng. Máy có hiệu năng ổn định, thời lượng pin cực lâu 12 giờ, phù hợp cho hầu hết các nhu cầu làm việc và giải trí. ',1,NULL),(4,'HP 348 G7 i3 8130U (9PG83PA)',10990000,'https://cdn.tgdd.vn/Products/Images/44/221511/hp-348-g7-i3-9pg83pa-221511-600x600.jpg','Intel Core i3 Coffee Lake, 2.20 GHz','RAM 4 GB','Ổ cứng SSD 256GB','Intel® UHD Graphics 620','14 inch, Full HD (1920 x 1080)','Windows 10 Home SL',' 1.5 kg','Li-Ion 3 cell','Được xướng tên trong phân khúc laptop học tập - văn phòng lần này là một chiếc laptop nhỏ gọn nữa đến từ thương hiệu HP - laptop HP 348 G7 i3 8130U (9PG83PA), hứa hẹn sẽ đáp ứng tốt mọi nhu cầu sử dụng laptop thường ngày của dân văn phòng và cả các bạn học sinh sinh viên.',2,NULL),(5,'HP 348 G7 i5 10210U (9PH06PA)',15990000,'https://cdn.tgdd.vn/Products/Images/44/218439/hp-348-g7-i5-9ph06pa-kg2-1-218439-600x600.jpg','Intel Core i5 Comet Lake, 1.60 GHz','RAM 8 GB','Ổ cứng SSD 512GB','Intel UHD Graphics','14 inch, Full HD (1920 x 1080)','Windows 10 Home SL',' 1.5 kg','Li-Ion 3 cell','Đặc điểm nổi bật của HP 348 G7 i5 10210U/8GB/512GB/Win10 (9PH06PA)',2,NULL),(6,'HP 15s fq1111TU i3 1005G1 (193R0PA)',11390000,'https://cdn.tgdd.vn/Products/Images/44/224012/hp-15s-fq1111tu-i3-193r0pa-224012-224012-600x600.jpg','Intel Core i3 Ice Lake, 1.20 GHz','RAM 4 GB','Ổ cứng SSD 256GB','Intel UHD Graphics','15.6 inch, Full HD (1920 x 1080)','Windows 10 Home SL',' 1.69 kg','Li-Ion 3 cell','Laptop HP 15s fq1111TU i3 (193R0PA) sở hữu độ hoàn thiện cao, thân máy mỏng nhẹ cùng cấu hình đủ dùng cho học tập, làm việc văn phòng và lướt web giải trí.',2,NULL),(7,'HP 348 G7 i3 8130U (1A0Z1PA)',11990000,'https://cdn.tgdd.vn/Products/Images/44/225549/hp-348-g7-i3-1a0z1pa-1-225549-600x600.jpg','Intel Core i3 Coffee Lake, 2.20 GHz','RAM 4GB','Ổ cứng SSD 512GB','Intel® UHD Graphics 620','14 inch, Full HD (1920 x 1080)','Windows 10 Home SL',' 1.5 kg','Li-Ion 3 cell','Laptop HP 348 G7 i3 (1A0Z1PA) là chiếc laptop học tập văn phòng giá rẻ dành cho các bạn học sinh sinh viên cần một chiếc máy tính xách tay có cấu hình ổn định, kích thước mỏng nhẹ để đồng hành mỗi ngày.',2,NULL),(8,'HP Pavilion x360 14 dw0060TU(195M8PA)',14190000,'https://cdn.tgdd.vn/Products/Images/44/225695/hp-pavilion-x360-dw0060tu-i3-195m8pa-225695-600x600.jpg','Intel Core i3 Ice Lake','RAM 4GB','Ổ cứng SSD 256GB','Intel UHD Graphics','14 inch, Full HD (1920 x 1080)','Windows 10 Home SL','1.65 kg','Li-Ion 3 cell','Mỏng nhẹ và đa năng là những gì mà chiếc laptop HP Pavilion x360 14 dw0060TU i3 (195M8PA) mang lại. Với bản lề gập xoay và màn hình cảm ứng, bạn có thể thoải mái trải nghiệm chiếc máy tính xách tay này bằng bất cứ cách nào mà bạn muốn.Thân máy được hoàn thiện từ chất liệu nhựa phủ sơn màu bạc đem đến cảm giác sang trọng, trang nhã. ',2,NULL),(9,'HP 15s du1076TX i5 10210U (1R8E2PA)',17490000,'https://cdn.tgdd.vn/Products/Images/44/227070/hp-15s-du1076tx-i5-8gb-10210u-512gb-2gb-mx130-win1-600x600.jpg','Intel Core i5 Comet Lake, 1.60 GHz','RAM 8 GB','Ổ cứng SSD 512GB','NVIDIA Geforce MX130, 2GB','15.6 inch, Full HD (1920 x 1080)','Windows 10 Home SL',' 1.751 kg','Li-Ion 3 cell','Laptop HP 15s du1076TX i5 (1R8E2PA) thuộc dòng laptop HP phổ thông phù hợp cho nhu cầu học tập, văn phòng. Với thiết kế mỏng nhẹ, hiệu năng đủ dùng, HP 15s du1076TX là chiếc máy tính xách tay đáng sở hữu trong phân khúc giá.',2,NULL),(10,'HP Pavilion 15 cs3010TU i3 1005G1 (8QN78PA)',13590000,'https://cdn.tgdd.vn/Products/Images/44/220955/hp-pavilion-15-cs3010tu-i3-8qn78pa-220955-1-600x600.jpg','Intel Core i3 Ice Lake, 1.20 GHz','RAM 4 GB','Ổ cứng SSD 256GB','Intel UHD Graphics','15.6 inch, Full HD (1920 x 1080)','Windows 10 Home SL',' 1.69 kg','Li-Ion 3 cell','Laptop HP Pavilion 15 cs3010TU đủ mỏng để theo bạn bất cứ nơi nào và đủ mạnh mẽ để vượt qua ngày dài, phù hợp với mọi đối tượng, đặc biệt là học sinh, sinh viên hay nhân viên văn phòng. ',2,NULL),(11,'HP 15s fq1105TU i5 1035G1/ (193P7PA)',16490000,'https://cdn.tgdd.vn/Products/Images/44/223682/hp-15s-fq1105tu-i5-193p7pa-223682-1-600x600.jpg','Intel Core i5 Ice Lake, 1.00 GHz','RAM 8 GB','Ổ cứng SSD 512GB','Intel UHD Graphics','15.6 inch, Full HD (1920 x 1080)','Windows 10 Home SL',' 1.69 kg','Li-Ion 3 cell','Đặc điểm nổi bật của HP 15s fq1105TU i5 1035G1/8GB/512GB/Win10 (193P7PA)',2,NULL),(12,'HP 15s du1056TU 6405U (1W7R5PA)',8990000,'https://cdn.tgdd.vn/Products/Images/44/227709/hp-15s-du1056tu-6405u-1w7r5pa-600x600.jpg','Intel Pentium, 2.40 GHz','RAM 4GB','Ổ cứng SSD 512GB','Intel® UHD Graphics 605','15.6 inch, Full HD (1920 x 1080)','Windows 10 Home SL',' 1,78 kg','Li-Ion 3 cell','Laptop HP 15s (1W7R5PA) là dòng máy ở phân khúc tầm trung với cấu hình đủ dùng dành cho dân văn phòng với thiết kế sang trọng tinh tế cùng với SSD siêu nhanh giúp bạn sẵn sàng xử lý công việc trong nháy mắt.',2,NULL),(13,'HP Pavilion 14 ce3067TU i5 1035G1 (1A1M7PA)',17990000,'https://cdn.tgdd.vn/Products/Images/44/224066/hp-pavilion-14-ce3067tu-i5-1a1m7pa-224066-2-600x600.jpg','Intel Core i5 Ice Lake, 1.00 GHz','RAM 8 GB','Ổ cứng SSD 512GB','Intel UHD Graphics','14 inch, Full HD (1920 x 1080)','Windows 10 Home SL',' 1.6 kg','Li-Ion 3 cell','Laptop HP Pavilion 14 ce3067TU i5 (1A1M7PA) được thiết kế gọn nhẹ, thanh lịch. Bên cạnh đó máy được trang bị dòng chip thế hệ thứ 10 mới nhất hiện nay để chạy tốt ứng dụng văn phòng và ứng dụng game phổ thông.',2,NULL),(14,'Dell Inspiron 5593 i5 1035G1 (N5I5513W)',17990000,'https://cdn.tgdd.vn/Products/Images/44/213570/dell-inspiron-5593-i5-1035g1-8gb-256gb-2gb-mx230-w-213570-600x600.jpg','Intel Core i5 Ice Lake, 1.00 GHz','RAM 8 GB','Ổ cứng SSD 256GB','NVIDIA GeForce MX230 2GB','15.6 inch, Full HD (1920 x 1080)','Windows 10 Home SL',' 2.05 kg','Li-Ion 3 cell','Laptop Dell Inspiron 5593 nằm ở phân khúc laptop cao cấp, là trợ thủ công nghệ đắc lực dành cho những doanh nhân khi sở hữu chiếc laptop có màn hình lớn, thiết kế tinh tế, thời trang và hiệu năng cực đỉnh.',3,NULL),(15,'Dell Vostro 3491 i3 1005G1 (70223127)',10990000,'https://cdn.tgdd.vn/Products/Images/44/229622/dell-vostro-3491-i3-70223127-103120-103142-600x600.jpg','Intel Core i3 Ice Lake, 1.20 GHz','RAM 4 GB','Ổ cứng SSD 256GB','Intel UHD Graphics','14 inch, Full HD (1920 x 1080)','Windows 10 Home SL',' 1.66 kg','Li-Ion 3 cell','Laptop Dell Vostro 3491 i3 (70223127) là chiếc máy tính xách tay văn phòng được thiết kế nhỏ gọn, dễ dịch chuyển, cấu hình máy không mạnh nhưng đủ đáp ứng nhu cầu học tập, văn phòng cơ bản, trình duyệt web và làm việc đa nhiệm. ',3,NULL),(16,'Dell Inspiron 3493 i5 1035G1 (N4I5122WA)',15290000,'https://cdn.tgdd.vn/Products/Images/44/222088/dell-inspiron-3493-i5-n4i5122w-222088-600x600.jpg','Intel Core i5 Ice Lake, 1.00 GHz','RAM 8 GB','Ổ cứng SSD 256GB','Intel UHD Graphics','14 inch, Full HD (1920 x 1080)','Windows 10 Home SL',' 1.79kg','Li-Ion 3 cell','Laptop Dell Inspiron 3493 i5 (N4I5122W) là mẫu máy laptop văn phòng đến từ nhà Dell. Hướng tới khách hàng là học sinh sinh viên và nhân viên văn phòng, máy được trang bị cấu hình đủ dùng cho công việc lẫn giải trí thường ngày. ',3,NULL),(17,'Dell Vostro 5490 i7 10510U (70223128)',22490000,'https://cdn.tgdd.vn/Products/Images/44/229539/dell-vostro-5490-i7-70223128-095120-105108-600x600.jpg','Intel Core i7 Comet Lake, 1.80 GHz','RAM 8 GB','Ổ cứng SSD 512GB','NVIDIA GeForce MX250 2GB','14 inch, Full HD (1920 x 1080)','Windows 10 Home SL',' 1.49 kg','Li-Ion 3 cell','Laptop Dell Vostro 5490 i7 (70223128) với ngoại hình sang trọng, đẳng cấp và mỏng nhẹ, cấu hình mạnh mẽ bởi hệ vi xử lí tân tiến nhất đáp ứng nhu cầu di chuyển và làm việc của giới văn phòng và doanh nhân.',3,NULL),(18,'Dell Inspiron 5593 i5 1035G1 (7WGNV1)',17990000,'https://cdn.tgdd.vn/Products/Images/44/213535/dell-inspiron-5593-i5-7wgnv1-213535-600x600.jpg','Intel Core i5 Ice Lake, 1.00 GHz','RAM 8 GB','Ổ cứng SSD 512GB','Intel UHD Graphics','15.6 inch, Full HD (1920 x 1080)','Windows 10 Home SL',' 1.83 kg','Li-Ion 3 cell','Laptop Dell Inspiron 5593 i5 (7WGNV1) là mẫu laptop học tập - văn phòng tầm trung hướng đến khách hàng là giới văn phòng hay học sinh sinh viên. Với thiết kế đơn giản, vi xử lí thế hệ mới mạnh mẽ, Inspiron 5593 được đánh giá là chiếc laptop đáng sở hữu trong phân khúc giá.',3,NULL),(19,'Dell Vostro 5581 i5 8265U (VRF6J1)',15740000,'https://cdn.tgdd.vn/Products/Images/44/202990/dell-vos15-5581-i5-8265-4gb-1tb-mx130-office-vrf6-2-3-600x600.jpghttps://cdn.tgdd.vn/Products/Images/44/202990/dell-vos15-5581-i5-8265-4gb-1tb-mx130-office-vrf6-2-3-600x600.jpg','Intel Core i5 Coffee Lake, 1.60 GHz','RAM 4 GB','Ổ cứng 1TB','NVIDIA Geforce MX130, 2GB','15.6 inch, Full HD (1920 x 1080)','Windows 10 Home SL',' 1.91 kg','Li-Ion 3 cell','Laptop Dell Vostro 5581 có thiết kế đơn giản quen thuộc của thương hiệu Dell, chiếc laptop văn phòng này chủ yếu chú trọng đến cấu hình mạnh để đem đến hiệu quả làm việc cao. Bên cạnh đó, máy còn được trang bị card đồ họa rời giúp việc thiết kế và chơi game tốt hơn.',3,NULL),(20,'Dell Vostro 3590 i7 10510U (GRMGK2)',20990000,'https://cdn.tgdd.vn/Products/Images/44/220718/dell-vostro-3590-i7-grmgk2-220718-220718-600x600.jpg','Intel Core i7 Comet Lake, 1.80 GHz','RAM 8 GB','Ổ cứng SSD 256GB','AMD Radeon 610R5, 2GB','15.6 inch, Full HD (1920 x 1080)','Windows 10 Home SL',' 1.99 kg','Li-Ion 3 cell','Laptop Dell Vostro 3590 i7 (GRMGK2) là phiên bản laptop đồ họa kĩ thuật có thiết kế hiện đại, cấu hình khỏe với vi xử lí gen 10 và card đồ họa rời. Đây chính là chiếc laptop đáng cân nhắc đối với dân đồ họa hay sinh viên khối ngành kĩ thuật.',3,NULL),(21,'Asus VivoBook A412FA i5 10210U (EK738T)',16190000,'https://cdn.tgdd.vn/Products/Images/44/217509/asus-vivobook-a412fa-i5-ek738t-217509-600x600.jpg','Intel Core i5 Comet Lake, 1.60 GHz','RAM 8 GB','Ổ cứng SSD 512GB','Intel UHD Graphics','14 inch, Full HD (1920 x 1080)','Windows 10 Home SL',' 1.406 kg','Li-Ion 2 cell','Laptop ASUS VivoBook A412FA i5 (EK738T) là mẫu laptop văn phòng, sinh viên mỏng nhẹ, có cấu hình khỏe với CPU Intel thế hệ mới nhất. Ngoài ra máy còn sở hữu ổ cứng SSD 512 GB siêu nhanh và cảm biến vân tay giúp mở khóa tiện lợi, bảo mật cao.',4,NULL),(22,'Asus VivoBook A412FA i3 10110U (EK1175T)',12050000,'https://cdn.tgdd.vn/Products/Images/44/225610/asus-vivobook-a412fa-i3-ek1175t-225610-600x600.jpg','Intel Core i3 Comet Lake, 2.10 GHz','RAM 4 GB','Ổ cứng SSD 256GB','Intel UHD Graphics','14 inch, Full HD (1920 x 1080)','Windows 10 Home SL',' 1.406 kg','Li-Ion 2 cell','Asus VivoBook A412FA i3 (EK1175T) sở hữu thiết kế mỏng nhẹ, hiệu năng ổn định đáp ứng tốt các nhu cầu học tập và làm việc văn phòng.',4,NULL),(23,'Asus VivoBook X409JA i3 1005G1 (EK015T)',11590000,'https://cdn.tgdd.vn/Products/Images/44/220526/asus-x409ja-i3-ek015t-220526-2-600x600.jpg','Intel Core i3 Ice Lake, 1.20 GHz','RAM 4 GB','Ổ cứng SSD 512GB','Intel UHD Graphics','14 inch, Full HD (1920 x 1080)','Windows 10 Home SL',' 1.5 kg','Li-Ion 2 cell','Laptop ASUS VivoBook X409JA i3 (EK015T) là mẫu laptop học tập - văn phòng được thiết kế gọn nhẹ, sử dụng vi xử lí thế hệ 10 và ổ cứng SSD 512 GB cho hiệu năng vượt trội trong phân khúc.',4,NULL),(24,'Asus VivoBook X509MA N5030 (EJ256T)',8890000,'https://cdn.tgdd.vn/Products/Images/44/228514/asus-vivobook-x509ma-n5030-ej256t-171120-051158-600x600.jpg','Intel Pentium, 1.10 GHz','RAM 4 GB','Ổ cứng SSD 512GB','Intel® UHD Graphics 605','15.6 inch, Full HD (1920 x 1080)','Windows 10 Home SL',' 1.9 kg','Li-Ion 2 cell','Laptop Asus VivoBook X509MA N5030 (EJ256T) thuộc phân khúc laptop giá rẻ, máy có thiết kế hiện đại, cấu hình đủ đáp ứng nhu cầu học tập, giải trí đa phương tiện hằng ngày.',4,NULL),(25,'Asus VivoBook X509JP i5 1035G1 (EJ023T)',17190000,'https://cdn.tgdd.vn/Products/Images/44/221617/asus-vivobook-x509jp-i5-ej023t-2gb-221617-600x600.jpg','Intel Core i5 Ice Lake, 1.00 GHz','RAM 8 GB','Ổ cứng SSD 512GB','NVIDIA GeForce MX330, 2GB','15.6 inch, Full HD (1920 x 1080)','Windows 10 Home SL',' 1.73 kg','Li-Ion 2 cell','Asus VivoBook X509JP i5 (EJ023T) là chiếc laptop học tập - văn phòng mỏng nhẹ, cấu hình mạnh và ổn định cho nhu cầu làm việc, giải trí hằng ngày. Ngoài ra, máy cũng có khả năng đồ họa khá nhờ có card đồ họa rời. ',4,NULL),(26,'Asus VivoBook Gaming F571GT (AL851T)',21790000,'https://cdn.tgdd.vn/Products/Images/44/226255/asus-vivobook-gaming-f571gt-i5-al851t-226255-600x600.jpg','Intel Core i5 Coffee Lake, 2.40 GHz','RAM 8 GB','Ổ cứng SSD 512GB','NVIDIA GeForce GTX 1650 4GB','15.6 inch, Full HD (1920 x 1080)','Windows 10 Home SL',' 1.8 kg','Li-Ion 3 cell','Laptop Asus VivoBook Gaming F571GT (AL851T) sở hữu cấu hình khủng trong thân máy văn phòng linh hoạt thời thượng, luôn trong tư thế sẵn sàng chiến game ở mọi nơi.',4,NULL),(27,'Asus VivoBook A512FA i3 8145U (EJ1868T)',12790000,'https://cdn.tgdd.vn/Products/Images/44/220574/asus-vivobook-a512fa-i3-ej1868t-220574-600x600.jpg','Intel Core i3 Coffee Lake, 2.10 GHz','RAM 4 GB','Ổ cứng SSD 512GB','Intel® UHD Graphics 620','15.6 inch, Full HD (1920 x 1080)','Windows 10 Home SL',' 1.7 kg','Li-Ion 2 cell','Laptop Asus VivoBook A512FA (EJ1868T) là mẫu laptop học tập - văn phòng tầm trung. Với thiết kế gọn nhẹ và cấu hình vừa phải, Asus VivoBook A512FA sẽ là một người bạn đồng hành cùng với các bạn sinh viên, cũng như nhân viên văn phòng trong mọi hoạt động từ học tập, làm việc cho đến giải trí thường ngày.',4,NULL),(28,'Lenovo IdeaPad Flex 5 14IIL i5 1035G1 (81X1001UVN)',18990000,'https://cdn.tgdd.vn/Products/Images/44/223538/lenovo-ideapad-flex-5-14iil-i5-81x1001uvn-ssd-i5-223538-600x600.jpg','Intel Core i5 Ice Lake, 1.00 GHz','RAM 8 GB','Ổ cứng SSD 512GB','Intel UHD Graphics','14 inch, Full HD (1920 x 1080)','Windows 10 Home SL',' 1.5 kg','Li-Ion 3 cell','Màn hình đẹp, âm thanh sống động, thiết kế lật xoay linh hoạt cùng cấu hình mạnh mẽ đã hội tụ trong Lenovo IdeaPad Flex 5 14IIL, một máy tính xách tay 2 trong 1 giúp nâng cao trải nghiệm của bạn hơn nữa đối với các hoạt động sử dụng máy tính hằng ngày.',5,NULL),(29,'Lenovo IdeaPad S340 15IIL i5 1035G4 (81VW00A8VN)',16290000,'https://cdn.tgdd.vn/Products/Images/44/217440/lenovo-ideapad-s340-i5-81vw00a8vn-1-217440-600x600.jpg','Intel Core i5 Ice Lake, 1.10 GHz','RAM 8 GB','Ổ cứng 1TB','Intel Iris Plus Graphics','15.6 inch, Full HD (1920 x 1080)','Windows 10 Home SL',' 1.79 kg','Li-Ion 3 cell','Laptop Lenovo IdeaPad S340 15IIL được trang bị hiệu năng mạnh mẽ, màn hình lớn với viền siêu mỏng. Chiếc laptop phù hợp với đối tượng sinh viên hay nhân viên văn phòng sử dụng soạn thảo, thiết kế bằng Photoshop hay giải trí với các game phổ thông.',5,NULL),(30,'Lenovo IdeaPad S340 15IIL i3 1005G1 (81VW0042VN)',14290000,'https://cdn.tgdd.vn/Products/Images/44/213528/lenovo-ideapad-s340-15iil-i3-1005g1-8gb-512gb-win1-xam-6-213528-600x600.jpg','Intel Core i3 Ice Lake, 1.20 GHz','RAM 8 GB','Ổ cứng SSD 512GB','Intel UHD Graphics','15.6 inch, Full HD (1920 x 1080)','Windows 10 Home SL',' 1.79 kg','Li-Ion 3 cell','Laptop Lenovo IdeaPad S340 15IIL i3 (81VW0042VN) được thiết kế đơn giản, gọn nhẹ và có cấu hình trung bình, phù hợp với nhu cầu sử dụng của nhân viên văn phòng, học sinh sinh viên.',5,NULL),(31,'Lenovo Ideapad S145 15IWL i7 8565U (81MV00TAVN)',13010000,'https://cdn.tgdd.vn/Products/Images/44/207797/lenovo-ideapad-s145-15iwl-i7-8565u-8gb-512gb-mx110-20-207797-600x600.jpg','Intel Core i7 Coffee Lake, 1.80 GHz','RAM 4 GB','Ổ cứng SSD 512GB','NVIDIA GeForce MX110, 2GB','15.6 inch, Full HD (1920 x 1080)','Windows 10 Home SL',' 1.73 kg','Li-Ion 2 cell','Xử lý nhanh chóng mọi công việc hay thiết kế đồ họa chuyên nghiệp với Lenovo Ideapad S145 15IWL nhờ Chip Intel Core i7, RAM 8 GB. Thiết kế đơn giản, thanh lịch và gọn nhẹ, Lenovo Ideapad trở thành sự lựa chọn của dân văn phòng và sinh viên năng động.',5,NULL);
/*!40000 ALTER TABLE `product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `receipt`
--

DROP TABLE IF EXISTS `receipt`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `receipt` (
  `id` int NOT NULL AUTO_INCREMENT,
  `product_id` int NOT NULL,
  `supplier_id` int NOT NULL,
  `date` datetime DEFAULT NULL,
  `quantity` int DEFAULT NULL,
  `sum` float DEFAULT NULL,
  `admin_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `product_id` (`product_id`),
  KEY `supplier_id` (`supplier_id`),
  KEY `admin_id` (`admin_id`),
  CONSTRAINT `receipt_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `product` (`id`),
  CONSTRAINT `receipt_ibfk_2` FOREIGN KEY (`supplier_id`) REFERENCES `supplier` (`id`),
  CONSTRAINT `receipt_ibfk_3` FOREIGN KEY (`admin_id`) REFERENCES `admin` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `receipt`
--

LOCK TABLES `receipt` WRITE;
/*!40000 ALTER TABLE `receipt` DISABLE KEYS */;
/*!40000 ALTER TABLE `receipt` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sale_info`
--

DROP TABLE IF EXISTS `sale_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sale_info` (
  `id` int NOT NULL AUTO_INCREMENT,
  `sale_content` text COLLATE utf8mb4_unicode_ci,
  `product_id` int DEFAULT NULL,
  `admin_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `product_id` (`product_id`),
  KEY `admin_id` (`admin_id`),
  CONSTRAINT `sale_info_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `product` (`id`),
  CONSTRAINT `sale_info_ibfk_2` FOREIGN KEY (`admin_id`) REFERENCES `admin` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=82 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sale_info`
--

LOCK TABLES `sale_info` WRITE;
/*!40000 ALTER TABLE `sale_info` DISABLE KEYS */;
INSERT INTO `sale_info` VALUES (1,'Balo Laptop 13.3\" Tucano WOV-MB133',1,NULL),(2,'Mua kèm Microsoft 365 Personal giá chỉ 690.000đ',1,NULL),(3,'Balo Laptop 13.3\" Tucano WOV-MB133',2,NULL),(4,'Mua kèm Microsoft 365 Personal giá chỉ 690.000đ',2,NULL),(5,'Balo Laptop 15\" Tucano LOOP BKLOOP15',3,NULL),(6,'Mua kèm Microsoft 365 Personal giá chỉ 690.000đ',3,NULL),(7,'Túi chống sốc Laptop 14\" eValu',4,NULL),(8,'Mua kèm Microsoft 365 Personal giá chỉ 690.000đ',4,NULL),(9,'Mua kèm Microsoft 365 Personal giá chỉ 690.000đ',5,NULL),(10,'Túi chống sốc Laptop 14\" eValu',5,NULL),(11,'Túi chống sốc Laptop 15.6\" eValu',6,NULL),(12,'Chuột không dây *',6,NULL),(13,'Mua kèm Microsoft 365 Personal giá chỉ 690.000đ',6,NULL),(14,'Mua kèm Microsoft 365 Personal giá chỉ 690.000đ',7,NULL),(15,'Túi chống sốc Laptop 14\" eValu',7,NULL),(16,'Túi chống sốc Laptop 14\" eValu',8,NULL),(17,'Chuột không dây *',8,NULL),(18,'Mua kèm Microsoft 365 Personal giá chỉ 690.000đ',8,NULL),(19,'Túi chống sốc Laptop 15.6\" eValu',9,NULL),(20,'Chuột không dây *',9,NULL),(21,'Tai nghe chụp tai Kanen IP-350 *',9,NULL),(22,'Mua kèm Microsoft 365 Personal giá chỉ 690.000đ',9,NULL),(23,'Túi chống sốc Laptop 15.6\" eValu',10,NULL),(24,'Chuột không dây *',10,NULL),(25,'Mua kèm Microsoft 365 Personal giá chỉ 690.000đ',10,NULL),(26,'Mua kèm Microsoft 365 Personal giá chỉ 690.000đ',11,NULL),(27,'Túi chống sốc Laptop 15.6\" eValu',11,NULL),(28,'Chuột không dây *',11,NULL),(29,'Túi chống sốc Laptop 15.6\" eValu',12,NULL),(30,'Mua kèm Microsoft 365 Personal giá chỉ 690.000đ',12,NULL),(31,'Túi chống sốc Laptop 14\" eValu',13,NULL),(32,'Chuột không dây *',22,NULL),(33,'Tai nghe chụp tai Kanen IP-350 *',22,NULL),(34,'Mua kèm Microsoft 365 Personal giá chỉ 690.000đ',22,NULL),(35,'Chuột không dây',14,NULL),(36,'Balo Laptop Dell',14,NULL),(37,'Mua kèm Microsoft 365 Personal giá chỉ 690.000đ',14,NULL),(38,'Balo Laptop Dell',15,NULL),(39,'Mua kèm Microsoft 365 Personal giá chỉ 690.000đ',15,NULL),(40,'Chuột không dây',16,NULL),(41,'Balo Laptop Dell',16,NULL),(42,'Mua kèm Microsoft 365 Personal giá chỉ 690.000đ',16,NULL),(43,'Chuột không dây',17,NULL),(44,'Tai nghe chụp tai Kanen IP-350',17,NULL),(45,'Balo Laptop Dell',17,NULL),(46,'Mua kèm Microsoft 365 Personal giá chỉ 690.000đ',17,NULL),(47,'Chuột không dây',18,NULL),(48,'Balo Laptop Dell',18,NULL),(49,'Mua kèm Microsoft 365 Personal giá chỉ 690.000đ',18,NULL),(50,'Balo Laptop Dell',19,NULL),(51,'Mua kèm Microsoft 365 Personal giá chỉ 690.000đ',19,NULL),(52,'Chuột không dây',20,NULL),(53,'Tai nghe chụp tai Kanen IP-350',20,NULL),(54,'Balo Laptop Dell',20,NULL),(55,'Mua kèm Microsoft 365 Personal giá chỉ 690.000đ',20,NULL),(56,'Túi chống sốc Laptop 14\" eValu',21,NULL),(57,'Chuột không dây *',21,NULL),(58,'Mua kèm Microsoft 365 Personal giá chỉ 690.000đ',21,NULL),(59,'Chuột không dây *',22,NULL),(60,'Mua kèm Microsoft 365 Personal giá chỉ 690.000đ',22,NULL),(61,'Chuột không dây *',23,NULL),(62,'Mua kèm Microsoft 365 Personal giá chỉ 690.000đ',23,NULL),(63,'Mua kèm Microsoft 365 Personal giá chỉ 690.000đ',24,NULL),(64,'Túi chống sốc Laptop 15.6\" eValu',25,NULL),(65,'Chuột không dây *',25,NULL),(66,'Mua kèm Microsoft 365 Personal giá chỉ 690.000đ',25,NULL),(67,'Tai nghe chụp tai Gaming MozardX DS902 7.1 *',26,NULL),(68,'Chuột Gaming Zadez G-152M *',26,NULL),(69,'Mua kèm Microsoft 365 Personal giá chỉ 690.000đ',26,NULL),(70,'Chuột không dây *',27,NULL),(71,'Mua kèm Microsoft 365 Personal giá chỉ 690.000đ',27,NULL),(72,'Chuột không dây *',28,NULL),(73,'Balo Laptop Lenovo',28,NULL),(74,'Mua kèm Microsoft 365 Personal giá chỉ 690.000đ',28,NULL),(75,'Balo Laptop Lenovo',29,NULL),(76,'Mua kèm Microsoft 365 Personal giá chỉ 690.000đ',29,NULL),(77,'Chuột không dây',30,NULL),(78,'Balo Laptop Lenovo',30,NULL),(79,'Balo Laptop Lenovo',31,NULL),(80,'Mua kèm Microsoft 365 Personal giá chỉ 690.000đ',30,NULL),(81,'Mua kèm Microsoft 365 Personal giá chỉ 690.000đ',31,NULL);
/*!40000 ALTER TABLE `sale_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sales_bill`
--

DROP TABLE IF EXISTS `sales_bill`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sales_bill` (
  `id` int NOT NULL AUTO_INCREMENT,
  `product_id` int NOT NULL,
  `customer_id` int DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  `quantity` int DEFAULT NULL,
  `sum` float DEFAULT NULL,
  `color` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `admin_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `product_id` (`product_id`),
  KEY `customer_id` (`customer_id`),
  KEY `admin_id` (`admin_id`),
  CONSTRAINT `sales_bill_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `product` (`id`),
  CONSTRAINT `sales_bill_ibfk_2` FOREIGN KEY (`customer_id`) REFERENCES `customer` (`id`),
  CONSTRAINT `sales_bill_ibfk_3` FOREIGN KEY (`admin_id`) REFERENCES `admin` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sales_bill`
--

LOCK TABLES `sales_bill` WRITE;
/*!40000 ALTER TABLE `sales_bill` DISABLE KEYS */;
INSERT INTO `sales_bill` VALUES (2,1,2,'2020-11-12 04:08:00',2,57980000,'Trắng','Đơn hàng đang giao',NULL),(3,1,3,'2020-11-14 21:15:00',1,28990000,'Trắng','Đơn hàng đã duyệt',NULL),(4,2,4,'2020-11-14 22:55:00',1,28990000,'Bạc','Đơn hàng chưa duyệt',NULL),(5,28,5,'2020-11-15 00:35:00',1,18990000,'Xám','Đơn hàng chưa duyệt',NULL),(6,1,6,'2020-11-15 15:29:00',2,57980000,'Trắng','Đơn hàng đã duyệt',NULL),(7,4,7,'2020-11-16 18:48:00',1,10990000,'Bạc','Đơn hàng đã duyệt',NULL),(8,4,4,'2020-11-16 18:50:00',2,21990000,'Bạc','Đơn hàng đã duyệt',NULL);
/*!40000 ALTER TABLE `sales_bill` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `supplier`
--

DROP TABLE IF EXISTS `supplier`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `supplier` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `admin_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `admin_id` (`admin_id`),
  CONSTRAINT `supplier_ibfk_1` FOREIGN KEY (`admin_id`) REFERENCES `admin` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `supplier`
--

LOCK TABLES `supplier` WRITE;
/*!40000 ALTER TABLE `supplier` DISABLE KEYS */;
/*!40000 ALTER TABLE `supplier` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-11-16 20:54:44
