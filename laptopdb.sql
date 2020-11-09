-- MySQL dump 10.13  Distrib 8.0.21, for Win64 (x86_64)
--
-- Host: localhost    Database: laptopdb
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
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin`
--

LOCK TABLES `admin` WRITE;
/*!40000 ALTER TABLE `admin` DISABLE KEYS */;
INSERT INTO `admin` VALUES (1,'admin',0,'admin','e10adc3949ba59abbe56e057f20f883e');
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
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `category`
--

LOCK TABLES `category` WRITE;
/*!40000 ALTER TABLE `category` DISABLE KEYS */;
INSERT INTO `category` VALUES (7,'MACBOOK',NULL),(8,'HP',NULL),(9,'DELL',NULL),(10,'ASUS',NULL),(11,'LENOVO',NULL);
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
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=63 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `color`
--

LOCK TABLES `color` WRITE;
/*!40000 ALTER TABLE `color` DISABLE KEYS */;
INSERT INTO `color` VALUES (33,'Xám',32,NULL),(34,'Vàng',33,NULL),(35,'Bạc',34,NULL),(36,'Xám',35,NULL),(37,'Bạc',36,NULL),(38,'Bạc',37,NULL),(39,'Bạc',38,NULL),(40,'Vàng',39,NULL),(41,'Bạc',40,NULL),(42,'Xám',41,NULL),(43,'Bạc',42,NULL),(44,'Vàng',43,NULL),(45,'Bạc',44,NULL),(46,'Bạc',45,NULL),(47,'Đen',46,NULL),(48,'Bạc',47,NULL),(49,'Bạc',48,NULL),(50,'Bạc',49,NULL),(51,'Xám',50,NULL),(52,'Đen',51,NULL),(53,'Bạc',52,NULL),(54,'Bạc',53,NULL),(55,'Bạc',54,NULL),(56,'Xám',55,NULL),(57,'Bạc',56,NULL),(58,'Đen',57,NULL),(59,'Bạc',58,NULL),(60,'Xám',59,NULL),(61,'Xám',60,NULL),(62,'Xám',61,NULL);
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
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customer`
--

