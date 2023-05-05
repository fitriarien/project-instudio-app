/*
SQLyog Ultimate v12.5.1 (64 bit)
MySQL - 8.0.33 : Database - designorderdb
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`designorderdb` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;

USE `designorderdb`;

/*Table structure for table `image` */

DROP TABLE IF EXISTS `image`;

CREATE TABLE `image` (
  `image_id` bigint NOT NULL AUTO_INCREMENT,
  `image_name` varchar(50) DEFAULT NULL,
  `image_path` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `image_status` int DEFAULT '1',
  `user_id` bigint DEFAULT NULL,
  PRIMARY KEY (`image_id`),
  KEY `FKlxnnh0ir05khn8iu9tgwh1yyk` (`user_id`),
  CONSTRAINT `FKlxnnh0ir05khn8iu9tgwh1yyk` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*Data for the table `image` */

insert  into `image`(`image_id`,`image_name`,`image_path`,`image_status`,`user_id`) values 
(1,'KS_Island_D','https://firebasestorage.googleapis.com/v0/b/instudio-dc36b.appspot.com/o/kitchen-set-island.jpg?alt=media&token=a9c2aac2-54fe-4b7c-9124-cb112940efb4',1,4),
(2,'KS_Letter_L_A','https://firebasestorage.googleapis.com/v0/b/instudio-dc36b.appspot.com/o/kitchen-set-L.jpg?alt=media&token=51132ebb-0666-464b-be43-73e5d4ff9fb2',1,4),
(3,'Storage_Bed_Set','https://firebasestorage.googleapis.com/v0/b/instudio-dc36b.appspot.com/o/bed-set-storage.jpg?alt=media&token=65463dac-60e6-4a6d-a4c7-544d389a7223',1,4),
(4,'KS_Letter_I','https://firebasestorage.googleapis.com/v0/b/instudio-dc36b.appspot.com/o/kitchen-set-I.jpg?alt=media&token=2cd7bfb7-c154-499b-b47c-bbe70540eeb5',1,4),
(5,'KS_Letter_U','https://firebasestorage.googleapis.com/v0/b/instudio-dc36b.appspot.com/o/kitchen-set-U.jpg?alt=media&token=388a1c62-d743-4611-9a53-18c2cf34ff58',1,4),
(6,'Sofa_Set_A','https://firebasestorage.googleapis.com/v0/b/instudio-dc36b.appspot.com/o/sofa-set-A.jpg?alt=media&token=ad2b93f1-f566-4daf-9022-95ccc8e68434',1,4),
(7,'Sofa_Set_B','https://firebasestorage.googleapis.com/v0/b/instudio-dc36b.appspot.com/o/sofa-set-B.jpg?alt=media&token=8478489c-8a0a-4db8-bf5f-ffa7cb189a2f',1,4),
(8,'Canopy_Bed_Set','https://firebasestorage.googleapis.com/v0/b/instudio-dc36b.appspot.com/o/canopy-bed-set.jpg?alt=media&token=696c390d-9c2f-4110-9e05-0defae1ea7af',1,4),
(9,'Wardrobe','https://firebasestorage.googleapis.com/v0/b/instudio-dc36b.appspot.com/o/wardrobe.jpg?alt=media&token=649e1eb5-f660-443a-b80a-a4e0b5e743a8',1,4),
(10,'Bookshelf','https://firebasestorage.googleapis.com/v0/b/instudio-dc36b.appspot.com/o/window-seat-bookshelf.jpg?alt=media&token=32dc659c-19ff-443c-bfda-71ce0d7081c9',1,4),
(11,'TV Cabinet','',0,13),
(12,'TV Cabinet','',0,13),
(13,'TV Cabinet','https://firebasestorage.googleapis.com/v0/b/instudio-dc36b.appspot.com/o/tv-cabinet.jpg?alt=media&token=44852d7b-eeb1-460c-a20e-28af26e7cd9c',1,13),
(14,'Living-room','https://firebasestorage.googleapis.com/v0/b/instudio-dc36b.appspot.com/o/living-room-set.jpg?alt=media&token=2dc9a0c9-758f-41da-bf00-fe6e49fae018',1,14),
(15,'TV Cabinet_Indust','https://firebasestorage.googleapis.com/v0/b/instudio-dc36b.appspot.com/o/tv-cabinet-industrial.jpg?alt=media&token=413a8e9d-e51e-4f2a-af88-a2749e01b43f',1,14),
(16,'Living-room','https://firebasestorage.googleapis.com/v0/b/instudio-dc36b.appspot.com/o/living-room-set.jpg?alt=media&token=84b1e336-b415-4ed0-adf8-64f86367cebc',1,15),
(17,'TV-Wall-Design','https://firebasestorage.googleapis.com/v0/b/instudio-dc36b.appspot.com/o/tv-wall.jpg?alt=media&token=4e174372-6a50-47cd-a775-970bf97efa3b',1,16),
(18,'Living-room-balcony','https://firebasestorage.googleapis.com/v0/b/instudio-dc36b.appspot.com/o/living-room-balcony.jpg?alt=media&token=08471672-48c8-4e31-b5f0-3fcd57117e77',1,16),
(19,'TV Cabinet_Indust','https://firebasestorage.googleapis.com/v0/b/instudio-dc36b.appspot.com/o/tv-wall.jpg?alt=media&token=e8842791-6c22-491e-b28c-a7586927b521',0,15),
(20,'Living-room-small-space','https://firebasestorage.googleapis.com/v0/b/instudio-dc36b.appspot.com/o/living-room-small-space.jpg?alt=media&token=473bf67b-69b6-4aec-b609-8b5466954573',1,15);

/*Table structure for table `order` */

DROP TABLE IF EXISTS `order`;

CREATE TABLE `order` (
  `order_id` bigint NOT NULL AUTO_INCREMENT,
  `order_code` varchar(20) DEFAULT NULL,
  `order_date` date DEFAULT NULL,
  `visit_date` date DEFAULT NULL,
  `visit_time` time DEFAULT NULL,
  `visit_address` varchar(100) DEFAULT NULL,
  `user_id` bigint DEFAULT NULL,
  `order_amount` double DEFAULT NULL,
  PRIMARY KEY (`order_id`),
  UNIQUE KEY `order_code` (`order_code`),
  KEY `fk_user_id` (`user_id`),
  CONSTRAINT `fk_user_id` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*Data for the table `order` */

insert  into `order`(`order_id`,`order_code`,`order_date`,`visit_date`,`visit_time`,`visit_address`,`user_id`,`order_amount`) values 
(1,'TR1','2023-02-24','2023-03-03','10:00:00','Jakarta',5,41000000),
(2,'TR2','2023-02-24','2023-03-01','08:00:00','Jakarta Timur',5,6000000),
(3,'TR3','2023-02-24','2023-03-02','09:00:00','Jakarta Utara',5,0),
(4,'TR4','2023-02-25','2023-03-02','09:00:00','Jakarta Utara',7,12000000),
(5,'TR5','2023-02-25','2023-04-01','08:30:00','Jakarta Utara',8,24000000),
(6,'TR6','2023-02-26','2023-02-28','09:30:00','Jakarta Utara',8,7000000),
(7,'TR7','2023-02-28','2023-05-05','10:30:00','Jl. Abcd No.1, Bekasi',9,14000000),
(8,'TR8','2023-03-01','2023-05-07','14:00:00','Jl. Abcd No.1, Bekasi',9,5000000),
(9,'TR9','2023-05-01','2023-05-23','07:30:00','Cherry Hill Rd 9021, New York',10,20500000),
(10,'TR10','2023-05-01','2035-12-25','12:30:00','Cherry Hill Rd 9021, New York',10,13500000),
(11,'TR11','2023-05-01','2024-05-23','10:00:00','Cherry Hill Rd 9021, New York',10,15000000),
(12,'TR12','2023-05-01','2024-05-23','10:00:00','Cherry Hill Rd 9021, New York',10,0),
(13,'TR13','2023-05-01','2024-05-23','10:00:00','Cherry Hill Rd 9021, New York',10,5000000),
(14,'TR14','2023-05-01','2022-04-23','13:30:00','Cherry Hill Rd 9021, New York',10,0),
(15,'TR15','2023-05-03','2023-12-23','10:00:00','Bandung',10,28000000),
(16,'TR16','2023-05-03','2023-12-23','10:00:00','Jakarta',10,5000000),
(17,'TR17','2023-05-03','2024-12-12','08:00:00','Jl. Abcd No.1, Bekasi',9,28000000),
(18,'TR18','2023-05-04','2023-05-12','09:30:00','Jl. Abcd No.1, Bekasi',9,9500000),
(19,'TR19','2023-05-04','2023-06-20','11:00:00','',9,8000000),
(20,'TR20','2023-05-04','2023-07-07','07:30:00','Jl. Halmahera, Bandung',11,8500000),
(21,'TR21','2023-05-05','2023-05-23','05:30:00','Jkt',20,0);

/*Table structure for table `order_details` */

DROP TABLE IF EXISTS `order_details`;

CREATE TABLE `order_details` (
  `order_det_id` bigint NOT NULL AUTO_INCREMENT,
  `order_id` bigint DEFAULT NULL,
  `estimated_time` bigint DEFAULT NULL,
  `product_id` bigint DEFAULT NULL,
  `product_size` bigint DEFAULT NULL,
  `product_theme` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `subtotal` double DEFAULT NULL,
  PRIMARY KEY (`order_det_id`),
  KEY `fk_prod_order_id` (`product_id`),
  KEY `fk_order_id` (`order_id`),
  CONSTRAINT `fk_order_id` FOREIGN KEY (`order_id`) REFERENCES `order` (`order_id`),
  CONSTRAINT `fk_prod_order_id` FOREIGN KEY (`product_id`) REFERENCES `product` (`product_id`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*Data for the table `order_details` */

insert  into `order_details`(`order_det_id`,`order_id`,`estimated_time`,`product_id`,`product_size`,`product_theme`,`subtotal`) values 
(1,1,0,1,6,'Industrial',36000000),
(2,2,2,2,4,'Minimalis',2000000),
(3,4,3,4,8,'Minimalis',12000000),
(4,5,2,5,12,'Industrial',24000000),
(5,7,1,6,6,'Black & White',6000000),
(6,8,4,1,5,'Black & White',5000000),
(7,10,3,7,3,'Colorful',7500000),
(8,9,1,58,5,'Black & White',11000000),
(9,17,2,10,16,'Black & White',15000000),
(10,3,3,1,6,'Industrial',6000000),
(11,1,1,7,6,'Colorful',5000000),
(12,2,1,8,5,'Black & White',4000000),
(13,6,2,10,5,'Black & White',5000000),
(14,6,2,11,4,'Industrial',2000000),
(15,9,3,1,8,'Industrial',7000000),
(16,9,3,9,4,'Colorful',2500000),
(17,10,2,2,6,'Industrial',6000000),
(18,15,2,7,4,'Black & White',8000000),
(19,16,1,5,4,'Minimalist',7000000),
(20,16,3,10,4,'Minimalist',5000000),
(21,15,1,10,4,'Industrial',5000000),
(22,15,3,57,5,'Industrial',15000000),
(23,11,4,58,12,'Colorful',15000000),
(24,13,4,7,5,'Black & White',5000000),
(25,17,3,10,6,'Colorful',8000000),
(26,18,1,4,5,'Industrial',7000000),
(27,18,1,11,6,'Colorful',2500000),
(28,20,2,11,3,'Colorful',3500000),
(29,20,3,60,4,'Black & White',5000000),
(30,17,4,7,5,'Industrial',5000000),
(31,19,4,5,6,'Industrial',8000000),
(32,7,5,70,9,'Industrial',8000000);

/*Table structure for table `payment` */

DROP TABLE IF EXISTS `payment`;

CREATE TABLE `payment` (
  `payment_id` bigint NOT NULL AUTO_INCREMENT,
  `payment_date` date DEFAULT NULL,
  `order_id` bigint DEFAULT NULL,
  `payment_method` varchar(20) DEFAULT NULL,
  `payment_amount` double DEFAULT NULL,
  `payment_detail` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `tf_acc_number` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`payment_id`),
  KEY `fk_pay_order_id` (`order_id`),
  CONSTRAINT `fk_pay_order_id` FOREIGN KEY (`order_id`) REFERENCES `order` (`order_id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*Data for the table `payment` */

insert  into `payment`(`payment_id`,`payment_date`,`order_id`,`payment_method`,`payment_amount`,`payment_detail`,`tf_acc_number`) values 
(1,'2023-02-25',4,'cash',5000000,'DP',''),
(2,'2023-02-25',4,'transfer bank',7000000,'Pelunasan','1234567890'),
(3,'2023-02-25',5,'bank transfer',12000000,'DP','1234567890'),
(4,'2023-02-28',7,'bank transfer',3000000,'DP','1234567890'),
(5,'2023-02-28',7,'bank transfer',3000000,'Pelunasan','1234567890'),
(6,'2023-03-01',5,'bank transfer',12000000,'Pelunasan','12345678'),
(7,'2023-03-01',8,'cash',2000000,'DP',NULL),
(8,'2023-05-01',8,'Bank Transfer',3000000,'Pelunasan','8627910401'),
(9,'2023-05-01',9,'Bank Transfer',3000000,'Down Payment','975271919'),
(10,'2023-05-03',9,'Bank Transfer',8000000,'Pelunasan','976437892'),
(11,'2023-05-03',17,'Cash',2000000,'Down Payment',''),
(13,'2023-05-03',17,'Bank Transfer',10000000,'Pelunasan','7625893993'),
(14,'2023-05-03',17,'Bank Transfer',11000000,'Pelunasan','865289393'),
(15,'2023-05-04',18,'Bank Transfer',4000000,'Down Payment','93752829');

/*Table structure for table `product` */

DROP TABLE IF EXISTS `product`;

CREATE TABLE `product` (
  `product_id` bigint NOT NULL AUTO_INCREMENT,
  `product_name` varchar(20) DEFAULT NULL,
  `product_model` varchar(30) DEFAULT NULL,
  `estimated_cost` double DEFAULT NULL,
  `image_id` bigint DEFAULT NULL,
  `product_status` int DEFAULT '1',
  `user_id` bigint DEFAULT NULL,
  PRIMARY KEY (`product_id`),
  UNIQUE KEY `fk_image_id` (`image_id`),
  KEY `FK979liw4xk18ncpl87u4tygx2u` (`user_id`),
  CONSTRAINT `FK979liw4xk18ncpl87u4tygx2u` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`),
  CONSTRAINT `fk_image_id` FOREIGN KEY (`image_id`) REFERENCES `image` (`image_id`)
) ENGINE=InnoDB AUTO_INCREMENT=75 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*Data for the table `product` */

insert  into `product`(`product_id`,`product_name`,`product_model`,`estimated_cost`,`image_id`,`product_status`,`user_id`) values 
(1,'Kitchen Set A','L-shaped',7000000,2,1,4),
(2,'Kitchen Set B','I-shaped',5500000,4,1,4),
(4,'Kitchen Set C','U-shaped',9000000,5,1,4),
(5,'Kitchen Set D','Island',15000000,1,1,4),
(6,'Bed Set A','Storage Bed',7000000,3,1,4),
(7,'Sofa Set A','Scandinavian',8000000,6,1,4),
(8,'Sofa Set B','Round L-shaped',12000000,7,1,4),
(9,'Bed Set B','Canopy Bed',12000000,8,1,4),
(10,'Wardrobe','L-shaped',11000000,9,1,4),
(11,'Bookshelf','Window Seat',7500000,10,1,4),
(56,'TV Cabinet','Float',2500000,NULL,0,13),
(57,'TV Cabinet','Float',3000000,13,1,14),
(58,'Living Room Set','Modern',12000000,14,0,14),
(59,'TV Cabinet','Industrial',5500000,NULL,0,14),
(60,'TV Cabinet B','Industrial',5500000,15,1,14),
(62,'Living Room Set A','Minimalist',6000000,18,1,15),
(63,'Living Room Set B','Minimalist',6000000,NULL,0,15),
(64,'Living Room Set B','Minimalist',6000000,NULL,0,15),
(65,'Living Room Set B','Minimalist',5000000,NULL,0,15),
(66,'Living Room Set B','Minimalist',5000000,NULL,0,15),
(67,'Living Room Set C','Minimalist',8000000,NULL,0,14),
(68,'Living Room Set B','Industrial',12000000,16,1,14),
(69,'TV Cabinet C','Industrial',7000000,17,1,16),
(70,'Living Room Set C','Modern',7654854,20,1,15),
(72,'','',0,NULL,0,15),
(73,'','',0,NULL,0,15),
(74,'','',0,NULL,0,15);

/*Table structure for table `user` */

DROP TABLE IF EXISTS `user`;

CREATE TABLE `user` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `username` varchar(30) DEFAULT NULL,
  `password` varchar(250) DEFAULT NULL,
  `role` varchar(10) DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL,
  `email` varchar(30) DEFAULT NULL,
  `contact` varchar(20) DEFAULT NULL,
  `address` varchar(200) DEFAULT NULL,
  `status` int DEFAULT '1',
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*Data for the table `user` */

insert  into `user`(`id`,`username`,`password`,`role`,`name`,`email`,`contact`,`address`,`status`) values 
(4,'admin1','$2a$10$PW6EpQzXwKz8tJHuCgcJUetau0mpDdObDK3nh.B.LDKdmj9VVxuTi','admin','Admin 1','admin1@admin.com','08123456789','Jl. Abc. no.1',1),
(5,'customer1','$2a$10$sYcWbQ2I1Y4vYPb/lxNV8uvznbk1xWEORsf/AGztLg8O8S92z7oRS','customer','Customer 1','customer1@yahoo.com','080011223344','Jakarta Timur',1),
(7,'customer2','$2a$10$JTQlmI5Z2TY4hfz8nvvE8ewy.yfSQBliPv1lu2thKHI/x3OMPOnXO','customer','Customer 2','customer2@gmail.com','01234567890','Jakarta',1),
(8,'Customer_3','$2a$10$6yPO8FUW3spADMS4gdOepuFfKVPeyukJaWS42EWybkxbpUrWAJmoW','customer','Customer 3','customer3@outlook.com','0801234567890','Jakarta Timur',1),
(9,'Customer4','$2a$10$pI2NqzRZX8V9kPNacP69MuteD0li3iw/6BW6bow6gM8ZYAVQTFJ2O','customer','Customer 4','customer4@outlook.com','0123456789','Jl. Abcd No.1, Bekasi',1),
(10,'Test123','$2a$10$Vmu2vh/DZzZGoWHBMr/lr.LwzTUZEqaFjijxWr7rXqNrJZrpS8PO2','customer','Test Nama','Test123@gmail.com','96417991','Bandung',1),
(11,'Customer5','$2a$10$H/sr4AtKqGNYLkjMLUDqGuaC82pEHvk9464eTSE1FS/0wRry9Alie','customer','Customer 5','Customer5@gmail.com','0735283994','Bandung',1),
(12,'Customer6','$2a$10$LW84VXTJA47DekAuhXN7i.LtRlT4UtALmkcWlxOUlU2of5FQzDoYu','admin','Customer 6','Customer6@gmail.com','985687436508','Bandung',0),
(13,'Admin2','$2a$10$i3e3o3TW/9li7Jwe71zFpOTsinvmGCTISm3lICOyu444V8WM9kt3y','admin','Admin 2','admin2@gmail.com','98658764875','Jakarta',1),
(14,'Admin3','$2a$10$9xD7VI.xJeDl4TPzdccKvuuj1kxok2cvRWixkqAriRZM3OgVd8kXW','admin','Admin 3','Admin3@gmail.com','6788574653','Jakarta',0),
(15,'Admin4','$2a$10$sMvUbbUmBissS8hdZv5zvOlEX3dLkCaCPfqbKPYEHp6Ndaw9l0n.G','admin','Admin 4','admin4@gmail.com','97483547536','Jakarta',1),
(16,'Admin5','$2a$10$GJuDdMZrmcPXAecQhBGe8ON5l0bVp33y0m2h1W5qswbGOvPrLBLg.','admin','Admin 5','admin5@gmail.com','48397875280','Jakarta',1),
(17,'Admin7','$2a$10$ayJAIgTvtyAMd7jZMwTqceSZJJ95.JRsVxgmtY8OHZCKllB.N5zSe','admin','Admin 7','Admin7@gmail.com','858437593','Jakarta',1),
(18,'Admin6','$2a$10$CKj.BsxaVI0W/l9GDjTD3e837RFHCngabzIhsMSx9suN/4TNn4r8K','admin','Admin','admin6@gmail.com','7469837','Jkt',1),
(19,'Admin8','$2a$10$Q7YO.PWudg38FM1T8azHO.VAyw/IuGM4Y9qQiJE1.v9XOkU2c9rRu','admin','vsdfva','admin@gmail.com','7347','v sbsbs',1),
(20,'Customer7','$2a$10$r5QqGFypt08iPeZ0dztKKOXlJSPLit2Uj2GDNcvqmDMrA3wSRm9PO','customer','Customer 7','Customer7@gmail.com','9539262919','Test',0);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
