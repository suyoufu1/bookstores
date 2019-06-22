# Host: localhost  (Version 5.7.20-log)
# Date: 2019-06-22 15:10:40
# Generator: MySQL-Front 6.0  (Build 2.20)


#
# Structure for table "adminer"
#

DROP TABLE IF EXISTS `adminer`;
CREATE TABLE `adminer` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) DEFAULT NULL,
  `password` varchar(20) DEFAULT NULL,
  `phone` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

#
# Data for table "adminer"
#

INSERT INTO `adminer` VALUES (5,'按时发生佛挡杀佛','123456','18895012576','1679059110@qq.com'),(6,'按时发生佛挡杀佛','123456','18895012576','1679059110@qq.com');

#
# Structure for table "booklist"
#

DROP TABLE IF EXISTS `booklist`;
CREATE TABLE `booklist` (
  `id` varchar(255) NOT NULL DEFAULT '',
  `name` varchar(20) DEFAULT NULL,
  `price` double DEFAULT NULL,
  `pnum` int(11) DEFAULT NULL,
  `category` varchar(20) DEFAULT NULL,
  `des` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#
# Data for table "booklist"
#

INSERT INTO `booklist` VALUES ('4dfe0f47-df96-44c6-bf3e-da6fa47b87a5','春',33,12,'文学',''),('98caf9a5-383b-440a-8917-64eb91df7084',' 就 加快第三方看电视否',23,11,'社科','水污染若多所'),('a66fba95-c6c5-492b-8b66-6b3eeef749cd','java从入门到入狱',89,99,'计算机',''),('ddde7771-fca3-4906-a8a5-0a7b89b43d4f','简爱',89,22,'文学',''),('e823ae8c-3805-4628-af7d-c6005ead9fe6','平凡的世界',54,11,'文学',''),('ff8fb40f-1c87-4ba2-b56e-a5bf3756af3a','家',34,22,'文学','');

#
# Structure for table "t_user"
#

DROP TABLE IF EXISTS `t_user`;
CREATE TABLE `t_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `phonenum` varchar(100) DEFAULT NULL,
  `address` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

#
# Data for table "t_user"
#

INSERT INTO `t_user` VALUES (2,'ainioo','123456','155555','185254412','123@qq.com'),(3,'ljh','123456','111','ww','167110@qq.com'),(4,'syf','123456','188976222','宁夏大学','1@qq.com');

#
# Structure for table "orders"
#

DROP TABLE IF EXISTS `orders`;
CREATE TABLE `orders` (
  `ordernum` int(11) NOT NULL AUTO_INCREMENT,
  `quantity` int(11) DEFAULT NULL,
  `money` float DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `customerId` int(11) DEFAULT NULL,
  PRIMARY KEY (`ordernum`),
  KEY `customer_Id_fk` (`customerId`),
  CONSTRAINT `customer_Id_fk` FOREIGN KEY (`customerId`) REFERENCES `t_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

#
# Data for table "orders"
#


#
# Structure for table "orderitems"
#

DROP TABLE IF EXISTS `orderitems`;
CREATE TABLE `orderitems` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `quantity` int(11) DEFAULT NULL,
  `price` float DEFAULT NULL,
  `bookId` varchar(255) DEFAULT NULL,
  `ordernum` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `bookId_fk` (`bookId`),
  KEY `ordernum_fk` (`ordernum`),
  CONSTRAINT `bookId_fk` FOREIGN KEY (`bookId`) REFERENCES `booklist` (`id`),
  CONSTRAINT `ordernum_fk` FOREIGN KEY (`ordernum`) REFERENCES `orders` (`ordernum`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#
# Data for table "orderitems"
#