LOCK TABLES `customer` WRITE;
/*!40000 ALTER TABLE `customer` DISABLE KEYS */;
INSERT INTO `customer` VALUES (3,'Lê Thị Thu Thảo','0358209602','371 NK','thuthaokg1999@gmail.com',NULL);
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
  PRIMARY KEY (`id`)
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
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=62 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product`
--

LOCK TABLES `product` WRITE;
/*!40000 ALTER TABLE `product` DISABLE KEYS */;
INSERT INTO `product` VALUES (32,'Apple MacBook Air 2020 i3 256GB (MWTJ2SA/A)',28990000,'https://cdn.tgdd.vn/Products/Images/44/226169/apple-macbook-air-2020-i3-11ghz-8gb-256gb-mwtj2sa-600x600.jpg','Intel Core i3 Thế hệ 10, 1.10 GHz','RAM 8 GB','Ổ cứng SSD 256GB','Intel Iris Plus Graphics','13.3 inch, Retina (2560 x 1600)','Mac OS',' 1.29 kg','Khoảng 10 giờ','Vẫn là ngôn ngữ thiết kế quen thuộc: đẳng cấp - gọn nhẹ, Apple MacBook Air 2020 (MWTJ2SA/A) phiên bản Core i3 Gen 10 mạnh mẽ lại có giá bán hời hơn đáp ứng điều kiện cho những ai muốn sở hữu một con laptop sang xịn nhưng giá không quá cao.',1,NULL),(33,'MacBook Air 2020 i3 256GB (MWTL2SA/A)',28990000,'https://cdn.tgdd.vn/Products/Images/44/220174/apple-macbook-air-2020-i3-220174-1-600x600.jpg','Intel Core i3 Thế hệ 10, 1.10 GHz','RAM 8 GB','Ổ cứng SSD 256GB','Intel Iris Plus Graphics','13.3 inch, Retina (2560 x 1600)','Mac OS',' 1.29 kg','Khoảng 10 giờ','MacBook Air 2020 i3 mới với thiết kế sang trọng, hiệu năng khá, bàn phím Magic lần đầu tiên xuất hiện trên dòng Macbook Air. Với nhiều tính năng hiện đại, đây là chiếc MacBook Air rất đáng sở hữu với mức giá gần như rẻ nhất từ trước đến nay. \r\n\"Cân tất\" ứng dụng văn phòng\r\nMacBook Air phiên bản 2020 có cấu hình gồm CPU Intel Core i3 thế hệ 10 mới nhất hiện nay, RAM 8 GB có nhiều cải tiến, khả năng đồ họa cải thiện tới 80% so với thế hệ 2019.',1,NULL),(34,'MacBook Air 2017 128GB (MQD32SA/A)',20990000,'https://cdn.tgdd.vn/Products/Images/44/106875/apple-macbook-air-mqd32sa-a-i5-5350u-600x600.jpg','Intel Core i5 Broadwell, 1.80 GHz','RAM 8 GB','Ổ cứng SSD 128GB','Intel HD Graphics 6000','13.3 inch, WXGA+(1440 x 900)','Mac OS',' 1.35 Kg','Khoảng 12 giờ','MacBook Air 2017 i5 128GB là mẫu laptop văn phòng, có thiết kế siêu mỏng và nhẹ, vỏ nhôm nguyên khối sang trọng. Máy có hiệu năng ổn định, thời lượng pin cực lâu 12 giờ, phù hợp cho hầu hết các nhu cầu làm việc và giải trí. ',1,NULL),(35,'HP 348 G7 i3 8130U (9PG83PA)',10990000,'https://cdn.tgdd.vn/Products/Images/44/221511/hp-348-g7-i3-9pg83pa-221511-600x600.jpg','Intel Core i3 Coffee Lake, 2.20 GHz','RAM 4GB','Ổ cứng SSD 256GB','Intel® UHD Graphics 620','14 inch, Full HD (1920 x 1080)','Windows 10 Home SL',' 1.5 kg','Li-Ion 3 cell','Được xướng tên trong phân khúc laptop học tập - văn phòng lần này là một chiếc laptop nhỏ gọn nữa đến từ thương hiệu HP - laptop HP 348 G7 i3 8130U (9PG83PA), hứa hẹn sẽ đáp ứng tốt mọi nhu cầu sử dụng laptop thường ngày của dân văn phòng và cả các bạn học sinh sinh viên.',2,NULL),(36,'HP 348 G7 i5 10210U (9PH06PA)',15990000,'https://cdn.tgdd.vn/Products/Images/44/218439/hp-348-g7-i5-9ph06pa-kg2-1-218439-600x600.jpg','Intel Core i5 Comet Lake, 1.60 GHz','RAM 8 GB','Ổ cứng SSD 512GB','Intel UHD Graphics','14 inch, Full HD (1920 x 1080)','Windows 10 Home SL',' 1.5 kg, Pin: ','Li-Ion 3 cell','Đặc điểm nổi bật của HP 348 G7 i5 10210U/8GB/512GB/Win10 (9PH06PA)\r\n\r\nBộ sản phẩm chuẩn: Dây nguồn ( 2 dây ) , Sách hướng dẫn, Thùng máy, Adapter sạc\r\n\r\nLaptop HP 348 G7 i5 (9PH06PA) là mẫu laptop giá mềm, thiết kế đẹp của HP, tập trung vào cấu hình và các tiện ích sử dụng. Máy phù hợp cho các bạn sinh viên hay nhân viên văn phòng dùng để xử lý công việc, học tập và giải trí hàng ngày.\r\nHiệu năng mạnh mẽ, tốc độ nhanh chóng\r\nNắm bắt được sự thay đổi về công nghệ chiếc laptop HP cũng được trang bị CPU Intel Core i5 thế hệ thứ 10 (vừa ra mắt cuối năm 2019) và dung lượng RAM 8 GB.',2,NULL),(37,'HP 15s fq1111TU i3 1005G1 (193R0PA)',11390000,'https://cdn.tgdd.vn/Products/Images/44/224012/hp-15s-fq1111tu-i3-193r0pa-224012-224012-600x600.jpg','Intel Core i3 Ice Lake, 1.20 GHz','RAM 4 GB','Ổ cứng SSD 256GB','Intel UHD Graphics','5.6 inch, Full HD (1920 x 1080)','Windows 10 Home SL',' 1.69 kg','Li-Ion 3 cell','Laptop HP 15s fq1111TU i3 (193R0PA) sở hữu độ hoàn thiện cao, thân máy mỏng nhẹ cùng cấu hình đủ dùng cho học tập, làm việc văn phòng và lướt web giải trí.\r\nVi xử lý mới nhất\r\nVi xử lý Intel Core i3 Gen 10 mới nhất giúp nâng cấp hiệu suất với khả năng đáp ứng hệ thống mượt mà và khả năng kết nối nhanh, đáp ứng nhu cầu học tập, giải trí hằng ngày. ',2,NULL),(38,'HP 348 G7 i3 8130U (1A0Z1PA)',11990000,'https://cdn.tgdd.vn/Products/Images/44/225549/hp-348-g7-i3-1a0z1pa-1-225549-600x600.jpg','Intel Core i3 Coffee Lake, 2.20 GHz','RAM 4GB','Ổ cứng SSD 512GB','Intel® UHD Graphics 620','14 inch, Full HD (1920 x 1080)','Windows 10 Home SL',' 1.5 kg','Li-Ion 3 cell','Laptop HP 348 G7 i3 (1A0Z1PA) là chiếc laptop học tập văn phòng giá rẻ dành cho các bạn học sinh sinh viên cần một chiếc máy tính xách tay có cấu hình ổn định, kích thước mỏng nhẹ để đồng hành mỗi ngày.\r\nThiết kế hiện đại, độ bền chuẩn quân đội\r\nHP 348 G7 mang đến ngôn ngữ thiết kế hiện đại và thanh thoát. Với tông màu bạc sang trọng, thân máy mỏng, HP 348 G7 cho cảm giác sang trọng mặc dù chỉ được làm từ vỏ nhựa.',2,NULL),(39,'HP Pavilion x360 14 dw0060TU(195M8PA)',14190000,'https://cdn.tgdd.vn/Products/Images/44/225695/hp-pavilion-x360-dw0060tu-i3-195m8pa-225695-600x600.jpg','Intel Core i3 Ice Lake','RAM 4GB','Ổ cứng SSD 256GB','Intel UHD Graphics','14 inch, Full HD (1920 x 1080)','Windows 10 Home SL','1.65 kg',' Li-Ion 3 cell','Mỏng nhẹ và đa năng là những gì mà chiếc laptop HP Pavilion x360 14 dw0060TU i3 (195M8PA) mang lại. Với bản lề gập xoay và màn hình cảm ứng, bạn có thể thoải mái trải nghiệm chiếc máy tính xách tay này bằng bất cứ cách nào mà bạn muốn.Thân máy được hoàn thiện từ chất liệu nhựa phủ sơn màu bạc đem đến cảm giác sang trọng, trang nhã. ',2,NULL),(40,'HP 15s du1076TX i5 10210U (1R8E2PA)',17490000,'https://cdn.tgdd.vn/Products/Images/44/227070/hp-15s-du1076tx-i5-8gb-10210u-512gb-2gb-mx130-win1-600x600.jpg','Intel Core i5 Comet Lake, 1.60 GHz','RAM 8 GB','Ổ cứng SSD 512GB','NVIDIA Geforce MX130, 2GB','15.6 inch, Full HD (1920 x 1080)','Windows 10 Home SL',' 1.751 kg','Li-Ion 3 cell','Laptop HP 15s du1076TX i5 (1R8E2PA) thuộc dòng laptop HP phổ thông phù hợp cho nhu cầu học tập, văn phòng. Với thiết kế mỏng nhẹ, hiệu năng đủ dùng, HP 15s du1076TX là chiếc máy tính xách tay đáng sở hữu trong phân khúc giá.\r\nThiết kế mỏng nhẹ, trang nhã\r\nHP 15s mang đến thiết kế trang nhã, vỏ máy được phủ một lớp màu bạc sang trọng cùng những đường nét tinh tế.',2,NULL),(41,'HP Pavilion 15 cs3010TU i3 1005G1 (8QN78PA)',13590000,'https://cdn.tgdd.vn/Products/Images/44/220955/hp-pavilion-15-cs3010tu-i3-8qn78pa-220955-1-600x600.jpg','Intel Core i3 Ice Lake, 1.20 GHz','RAM 4 GB','Ổ cứng SSD 256GB','Intel UHD Graphics','15.6 inch, Full HD (1920 x 1080)','Windows 10 Home SL',' 1.69 kg','Li-Ion 3 cell','Laptop HP Pavilion 15 cs3010TU đủ mỏng để theo bạn bất cứ nơi nào và đủ mạnh mẽ để vượt qua ngày dài, phù hợp với mọi đối tượng, đặc biệt là học sinh, sinh viên hay nhân viên văn phòng. \r\nCấu hình lý tưởng cho học tập, làm việc văn phòng\r\nVi xử lí Intel Core i3 thế hệ 10, RAM 4 GB là cấu hình máy sở hữu nhờ vậy mà việc lướt web, xem phim nghe nhạc trở nên ổn định, sử dụng văn phòng mượt mà.',2,NULL),(42,'HP 15s fq1105TU i5 1035G1/ (193P7PA)',16490000,'https://cdn.tgdd.vn/Products/Images/44/223682/hp-15s-fq1105tu-i5-193p7pa-223682-1-600x600.jpg','Intel Core i5 Ice Lake, 1.00 GHz','RAM 8 GB','Ổ cứng SSD 512GB','Intel UHD Graphics','15.6 inch, Full HD (1920 x 1080)','Windows 10 Home SL',' 1.69 kg','Li-Ion 3 cell','Đặc điểm nổi bật của HP 15s fq1105TU i5 1035G1/8GB/512GB/Win10 (193P7PA)\r\n\r\nTìm hiểu thêm\r\nTìm hiểu thêm\r\nTìm hiểu thêm\r\nTìm hiểu thêm\r\nTìm hiểu thêm\r\nBộ sản phẩm chuẩn: Dây nguồn, Sách hướng dẫn, Thùng máy, Adapter sạc\r\n\r\nLaptop HP 15s fq1105TU i5 (193P7PA) là chiếc máy tính xách tay lí tưởng dành cho học sinh sinh viên hay dân văn phòng. Máy có vi xử lí gen 10 mạnh mẽ, ổ cứng SSD cực nhanh cùng với thiết kế gọn nhẹ, cơ động để có thể đồng hành cùng bạn mọi lúc mọi nơi.\r\nThiết kế mỏng nhẹ, sang trọng ',2,NULL),(43,'HP 15s du1056TU 6405U (1W7R5PA)',8990000,'https://cdn.tgdd.vn/Products/Images/44/227709/hp-15s-du1056tu-6405u-1w7r5pa-600x600.jpg','Intel Pentium, 2.40 GHz','RAM 4GB','Ổ cứng SSD 512GB','Intel® UHD Graphics 605','15.6 inch, Full HD (1920 x 1080)','Windows 10 Home SL',' 1,78 kg','Li-Ion 3 cell','Laptop HP 15s (1W7R5PA) là dòng máy ở phân khúc tầm trung với cấu hình đủ dùng dành cho dân văn phòng với thiết kế sang trọng tinh tế cùng với SSD siêu nhanh giúp bạn sẵn sàng xử lý công việc trong nháy mắt.\r\nĐáp ứng tốt các ứng dụng văn phòng và mạng xã hội.Bạn có thể nâng cấp RAM lên tối đa 8 GB để đa nhiệm tốt hơn.',2,NULL),(44,'HP Pavilion 14 ce3067TU i5 1035G1 (1A1M7PA)',17990000,'https://cdn.tgdd.vn/Products/Images/44/224066/hp-pavilion-14-ce3067tu-i5-1a1m7pa-224066-2-600x600.jpg','Intel Core i5 Ice Lake, 1.00 GHz','RAM 8 GB','Ổ cứng SSD 512GB','Intel UHD Graphics','14 inch, Full HD (1920 x 1080)','Windows 10 Home SL',' 1.6 kg','Li-Ion 3 cell','Laptop HP Pavilion 14 ce3067TU i5 (1A1M7PA) được thiết kế gọn nhẹ, thanh lịch. Bên cạnh đó máy được trang bị dòng chip thế hệ thứ 10 mới nhất hiện nay để chạy tốt ứng dụng văn phòng và ứng dụng game phổ thông.\r\nThiết kế gọn nhẹ dễ dàng trải nghiệm cùng bạn ở mọi nơi\r\nLaptop HP được thiết kế vỏ nhựa - nắp lưng bằng kim loại sang trọng, các góc máy được làm bo tròn tỉ mỉ để dễ dàng cầm nắm.',2,NULL),(45,'Dell Inspiron 5593 i5 1035G1 (N5I5513W)',17990000,'https://cdn.tgdd.vn/Products/Images/44/213570/dell-inspiron-5593-i5-1035g1-8gb-256gb-2gb-mx230-w-213570-600x600.jpg','Intel Core i5 Ice Lake, 1.00 GHz','RAM 8 GB','Ổ cứng SSD 256GB','NVIDIA GeForce MX230 2GB','15.6 inch, Full HD (1920 x 1080)','Windows 10 Home SL',' 2.05 kg','Li-Ion 3 cell','Laptop Dell Inspiron 5593 nằm ở phân khúc laptop cao cấp, là trợ thủ công nghệ đắc lực dành cho những doanh nhân khi sở hữu chiếc laptop có màn hình lớn, thiết kế tinh tế, thời trang và hiệu năng cực đỉnh.\r\nThiết kế sang trọng\r\nLaptop Dell Inspiron 5593 sở hữu ngoại hình với lớp vỏ nhựa màu bạc thanh lịch, thời trang, hoàn thiện chắc chắn và vát mỏng đều ở các góc cạnh.',3,NULL),(46,'Dell Vostro 3491 i3 1005G1 (70223127)',10990000,'https://cdn.tgdd.vn/Products/Images/44/229622/dell-vostro-3491-i3-70223127-103120-103142-600x600.jpg','Intel Core i3 Ice Lake, 1.20 GHz','RAM 4GB','Ổ cứng SSD 256GB','Intel UHD Graphics','14 inch, Full HD (1920 x 1080)','Windows 10 Home SL',' 1.66 kg','Li-Ion 3 cell','Laptop Dell Vostro 3491 i3 (70223127) là chiếc máy tính xách tay văn phòng được thiết kế nhỏ gọn, dễ dịch chuyển, cấu hình máy không mạnh nhưng đủ đáp ứng nhu cầu học tập, văn phòng cơ bản, trình duyệt web và làm việc đa nhiệm. \r\nThiết kế đơn giản, nhỏ gọn \r\nDell Vostro 3491 có thiết kế hiện đại, tối giản từ chất liệu nhựa, tông màu đen sang trọng. Máy có độ dày 21 mm, trọng lượng 1.66 kg dễ dàng để các bạn học sinh sinh viên có thể đem theo đến lớp, đi cà phê,...',3,NULL),(47,'Dell Inspiron 3493 i5 1035G1 (N4I5122WA)',15290000,'https://cdn.tgdd.vn/Products/Images/44/222088/dell-inspiron-3493-i5-n4i5122w-222088-600x600.jpg','Intel Core i5 Ice Lake, 1.00 GHz','RAM 8 GB','Ổ cứng SSD 256GB','Intel UHD Graphics','14 inch, Full HD (1920 x 1080)','Windows 10 Home SL',' 1.79kg','Li-Ion 3 cell','Laptop Dell Inspiron 3493 i5 (N4I5122W) là mẫu máy laptop văn phòng đến từ nhà Dell. Hướng tới khách hàng là học sinh sinh viên và nhân viên văn phòng, máy được trang bị cấu hình đủ dùng cho công việc lẫn giải trí thường ngày. \r\nThân máy gọn nhẹ, linh động trong việc di chuyển\r\nDell Inspiron 3493 có thiết kế theo xu hướng tối giản, vỏ máy được hoàn thiện từ nhựa phủ sơn màu bạc cho vẻ ngoài sang trọng không thua kém các mẫu laptop vỏ kim loại.',3,NULL),(48,'Dell Vostro 5490 i7 10510U (70223128)',22490000,'https://cdn.tgdd.vn/Products/Images/44/229539/dell-vostro-5490-i7-70223128-095120-105108-600x600.jpg','Intel Core i7 Comet Lake, 1.80 GHz','RAM 8 GB','Ổ cứng SSD 512GB','NVIDIA GeForce MX250 2GB','14 inch, Full HD (1920 x 1080)','Windows 10 Home SL',' 1.49 kg',' Li-Ion 3 cell','Laptop Dell Vostro 5490 i7 (70223128) với ngoại hình sang trọng, đẳng cấp và mỏng nhẹ, cấu hình mạnh mẽ bởi hệ vi xử lí tân tiến nhất đáp ứng nhu cầu di chuyển và làm việc của giới văn phòng và doanh nhân.\r\nThiết kế mỏng nhẹ, sang trọng từ vỏ kim loại\r\nLaptop Dell được thiết kế từ lớp vỏ bằng nhôm nên cứng cáp và bền bỉ hơn rất nhiều. Thân máy được hoàn thiện tỉ mỉ, hướng đến sự tiện dụng.',3,NULL),(49,'Dell Inspiron 5593 i5 1035G1 (7WGNV1)',17990000,'https://cdn.tgdd.vn/Products/Images/44/213535/dell-inspiron-5593-i5-7wgnv1-213535-600x600.jpg','Intel Core i5 Ice Lake, 1.00 GHz','RAM 8 GB','Ổ cứng SSD 512GB','Intel UHD Graphics','15.6 inch, Full HD (1920 x 1080)','Windows 10 Home SL',' 1.83 kg','Li-Ion 3 cell','Laptop Dell Inspiron 5593 i5 (7WGNV1) là mẫu laptop học tập - văn phòng tầm trung hướng đến khách hàng là giới văn phòng hay học sinh sinh viên. Với thiết kế đơn giản, vi xử lí thế hệ mới mạnh mẽ, Inspiron 5593 được đánh giá là chiếc laptop đáng sở hữu trong phân khúc giá.\r\nThiết kế đơn giản, tinh tế\r\nDell Inspiron 5593 có thiết kế trang nhã và đẹp mắt nhờ lớp vỏ màu bạc và các đường đường nét được gia công tỉ mỉ, viền màn hình mỏng 4 cạnh thời thượng.',3,NULL),(50,'Dell Vostro 5581 i5 8265U (VRF6J1)',15740000,'https://cdn.tgdd.vn/Products/Images/44/202990/dell-vos15-5581-i5-8265-4gb-1tb-mx130-office-vrf6-2-3-600x600.jpg','Intel Core i5 Coffee Lake, 1.60 GHz','RAM 4GB','Ổ cứng 1TB','NVIDIA Geforce MX130, 2GB','15.6 inch, Full HD (1920 x 1080)','Windows 10 Home SL',' 1.91 kg',' Li-Ion 3 cell','Laptop Dell Vostro 5581 có thiết kế đơn giản quen thuộc của thương hiệu Dell, chiếc laptop văn phòng này chủ yếu chú trọng đến cấu hình mạnh để đem đến hiệu quả làm việc cao. Bên cạnh đó, máy còn được trang bị card đồ họa rời giúp việc thiết kế và chơi game tốt hơn.\r\nThiết kế chắc chắn, đẹp mắt\r\nDell Vostro 5581 được hoàn thiện với lớp vỏ nhựa bề mặt nhám vừa ít bám vân tay lại tạo vẻ sang trọng, chắc chắn cho máy.',3,NULL),(51,'Dell Vostro 3590 i7 10510U (GRMGK2)',20990000,'https://cdn.tgdd.vn/Products/Images/44/220718/dell-vostro-3590-i7-grmgk2-220718-220718-600x600.jpg','Intel Core i7 Comet Lake, 1.80 GHz','RAM 8 GB','Ổ cứng SSD 256GB','AMD Radeon 610R5, 2GB','15.6 inch, Full HD (1920 x 1080)','Windows 10 Home SL',' 1.99 kg','Li-Ion 3 cell','Laptop Dell Vostro 3590 i7 (GRMGK2) là phiên bản laptop đồ họa kĩ thuật có thiết kế hiện đại, cấu hình khỏe với vi xử lí gen 10 và card đồ họa rời. Đây chính là chiếc laptop đáng cân nhắc đối với dân đồ họa hay sinh viên khối ngành kĩ thuật.\r\nĐơn giản, hiện đại\r\nDell Vostro 3590 được thiết kế đơn giản, chắc chắn, trọng lượng nhẹ, khoảng 1.99 kg, độ dày 19.8 mm mỏng nhẹ đối với một chiếc laptop 15.6 inch dễ dàng để bạn đem theo bên mình. ',3,NULL),(52,'Asus VivoBook A412FA i5 10210U (EK738T)',16190000,'https://cdn.tgdd.vn/Products/Images/44/217509/asus-vivobook-a412fa-i5-ek738t-217509-600x600.jpg','Intel Core i5 Comet Lake, 1.60 GHz','RAM 8 GB','Ổ cứng SSD 512GB','Intel UHD Graphics','14 inch, Full HD (1920 x 1080)','Windows 10 Home SL',' 1.406 kg','Li-Ion 2 cell','Laptop ASUS VivoBook A412FA i5 (EK738T) là mẫu laptop văn phòng, sinh viên mỏng nhẹ, có cấu hình khỏe với CPU Intel thế hệ mới nhất. Ngoài ra máy còn sở hữu ổ cứng SSD 512 GB siêu nhanh và cảm biến vân tay giúp mở khóa tiện lợi, bảo mật cao.\r\nVẻ ngoài gọn gàng, màu sắc thanh lịch\r\nThiết kế của A412FA chắc chắn sẽ làm bạn hài lòng bởi sự trẻ trung, màu sắc sang trọng của nó.',4,NULL),(53,'Asus VivoBook A412FA i3 10110U (EK1175T)',12050000,'https://cdn.tgdd.vn/Products/Images/44/225610/asus-vivobook-a412fa-i3-ek1175t-225610-600x600.jpg','Intel Core i3 Comet Lake, 2.10 GHz','RAM 4GB','Ổ cứng SSD 256GB','Intel UHD Graphics','14 inch, Full HD (1920 x 1080)','Windows 10 Home SL',' 1.406 kg',' Li-Ion 2 cell','Asus VivoBook A412FA i3 (EK1175T) sở hữu thiết kế mỏng nhẹ, hiệu năng ổn định đáp ứng tốt các nhu cầu học tập và làm việc văn phòng.\r\nCấu hình hoạt động ổn định, dành cho học tập\r\nLaptop được trang bị chip Intel Core i3 thế hệ mới nhất cùng với 4 GB RAM, với cấu hình này máy tính hoàn toàn có thể hoạt động mượt mà các phần mềm tác vụ văn phòng cũng như đáp ứng đầy đủ các nhu cầu giải trí của bạn.',4,NULL),(54,'Asus VivoBook X409JA i3 1005G1 (EK015T)',11590000,'https://cdn.tgdd.vn/Products/Images/44/220526/asus-x409ja-i3-ek015t-220526-2-600x600.jpg','Intel Core i3 Ice Lake, 1.20 GHz','RAM 4GB','Ổ cứng SSD 512GB','Intel UHD Graphics','14 inch, Full HD (1920 x 1080)','Windows 10 Home SL',' 1.5 kg','Li-Ion 2 cell','Laptop ASUS VivoBook X409JA i3 (EK015T) là mẫu laptop học tập - văn phòng được thiết kế gọn nhẹ, sử dụng vi xử lí thế hệ 10 và ổ cứng SSD 512 GB cho hiệu năng vượt trội trong phân khúc.\r\nVi xử lí thế hệ 10 \r\nASUS VivoBook sử dụng con chip Core i3 1005G1 có nhiều cải tiến về hiệu năng lẫn tốc độ xử lí so với thế hệ cũ.\r\n\r\nRAM 4 GB đa nhiệm ở mức khá, bạn có thể vừa nghe nhạc vừa làm việc trên Word mà không xảy ra hiện tượng đứng máy. ',4,NULL),(55,'Asus VivoBook X509MA N5030 (EJ256T)',8890000,'https://cdn.tgdd.vn/Products/Images/44/228514/asus-vivobook-x509ma-n5030-ej256t-171120-051158-600x600.jpg','Intel Pentium, 1.10 GHz','RAM 4GB','Ổ cứng SSD 512GB','Intel® UHD Graphics 605','15.6 inch, Full HD (1920 x 1080)','Windows 10 Home SL',' 1.9 kg','Li-Ion 2 cell','Laptop Asus VivoBook X509MA N5030 (EJ256T) thuộc phân khúc laptop giá rẻ, máy có thiết kế hiện đại, cấu hình đủ đáp ứng nhu cầu học tập, giải trí đa phương tiện hằng ngày.\r\nThiết kế thanh lịch, đẹp mắt\r\nAsus VivoBook mang ngôn ngữ thiết kế hiện đại, kiểu dáng đơn giản, thanh lịch với lớp vỏ màu bạc cùng các đường cắt gọn gàng, không có chi tiết thừa.',4,NULL),(56,'Asus VivoBook X509JP i5 1035G1 (EJ023T)',17190000,'https://cdn.tgdd.vn/Products/Images/44/221617/asus-vivobook-x509jp-i5-ej023t-2gb-221617-600x600.jpg','Intel Core i5 Ice Lake, 1.00 GHz','RAM 8 GB','Ổ cứng SSD 512GB','NVIDIA GeForce MX330, 2GB','15.6 inch, Full HD (1920 x 1080)','Windows 10 Home SL',' 1.73 kg','Li-Ion 2 cell','Asus VivoBook X509JP i5 (EJ023T) là chiếc laptop học tập - văn phòng mỏng nhẹ, cấu hình mạnh và ổn định cho nhu cầu làm việc, giải trí hằng ngày. Ngoài ra, máy cũng có khả năng đồ họa khá nhờ có card đồ họa rời. \r\nCấu hình lí tưởng trong tầm giá.Laptop trang bị RAM 8 GB có khả năng nâng cấp lên tối đa 20 GB để đa nhiệm mượt mà, sử dụng đồ họa chuyên nghiệp hơn. ',4,NULL),(57,'Asus VivoBook Gaming F571GT (AL851T)',21790000,'https://cdn.tgdd.vn/Products/Images/44/226255/asus-vivobook-gaming-f571gt-i5-al851t-226255-600x600.jpg','Intel Core i5 Coffee Lake, 2.40 GHz','RAM 8 GB','Ổ cứng SSD 512GB','NVIDIA GeForce GTX 1650 4GB','15.6 inch, Full HD (1920 x 1080)','Windows 10 Home SL',' 1.8 kg',' Li-Ion 3 cell','Laptop Asus VivoBook Gaming F571GT (AL851T) sở hữu cấu hình khủng trong thân máy văn phòng linh hoạt thời thượng, luôn trong tư thế sẵn sàng chiến game ở mọi nơi.\r\nLaptop gaming năng động\r\nThay áo mới bằng thiết kế mỏng nhẹ sang trọng, Asus F571GT có lớp vỏ nhựa bề mặt nhám trơn mịn tinh tế nhưng với lớp sơn màu xanh đen nên vẫn giữ được bản chất mạnh mẽ chắc chắn.',4,NULL),(58,'Asus VivoBook A512FA i3 8145U (EJ1868T)',12790000,'https://cdn.tgdd.vn/Products/Images/44/220574/asus-vivobook-a512fa-i3-ej1868t-220574-600x600.jpg','Intel Core i3 Coffee Lake, 2.10 GHz','RAM 4GB','Ổ cứng SSD 512GB','Intel® UHD Graphics 620','15.6 inch, Full HD (1920 x 1080)','Windows 10 Home SL',' 1.7 kg','Li-Ion 2 cell','Laptop Asus VivoBook A512FA (EJ1868T) là mẫu laptop học tập - văn phòng tầm trung. Với thiết kế gọn nhẹ và cấu hình vừa phải, Asus VivoBook A512FA sẽ là một người bạn đồng hành cùng với các bạn sinh viên, cũng như nhân viên văn phòng trong mọi hoạt động từ học tập, làm việc cho đến giải trí thường ngày.\r\nThiết kế gọn nhẹ',4,NULL),(59,'Lenovo IdeaPad Flex 5 14IIL i5 1035G1 (81X1001UVN)',18990000,'https://cdn.tgdd.vn/Products/Images/44/223538/lenovo-ideapad-flex-5-14iil-i5-81x1001uvn-ssd-i5-223538-600x600.jpg','Intel Core i5 Ice Lake, 1.00 GHz','RAM 8 GB','Ổ cứng SSD 512GB','Intel UHD Graphics','14 inch, Full HD (1920 x 1080)','Windows 10 Home SL',' 1.5 kg','Li-Ion 3 cell','Màn hình đẹp, âm thanh sống động, thiết kế lật xoay linh hoạt cùng cấu hình mạnh mẽ đã hội tụ trong Lenovo IdeaPad Flex 5 14IIL, một máy tính xách tay 2 trong 1 giúp nâng cao trải nghiệm của bạn hơn nữa đối với các hoạt động sử dụng máy tính hằng ngày.\r\nHiệu suất cao với bộ xử lý Intel Core i5 Gen 10',5,NULL),(60,'Lenovo IdeaPad S340 15IIL i5 1035G4 (81VW00A8VN)',16290000,'https://cdn.tgdd.vn/Products/Images/44/217440/lenovo-ideapad-s340-i5-81vw00a8vn-1-217440-600x600.jpg','Intel Core i5 Ice Lake, 1.10 GHz','RAM 8 GB','Ổ cứng 1TB','Intel Iris Plus Graphics','15.6 inch, Full HD (1920 x 1080)','Windows 10 Home SL',' 1.79 kg','Li-Ion 3 cell','Laptop Lenovo IdeaPad S340 15IIL được trang bị hiệu năng mạnh mẽ, màn hình lớn với viền siêu mỏng. Chiếc laptop phù hợp với đối tượng sinh viên hay nhân viên văn phòng sử dụng soạn thảo, thiết kế bằng Photoshop hay giải trí với các game phổ thông.\r\nGọn nhẹ hơn những chiếc laptop 15.6 inch thông thường ',5,NULL),(61,'Lenovo IdeaPad S340 15IIL i3 1005G1 (81VW0042VN)',14290000,'https://cdn.tgdd.vn/Products/Images/44/213528/lenovo-ideapad-s340-15iil-i3-1005g1-8gb-512gb-win1-xam-6-213528-600x600.jpg','Intel Core i3 Ice Lake, 1.20 GHz','RAM 8 GB','Ổ cứng SSD 512GB','Intel UHD Graphics','15.6 inch, Full HD (1920 x 1080)','Windows 10 Home SL',' 1.79 kg','Li-Ion 3 cell','Laptop Lenovo IdeaPad S340 15IIL i3 (81VW0042VN) được thiết kế đơn giản, gọn nhẹ và có cấu hình trung bình, phù hợp với nhu cầu sử dụng của nhân viên văn phòng, học sinh sinh viên.\r\nThiết kế thanh lịch\r\nLenovo IdeaPad S340 có thiết kế rất thanh lịch, trẻ trung. Thân máy được làm bằng nhựa nhưng nắp lưng sử dụng chất liệu kim loại cho bề ngoài của máy thêm phần sang trọng.',5,NULL);
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
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `receipt`
--

LOCK TABLES `receipt` WRITE;
/*!40000 ALTER TABLE `receipt` DISABLE KEYS */;
INSERT INTO `receipt` VALUES (4,32,5,'2020-11-10 00:51:00',5,100000000,NULL),(5,33,5,'2020-11-10 00:53:00',5,120000000,NULL),(6,34,5,'2020-11-10 00:53:00',5,130000000,NULL);
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
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=226 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sale_info`
--

