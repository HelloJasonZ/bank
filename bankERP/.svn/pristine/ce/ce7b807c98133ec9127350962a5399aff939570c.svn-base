/*
SQLyog Ultimate v10.00 Beta1
MySQL - 5.1.62-community : Database - bankerp
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`bankerp` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `bankerp`;

/*Table structure for table `account` */

DROP TABLE IF EXISTS `account`;

CREATE TABLE `account` (
  `ac_id` int(11) NOT NULL AUTO_INCREMENT,
  `ac_number` varchar(19) NOT NULL,
  `ac_password` varchar(6) NOT NULL,
  `cus_id` int(11) NOT NULL,
  `ac_currency` varchar(20) DEFAULT NULL,
  `ac_balance` decimal(16,2) DEFAULT NULL,
  `ac_create_time` datetime DEFAULT NULL,
  `ac_create_address` varchar(50) DEFAULT NULL,
  `ac_state` int(11) DEFAULT NULL,
  `t_id` int(11) DEFAULT NULL,
  `is_delete` bit(1) DEFAULT NULL,
  PRIMARY KEY (`ac_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `account` */

/*Table structure for table `authority` */

DROP TABLE IF EXISTS `authority`;

CREATE TABLE `authority` (
  `aut_id` int(11) NOT NULL AUTO_INCREMENT,
  `aut_content` varchar(10) DEFAULT NULL,
  `is_delete` bit(1) DEFAULT NULL,
  PRIMARY KEY (`aut_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `authority` */

/*Table structure for table `customer` */

DROP TABLE IF EXISTS `customer`;

CREATE TABLE `customer` (
  `cus_id` int(11) NOT NULL AUTO_INCREMENT,
  `cus_name` varchar(10) NOT NULL,
  `cus_password` varchar(18) NOT NULL,
  `cus_phone` varchar(11) DEFAULT NULL,
  `cus_idcard` varchar(18) NOT NULL,
  `cus_email` varchar(20) DEFAULT NULL,
  `cus_address` varchar(50) DEFAULT NULL,
  `cus_state` bit(1) DEFAULT NULL,
  `cus_create_time` datetime DEFAULT NULL,
  `cus_login_time` datetime DEFAULT NULL,
  `t_id` int(11) DEFAULT NULL,
  `is_delete` bit(1) DEFAULT NULL,
  PRIMARY KEY (`cus_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `customer` */

/*Table structure for table `teller` */

DROP TABLE IF EXISTS `teller`;

CREATE TABLE `teller` (
  `t_id` int(11) NOT NULL AUTO_INCREMENT,
  `t_number` mediumtext NOT NULL,
  `t_name` varchar(10) NOT NULL,
  `t_password` varchar(18) NOT NULL,
  `aut_id` int(11) DEFAULT NULL,
  `t_login_time` datetime DEFAULT NULL,
  `is_delete` bit(1) DEFAULT NULL,
  PRIMARY KEY (`t_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `teller` */

/*Table structure for table `transactions` */

DROP TABLE IF EXISTS `transactions`;

CREATE TABLE `transactions` (
  `tr_id` int(11) NOT NULL AUTO_INCREMENT,
  `tr_number` varchar(20) NOT NULL,
  `ac_number` varchar(19) DEFAULT NULL,
  `cus_id` int(11) DEFAULT NULL,
  `tr_balance` decimal(19,2) DEFAULT NULL,
  `tr_time` datetime DEFAULT NULL,
  `tr_type` int(11) DEFAULT NULL,
  `tr_address` varchar(50) DEFAULT NULL,
  `is_delete` bit(1) DEFAULT NULL,
  PRIMARY KEY (`tr_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `transactions` */

/*Table structure for table `transfer_info` */

DROP TABLE IF EXISTS `transfer_info`;

CREATE TABLE `transfer_info` (
  `ti_id` int(11) NOT NULL AUTO_INCREMENT,
  `tr_number` varchar(20) DEFAULT NULL,
  `ti_out_num` varchar(19) NOT NULL,
  `ti_in_num` varchar(19) NOT NULL,
  `ti_balance` decimal(19,2) DEFAULT NULL,
  `ti_time` datetime DEFAULT NULL,
  `ti_state` bit(1) DEFAULT NULL,
  `ti_result` varchar(50) DEFAULT NULL,
  `is_delete` bit(1) DEFAULT NULL,
  PRIMARY KEY (`ti_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `transfer_info` */

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