LOCK TABLES `sale_info` WRITE;
/*!40000 ALTER TABLE `sale_info` DISABLE KEYS */;
INSERT INTO `sale_info` VALUES (119,'Balo Laptop 13.3\" Tucano WOV-MB133',32,NULL),(120,'Mua kèm Microsoft 365 Personal giá chỉ 690.000đ',32,NULL),(121,'Pin sạc dự phòng giảm 30% khi mua kèm.',32,NULL),(122,'Balo Laptop 13.3\" Tucano WOV-MB133',33,NULL),(123,'Mua kèm Microsoft 365 Personal giá chỉ 690.000đ',33,NULL),(124,'Pin sạc dự phòng giảm 30% khi mua kèm. ',33,NULL),(125,'Balo Laptop 15\" Tucano LOOP BKLOOP15',34,NULL),(126,'Mua kèm Microsoft 365 Personal giá chỉ 690.000đ',34,NULL),(127,'Pin sạc dự phòng giảm 30% khi mua kèm.',34,NULL),(128,'Túi chống sốc Laptop 14\" eValu',35,NULL),(129,'Mua kèm Microsoft 365 Personal giá chỉ 690.000đ',35,NULL),(130,'Pin sạc dự phòng giảm 30% khi mua kèm.',35,NULL),(131,'Túi chống sốc Laptop 14\" eValu',36,NULL),(132,'Mua kèm Microsoft 365 Personal giá chỉ 690.000đ',36,NULL),(133,'Pin sạc dự phòng giảm 30% khi mua kèm.',36,NULL),(134,'Túi chống sốc Laptop 15.6\" eValu',37,NULL),(135,'Chuột không dây *',37,NULL),(136,'Mua kèm Microsoft 365 Personal giá chỉ 690.000đ',37,NULL),(137,'Pin sạc dự phòng giảm 30% khi mua kèm.',37,NULL),(138,'Túi chống sốc Laptop 14\" eValu',38,NULL),(139,'Mua kèm Microsoft 365 Personal giá chỉ 690.000đ',38,NULL),(140,'Pin sạc dự phòng giảm 30% khi mua kèm.',38,NULL),(141,'Túi chống sốc Laptop 14\" eValu',39,NULL),(142,'Chuột không dây *',39,NULL),(143,'Mua kèm Microsoft 365 Personal giá chỉ 690.000đ',39,NULL),(144,'Pin sạc dự phòng giảm 30% khi mua kèm.',39,NULL),(145,'Túi chống sốc Laptop 15.6\" eValu',40,NULL),(146,'Chuột không dây *',40,NULL),(147,'Tai nghe chụp tai Kanen IP-350 *',40,NULL),(148,'Mua kèm Microsoft 365 Personal giá chỉ 690.000đ',40,NULL),(149,'Pin sạc dự phòng giảm 30% khi mua kèm.',40,NULL),(150,'Túi chống sốc Laptop 15.6\" eValu',42,NULL),(151,'Chuột không dây *',42,NULL),(152,'Tai nghe chụp tai Kanen IP-350 *',42,NULL),(153,'Mua kèm Microsoft 365 Personal giá chỉ 690.000đ',42,NULL),(154,'Pin sạc dự phòng giảm 30% khi mua kèm. ',42,NULL),(155,'Túi chống sốc Laptop 15.6\" eValu',43,NULL),(156,'Mua kèm Microsoft 365 Personal giá chỉ 690.000đ',43,NULL),(157,'Pin sạc dự phòng giảm 30% khi mua kèm.',43,NULL),(158,'Túi chống sốc Laptop 14\" eValu',44,NULL),(159,'Chuột không dây *',44,NULL),(160,'Tai nghe chụp tai Kanen IP-350 *',44,NULL),(161,'Mua kèm Microsoft 365 Personal giá chỉ 690.000đ',44,NULL),(162,'Pin sạc dự phòng giảm 30% khi mua kèm. ',44,NULL),(163,'Chuột không dây eValu M806',45,NULL),(164,'Balo Laptop Dell',45,NULL),(165,'Mua kèm Microsoft 365 Personal giá chỉ 690.000đ',45,NULL),(166,'Pin sạc dự phòng giảm 30% khi mua kèm.',45,NULL),(167,'Balo Laptop Dell',46,NULL),(168,'Mua kèm Microsoft 365 Personal giá chỉ 690.000đ',46,NULL),(169,'Pin sạc dự phòng giảm 30% khi mua kèm. ',46,NULL),(170,'Chuột không dây eValu M806',47,NULL),(171,'Balo Laptop Dell',47,NULL),(172,'Mua kèm Microsoft 365 Personal giá chỉ 690.000đ',47,NULL),(173,'Pin sạc dự phòng giảm 30% khi mua kèm. ',47,NULL),(174,'Tai nghe chụp tai Kanen IP-350',48,NULL),(175,'Chuột không dây eValu M806',48,NULL),(176,'Balo Laptop Dell',48,NULL),(177,'Mua kèm Microsoft 365 Personal giá chỉ 690.000đ',48,NULL),(178,'Pin sạc dự phòng giảm 30% khi mua kèm.',48,NULL),(179,'Chuột không dây eValu M806',49,NULL),(180,'Balo Laptop Dell',49,NULL),(181,'Mua kèm Microsoft 365 Personal giá chỉ 690.000đ',49,NULL),(182,'Pin sạc dự phòng giảm 30% khi mua kèm.',49,NULL),(183,'Balo Laptop Dell',50,NULL),(184,'Mua kèm Microsoft 365 Personal giá chỉ 690.000đ',50,NULL),(185,'Pin sạc dự phòng giảm 30% khi mua kèm.',50,NULL),(186,'Tai nghe chụp tai Kanen IP-350',51,NULL),(187,'Chuột không dây eValu M806',51,NULL),(188,'Balo Laptop Dell',51,NULL),(189,'Mua kèm Microsoft 365 Personal giá chỉ 690.000đ',51,NULL),(190,'Pin sạc dự phòng giảm 30% khi mua kèm.',51,NULL),(191,'Túi chống sốc Laptop 14\" eValu',52,NULL),(192,'Chuột không dây *',52,NULL),(193,'Mua kèm Microsoft 365 Personal giá chỉ 690.000đ',52,NULL),(194,'Pin sạc dự phòng giảm 30% khi mua kèm. ',52,NULL),(195,'Chuột không dây *',53,NULL),(196,'Mua kèm Microsoft 365 Personal giá chỉ 690.000đ',53,NULL),(197,'Pin sạc dự phòng giảm 30% khi mua kèm.',53,NULL),(198,'Chuột không dây *',54,NULL),(199,'Mua kèm Microsoft 365 Personal giá chỉ 690.000đ',54,NULL),(200,'Pin sạc dự phòng giảm 30% khi mua kèm.',54,NULL),(201,'Mua kèm Microsoft 365 Personal giá chỉ 690.000đ',55,NULL),(202,'Pin sạc dự phòng giảm 30% khi mua kèm.',55,NULL),(203,'Túi chống sốc Laptop 15.6\" eValu',56,NULL),(204,'Chuột không dây *',56,NULL),(205,'Mua kèm Microsoft 365 Personal giá chỉ 690.000đ',56,NULL),(206,'Pin sạc dự phòng giảm 30% khi mua kèm. ',56,NULL),(207,'Tai nghe chụp tai Gaming MozardX DS902 7.1 *',57,NULL),(208,'Chuột Gaming Zadez G-152M *',57,NULL),(209,'Mua kèm Microsoft 365 Personal giá chỉ 690.000đ',57,NULL),(210,'Pin sạc dự phòng giảm 30% khi mua kèm.',57,NULL),(211,'Chuột không dây *',58,NULL),(212,'Mua kèm Microsoft 365 Personal giá chỉ 690.000đ',58,NULL),(213,'Pin sạc dự phòng giảm 30% khi mua kèm.',58,NULL),(214,'Chuột không dây *',59,NULL),(215,'Balo Laptop Lenovo',59,NULL),(216,'Mua kèm Microsoft 365 Personal giá chỉ 690.000đ',59,NULL),(217,'Pin sạc dự phòng giảm 30% khi mua kèm.',59,NULL),(218,'Chuột không dây *',60,NULL),(219,'Balo Laptop Lenovo',60,NULL),(220,'Mua kèm Microsoft 365 Personal giá chỉ 690.000đ',60,NULL),(221,'Pin sạc dự phòng giảm 30% khi mua kèm.',60,NULL),(222,'Chuột không dây eValu M806 *',61,NULL),(223,'Balo Laptop Lenovo',61,NULL),(224,'Mua kèm Microsoft 365 Personal giá chỉ 690.000đ',61,NULL),(225,'Pin sạc dự phòng giảm 30% khi mua kèm.',61,NULL);
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
  `admin_id` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sales_bill`
--

LOCK TABLES `sales_bill` WRITE;
/*!40000 ALTER TABLE `sales_bill` DISABLE KEYS */;
INSERT INTO `sales_bill` VALUES (3,32,3,'2020-11-10 00:54:00',1,28990000,'Xám',NULL);
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
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `supplier`
--

LOCK TABLES `supplier` WRITE;
/*!40000 ALTER TABLE `supplier` DISABLE KEYS */;
INSERT INTO `supplier` VALUES (4,'HP','0999000111','371 Nguyễn Kiệm','hp@gmail.com',NULL),(5,'MACBOOK','0999000222','371 NK','mac@gmail.com',NULL);
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

-- Dump completed on 2020-11-10  1:00:51
