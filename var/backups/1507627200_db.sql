-- Magento DB backup
--
-- Host: localhost    Database: fourniermag
-- ------------------------------------------------------
-- Server version: 5.7.19

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `admin_passwords`
--

DROP TABLE IF EXISTS `admin_passwords`;
CREATE TABLE `admin_passwords` (
  `password_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Password Id',
  `user_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'User Id',
  `password_hash` varchar(100) DEFAULT NULL COMMENT 'Password Hash',
  `expires` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Expires',
  `last_updated` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Last Updated',
  PRIMARY KEY (`password_id`),
  KEY `ADMIN_PASSWORDS_USER_ID` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='Admin Passwords';

--
-- Dumping data for table `admin_passwords`
--

LOCK TABLES `admin_passwords` WRITE;
/*!40000 ALTER TABLE `admin_passwords` DISABLE KEYS */;
INSERT INTO `admin_passwords` VALUES ('1','1','4f818b0a52d77a5e90f5a4198b586955bfdfe49d102f57c200efb2dc53f382dc:BRfcfQujfwiTFnx508SbsmxjjnDBNJMV:1','1513871052','1506095052'),('2','2','1b4fe60767eaf928b6d22b6b03cd58c4b2c42383143da207ddc4c2aab88249fd:tIDYKhIjOoWbJ4nNSUdLxK44XHi6rMeB:1','1514118540','1506342540'),('3','1','4f818b0a52d77a5e90f5a4198b586955bfdfe49d102f57c200efb2dc53f382dc:BRfcfQujfwiTFnx508SbsmxjjnDBNJMV:1','1514118569','1506342569'),('4','2','1b4fe60767eaf928b6d22b6b03cd58c4b2c42383143da207ddc4c2aab88249fd:tIDYKhIjOoWbJ4nNSUdLxK44XHi6rMeB:1','1514118570','1506342570');
/*!40000 ALTER TABLE `admin_passwords` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `admin_system_messages`
--

DROP TABLE IF EXISTS `admin_system_messages`;
CREATE TABLE `admin_system_messages` (
  `identity` varchar(100) NOT NULL COMMENT 'Message id',
  `severity` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Problem type',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Create date',
  PRIMARY KEY (`identity`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Admin System Messages';

--
-- Table structure for table `admin_user`
--

DROP TABLE IF EXISTS `admin_user`;
CREATE TABLE `admin_user` (
  `user_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'User ID',
  `firstname` varchar(32) DEFAULT NULL COMMENT 'User First Name',
  `lastname` varchar(32) DEFAULT NULL COMMENT 'User Last Name',
  `email` varchar(128) DEFAULT NULL COMMENT 'User Email',
  `username` varchar(40) DEFAULT NULL COMMENT 'User Login',
  `password` varchar(255) NOT NULL COMMENT 'User Password',
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'User Created Time',
  `modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'User Modified Time',
  `logdate` timestamp NULL DEFAULT NULL COMMENT 'User Last Login Time',
  `lognum` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'User Login Number',
  `reload_acl_flag` smallint(6) NOT NULL DEFAULT '0' COMMENT 'Reload ACL',
  `is_active` smallint(6) NOT NULL DEFAULT '1' COMMENT 'User Is Active',
  `extra` text COMMENT 'User Extra Data',
  `rp_token` text COMMENT 'Reset Password Link Token',
  `rp_token_created_at` timestamp NULL DEFAULT NULL COMMENT 'Reset Password Link Token Creation Date',
  `interface_locale` varchar(16) NOT NULL DEFAULT 'en_US' COMMENT 'Backend interface locale',
  `failures_num` smallint(6) DEFAULT '0' COMMENT 'Failure Number',
  `first_failure` timestamp NULL DEFAULT NULL COMMENT 'First Failure',
  `lock_expires` timestamp NULL DEFAULT NULL COMMENT 'Expiration Lock Dates',
  PRIMARY KEY (`user_id`),
  UNIQUE KEY `ADMIN_USER_USERNAME` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='Admin User Table';

--
-- Dumping data for table `admin_user`
--

LOCK TABLES `admin_user` WRITE;
/*!40000 ALTER TABLE `admin_user` DISABLE KEYS */;
INSERT INTO `admin_user` VALUES ('1','admin','admin','egil.ruefli@syscon.ch','admin','4f818b0a52d77a5e90f5a4198b586955bfdfe49d102f57c200efb2dc53f382dc:BRfcfQujfwiTFnx508SbsmxjjnDBNJMV:1','2017-09-20 09:34:46','2017-10-10 08:16:31','2017-10-10 08:16:31',65,0,1,'a:1:{s:11:\"configState\";a:13:{s:28:\"customer_account_information\";s:1:\"0\";s:16:\"customer_address\";s:1:\"1\";s:26:\"customer_address_templates\";s:1:\"1\";s:22:\"customer_account_share\";s:1:\"0\";s:25:\"customer_online_customers\";s:1:\"0\";s:23:\"customer_create_account\";s:1:\"0\";s:17:\"customer_password\";s:1:\"0\";s:16:\"customer_startup\";s:1:\"0\";s:16:\"customer_captcha\";s:1:\"0\";s:42:\"itoris_dynamicproductoptions_export_import\";s:1:\"1\";s:36:\"itoris_dynamicproductoptions_general\";s:1:\"0\";s:40:\"itoris_productpriceformula_export_import\";s:1:\"1\";s:34:\"itoris_productpriceformula_general\";s:1:\"0\";}}',NULL,NULL,'en_US',0,NULL,NULL),('2','Egil','Ruefli','egil.ruefli@gmail.com','egil','1b4fe60767eaf928b6d22b6b03cd58c4b2c42383143da207ddc4c2aab88249fd:tIDYKhIjOoWbJ4nNSUdLxK44XHi6rMeB:1','2017-09-25 12:29:00','2017-10-10 09:12:21','2017-10-10 07:39:44',28,0,1,'a:1:{s:11:\"configState\";a:84:{s:42:\"itoris_dynamicproductoptions_export_import\";s:1:\"1\";s:17:\"sales_email_order\";s:1:\"1\";s:25:\"sales_email_order_comment\";s:1:\"0\";s:13:\"sales_general\";s:1:\"0\";s:17:\"sales_totals_sort\";s:1:\"0\";s:19:\"sales_email_general\";s:1:\"1\";s:13:\"sales_reorder\";s:1:\"0\";s:14:\"sales_identity\";s:1:\"0\";s:19:\"sales_minimum_order\";s:1:\"0\";s:15:\"sales_dashboard\";s:1:\"1\";s:12:\"sales_orders\";s:1:\"0\";s:18:\"sales_gift_options\";s:1:\"0\";s:10:\"sales_msrp\";s:1:\"0\";s:19:\"sales_email_invoice\";s:1:\"0\";s:27:\"sales_email_invoice_comment\";s:1:\"0\";s:20:\"sales_email_shipment\";s:1:\"0\";s:28:\"sales_email_shipment_comment\";s:1:\"0\";s:17:\"sales_pdf_invoice\";s:1:\"0\";s:18:\"sales_pdf_shipment\";s:1:\"0\";s:20:\"sales_pdf_creditmemo\";s:1:\"0\";s:25:\"trans_email_ident_general\";s:1:\"1\";s:23:\"trans_email_ident_sales\";s:1:\"1\";s:25:\"trans_email_ident_support\";s:1:\"1\";s:25:\"trans_email_ident_custom1\";s:1:\"0\";s:25:\"trans_email_ident_custom2\";s:1:\"0\";s:25:\"general_store_information\";s:1:\"0\";s:15:\"general_country\";s:1:\"0\";s:14:\"general_locale\";s:1:\"0\";s:12:\"web_unsecure\";s:1:\"0\";s:10:\"web_secure\";s:1:\"0\";s:11:\"web_default\";s:1:\"0\";s:16:\"checkout_options\";s:1:\"1\";s:13:\"checkout_cart\";s:1:\"1\";s:18:\"checkout_cart_link\";s:1:\"1\";s:16:\"checkout_sidebar\";s:1:\"1\";s:23:\"checkout_payment_failed\";s:1:\"1\";s:24:\"shipping_shipping_policy\";s:1:\"1\";s:35:\"payment_other_other_payment_methods\";s:1:\"1\";s:21:\"payment_other_checkmo\";s:1:\"1\";s:26:\"payment_other_banktransfer\";s:1:\"1\";s:18:\"payment_other_free\";s:1:\"0\";s:28:\"payment_other_cashondelivery\";s:1:\"1\";s:44:\"payment_other_other_paypal_payment_solutions\";s:1:\"0\";s:27:\"payment_other_purchaseorder\";s:1:\"1\";s:21:\"payment_other_account\";s:1:\"1\";s:35:\"payment_other_recommended_solutions\";s:1:\"1\";s:36:\"payment_other_express_checkout_other\";s:1:\"0\";s:37:\"payment_other_paypal_group_all_in_one\";s:1:\"1\";s:37:\"payment_other_authorizenet_directpost\";s:1:\"0\";s:17:\"carriers_flatrate\";s:1:\"1\";s:21:\"carriers_freeshipping\";s:1:\"1\";s:18:\"carriers_tablerate\";s:1:\"0\";s:12:\"carriers_ups\";s:1:\"0\";s:13:\"carriers_usps\";s:1:\"0\";s:14:\"carriers_fedex\";s:1:\"0\";s:12:\"carriers_dhl\";s:1:\"0\";s:9:\"dev_debug\";s:1:\"1\";s:34:\"dev_front_end_development_workflow\";s:1:\"0\";s:12:\"dev_restrict\";s:1:\"0\";s:12:\"dev_template\";s:1:\"0\";s:20:\"dev_translate_inline\";s:1:\"0\";s:6:\"dev_js\";s:1:\"0\";s:7:\"dev_css\";s:1:\"0\";s:9:\"dev_image\";s:1:\"0\";s:10:\"dev_static\";s:1:\"0\";s:8:\"dev_grid\";s:1:\"0\";s:15:\"shipping_origin\";s:1:\"0\";s:15:\"tax_calculation\";s:1:\"0\";s:12:\"tax_defaults\";s:1:\"0\";s:11:\"tax_display\";s:1:\"0\";s:16:\"tax_cart_display\";s:1:\"0\";s:17:\"tax_sales_display\";s:1:\"1\";s:8:\"tax_weee\";s:1:\"1\";s:26:\"customer_address_templates\";s:1:\"1\";s:23:\"customer_create_account\";s:1:\"1\";s:17:\"customer_password\";s:1:\"1\";s:28:\"customer_account_information\";s:1:\"0\";s:16:\"customer_address\";s:1:\"0\";s:16:\"customer_startup\";s:1:\"0\";s:16:\"customer_captcha\";s:1:\"0\";s:22:\"customer_account_share\";s:1:\"0\";s:25:\"customer_online_customers\";s:1:\"0\";s:15:\"contact_contact\";s:1:\"1\";s:13:\"contact_email\";s:1:\"1\";}}',NULL,NULL,'en_US',0,NULL,NULL);
/*!40000 ALTER TABLE `admin_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `admin_user_session`
--

DROP TABLE IF EXISTS `admin_user_session`;
CREATE TABLE `admin_user_session` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Entity ID',
  `session_id` varchar(128) NOT NULL COMMENT 'Session id value',
  `user_id` int(10) unsigned DEFAULT NULL COMMENT 'Admin User ID',
  `status` smallint(5) unsigned NOT NULL DEFAULT '1' COMMENT 'Current Session status',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Created Time',
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Update Time',
  `ip` varchar(15) NOT NULL COMMENT 'Remote user IP',
  PRIMARY KEY (`id`),
  KEY `ADMIN_USER_SESSION_SESSION_ID` (`session_id`),
  KEY `ADMIN_USER_SESSION_USER_ID` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=99 DEFAULT CHARSET=utf8 COMMENT='Admin User sessions table';

--
-- Dumping data for table `admin_user_session`
--

LOCK TABLES `admin_user_session` WRITE;
/*!40000 ALTER TABLE `admin_user_session` DISABLE KEYS */;
INSERT INTO `admin_user_session` VALUES ('1','dh69ql8ce3lba6dk480magggo4','1',1,'2017-09-20 09:35:52','2017-09-20 09:38:30','192.168.124.106'),('2','ns5j17hmu0p9en70m8aimj1ir7','1',1,'2017-09-20 12:09:41','2017-09-20 12:19:08','192.168.124.106'),('3','iktaqmvvi48isigsjc6fiui1s7','1',0,'2017-09-20 17:00:27','2017-09-21 07:31:30','192.168.124.106'),('4','t096hcl6mmg6c13h2a3nljp3j0','1',1,'2017-09-21 07:31:43','2017-09-21 07:46:14','192.168.124.106'),('5','ndahi0bmo7vkr890l3ifmlvni0','1',1,'2017-09-21 08:30:56','2017-09-21 08:33:02','192.168.124.106'),('6','lihckct98dtopggeuds4sui4i1','1',1,'2017-09-21 08:50:52','2017-09-21 09:00:54','192.168.124.106'),('7','tevroliqa6qh0sgmekes3vcpt6','1',1,'2017-09-21 09:33:50','2017-09-21 09:55:56','192.168.124.106'),('8','c7kdnsjv014us2nv1jqa69rf66','1',1,'2017-09-21 10:24:52','2017-09-21 10:35:03','192.168.124.106'),('9','vgsqul1089e5gtrrce4cgfv5f3','1',2,'2017-09-21 13:03:36','2017-09-21 13:11:18','192.168.124.106'),('10','',NULL,0,'2017-09-21 13:11:11','2017-09-21 13:11:11',''),('11','5d4448sbfb4pe4dvrc0jrkbme2','1',1,'2017-09-21 13:11:18','2017-09-21 13:35:22','192.168.124.106'),('12','luhfv319mi0c8c1oqm8e73dti3','1',1,'2017-09-21 13:53:38','2017-09-21 14:02:27','192.168.124.106'),('13','kfpotbsnha55u2ngbbvikp0fe3','1',1,'2017-09-21 15:18:37','2017-09-21 15:52:49','192.168.123.191'),('14','bl5mo8ec4bm2qu0hjar3t1m8n4','1',1,'2017-09-21 16:43:54','2017-09-21 16:59:54','192.168.123.191'),('15','io6corbats683lhu5m0pmfb4k0','1',1,'2017-09-22 07:56:28','2017-09-22 09:08:50','192.168.124.106'),('16','m8h1sfmp0lrka1okg0r6976kk6','1',0,'2017-09-22 15:41:02','2017-09-22 15:44:28','185.45.238.147'),('17','jlbgkbqqufgordg4oqnno852k4','1',1,'2017-09-22 15:44:40','2017-09-22 16:02:40','185.45.238.147'),('18','c56psal5ati71t7ku0e80uboq7','1',1,'2017-09-25 07:44:19','2017-09-25 08:35:24','213.160.52.133'),('19','a08d1kphvs546l784ol7nij3k4','1',0,'2017-09-25 11:43:08','2017-09-25 11:45:45','77.56.210.23'),('20','7eq8344tnoo7pgi65epss3i1b2','1',0,'2017-09-25 11:48:31','2017-09-25 11:49:02','77.56.210.23'),('21','fcr30qijpcnup5jriue15smnp1','1',2,'2017-09-25 11:57:20','2017-09-25 12:28:09','77.56.210.23'),('22','2lc688fn7i4cehqeain8g6ulp4','1',0,'2017-09-25 12:28:09','2017-09-25 12:29:35','213.160.52.133'),('23','sp5gbaqi4b1v2es58je85ij0b5','2',1,'2017-09-25 12:29:41','2017-09-25 12:48:49','213.160.52.133'),('24','vsloabd9dj0c9o63rlb3at21l2','1',1,'2017-09-25 12:48:18','2017-09-25 13:29:16','77.56.210.23'),('25','ks2i0j4sre0cqt2qnq9jpmvg31','2',1,'2017-09-25 13:04:18','2017-09-25 13:06:19','213.160.52.133'),('26','5nmo61a9piv68ks1j0jfptmd32','2',1,'2017-09-25 13:23:56','2017-09-25 13:30:19','213.160.52.133'),('27','8gl90d114je7jdjqp83vfe4i40','1',1,'2017-09-25 13:45:18','2017-09-25 13:56:07','77.56.210.23'),('28','tesjf2rvnet2l74hj8cmb89ak4','1',1,'2017-09-25 14:28:45','2017-09-25 14:30:33','77.56.210.23'),('29','13tqq63rvi2c9q3646bejc8kf6','2',1,'2017-09-25 14:44:33','2017-09-25 15:08:58','213.160.52.133'),('30','aq2hs4377ruesgbe0ha8qdmql2','2',0,'2017-09-25 15:36:10','2017-09-26 08:16:48','213.160.52.133'),('31','n06pkhhkre9oner5hr8bmpfpm6','1',1,'2017-09-25 18:00:48','2017-09-25 18:10:19','77.56.210.23'),('32','lg3p99na2cd8c6f31rq3dpmij0','1',1,'2017-09-25 18:30:21','2017-09-25 18:37:48','77.56.210.23'),('33','iljoefq739lvhnufvmqmej4pp3','1',1,'2017-09-25 18:55:26','2017-09-25 19:14:59','77.56.210.23'),('34','raqs3753055vqk53p2ij6rmmg5','2',1,'2017-09-26 08:16:59','2017-09-26 08:29:09','213.160.52.133'),('35','1hclukfgbsie3mncctfnu6v595','1',0,'2017-09-26 08:20:49','2017-09-26 08:41:04','77.56.210.23'),('36','mo13i7cb8uscrjklqmqelh8oh2','1',0,'2017-09-26 08:49:18','2017-09-26 09:35:42','77.56.210.23'),('37','oli2hb1it6sn8sr3pa5vc422d4','1',1,'2017-09-26 16:23:29','2017-09-26 16:51:43','77.56.210.23'),('38','hpu7nb25cmgc4arr78qmo4fh22','1',0,'2017-09-26 17:33:05','2017-09-26 17:55:44','77.56.210.23'),('39','sp65vpupjdh67q83v48112m2d4','1',0,'2017-09-26 18:16:19','2017-09-26 18:23:26','77.56.210.23'),('40','eaiji2rstqmuupuofvc2nlqr82','1',0,'2017-09-26 18:46:11','2017-09-26 18:57:04','77.56.210.23'),('41','hl8hsr6m6f21r3i2md3plm7ru6','1',0,'2017-09-27 07:27:06','2017-09-27 07:27:26','77.56.210.23'),('42','usi0glqcam343crapv34h0drs5','1',0,'2017-09-27 07:31:37','2017-09-27 07:56:29','77.56.210.23'),('43','0jfjjjdc2fl3gvpvsd44tpvot2','1',1,'2017-09-27 08:09:49','2017-09-27 08:16:28','77.56.210.23'),('44','9g9j9a7l9mfed2et031vhom376','2',1,'2017-09-27 08:25:23','2017-09-27 09:06:22','213.160.52.133'),('45','uljm5b5qoa5vbrhjvi8c8885n2','1',1,'2017-09-27 09:12:39','2017-09-27 09:13:27','77.56.210.23'),('46','6ib08l4v5pqa3r5a0amehjr9c4','2',1,'2017-09-27 09:32:07','2017-09-27 09:55:49','213.160.52.133'),('47','lpq48eslinvlhvv2b5rnpb7c54','1',0,'2017-09-27 10:12:10','2017-09-27 11:13:50','77.56.210.23'),('48','q2urbuvaa7cveeqrqgikq8vgv0','2',0,'2017-09-27 10:17:12','2017-09-27 11:55:09','213.160.52.133'),('49','gjnjpmtc2q0g5k331nkpj5sau5','1',1,'2017-09-27 11:14:35','2017-09-27 11:31:18','77.56.210.23'),('50','nl0pqvlqdskfhpaanhieif2hi6','2',1,'2017-09-27 11:55:36','2017-09-27 12:28:12','213.160.52.133'),('51','c8u9aoh6a7rkordel99b0rvol0','2',1,'2017-09-27 12:44:48','2017-09-27 12:47:52','213.160.52.133'),('52','dmmbnbn90qfpl4hasat564q840','2',1,'2017-09-27 13:46:08','2017-09-27 14:00:48','213.160.52.133'),('53','e4rgk3kjttm8bn1bd416q17j14','2',1,'2017-09-27 14:19:17','2017-09-27 14:23:53','213.160.52.133'),('54','tug8eh8ace93thka7fttipq8o4','1',1,'2017-09-27 15:37:46','2017-09-27 15:42:32','77.56.210.23'),('55','ui9v2307f8mv5m58fcb4k9clk6','1',0,'2017-09-27 16:09:53','2017-09-27 16:16:42','77.56.210.23'),('56','5he3q73i9hmnf2vidg6fu9i0v6','1',1,'2017-09-27 19:54:53','2017-09-27 20:11:07','185.45.238.147'),('57','at857u66lke4a1v6j6ie793kb7','2',0,'2017-09-27 20:32:53','2017-09-27 21:26:55','185.45.238.147'),('58','7aj51icfg4jnre3ct1ouimfh91','2',1,'2017-09-27 21:28:08','2017-09-27 21:33:57','185.45.238.147'),('59','ji0em86tjqidt4brp9k8gd1im1','2',1,'2017-09-27 22:05:04','2017-09-27 22:05:05','185.45.238.147'),('60','s2o1tr47gauhr4t08atehb98m4','1',1,'2017-10-01 09:54:05','2017-10-01 10:15:26','77.56.210.23'),('61','9ume3u5ithn5qi7unj5okqpu57','1',1,'2017-10-02 07:38:10','2017-10-02 07:43:25','77.56.210.23'),('62','jhaqgbhqa6agbgncbmuqm5su46','1',1,'2017-10-02 08:51:25','2017-10-02 08:54:04','77.56.210.23'),('63','nmi6poars1qlsphf8h6n953a10','1',0,'2017-10-02 09:23:43','2017-10-02 13:37:33','77.56.210.23'),('64','836jg1de36rqrll7oq942iiih5','1',1,'2017-10-02 13:37:43','2017-10-02 14:10:47','77.56.210.23'),('65','3osgsfr479d34r6b2iuet28ft7','2',1,'2017-10-02 13:55:04','2017-10-02 14:07:14','213.160.52.133'),('66','9qq6g8tjaqb1nvge3ve7muli95','1',0,'2017-10-02 14:37:58','2017-10-02 15:04:46','77.56.210.23'),('67','ifn5bsvpr5lcj3jemuoiv04qg5','1',1,'2017-10-02 15:46:46','2017-10-02 16:17:33','77.56.210.23'),('68','clulg0ueogg9qjapukf6mk72f3','1',1,'2017-10-02 16:33:42','2017-10-02 16:35:29','77.56.210.23'),('69','388nc4ebsm1nrvrj3u1btb0hq2','1',1,'2017-10-03 10:08:24','2017-10-03 10:19:01','77.56.210.23'),('70','25fhsmfk8ogbcjk8uuknfg1nl2','1',0,'2017-10-04 07:53:12','2017-10-04 07:58:06','77.56.210.23'),('71','nmhrefcrdpkprcbgi1lorgnbn4','1',0,'2017-10-04 08:04:21','2017-10-04 08:11:54','77.56.210.23'),('72','',NULL,0,'2017-10-04 08:06:23','2017-10-04 08:06:23',''),('73','7mqers2m39h7s1sbdn681uiab4','2',1,'2017-10-04 08:06:39','2017-10-04 08:21:29','213.160.52.133'),('74','8v9np0mtamqv2d3cikdb4too41','1',1,'2017-10-04 08:21:15','2017-10-04 08:21:27','77.56.210.23'),('75','faqbccmvp4qrgipvo0d4a3q177','2',1,'2017-10-04 09:05:37','2017-10-04 09:06:12','213.160.52.133'),('76','',NULL,0,'2017-10-04 12:09:51','2017-10-04 12:09:51',''),('77','l3kbe6dmuau5dfia012gcinbu4','2',0,'2017-10-04 12:10:11','2017-10-04 12:15:49','213.160.52.133'),('78','idf9n0htk253nd37s8097ag011','1',1,'2017-10-04 14:13:00','2017-10-04 14:33:24','77.56.210.23'),('79','s6rmf0gdfd1edlfrjimsmuvkc4','1',0,'2017-10-04 15:10:22','2017-10-04 15:28:11','77.56.210.23'),('80','6uq4se841cm6u5i0oog8fmcon6','1',0,'2017-10-04 15:32:29','2017-10-04 15:39:49','77.56.210.23'),('81','gerbnpnk7vl9ibnfgcvv46il70','1',0,'2017-10-04 15:44:13','2017-10-04 15:51:51','77.56.210.23'),('82','ev9g9opc7jteto72ofn1ajunv0','1',0,'2017-10-05 08:22:06','2017-10-05 08:30:14','77.56.210.23'),('83','2a8ubmjjt0pqv5ccuql03u2iv7','1',0,'2017-10-05 09:15:52','2017-10-05 09:28:50','77.56.210.23'),('84','e0o8hvkb0dq6btee7vr5ecq2k1','1',0,'2017-10-05 10:07:56','2017-10-05 10:09:56','77.56.210.23'),('85','k77cvs9pnsuregmg89nfe5jn42','1',0,'2017-10-05 10:24:59','2017-10-05 10:28:14','77.56.210.23'),('86','n999le4e5i1f3a0t1n491pnpp2','1',0,'2017-10-05 15:21:35','2017-10-05 15:31:04','77.56.210.23'),('87','',NULL,0,'2017-10-05 15:26:51','2017-10-05 15:26:51',''),('88','ace54g6ta038qdssknvm6dn3s2','2',0,'2017-10-05 15:27:03','2017-10-05 15:39:14','213.160.52.133'),('89','9uaa3vtb8vb2lh40tkd72rcof5','2',0,'2017-10-08 19:28:37','2017-10-09 06:41:19','213.160.52.133'),('90','v8hb7tufi12oajt3onjcsa8ef3','2',1,'2017-10-09 06:41:40','2017-10-09 07:53:52','213.160.52.133'),('91','',NULL,0,'2017-10-09 11:52:16','2017-10-09 11:52:16',''),('92','qls8ffbhi8nnnth60bgi2sk2n3','2',1,'2017-10-09 11:52:25','2017-10-09 11:54:14','213.160.52.133'),('93','eki603tq35q7atfvu4cqv0o7o5','2',1,'2017-10-09 12:27:22','2017-10-09 12:40:34','213.160.52.133'),('94','uoi6l0kil7uf8buqsebe6h3mm2','2',1,'2017-10-09 12:56:42','2017-10-09 12:57:11','213.160.52.133'),('95','v3lm8gn0q86mgudg0i38ljgf62','2',0,'2017-10-09 13:14:08','2017-10-10 07:39:35','213.160.52.133'),('96','bq34n19u6l9n2633575gp3bls3','1',1,'2017-10-10 07:31:41','2017-10-10 07:32:56','77.56.210.23'),('97','4ckbp1afd7kn2c8u18u2k7j980','2',1,'2017-10-10 07:39:44','2017-10-10 09:20:00','213.160.52.133'),('98','o823tv9joc7t99k300h09afts0','1',1,'2017-10-10 08:16:31','2017-10-10 08:16:49','77.56.210.23');
/*!40000 ALTER TABLE `admin_user_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `adminnotification_inbox`
--

DROP TABLE IF EXISTS `adminnotification_inbox`;
CREATE TABLE `adminnotification_inbox` (
  `notification_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Notification id',
  `severity` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Problem type',
  `date_added` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Create date',
  `title` varchar(255) NOT NULL COMMENT 'Title',
  `description` text COMMENT 'Description',
  `url` varchar(255) DEFAULT NULL COMMENT 'Url',
  `is_read` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Flag if notification read',
  `is_remove` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Flag if notification might be removed',
  PRIMARY KEY (`notification_id`),
  KEY `ADMINNOTIFICATION_INBOX_SEVERITY` (`severity`),
  KEY `ADMINNOTIFICATION_INBOX_IS_READ` (`is_read`),
  KEY `ADMINNOTIFICATION_INBOX_IS_REMOVE` (`is_remove`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='Adminnotification Inbox';

--
-- Dumping data for table `adminnotification_inbox`
--

LOCK TABLES `adminnotification_inbox` WRITE;
/*!40000 ALTER TABLE `adminnotification_inbox` DISABLE KEYS */;
INSERT INTO `adminnotification_inbox` VALUES ('1',4,'2017-09-21 08:03:37','Professional Form Builder for Magento 2','Build custom forms of any complexity within minutes. Collect and store customer data in the Database, create email templates, edit validation rules, manage submissions, export data to CSV/PDF, use extra advanced editors, and more. - https://www.itoris.com/magento-2-form-builder.html','https://www.itoris.com/magento-2-form-builder.html',1,0),('2',4,'2017-09-26 22:42:42','Magento Open Source 2.2 Delivers Enhanced Commerce Capabilities – 9/26/2017','Magento Open Source 2.2 includes a range of platform enhancements, including a new deployment process that minimizes production downtime, optimized performance, platform updates that improve developer experience, and Magento Social marketing tools. Learn more at http://devdocs.magento.com/guides/v2.2/release-notes/bk-release-notes.html.','http://devdocs.magento.com/guides/v2.2/release-notes/bk-release-notes.html ',0,0),('3',2,'2017-09-27 07:48:32','New version of ITORIS M2 Dynamic Product Options is available','A new version 2.1.0 of ITORIS M2 Dynamic Product Options is available. Your current version is 2.0.2. Please update the extension to keep your store secure and have all the latest features. Please find more info here: //www.itoris.com/magento-2-custom-options.html','//www.itoris.com/magento-2-custom-options.html',0,0),('4',2,'2017-09-27 20:16:19','New version of ITORIS M2 Product Price Formula is available','A new version 1.6.1 of ITORIS M2 Product Price Formula is available. Your current version is 1.6.0. Please update the extension to keep your store secure and have all the latest features. Please find more info here: //www.itoris.com/magento-2-product-price-formula.html','//www.itoris.com/magento-2-product-price-formula.html',0,0);
/*!40000 ALTER TABLE `adminnotification_inbox` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `authorization_role`
--

DROP TABLE IF EXISTS `authorization_role`;
CREATE TABLE `authorization_role` (
  `role_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Role ID',
  `parent_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Parent Role ID',
  `tree_level` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Role Tree Level',
  `sort_order` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Role Sort Order',
  `role_type` varchar(1) NOT NULL DEFAULT '0' COMMENT 'Role Type',
  `user_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'User ID',
  `user_type` varchar(16) DEFAULT NULL COMMENT 'User Type',
  `role_name` varchar(50) DEFAULT NULL COMMENT 'Role Name',
  PRIMARY KEY (`role_id`),
  KEY `AUTHORIZATION_ROLE_PARENT_ID_SORT_ORDER` (`parent_id`,`sort_order`),
  KEY `AUTHORIZATION_ROLE_TREE_LEVEL` (`tree_level`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='Admin Role Table';

--
-- Dumping data for table `authorization_role`
--

LOCK TABLES `authorization_role` WRITE;
/*!40000 ALTER TABLE `authorization_role` DISABLE KEYS */;
INSERT INTO `authorization_role` VALUES ('1','0',1,1,'G','0','2','Administrators'),('4','1',2,0,'U','1','2','admin'),('5','1',2,0,'U','2','2','Egil');
/*!40000 ALTER TABLE `authorization_role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `authorization_rule`
--

DROP TABLE IF EXISTS `authorization_rule`;
CREATE TABLE `authorization_rule` (
  `rule_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Rule ID',
  `role_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Role ID',
  `resource_id` varchar(255) DEFAULT NULL COMMENT 'Resource ID',
  `privileges` varchar(20) DEFAULT NULL COMMENT 'Privileges',
  `permission` varchar(10) DEFAULT NULL COMMENT 'Permission',
  PRIMARY KEY (`rule_id`),
  KEY `AUTHORIZATION_RULE_RESOURCE_ID_ROLE_ID` (`resource_id`,`role_id`),
  KEY `AUTHORIZATION_RULE_ROLE_ID_RESOURCE_ID` (`role_id`,`resource_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='Admin Rule Table';

--
-- Dumping data for table `authorization_rule`
--

LOCK TABLES `authorization_rule` WRITE;
/*!40000 ALTER TABLE `authorization_rule` DISABLE KEYS */;
INSERT INTO `authorization_rule` VALUES ('2','1','Magento_Backend::all',NULL,'allow');
/*!40000 ALTER TABLE `authorization_rule` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cache`
--

DROP TABLE IF EXISTS `cache`;
CREATE TABLE `cache` (
  `id` varchar(200) NOT NULL COMMENT 'Cache Id',
  `data` mediumblob COMMENT 'Cache Data',
  `create_time` int(11) DEFAULT NULL COMMENT 'Cache Creation Time',
  `update_time` int(11) DEFAULT NULL COMMENT 'Time of Cache Updating',
  `expire_time` int(11) DEFAULT NULL COMMENT 'Cache Expiration Time',
  PRIMARY KEY (`id`),
  KEY `CACHE_EXPIRE_TIME` (`expire_time`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Caches';

--
-- Table structure for table `cache_tag`
--

DROP TABLE IF EXISTS `cache_tag`;
CREATE TABLE `cache_tag` (
  `tag` varchar(100) NOT NULL COMMENT 'Tag',
  `cache_id` varchar(200) NOT NULL COMMENT 'Cache Id',
  PRIMARY KEY (`tag`,`cache_id`),
  KEY `CACHE_TAG_CACHE_ID` (`cache_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Tag Caches';

--
-- Table structure for table `captcha_log`
--

DROP TABLE IF EXISTS `captcha_log`;
CREATE TABLE `captcha_log` (
  `type` varchar(32) NOT NULL COMMENT 'Type',
  `value` varchar(32) NOT NULL COMMENT 'Value',
  `count` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Count',
  `updated_at` timestamp NULL DEFAULT NULL COMMENT 'Update Time',
  PRIMARY KEY (`type`,`value`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Count Login Attempts';

--
-- Table structure for table `catalog_category_entity`
--

DROP TABLE IF EXISTS `catalog_category_entity`;
CREATE TABLE `catalog_category_entity` (
  `entity_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Entity ID',
  `attribute_set_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Attriute Set ID',
  `parent_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Parent Category ID',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Creation Time',
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Update Time',
  `path` varchar(255) NOT NULL COMMENT 'Tree Path',
  `position` int(11) NOT NULL COMMENT 'Position',
  `level` int(11) NOT NULL DEFAULT '0' COMMENT 'Tree Level',
  `children_count` int(11) NOT NULL COMMENT 'Child Count',
  PRIMARY KEY (`entity_id`),
  KEY `CATALOG_CATEGORY_ENTITY_LEVEL` (`level`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8 COMMENT='Catalog Category Table';

--
-- Dumping data for table `catalog_category_entity`
--

LOCK TABLES `catalog_category_entity` WRITE;
/*!40000 ALTER TABLE `catalog_category_entity` DISABLE KEYS */;
INSERT INTO `catalog_category_entity` VALUES ('1',3,'0','2017-09-20 09:34:38','2017-10-10 07:43:17','1','0','0','21'),('3',3,'1','2017-09-21 08:53:10','2017-09-21 08:59:35','1/3','2','1','15'),('4',3,'3','2017-09-21 08:53:38','2017-09-21 08:54:13','1/3/4','1','2','2'),('5',3,'4','2017-09-21 08:53:57','2017-09-21 08:54:13','1/3/4/5','1','3','1'),('6',3,'5','2017-09-21 08:54:13','2017-09-21 08:54:13','1/3/4/5/6','1','4','0'),('7',3,'3','2017-09-21 08:54:34','2017-09-21 08:55:20','1/3/7','2','2','2'),('8',3,'7','2017-09-21 08:54:54','2017-09-21 08:55:20','1/3/7/8','1','3','1'),('9',3,'8','2017-09-21 08:55:20','2017-09-21 08:55:20','1/3/7/8/9','1','4','0'),('10',3,'3','2017-09-21 08:55:50','2017-09-21 08:57:07','1/3/10','3','2','2'),('11',3,'10','2017-09-21 08:56:13','2017-09-21 08:57:07','1/3/10/11','1','3','1'),('12',3,'11','2017-09-21 08:57:07','2017-09-21 08:57:07','1/3/10/11/12','1','4','0'),('13',3,'3','2017-09-21 08:57:39','2017-09-21 08:58:11','1/3/13','4','2','2'),('14',3,'13','2017-09-21 08:57:59','2017-09-21 08:58:11','1/3/13/14','1','3','1'),('15',3,'14','2017-09-21 08:58:11','2017-09-21 08:58:11','1/3/13/14/15','1','4','0'),('16',3,'3','2017-09-21 08:58:47','2017-09-21 08:59:35','1/3/16','5','2','2'),('17',3,'16','2017-09-21 08:59:18','2017-09-21 08:59:35','1/3/16/17','1','3','1'),('18',3,'17','2017-09-21 08:59:35','2017-09-21 08:59:35','1/3/16/17/18','1','4','0'),('19',3,'1','2017-10-08 19:40:08','2017-10-08 19:41:23','1/19','3','1','3'),('20',3,'19','2017-10-08 19:40:46','2017-10-08 19:41:23','1/19/20','1','2','2'),('21',3,'20','2017-10-08 19:41:02','2017-10-08 19:41:23','1/19/20/21','1','3','1'),('22',3,'21','2017-10-08 19:41:23','2017-10-08 19:41:23','1/19/20/21/22','1','4','0'),('23',3,'1','2017-10-10 07:43:17','2017-10-10 07:43:17','1/23','4','1','0');
/*!40000 ALTER TABLE `catalog_category_entity` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `catalog_category_entity_datetime`
--

DROP TABLE IF EXISTS `catalog_category_entity_datetime`;
CREATE TABLE `catalog_category_entity_datetime` (
  `value_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Value ID',
  `attribute_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Attribute ID',
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Store ID',
  `entity_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity ID',
  `value` datetime DEFAULT NULL COMMENT 'Value',
  PRIMARY KEY (`value_id`),
  UNIQUE KEY `CATALOG_CATEGORY_ENTITY_DATETIME_ENTITY_ID_ATTRIBUTE_ID_STORE_ID` (`entity_id`,`attribute_id`,`store_id`),
  KEY `CATALOG_CATEGORY_ENTITY_DATETIME_ENTITY_ID` (`entity_id`),
  KEY `CATALOG_CATEGORY_ENTITY_DATETIME_ATTRIBUTE_ID` (`attribute_id`),
  KEY `CATALOG_CATEGORY_ENTITY_DATETIME_STORE_ID` (`store_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='Catalog Category Datetime Attribute Backend Table';

--
-- Dumping data for table `catalog_category_entity_datetime`
--

LOCK TABLES `catalog_category_entity_datetime` WRITE;
/*!40000 ALTER TABLE `catalog_category_entity_datetime` DISABLE KEYS */;
INSERT INTO `catalog_category_entity_datetime` VALUES ('1',61,0,'3',NULL),('2',62,0,'3',NULL);
/*!40000 ALTER TABLE `catalog_category_entity_datetime` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `catalog_category_entity_decimal`
--

DROP TABLE IF EXISTS `catalog_category_entity_decimal`;
CREATE TABLE `catalog_category_entity_decimal` (
  `value_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Value ID',
  `attribute_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Attribute ID',
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Store ID',
  `entity_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity ID',
  `value` decimal(12,4) DEFAULT NULL COMMENT 'Value',
  PRIMARY KEY (`value_id`),
  UNIQUE KEY `CATALOG_CATEGORY_ENTITY_DECIMAL_ENTITY_ID_ATTRIBUTE_ID_STORE_ID` (`entity_id`,`attribute_id`,`store_id`),
  KEY `CATALOG_CATEGORY_ENTITY_DECIMAL_ENTITY_ID` (`entity_id`),
  KEY `CATALOG_CATEGORY_ENTITY_DECIMAL_ATTRIBUTE_ID` (`attribute_id`),
  KEY `CATALOG_CATEGORY_ENTITY_DECIMAL_STORE_ID` (`store_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Category Decimal Attribute Backend Table';

--
-- Table structure for table `catalog_category_entity_int`
--

DROP TABLE IF EXISTS `catalog_category_entity_int`;
CREATE TABLE `catalog_category_entity_int` (
  `value_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Value ID',
  `attribute_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Attribute ID',
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Store ID',
  `entity_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity ID',
  `value` int(11) DEFAULT NULL COMMENT 'Value',
  PRIMARY KEY (`value_id`),
  UNIQUE KEY `CATALOG_CATEGORY_ENTITY_INT_ENTITY_ID_ATTRIBUTE_ID_STORE_ID` (`entity_id`,`attribute_id`,`store_id`),
  KEY `CATALOG_CATEGORY_ENTITY_INT_ENTITY_ID` (`entity_id`),
  KEY `CATALOG_CATEGORY_ENTITY_INT_ATTRIBUTE_ID` (`attribute_id`),
  KEY `CATALOG_CATEGORY_ENTITY_INT_STORE_ID` (`store_id`)
) ENGINE=InnoDB AUTO_INCREMENT=110 DEFAULT CHARSET=utf8 COMMENT='Catalog Category Integer Attribute Backend Table';

--
-- Dumping data for table `catalog_category_entity_int`
--

LOCK TABLES `catalog_category_entity_int` WRITE;
/*!40000 ALTER TABLE `catalog_category_entity_int` DISABLE KEYS */;
INSERT INTO `catalog_category_entity_int` VALUES ('1',69,0,'1','1'),('4',46,0,'3','1'),('5',54,0,'3','1'),('6',69,0,'3','1'),('7',70,0,'3','0'),('8',71,0,'3','0'),('9',46,0,'4','1'),('10',54,0,'4','1'),('11',69,0,'4','1'),('12',70,0,'4','0'),('13',71,0,'4','0'),('14',46,0,'5','1'),('15',54,0,'5','1'),('16',69,0,'5','1'),('17',70,0,'5','0'),('18',71,0,'5','0'),('19',46,0,'6','1'),('20',54,0,'6','1'),('21',69,0,'6','1'),('22',70,0,'6','0'),('23',71,0,'6','0'),('24',46,0,'7','1'),('25',54,0,'7','1'),('26',69,0,'7','1'),('27',70,0,'7','0'),('28',71,0,'7','0'),('29',46,0,'8','1'),('30',54,0,'8','1'),('31',69,0,'8','1'),('32',70,0,'8','0'),('33',71,0,'8','0'),('34',46,0,'9','1'),('35',54,0,'9','1'),('36',69,0,'9','1'),('37',70,0,'9','0'),('38',71,0,'9','0'),('39',46,0,'10','1'),('40',54,0,'10','1'),('41',69,0,'10','1'),('42',70,0,'10','0'),('43',71,0,'10','0'),('44',46,0,'11','1'),('45',54,0,'11','1'),('46',69,0,'11','1'),('47',70,0,'11','0'),('48',71,0,'11','0'),('49',46,0,'12','1'),('50',54,0,'12','1'),('51',69,0,'12','1'),('52',70,0,'12','0'),('53',71,0,'12','0'),('54',46,0,'13','1'),('55',54,0,'13','1'),('56',69,0,'13','1'),('57',70,0,'13','0'),('58',71,0,'13','0'),('59',46,0,'14','1'),('60',54,0,'14','1'),('61',69,0,'14','1'),('62',70,0,'14','0'),('63',71,0,'14','0'),('64',46,0,'15','1'),('65',54,0,'15','1'),('66',69,0,'15','1'),('67',70,0,'15','0'),('68',71,0,'15','0'),('69',46,0,'16','1'),('70',54,0,'16','1'),('71',69,0,'16','1'),('72',70,0,'16','0'),('73',71,0,'16','0'),('74',46,0,'17','1'),('75',54,0,'17','1'),('76',69,0,'17','1'),('77',70,0,'17','0'),('78',71,0,'17','0'),('79',46,0,'18','1'),('80',54,0,'18','1'),('81',69,0,'18','1'),('82',70,0,'18','0'),('83',71,0,'18','0'),('84',53,0,'3',NULL),('85',46,0,'19','1'),('86',54,0,'19','1'),('87',69,0,'19','1'),('88',70,0,'19','0'),('89',71,0,'19','0'),('90',46,0,'20','1'),('91',54,0,'20','1'),('92',69,0,'20','1'),('93',70,0,'20','0'),('94',71,0,'20','0'),('95',46,0,'21','1'),('96',54,0,'21','1'),('97',69,0,'21','1'),('98',70,0,'21','0'),('99',71,0,'21','0'),('100',46,0,'22','1'),('101',54,0,'22','1'),('102',69,0,'22','1'),('103',70,0,'22','0'),('104',71,0,'22','0'),('105',46,0,'23','1'),('106',54,0,'23','1'),('107',69,0,'23','1'),('108',70,0,'23','0'),('109',71,0,'23','0');
/*!40000 ALTER TABLE `catalog_category_entity_int` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `catalog_category_entity_text`
--

DROP TABLE IF EXISTS `catalog_category_entity_text`;
CREATE TABLE `catalog_category_entity_text` (
  `value_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Value ID',
  `attribute_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Attribute ID',
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Store ID',
  `entity_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity ID',
  `value` text COMMENT 'Value',
  PRIMARY KEY (`value_id`),
  UNIQUE KEY `CATALOG_CATEGORY_ENTITY_TEXT_ENTITY_ID_ATTRIBUTE_ID_STORE_ID` (`entity_id`,`attribute_id`,`store_id`),
  KEY `CATALOG_CATEGORY_ENTITY_TEXT_ENTITY_ID` (`entity_id`),
  KEY `CATALOG_CATEGORY_ENTITY_TEXT_ATTRIBUTE_ID` (`attribute_id`),
  KEY `CATALOG_CATEGORY_ENTITY_TEXT_STORE_ID` (`store_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='Catalog Category Text Attribute Backend Table';

--
-- Dumping data for table `catalog_category_entity_text`
--

LOCK TABLES `catalog_category_entity_text` WRITE;
/*!40000 ALTER TABLE `catalog_category_entity_text` DISABLE KEYS */;
INSERT INTO `catalog_category_entity_text` VALUES ('1',47,0,'3',NULL),('2',50,0,'3',NULL),('3',51,0,'3',NULL),('4',64,0,'3',NULL);
/*!40000 ALTER TABLE `catalog_category_entity_text` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `catalog_category_entity_varchar`
--

DROP TABLE IF EXISTS `catalog_category_entity_varchar`;
CREATE TABLE `catalog_category_entity_varchar` (
  `value_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Value ID',
  `attribute_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Attribute ID',
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Store ID',
  `entity_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity ID',
  `value` varchar(255) DEFAULT NULL COMMENT 'Value',
  PRIMARY KEY (`value_id`),
  UNIQUE KEY `CATALOG_CATEGORY_ENTITY_VARCHAR_ENTITY_ID_ATTRIBUTE_ID_STORE_ID` (`entity_id`,`attribute_id`,`store_id`),
  KEY `CATALOG_CATEGORY_ENTITY_VARCHAR_ENTITY_ID` (`entity_id`),
  KEY `CATALOG_CATEGORY_ENTITY_VARCHAR_ATTRIBUTE_ID` (`attribute_id`),
  KEY `CATALOG_CATEGORY_ENTITY_VARCHAR_STORE_ID` (`store_id`)
) ENGINE=InnoDB AUTO_INCREMENT=89 DEFAULT CHARSET=utf8 COMMENT='Catalog Category Varchar Attribute Backend Table';

--
-- Dumping data for table `catalog_category_entity_varchar`
--

LOCK TABLES `catalog_category_entity_varchar` WRITE;
/*!40000 ALTER TABLE `catalog_category_entity_varchar` DISABLE KEYS */;
INSERT INTO `catalog_category_entity_varchar` VALUES ('1',45,0,'1','Root Catalog'),('4',45,0,'3','Professionnels'),('5',52,0,'3','PRODUCTS'),('6',117,0,'3','professionnels'),('7',45,0,'4','Charpente et collés'),('8',52,0,'4','PRODUCTS'),('9',117,0,'4','charpente-et-colles'),('10',118,0,'4','charpente-et-colles'),('11',45,0,'5','Bois collés'),('12',52,0,'5','PRODUCTS'),('13',117,0,'5','bois-colles'),('14',118,0,'5','charpente-et-colles/bois-colles'),('15',45,0,'6','BLC épicéa'),('16',52,0,'6','PRODUCTS'),('17',117,0,'6','blc-epicea'),('18',118,0,'6','charpente-et-colles/bois-colles/blc-epicea'),('19',45,0,'7','Isolation'),('20',52,0,'7','PRODUCTS'),('21',117,0,'7','isolation'),('22',118,0,'7','isolation'),('23',45,0,'8','Ampack'),('24',52,0,'8','PRODUCTS'),('25',117,0,'8','ampack'),('26',118,0,'8','isolation/ampack'),('27',45,0,'9','Ampacoll'),('28',52,0,'9','PRODUCTS'),('29',117,0,'9','ampacoll'),('30',118,0,'9','isolation/ampack/ampacoll'),('31',45,0,'10','Lames et Listerie'),('32',52,0,'10','PRODUCTS'),('33',117,0,'10','lames-et-listerie'),('34',118,0,'10','lames-et-listerie'),('35',45,0,'11','Mélèze raboté'),('36',52,0,'11','PRODUCTS'),('37',117,0,'11','meleze-rabote'),('38',118,0,'11','lames-et-listerie/meleze-rabote'),('39',45,0,'12','Chanfrein'),('40',52,0,'12','PRODUCTS'),('41',117,0,'12','chanfrein'),('42',118,0,'12','lames-et-listerie/meleze-rabote/chanfrein'),('43',45,0,'13','Panneaux'),('44',52,0,'13','PRODUCTS'),('45',117,0,'13','panneaux'),('46',118,0,'13','panneaux'),('47',45,0,'14','Produits Knauf'),('48',52,0,'14','PRODUCTS'),('49',117,0,'14','produits-knauf'),('50',118,0,'14','panneaux/produits-knauf'),('51',45,0,'15','Vis'),('52',52,0,'15','PRODUCTS'),('53',117,0,'15','vis'),('54',118,0,'15','panneaux/produits-knauf/vis'),('55',45,0,'16','Menuiserie et Avivés'),('56',52,0,'16','PRODUCTS'),('57',117,0,'16','menuiserie-et-avives'),('58',118,0,'16','menuiserie-et-avives'),('59',45,0,'17','Car. fenêtre massif'),('60',52,0,'17','PRODUCTS'),('61',117,0,'17','car-fenetre-massif'),('62',118,0,'17','menuiserie-et-avives/car-fenetre-massif'),('63',45,0,'18','Epicéa guichets'),('64',52,0,'18','PRODUCTS'),('65',117,0,'18','epicea-guichets'),('66',118,0,'18','menuiserie-et-avives/car-fenetre-massif/epicea-guichets'),('67',49,0,'3',NULL),('68',60,0,'3','4'),('69',63,0,'3',NULL),('70',118,0,'3',NULL),('71',45,0,'19','Professionelle'),('72',52,0,'19','PRODUCTS'),('73',117,0,'19','professionelle'),('74',45,0,'20','Isolation'),('75',52,0,'20','PRODUCTS'),('76',117,0,'20','isolation'),('77',118,0,'20','isolation'),('78',45,0,'21','Ampack'),('79',52,0,'21','PRODUCTS'),('80',117,0,'21','ampack'),('81',118,0,'21','isolation/ampack'),('82',45,0,'22','Ampacoll'),('83',52,0,'22','PRODUCTS'),('84',117,0,'22','ampacoll'),('85',118,0,'22','isolation/ampack/ampacoll'),('86',45,0,'23','Inactives'),('87',52,0,'23','PRODUCTS'),('88',117,0,'23','inactives');
/*!40000 ALTER TABLE `catalog_category_entity_varchar` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `catalog_category_product`
--

DROP TABLE IF EXISTS `catalog_category_product`;
CREATE TABLE `catalog_category_product` (
  `entity_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Entity ID',
  `category_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Category ID',
  `product_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Product ID',
  `position` int(11) NOT NULL DEFAULT '0' COMMENT 'Position',
  PRIMARY KEY (`entity_id`,`category_id`,`product_id`),
  UNIQUE KEY `CATALOG_CATEGORY_PRODUCT_CATEGORY_ID_PRODUCT_ID` (`category_id`,`product_id`),
  KEY `CATALOG_CATEGORY_PRODUCT_PRODUCT_ID` (`product_id`)
) ENGINE=InnoDB AUTO_INCREMENT=42 DEFAULT CHARSET=utf8 COMMENT='Catalog Product To Category Linkage Table';

--
-- Dumping data for table `catalog_category_product`
--

LOCK TABLES `catalog_category_product` WRITE;
/*!40000 ALTER TABLE `catalog_category_product` DISABLE KEYS */;
INSERT INTO `catalog_category_product` VALUES ('27','9','27','1'),('28','6','28','1'),('29','18','29','1'),('30','15','30','1'),('31','12','31','1'),('39','9','35','1');
/*!40000 ALTER TABLE `catalog_category_product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `catalog_category_product_index`
--

DROP TABLE IF EXISTS `catalog_category_product_index`;
CREATE TABLE `catalog_category_product_index` (
  `category_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Category ID',
  `product_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Product ID',
  `position` int(11) DEFAULT NULL COMMENT 'Position',
  `is_parent` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Is Parent',
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Store ID',
  `visibility` smallint(5) unsigned NOT NULL COMMENT 'Visibility',
  PRIMARY KEY (`category_id`,`product_id`,`store_id`),
  KEY `CAT_CTGR_PRD_IDX_PRD_ID_STORE_ID_CTGR_ID_VISIBILITY` (`product_id`,`store_id`,`category_id`,`visibility`),
  KEY `CAT_CTGR_PRD_IDX_STORE_ID_CTGR_ID_VISIBILITY_IS_PARENT_POSITION` (`store_id`,`category_id`,`visibility`,`is_parent`,`position`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Category Product Index';

--
-- Dumping data for table `catalog_category_product_index`
--

LOCK TABLES `catalog_category_product_index` WRITE;
/*!40000 ALTER TABLE `catalog_category_product_index` DISABLE KEYS */;
INSERT INTO `catalog_category_product_index` VALUES ('3','27','10001',0,2,4),('3','28','10001',0,2,4),('3','29','10001',0,2,4),('3','30','10001',0,2,4),('3','31','10001',0,2,4),('4','28','10001',0,2,4),('5','28','10001',0,2,4),('6','28','1',1,2,4),('7','27','10001',0,2,4),('8','27','10001',0,2,4),('9','27','1',1,2,4),('10','31','10001',0,2,4),('11','31','10001',0,2,4),('12','31','1',1,2,4),('13','30','10001',0,2,4),('14','30','10001',0,2,4),('15','30','1',1,2,4),('16','29','10001',0,2,4),('17','29','10001',0,2,4),('18','29','1',1,2,4),('3','27','10001',0,3,4),('3','28','10001',0,3,4),('3','29','10001',0,3,4),('3','30','10001',0,3,4),('3','31','10001',0,3,4),('4','28','10001',0,3,4),('5','28','10001',0,3,4),('6','28','1',1,3,4),('7','27','10001',0,3,4),('8','27','10001',0,3,4),('9','27','1',1,3,4),('10','31','10001',0,3,4),('11','31','10001',0,3,4),('12','31','1',1,3,4),('13','30','10001',0,3,4),('14','30','10001',0,3,4),('15','30','1',1,3,4),('16','29','10001',0,3,4),('17','29','10001',0,3,4),('18','29','1',1,3,4);
/*!40000 ALTER TABLE `catalog_category_product_index` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `catalog_category_product_index_tmp`
--

DROP TABLE IF EXISTS `catalog_category_product_index_tmp`;
CREATE TABLE `catalog_category_product_index_tmp` (
  `category_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Category ID',
  `product_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Product ID',
  `position` int(11) NOT NULL DEFAULT '0' COMMENT 'Position',
  `is_parent` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Is Parent',
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Store ID',
  `visibility` smallint(5) unsigned NOT NULL COMMENT 'Visibility',
  KEY `CAT_CTGR_PRD_IDX_TMP_PRD_ID_CTGR_ID_STORE_ID` (`product_id`,`category_id`,`store_id`)
) ENGINE=MEMORY DEFAULT CHARSET=utf8 COMMENT='Catalog Category Product Indexer Temp Table';

--
-- Table structure for table `catalog_compare_item`
--

DROP TABLE IF EXISTS `catalog_compare_item`;
CREATE TABLE `catalog_compare_item` (
  `catalog_compare_item_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Compare Item ID',
  `visitor_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Visitor ID',
  `customer_id` int(10) unsigned DEFAULT NULL COMMENT 'Customer ID',
  `product_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Product ID',
  `store_id` smallint(5) unsigned DEFAULT NULL COMMENT 'Store ID',
  PRIMARY KEY (`catalog_compare_item_id`),
  KEY `CATALOG_COMPARE_ITEM_PRODUCT_ID` (`product_id`),
  KEY `CATALOG_COMPARE_ITEM_VISITOR_ID_PRODUCT_ID` (`visitor_id`,`product_id`),
  KEY `CATALOG_COMPARE_ITEM_CUSTOMER_ID_PRODUCT_ID` (`customer_id`,`product_id`),
  KEY `CATALOG_COMPARE_ITEM_STORE_ID` (`store_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='Catalog Compare Table';

--
-- Table structure for table `catalog_eav_attribute`
--

DROP TABLE IF EXISTS `catalog_eav_attribute`;
CREATE TABLE `catalog_eav_attribute` (
  `attribute_id` smallint(5) unsigned NOT NULL COMMENT 'Attribute ID',
  `frontend_input_renderer` varchar(255) DEFAULT NULL COMMENT 'Frontend Input Renderer',
  `is_global` smallint(5) unsigned NOT NULL DEFAULT '1' COMMENT 'Is Global',
  `is_visible` smallint(5) unsigned NOT NULL DEFAULT '1' COMMENT 'Is Visible',
  `is_searchable` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Is Searchable',
  `is_filterable` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Is Filterable',
  `is_comparable` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Is Comparable',
  `is_visible_on_front` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Is Visible On Front',
  `is_html_allowed_on_front` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Is HTML Allowed On Front',
  `is_used_for_price_rules` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Is Used For Price Rules',
  `is_filterable_in_search` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Is Filterable In Search',
  `used_in_product_listing` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Is Used In Product Listing',
  `used_for_sort_by` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Is Used For Sorting',
  `apply_to` varchar(255) DEFAULT NULL COMMENT 'Apply To',
  `is_visible_in_advanced_search` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Is Visible In Advanced Search',
  `position` int(11) NOT NULL DEFAULT '0' COMMENT 'Position',
  `is_wysiwyg_enabled` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Is WYSIWYG Enabled',
  `is_used_for_promo_rules` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Is Used For Promo Rules',
  `is_required_in_admin_store` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Is Required In Admin Store',
  `is_used_in_grid` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Is Used in Grid',
  `is_visible_in_grid` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Is Visible in Grid',
  `is_filterable_in_grid` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Is Filterable in Grid',
  `search_weight` float NOT NULL DEFAULT '1' COMMENT 'Search Weight',
  `additional_data` text COMMENT 'Additional swatch attributes data',
  PRIMARY KEY (`attribute_id`),
  KEY `CATALOG_EAV_ATTRIBUTE_USED_FOR_SORT_BY` (`used_for_sort_by`),
  KEY `CATALOG_EAV_ATTRIBUTE_USED_IN_PRODUCT_LISTING` (`used_in_product_listing`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog EAV Attribute Table';

--
-- Dumping data for table `catalog_eav_attribute`
--

LOCK TABLES `catalog_eav_attribute` WRITE;
/*!40000 ALTER TABLE `catalog_eav_attribute` DISABLE KEYS */;
INSERT INTO `catalog_eav_attribute` VALUES (45,NULL,0,1,0,0,0,0,0,0,0,0,0,NULL,0,'0',0,0,0,0,0,0,'1',NULL),(46,NULL,0,1,0,0,0,0,0,0,0,0,0,NULL,0,'0',0,0,0,0,0,0,'1',NULL),(47,NULL,0,1,0,0,0,0,1,0,0,0,0,NULL,0,'0',1,0,0,0,0,0,'1',NULL),(48,NULL,0,1,0,0,0,0,0,0,0,0,0,NULL,0,'0',0,0,0,0,0,0,'1',NULL),(49,NULL,0,1,0,0,0,0,0,0,0,0,0,NULL,0,'0',0,0,0,0,0,0,'1',NULL),(50,NULL,0,1,0,0,0,0,0,0,0,0,0,NULL,0,'0',0,0,0,0,0,0,'1',NULL),(51,NULL,0,1,0,0,0,0,0,0,0,0,0,NULL,0,'0',0,0,0,0,0,0,'1',NULL),(52,NULL,0,1,0,0,0,0,0,0,0,0,0,NULL,0,'0',0,0,0,0,0,0,'1',NULL),(53,NULL,0,1,0,0,0,0,0,0,0,0,0,NULL,0,'0',0,0,0,0,0,0,'1',NULL),(54,NULL,1,1,0,0,0,0,0,0,0,0,0,NULL,0,'0',0,0,0,0,0,0,'1',NULL),(55,NULL,1,0,0,0,0,0,0,0,0,0,0,NULL,0,'0',0,0,0,0,0,0,'1',NULL),(56,NULL,1,0,0,0,0,0,0,0,0,0,0,NULL,0,'0',0,0,0,0,0,0,'1',NULL),(57,NULL,1,0,0,0,0,0,0,0,0,0,0,NULL,0,'0',0,0,0,0,0,0,'1',NULL),(58,NULL,1,0,0,0,0,0,0,0,0,0,0,NULL,0,'0',0,0,0,0,0,0,'1',NULL),(59,NULL,1,0,0,0,0,0,0,0,0,0,0,NULL,0,'0',0,0,0,0,0,0,'1',NULL),(60,NULL,0,1,0,0,0,0,0,0,0,0,0,NULL,0,'0',0,0,0,0,0,0,'1',NULL),(61,NULL,0,1,0,0,0,0,0,0,0,0,0,NULL,0,'0',0,0,0,0,0,0,'1',NULL),(62,NULL,0,1,0,0,0,0,0,0,0,0,0,NULL,0,'0',0,0,0,0,0,0,'1',NULL),(63,NULL,0,1,0,0,0,0,0,0,0,0,0,NULL,0,'0',0,0,0,0,0,0,'1',NULL),(64,NULL,0,1,0,0,0,0,0,0,0,0,0,NULL,0,'0',0,0,0,0,0,0,'1',NULL),(65,NULL,1,0,0,0,0,0,0,0,0,0,0,NULL,0,'0',0,0,0,0,0,0,'1',NULL),(66,NULL,1,0,0,0,0,0,0,0,0,0,0,NULL,0,'0',0,0,0,0,0,0,'1',NULL),(67,'Magento\\Catalog\\Block\\Adminhtml\\Category\\Helper\\Sortby\\Available',0,1,0,0,0,0,0,0,0,0,0,NULL,0,'0',0,0,0,0,0,0,'1',NULL),(68,'Magento\\Catalog\\Block\\Adminhtml\\Category\\Helper\\Sortby\\DefaultSortby',0,1,0,0,0,0,0,0,0,0,0,NULL,0,'0',0,0,0,0,0,0,'1',NULL),(69,NULL,0,1,0,0,0,0,0,0,0,0,0,NULL,0,'0',0,0,0,0,0,0,'1',NULL),(70,NULL,0,1,0,0,0,0,0,0,0,0,0,NULL,0,'0',0,0,0,0,0,0,'1',NULL),(71,NULL,0,1,0,0,0,0,0,0,0,0,0,NULL,0,'0',0,0,0,0,0,0,'1',NULL),(72,'Magento\\Catalog\\Block\\Adminhtml\\Category\\Helper\\Pricestep',0,1,0,0,0,0,0,0,0,0,0,NULL,0,'0',0,0,0,0,0,0,'1',NULL),(73,NULL,0,1,1,0,0,0,0,0,0,1,1,NULL,1,'0',0,0,0,0,0,0,'5',NULL),(74,NULL,1,1,1,0,1,0,0,0,0,0,0,NULL,1,'0',0,0,0,0,0,0,'6',NULL),(75,NULL,0,1,1,0,1,0,1,0,0,0,0,NULL,1,'0',1,0,0,0,0,0,'1',NULL),(76,NULL,0,1,1,0,1,0,1,0,0,1,0,NULL,1,'0',1,0,0,1,0,0,'1',NULL),(77,NULL,1,1,1,1,0,0,0,0,0,1,1,'simple,virtual,bundle,downloadable,configurable',1,'0',0,0,0,0,0,0,'1',NULL),(78,NULL,1,1,0,0,0,0,0,0,0,1,0,'simple,virtual,bundle,downloadable,configurable',0,'0',0,0,0,1,0,1,'1',NULL),(79,NULL,2,1,0,0,0,0,0,0,0,1,0,'simple,virtual,bundle,downloadable,configurable',0,'0',0,0,0,1,0,0,'1',NULL),(80,NULL,2,1,0,0,0,0,0,0,0,1,0,'simple,virtual,bundle,downloadable,configurable',0,'0',0,0,0,1,0,0,'1',NULL),(81,NULL,1,1,0,0,0,0,0,0,0,0,0,'simple,virtual,downloadable',0,'0',0,0,0,1,0,1,'1',NULL),(82,'Magento\\Catalog\\Block\\Adminhtml\\Product\\Helper\\Form\\Weight',1,1,0,0,0,0,0,0,0,0,0,'simple,virtual,bundle,downloadable,configurable',0,'0',0,0,0,1,0,1,'1',NULL),(83,NULL,1,1,1,1,1,0,0,0,0,0,0,'simple',1,'0',0,0,0,1,0,1,'1',NULL),(84,NULL,0,1,0,0,0,0,0,0,0,0,0,NULL,0,'0',0,0,0,1,0,1,'1',NULL),(85,NULL,0,1,0,0,0,0,0,0,0,0,0,NULL,0,'0',0,0,0,1,0,1,'1',NULL),(86,NULL,0,1,0,0,0,0,0,0,0,0,0,NULL,0,'0',0,0,0,1,0,1,'1',NULL),(87,NULL,0,1,0,0,0,0,0,0,0,1,0,NULL,0,'0',0,0,0,0,0,0,'1',NULL),(88,NULL,0,1,0,0,0,0,0,0,0,1,0,NULL,0,'0',0,0,0,0,0,0,'1',NULL),(89,NULL,0,1,0,0,0,0,0,0,0,1,0,NULL,0,'0',0,0,0,0,0,0,'1',NULL),(90,NULL,1,1,0,0,0,0,0,0,0,0,0,NULL,0,'0',0,0,0,0,0,0,'1',NULL),(91,NULL,1,0,0,0,0,0,0,0,0,0,0,NULL,0,'0',0,0,0,0,0,0,'1',NULL),(92,NULL,2,1,0,0,0,0,0,0,0,0,0,'simple,virtual,bundle,downloadable,configurable',0,'0',0,0,0,0,0,0,'1',NULL),(93,NULL,1,1,1,1,1,0,0,0,0,0,0,'simple,virtual,configurable',1,'0',0,0,0,1,0,1,'1',NULL),(94,NULL,2,1,0,0,0,0,0,0,0,1,0,NULL,0,'0',0,0,0,1,0,0,'1',NULL),(95,NULL,2,1,0,0,0,0,0,0,0,1,0,NULL,0,'0',0,0,0,1,0,0,'1',NULL),(96,NULL,1,1,0,0,0,0,0,0,0,0,0,NULL,0,'0',0,0,0,0,0,0,'1',NULL),(97,'Magento\\Framework\\Data\\Form\\Element\\Hidden',2,1,1,0,0,0,0,0,0,1,0,NULL,0,'0',0,0,1,0,0,0,'1',NULL),(98,NULL,1,0,0,0,0,0,0,0,0,0,0,'simple,virtual,bundle,downloadable,configurable',0,'0',0,0,0,0,0,0,'1',NULL),(99,NULL,0,1,0,0,0,0,0,0,0,0,0,NULL,0,'0',0,0,1,0,0,0,'1',NULL),(100,NULL,0,1,0,0,0,0,0,0,0,0,0,NULL,0,'0',0,0,0,1,0,1,'1',NULL),(101,NULL,0,1,0,0,0,0,0,0,0,0,0,NULL,0,'0',0,0,0,1,0,0,'1',NULL),(102,NULL,0,1,0,0,0,0,0,0,0,0,0,NULL,0,'0',0,0,0,1,0,0,'1',NULL),(103,NULL,0,1,0,0,0,0,0,0,0,0,0,NULL,0,'0',0,0,0,0,0,0,'1',NULL),(104,NULL,0,1,0,0,0,0,0,0,0,0,0,NULL,0,'0',0,0,0,1,0,0,'1',NULL),(105,'Magento\\Catalog\\Block\\Adminhtml\\Product\\Helper\\Form\\Category',1,1,0,0,0,0,0,0,0,0,0,NULL,0,'0',0,0,0,0,0,0,'1',NULL),(106,NULL,0,1,0,0,0,0,0,0,0,0,0,NULL,0,'0',0,0,0,0,0,0,'1',NULL),(107,NULL,1,0,0,0,0,0,0,0,0,1,0,NULL,0,'0',0,0,0,0,0,0,'1',NULL),(108,NULL,1,0,0,0,0,0,0,0,0,0,0,NULL,0,'0',0,0,0,0,0,0,'1',NULL),(109,NULL,0,0,0,0,0,0,0,0,0,1,0,NULL,0,'0',0,0,0,0,0,0,'1',NULL),(110,NULL,0,0,0,0,0,0,0,0,0,1,0,NULL,0,'0',0,0,0,0,0,0,'1',NULL),(111,NULL,0,0,0,0,0,0,0,0,0,1,0,NULL,0,'0',0,0,0,0,0,0,'1',NULL),(112,NULL,1,0,0,0,0,0,0,0,0,0,0,NULL,0,'0',0,0,0,0,0,0,'1',NULL),(113,NULL,1,0,0,0,0,0,0,0,0,0,0,NULL,0,'0',0,0,0,0,0,0,'1',NULL),(114,NULL,2,1,0,0,0,0,0,0,0,0,0,'simple,bundle,grouped,configurable',0,'0',0,0,0,1,0,1,'1',NULL),(115,'Magento\\CatalogInventory\\Block\\Adminhtml\\Form\\Field\\Stock',1,1,0,0,0,0,0,0,0,0,0,NULL,0,'0',0,0,0,0,0,0,'1',NULL),(116,NULL,0,1,0,0,0,0,0,0,0,0,0,NULL,0,'0',0,0,0,1,0,0,'1',NULL),(117,NULL,0,1,0,0,0,0,0,0,0,0,0,NULL,0,'0',0,0,0,0,0,0,'1',NULL),(118,NULL,0,0,0,0,0,0,0,0,0,0,0,NULL,0,'0',0,0,0,0,0,0,'1',NULL),(119,NULL,0,1,0,0,0,0,0,0,0,1,0,NULL,0,'0',0,0,0,1,0,1,'1',NULL),(120,NULL,0,0,0,0,0,0,0,0,0,0,0,NULL,0,'0',0,0,0,0,0,0,'1',NULL),(121,'Magento\\Msrp\\Block\\Adminhtml\\Product\\Helper\\Form\\Type',1,1,0,0,0,0,0,0,0,1,0,'simple,virtual,downloadable,bundle,configurable',0,'0',0,0,0,1,0,1,'1',NULL),(122,'Magento\\Msrp\\Block\\Adminhtml\\Product\\Helper\\Form\\Type\\Price',2,1,0,0,0,0,0,0,0,1,0,'simple,virtual,downloadable,bundle,configurable',0,'0',0,0,0,0,0,0,'1',NULL),(123,NULL,1,1,0,0,0,0,0,0,0,1,0,'bundle',0,'0',0,0,0,0,0,0,'1',NULL),(124,NULL,1,1,0,0,0,0,0,0,0,0,0,'bundle',0,'0',0,0,0,0,0,0,'1',NULL),(125,NULL,1,1,0,0,0,0,0,0,0,1,0,'bundle',0,'0',0,0,0,0,0,0,'1',NULL),(126,NULL,1,1,0,0,0,0,0,0,0,1,0,'bundle',0,'0',0,0,0,0,0,0,'1',NULL),(127,NULL,1,1,0,0,0,0,0,0,0,1,0,'bundle',0,'0',0,0,0,0,0,0,'1',NULL),(128,NULL,1,0,0,0,0,0,0,0,0,1,0,'downloadable',0,'0',0,0,0,0,0,0,'1',NULL),(129,NULL,0,0,0,0,0,0,0,0,0,0,0,'downloadable',0,'0',0,0,0,0,0,0,'1',NULL),(130,NULL,0,0,0,0,0,0,0,0,0,0,0,'downloadable',0,'0',0,0,0,0,0,0,'1',NULL),(131,NULL,1,0,0,0,0,0,0,0,0,1,0,'downloadable',0,'0',0,0,0,0,0,0,'1',NULL),(132,NULL,0,1,0,0,0,0,0,0,0,1,0,NULL,0,'0',0,0,0,0,0,0,'1',NULL),(133,NULL,2,1,1,0,0,0,0,0,0,1,0,'simple,virtual,bundle,downloadable,configurable',0,'0',0,0,0,1,0,1,'1',NULL),(134,'Magento\\GiftMessage\\Block\\Adminhtml\\Product\\Helper\\Form\\Config',1,1,0,0,0,0,0,0,0,0,0,NULL,0,'0',0,0,0,1,0,0,'1',NULL),(136,NULL,0,1,0,0,0,0,1,0,0,0,0,NULL,0,'0',0,0,0,1,1,1,'1',NULL);
/*!40000 ALTER TABLE `catalog_eav_attribute` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `catalog_product_bundle_option`
--

DROP TABLE IF EXISTS `catalog_product_bundle_option`;
CREATE TABLE `catalog_product_bundle_option` (
  `option_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Option Id',
  `parent_id` int(10) unsigned NOT NULL COMMENT 'Parent Id',
  `required` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Required',
  `position` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Position',
  `type` varchar(255) DEFAULT NULL COMMENT 'Type',
  PRIMARY KEY (`option_id`),
  KEY `CATALOG_PRODUCT_BUNDLE_OPTION_PARENT_ID` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product Bundle Option';

--
-- Table structure for table `catalog_product_bundle_option_value`
--

DROP TABLE IF EXISTS `catalog_product_bundle_option_value`;
CREATE TABLE `catalog_product_bundle_option_value` (
  `value_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Value Id',
  `option_id` int(10) unsigned NOT NULL COMMENT 'Option Id',
  `store_id` smallint(5) unsigned NOT NULL COMMENT 'Store Id',
  `title` varchar(255) DEFAULT NULL COMMENT 'Title',
  PRIMARY KEY (`value_id`),
  UNIQUE KEY `CATALOG_PRODUCT_BUNDLE_OPTION_VALUE_OPTION_ID_STORE_ID` (`option_id`,`store_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product Bundle Option Value';

--
-- Table structure for table `catalog_product_bundle_price_index`
--

DROP TABLE IF EXISTS `catalog_product_bundle_price_index`;
CREATE TABLE `catalog_product_bundle_price_index` (
  `entity_id` int(10) unsigned NOT NULL COMMENT 'Entity Id',
  `website_id` smallint(5) unsigned NOT NULL COMMENT 'Website Id',
  `customer_group_id` smallint(5) unsigned NOT NULL COMMENT 'Customer Group Id',
  `min_price` decimal(12,4) NOT NULL COMMENT 'Min Price',
  `max_price` decimal(12,4) NOT NULL COMMENT 'Max Price',
  PRIMARY KEY (`entity_id`,`website_id`,`customer_group_id`),
  KEY `CATALOG_PRODUCT_BUNDLE_PRICE_INDEX_WEBSITE_ID` (`website_id`),
  KEY `CATALOG_PRODUCT_BUNDLE_PRICE_INDEX_CUSTOMER_GROUP_ID` (`customer_group_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product Bundle Price Index';

--
-- Table structure for table `catalog_product_bundle_selection`
--

DROP TABLE IF EXISTS `catalog_product_bundle_selection`;
CREATE TABLE `catalog_product_bundle_selection` (
  `selection_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Selection Id',
  `option_id` int(10) unsigned NOT NULL COMMENT 'Option Id',
  `parent_product_id` int(10) unsigned NOT NULL COMMENT 'Parent Product Id',
  `product_id` int(10) unsigned NOT NULL COMMENT 'Product Id',
  `position` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Position',
  `is_default` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Is Default',
  `selection_price_type` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Selection Price Type',
  `selection_price_value` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Selection Price Value',
  `selection_qty` decimal(12,4) DEFAULT NULL COMMENT 'Selection Qty',
  `selection_can_change_qty` smallint(6) NOT NULL DEFAULT '0' COMMENT 'Selection Can Change Qty',
  PRIMARY KEY (`selection_id`),
  KEY `CATALOG_PRODUCT_BUNDLE_SELECTION_OPTION_ID` (`option_id`),
  KEY `CATALOG_PRODUCT_BUNDLE_SELECTION_PRODUCT_ID` (`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product Bundle Selection';

--
-- Table structure for table `catalog_product_bundle_selection_price`
--

DROP TABLE IF EXISTS `catalog_product_bundle_selection_price`;
CREATE TABLE `catalog_product_bundle_selection_price` (
  `selection_id` int(10) unsigned NOT NULL COMMENT 'Selection Id',
  `website_id` smallint(5) unsigned NOT NULL COMMENT 'Website Id',
  `selection_price_type` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Selection Price Type',
  `selection_price_value` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Selection Price Value',
  PRIMARY KEY (`selection_id`,`website_id`),
  KEY `CATALOG_PRODUCT_BUNDLE_SELECTION_PRICE_WEBSITE_ID` (`website_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product Bundle Selection Price';

--
-- Table structure for table `catalog_product_bundle_stock_index`
--

DROP TABLE IF EXISTS `catalog_product_bundle_stock_index`;
CREATE TABLE `catalog_product_bundle_stock_index` (
  `entity_id` int(10) unsigned NOT NULL COMMENT 'Entity Id',
  `website_id` smallint(5) unsigned NOT NULL COMMENT 'Website Id',
  `stock_id` smallint(5) unsigned NOT NULL COMMENT 'Stock Id',
  `option_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Option Id',
  `stock_status` smallint(6) DEFAULT '0' COMMENT 'Stock Status',
  PRIMARY KEY (`entity_id`,`website_id`,`stock_id`,`option_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product Bundle Stock Index';

--
-- Table structure for table `catalog_product_entity`
--

DROP TABLE IF EXISTS `catalog_product_entity`;
CREATE TABLE `catalog_product_entity` (
  `entity_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Entity ID',
  `attribute_set_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Attribute Set ID',
  `type_id` varchar(32) NOT NULL DEFAULT 'simple' COMMENT 'Type ID',
  `sku` varchar(64) DEFAULT NULL COMMENT 'SKU',
  `has_options` smallint(6) NOT NULL DEFAULT '0' COMMENT 'Has Options',
  `required_options` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Required Options',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Creation Time',
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Update Time',
  PRIMARY KEY (`entity_id`),
  KEY `CATALOG_PRODUCT_ENTITY_ATTRIBUTE_SET_ID` (`attribute_set_id`),
  KEY `CATALOG_PRODUCT_ENTITY_SKU` (`sku`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8 COMMENT='Catalog Product Table';

--
-- Dumping data for table `catalog_product_entity`
--

LOCK TABLES `catalog_product_entity` WRITE;
/*!40000 ALTER TABLE `catalog_product_entity` DISABLE KEYS */;
INSERT INTO `catalog_product_entity` VALUES ('27',4,'simple','3865',1,1,'2017-10-04 15:11:19','2017-10-04 15:48:03'),('28',4,'simple','4680',1,1,'2017-10-04 15:11:19','2017-10-04 15:48:03'),('29',4,'simple','4942',1,1,'2017-10-04 15:45:02','2017-10-04 15:48:45'),('30',4,'simple','3814',1,0,'2017-10-04 15:45:03','2017-10-04 15:48:45'),('31',4,'simple','4308',1,1,'2017-10-04 15:45:03','2017-10-04 15:48:54'),('35',4,'simple','9999',1,1,'2017-10-09 07:14:26','2017-10-09 13:31:34');
/*!40000 ALTER TABLE `catalog_product_entity` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `catalog_product_entity_datetime`
--

DROP TABLE IF EXISTS `catalog_product_entity_datetime`;
CREATE TABLE `catalog_product_entity_datetime` (
  `value_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Value ID',
  `attribute_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Attribute ID',
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Store ID',
  `entity_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity ID',
  `value` datetime DEFAULT NULL COMMENT 'Value',
  PRIMARY KEY (`value_id`),
  UNIQUE KEY `CATALOG_PRODUCT_ENTITY_DATETIME_ENTITY_ID_ATTRIBUTE_ID_STORE_ID` (`entity_id`,`attribute_id`,`store_id`),
  KEY `CATALOG_PRODUCT_ENTITY_DATETIME_ATTRIBUTE_ID` (`attribute_id`),
  KEY `CATALOG_PRODUCT_ENTITY_DATETIME_STORE_ID` (`store_id`)
) ENGINE=InnoDB AUTO_INCREMENT=139 DEFAULT CHARSET=utf8 COMMENT='Catalog Product Datetime Attribute Backend Table';

--
-- Dumping data for table `catalog_product_entity_datetime`
--

LOCK TABLES `catalog_product_entity_datetime` WRITE;
/*!40000 ALTER TABLE `catalog_product_entity_datetime` DISABLE KEYS */;
INSERT INTO `catalog_product_entity_datetime` VALUES ('133',79,0,'35',NULL),('134',80,0,'35',NULL),('135',94,0,'35',NULL),('136',95,0,'35',NULL),('137',101,0,'35',NULL),('138',102,0,'35',NULL);
/*!40000 ALTER TABLE `catalog_product_entity_datetime` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `catalog_product_entity_decimal`
--

DROP TABLE IF EXISTS `catalog_product_entity_decimal`;
CREATE TABLE `catalog_product_entity_decimal` (
  `value_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Value ID',
  `attribute_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Attribute ID',
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Store ID',
  `entity_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity ID',
  `value` decimal(12,4) DEFAULT NULL COMMENT 'Value',
  PRIMARY KEY (`value_id`),
  UNIQUE KEY `CATALOG_PRODUCT_ENTITY_DECIMAL_ENTITY_ID_ATTRIBUTE_ID_STORE_ID` (`entity_id`,`attribute_id`,`store_id`),
  KEY `CATALOG_PRODUCT_ENTITY_DECIMAL_STORE_ID` (`store_id`),
  KEY `CATALOG_PRODUCT_ENTITY_DECIMAL_ATTRIBUTE_ID` (`attribute_id`)
) ENGINE=InnoDB AUTO_INCREMENT=132 DEFAULT CHARSET=utf8 COMMENT='Catalog Product Decimal Attribute Backend Table';

--
-- Dumping data for table `catalog_product_entity_decimal`
--

LOCK TABLES `catalog_product_entity_decimal` WRITE;
/*!40000 ALTER TABLE `catalog_product_entity_decimal` DISABLE KEYS */;
INSERT INTO `catalog_product_entity_decimal` VALUES ('89',77,0,'27','5.9000'),('90',77,0,'28','820.0000'),('91',77,0,'29','15.7500'),('92',77,0,'30','34.0000'),('93',77,0,'31','35.0000'),('126',77,0,'35','150.0000'),('127',78,0,'35',NULL),('128',81,0,'35',NULL),('129',82,0,'35',NULL);
/*!40000 ALTER TABLE `catalog_product_entity_decimal` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `catalog_product_entity_gallery`
--

DROP TABLE IF EXISTS `catalog_product_entity_gallery`;
CREATE TABLE `catalog_product_entity_gallery` (
  `value_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Value ID',
  `attribute_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Attribute ID',
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Store ID',
  `entity_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity ID',
  `position` int(11) NOT NULL DEFAULT '0' COMMENT 'Position',
  `value` varchar(255) DEFAULT NULL COMMENT 'Value',
  PRIMARY KEY (`value_id`),
  UNIQUE KEY `CATALOG_PRODUCT_ENTITY_GALLERY_ENTITY_ID_ATTRIBUTE_ID_STORE_ID` (`entity_id`,`attribute_id`,`store_id`),
  KEY `CATALOG_PRODUCT_ENTITY_GALLERY_ENTITY_ID` (`entity_id`),
  KEY `CATALOG_PRODUCT_ENTITY_GALLERY_ATTRIBUTE_ID` (`attribute_id`),
  KEY `CATALOG_PRODUCT_ENTITY_GALLERY_STORE_ID` (`store_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product Gallery Attribute Backend Table';

--
-- Table structure for table `catalog_product_entity_int`
--

DROP TABLE IF EXISTS `catalog_product_entity_int`;
CREATE TABLE `catalog_product_entity_int` (
  `value_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Value ID',
  `attribute_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Attribute ID',
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Store ID',
  `entity_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity ID',
  `value` int(11) DEFAULT NULL COMMENT 'Value',
  PRIMARY KEY (`value_id`),
  UNIQUE KEY `CATALOG_PRODUCT_ENTITY_INT_ENTITY_ID_ATTRIBUTE_ID_STORE_ID` (`entity_id`,`attribute_id`,`store_id`),
  KEY `CATALOG_PRODUCT_ENTITY_INT_ATTRIBUTE_ID` (`attribute_id`),
  KEY `CATALOG_PRODUCT_ENTITY_INT_STORE_ID` (`store_id`)
) ENGINE=InnoDB AUTO_INCREMENT=282 DEFAULT CHARSET=utf8 COMMENT='Catalog Product Integer Attribute Backend Table';

--
-- Dumping data for table `catalog_product_entity_int`
--

LOCK TABLES `catalog_product_entity_int` WRITE;
/*!40000 ALTER TABLE `catalog_product_entity_int` DISABLE KEYS */;
INSERT INTO `catalog_product_entity_int` VALUES ('186',97,0,'27','1'),('187',99,0,'27','4'),('188',115,0,'27','1'),('189',133,0,'27','4'),('190',97,0,'28','1'),('191',99,0,'28','4'),('192',115,0,'28','1'),('193',133,0,'28','4'),('194',97,0,'29','1'),('195',99,0,'29','4'),('196',115,0,'29','1'),('197',133,0,'29','4'),('198',97,0,'30','1'),('199',99,0,'30','4'),('200',115,0,'30','1'),('201',133,0,'30','4'),('202',97,0,'31','1'),('203',99,0,'31','4'),('204',115,0,'31','1'),('205',133,0,'31','4'),('264',97,0,'35','1'),('265',99,0,'35','4'),('266',115,0,'35','1'),('267',133,0,'35','2'),('277',97,3,'35','2'),('278',97,2,'35','2'),('279',99,2,'35','4'),('280',133,3,'35','4'),('281',133,2,'35','4');
/*!40000 ALTER TABLE `catalog_product_entity_int` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `catalog_product_entity_media_gallery`
--

DROP TABLE IF EXISTS `catalog_product_entity_media_gallery`;
CREATE TABLE `catalog_product_entity_media_gallery` (
  `value_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Value ID',
  `attribute_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Attribute ID',
  `value` varchar(255) DEFAULT NULL COMMENT 'Value',
  `media_type` varchar(32) NOT NULL DEFAULT 'image' COMMENT 'Media entry type',
  `disabled` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Visibility status',
  PRIMARY KEY (`value_id`),
  KEY `CATALOG_PRODUCT_ENTITY_MEDIA_GALLERY_ATTRIBUTE_ID` (`attribute_id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8 COMMENT='Catalog Product Media Gallery Attribute Backend Table';

--
-- Dumping data for table `catalog_product_entity_media_gallery`
--

LOCK TABLES `catalog_product_entity_media_gallery` WRITE;
/*!40000 ALTER TABLE `catalog_product_entity_media_gallery` DISABLE KEYS */;
INSERT INTO `catalog_product_entity_media_gallery` VALUES ('1',90,'/l/a/lames_meleze_chanfreinees.jpg','image',0),('2',90,'/c/a/carrelets-de_-fenetre-epi-0.jpg','image',0),('3',90,'/c/a/carrelets-de_-fenetre-epi-0.jpg','image',0),('4',90,'/c/a/carrelets-de_-fenetre-epi-0.jpg','image',0),('5',90,'/c/a/carrelets-de_-fenetre-epi-0.jpg','image',0),('6',90,'/l/a/lames_meleze_chanfreinees.jpg','image',0),('7',90,'/l/a/lames_meleze_chanfreinees.jpg','image',0),('8',90,'/l/a/lames_meleze_chanfreinees.jpg','image',0),('9',90,'/c/a/carrelets-de_-fenetre-epi-0.jpg','image',0),('10',90,'/l/a/lames_meleze_chanfreinees.jpg','image',0),('11',90,'/c/a/carrelets-de_-fenetre-epi-0.jpg','image',0),('12',90,'/v/i/vis_knauf.png','image',0),('13',90,'/a/m/ampatop_25.png','image',0),('14',90,'/b/l/blc_lamellix.jpg','image',0),('15',90,'/l/a/lames_meleze_chanfreinees.jpg','image',0),('16',90,'/c/a/carrelets-de_-fenetre-epi-0.jpg','image',0),('17',90,'/l/a/lames_meleze_chanfreinees.jpg','image',0),('18',90,'/c/a/carrelets-de_-fenetre-epi-0.jpg','image',0),('19',90,'/c/a/carrelets-de_-fenetre-epi-0.jpg','image',0),('20',90,'/l/a/lames_meleze_chanfreinees.jpg','image',0),('21',90,'/v/i/vis_knauf.png','image',0),('22',90,'/v/i/vis_knauf.png','image',0),('23',90,'/a/m/ampatop_25.png','image',0),('24',90,'/b/l/blc_lamellix.jpg','image',0),('25',90,'/b/l/blc_lamellix.jpg','image',0),('26',90,'/a/m/ampatop_25.png','image',0),('27',90,'/b/l/blc_lamellix.jpg','image',0),('28',90,'/c/a/carrelets-de_-fenetre-epi-0.jpg','image',0),('29',90,'/v/i/vis_knauf.png','image',0),('30',90,'/l/a/lames_meleze_chanfreinees.jpg','image',0);
/*!40000 ALTER TABLE `catalog_product_entity_media_gallery` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `catalog_product_entity_media_gallery_value`
--

DROP TABLE IF EXISTS `catalog_product_entity_media_gallery_value`;
CREATE TABLE `catalog_product_entity_media_gallery_value` (
  `value_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Value ID',
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Store ID',
  `entity_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity ID',
  `label` varchar(255) DEFAULT NULL COMMENT 'Label',
  `position` int(10) unsigned DEFAULT NULL COMMENT 'Position',
  `disabled` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Is Disabled',
  `record_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Record Id',
  PRIMARY KEY (`record_id`),
  KEY `CATALOG_PRODUCT_ENTITY_MEDIA_GALLERY_VALUE_STORE_ID` (`store_id`),
  KEY `CATALOG_PRODUCT_ENTITY_MEDIA_GALLERY_VALUE_ENTITY_ID` (`entity_id`),
  KEY `CATALOG_PRODUCT_ENTITY_MEDIA_GALLERY_VALUE_VALUE_ID` (`value_id`)
) ENGINE=InnoDB AUTO_INCREMENT=82 DEFAULT CHARSET=utf8 COMMENT='Catalog Product Media Gallery Attribute Value Table';

--
-- Dumping data for table `catalog_product_entity_media_gallery_value`
--

LOCK TABLES `catalog_product_entity_media_gallery_value` WRITE;
/*!40000 ALTER TABLE `catalog_product_entity_media_gallery_value` DISABLE KEYS */;
INSERT INTO `catalog_product_entity_media_gallery_value` VALUES ('26',0,'27','','1',0,'77'),('27',0,'28','','1',0,'78'),('28',0,'29','','1',0,'79'),('29',0,'30','','1',0,'80'),('30',0,'31','','1',0,'81');
/*!40000 ALTER TABLE `catalog_product_entity_media_gallery_value` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `catalog_product_entity_media_gallery_value_to_entity`
--

DROP TABLE IF EXISTS `catalog_product_entity_media_gallery_value_to_entity`;
CREATE TABLE `catalog_product_entity_media_gallery_value_to_entity` (
  `value_id` int(10) unsigned NOT NULL COMMENT 'Value media Entry ID',
  `entity_id` int(10) unsigned NOT NULL COMMENT 'Product entity ID',
  UNIQUE KEY `CAT_PRD_ENTT_MDA_GLR_VAL_TO_ENTT_VAL_ID_ENTT_ID` (`value_id`,`entity_id`),
  KEY `CAT_PRD_ENTT_MDA_GLR_VAL_TO_ENTT_ENTT_ID_CAT_PRD_ENTT_ENTT_ID` (`entity_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Link Media value to Product entity table';

--
-- Dumping data for table `catalog_product_entity_media_gallery_value_to_entity`
--

LOCK TABLES `catalog_product_entity_media_gallery_value_to_entity` WRITE;
/*!40000 ALTER TABLE `catalog_product_entity_media_gallery_value_to_entity` DISABLE KEYS */;
INSERT INTO `catalog_product_entity_media_gallery_value_to_entity` VALUES ('26','27'),('27','28'),('28','29'),('29','30'),('30','31');
/*!40000 ALTER TABLE `catalog_product_entity_media_gallery_value_to_entity` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `catalog_product_entity_media_gallery_value_video`
--

DROP TABLE IF EXISTS `catalog_product_entity_media_gallery_value_video`;
CREATE TABLE `catalog_product_entity_media_gallery_value_video` (
  `value_id` int(10) unsigned NOT NULL COMMENT 'Media Entity ID',
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Store ID',
  `provider` varchar(32) DEFAULT NULL COMMENT 'Video provider ID',
  `url` text COMMENT 'Video URL',
  `title` varchar(255) DEFAULT NULL COMMENT 'Title',
  `description` text COMMENT 'Page Meta Description',
  `metadata` text COMMENT 'Video meta data',
  UNIQUE KEY `CAT_PRD_ENTT_MDA_GLR_VAL_VIDEO_VAL_ID_STORE_ID` (`value_id`,`store_id`),
  KEY `CAT_PRD_ENTT_MDA_GLR_VAL_VIDEO_STORE_ID_STORE_STORE_ID` (`store_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product Video Table';

--
-- Table structure for table `catalog_product_entity_text`
--

DROP TABLE IF EXISTS `catalog_product_entity_text`;
CREATE TABLE `catalog_product_entity_text` (
  `value_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Value ID',
  `attribute_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Attribute ID',
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Store ID',
  `entity_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity ID',
  `value` text COMMENT 'Value',
  PRIMARY KEY (`value_id`),
  UNIQUE KEY `CATALOG_PRODUCT_ENTITY_TEXT_ENTITY_ID_ATTRIBUTE_ID_STORE_ID` (`entity_id`,`attribute_id`,`store_id`),
  KEY `CATALOG_PRODUCT_ENTITY_TEXT_ATTRIBUTE_ID` (`attribute_id`),
  KEY `CATALOG_PRODUCT_ENTITY_TEXT_STORE_ID` (`store_id`)
) ENGINE=InnoDB AUTO_INCREMENT=148 DEFAULT CHARSET=utf8 COMMENT='Catalog Product Text Attribute Backend Table';

--
-- Dumping data for table `catalog_product_entity_text`
--

LOCK TABLES `catalog_product_entity_text` WRITE;
/*!40000 ALTER TABLE `catalog_product_entity_text` DISABLE KEYS */;
INSERT INTO `catalog_product_entity_text` VALUES ('111',75,0,'27','<div style=min-width: 20em; min-height: 4em; color: black; background-color: white; text-align: left; font-size: medium; font-family: Arial; font-weight: normal; font-style: normal;\"><font size=\"4\"><span style=\"font-weight: bold;\">Ampatop 25<br/></span></font><font size=\"4\">Lé sur lambrissage</font><font size=\"4\"><span style=\"font-weight: bold;\"><br/></span></font><font size=\"4\"/><font size=\"4\"><br style=\"text-decoration: underline;\"/><span style=\"text-decoration: underline;\">Dimensions:</span> <span style=\"font-style: italic;\">1.10 x 25 m <br/><br/></span><span style=\"text-decoration: underline;\">Quantité par rouleau:</span><span style=\"font-style: italic;\"> 27.5 m2</span></font><br/></div>\"'),('112',75,0,'28','<div style=min-width: 20em; min-height: 4em; color: black; background-color: white; text-align: left; font-size: medium; font-family: Arial; font-weight: normal; font-style: normal;\"><span style=\"font-weight: bold;\"><font size=\"4\">Lamellé-collé BS-11 épicéa SI <br/></font></span><font size=\"4\" style=\"font-weight: bold;\">visible&#44; avec chanfrein<br/><br/></font><font size=\"3\"><font size=\"4\"><span style=\"text-decoration: underline;\">Hauteurs :</span>  <span style=\"font-style: italic;\">De 8 à 10 cm</span><br/><br/><span style=\"text-decoration: underline;\">Largeurs:</span> </font><span style=\"font-style: italic;\"><font size=\"4\">De 12 à 44 cm&#44; tous les 4 cm<br/><br/></font></span></font><font size=\"3\"><font size=\"4\"><span style=\"text-decoration: underline;\">Longueurs:</span></font><span style=\"font-style: italic;\"><font size=\"4\"> sur liste&#44; max 13.50m. <br/><br/>De 13.60m à 16.00m : supplément forfaitaire de 250.- Fr</font></span></font><font size=\"3\"><span style=\"font-style: italic;\"><br/></span><br style=\"font-weight: bold;\"/><span style=\"font-weight: bold;\">Délai 3 semaines<br/><br/></span></font><font size=\"3\"><span style=\"font-style: italic;\"><font size=\"4\"><br/><span style=\"font-weight: bold;\">Supplément pour:</span><br/>GL 28H : 16.-Fr/m3<br/>GL 32C : 28.-Fr/m3<br/>GL 32H : 54.-Fr/m3<br/>GL 36C : 67.-Fr/m3</font></span></font><br/><font size=\"3\"><font size=\"3\"><span style=\"font-style: italic;\"><br/><span style=\"font-weight: bold;\">Nous disposons également du programme CadWork pour l\'optimisation de vos listes !</span><br/></span></font><span style=\"font-weight: bold;\"><font size=\"4\"><br/></font></span></font></div>\"'),('113',75,0,'29','<div style=min-width: 20em; min-height: 4em; color: black; background-color: white; text-align: left; font-size: medium; font-family: Arial; font-weight: normal; font-style: normal;\"><span style=\"font-weight: bold;\"><font size=\"4\">Carrelets guichets épicéa I/II</font></span><font size=\"4\"><span style=\"text-decoration: underline;\"><br/><br/>Section:</span> 75/110 mm<span style=\"text-decoration: underline;\"><br/>Longueurs:</span> 4.00-4.50-5.00m<br/>(selon disponibilités du stock)<br/></font><font size=\"4\"><br/>Possibilité de débitage sur liste<span style=\"text-decoration: underline;\"><br/></span></font><font size=\"4\"><span style=\"text-decoration: underline;\">Prix</span>: sur demande</font></div>\"'),('114',75,0,'30','<div style=min-width: 20em; min-height: 4em; color: black; background-color: white; text-align: left; font-size: medium; font-family: Arial; font-weight: normal; font-style: normal;\"><span style=\"font-weight: bold;\"><font size=\"4\">Knauf-Vis de fixation Vidiwall<br/></font></span><font size=\"3\"><font size=\"4\">pour bois et métal</font></font><span style=\"font-weight: bold;\"/><br/><font size=\"3\"><br style=\"text-decoration: underline;\"/><font size=\"4\"><span style=\"text-decoration: underline;\">Dimensions:</span> <span style=\"font-style: italic;\">3.9 x 30 mm</span></font><span style=\"font-weight: bold;\"><br/></span><font size=\"4\" style=\"font-style: italic;\"><br/>Paquets de 1000 pces</font></font></div>\"'),('115',75,0,'31','<div style=min-width: 20em; min-height: 4em; color: black; background-color: white; text-align: left; font-size: 12pt; font-family: Arial; font-weight: normal;\"><font size=\"4\"><span style=\"font-weight: bold;\">Lames mélèze IIB-IIIA</span></font><br/><font size=\"3\">profil chanfrein&#44; paquets de 5 pces<br/><br/><span style=\"text-decoration: underline;\">Epaisseur:</span> 20 mm<br/><span style=\"text-decoration: underline;\">Largeurs</span> : 107 - 135 - 160mm<br/><span style=\"text-decoration: underline;\">Longueurs</span> : 4.00&#44; 5.00m</font><font size=\"4\"><font size=\"4\"><span style=\"font-style: italic;\"><span style=\"font-weight: bold;\"><br/><br/>Selon disponibilités</span></span></font></font><br type=\"_moz\"/></div>\"'),('141',85,0,'35','Testproduct'),('142',75,0,'35',NULL),('143',76,0,'35',NULL),('144',103,0,'35',NULL),('147',75,2,'35','C\'est un produit test.');
/*!40000 ALTER TABLE `catalog_product_entity_text` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `catalog_product_entity_tier_price`
--

DROP TABLE IF EXISTS `catalog_product_entity_tier_price`;
CREATE TABLE `catalog_product_entity_tier_price` (
  `value_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Value ID',
  `entity_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity ID',
  `all_groups` smallint(5) unsigned NOT NULL DEFAULT '1' COMMENT 'Is Applicable To All Customer Groups',
  `customer_group_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Customer Group ID',
  `qty` decimal(12,4) NOT NULL DEFAULT '1.0000' COMMENT 'QTY',
  `value` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Value',
  `website_id` smallint(5) unsigned NOT NULL COMMENT 'Website ID',
  PRIMARY KEY (`value_id`),
  UNIQUE KEY `UNQ_E8AB433B9ACB00343ABB312AD2FAB087` (`entity_id`,`all_groups`,`customer_group_id`,`qty`,`website_id`),
  KEY `CATALOG_PRODUCT_ENTITY_TIER_PRICE_CUSTOMER_GROUP_ID` (`customer_group_id`),
  KEY `CATALOG_PRODUCT_ENTITY_TIER_PRICE_WEBSITE_ID` (`website_id`)
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=utf8 COMMENT='Catalog Product Tier Price Attribute Backend Table';

--
-- Dumping data for table `catalog_product_entity_tier_price`
--

LOCK TABLES `catalog_product_entity_tier_price` WRITE;
/*!40000 ALTER TABLE `catalog_product_entity_tier_price` DISABLE KEYS */;
INSERT INTO `catalog_product_entity_tier_price` VALUES ('31','27',0,8,'1.0000','4.3800',0),('32','28',0,8,'1.0000','570.0000',0),('33','29',0,8,'1.0000','11.0000',0),('34','30',0,8,'1.0000','30.7000',0),('35','31',0,8,'1.0000','24.3000',0);
/*!40000 ALTER TABLE `catalog_product_entity_tier_price` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `catalog_product_entity_varchar`
--

DROP TABLE IF EXISTS `catalog_product_entity_varchar`;
CREATE TABLE `catalog_product_entity_varchar` (
  `value_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Value ID',
  `attribute_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Attribute ID',
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Store ID',
  `entity_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity ID',
  `value` varchar(255) DEFAULT NULL COMMENT 'Value',
  PRIMARY KEY (`value_id`),
  UNIQUE KEY `CATALOG_PRODUCT_ENTITY_VARCHAR_ENTITY_ID_ATTRIBUTE_ID_STORE_ID` (`entity_id`,`attribute_id`,`store_id`),
  KEY `CATALOG_PRODUCT_ENTITY_VARCHAR_ATTRIBUTE_ID` (`attribute_id`),
  KEY `CATALOG_PRODUCT_ENTITY_VARCHAR_STORE_ID` (`store_id`)
) ENGINE=InnoDB AUTO_INCREMENT=951 DEFAULT CHARSET=utf8 COMMENT='Catalog Product Varchar Attribute Backend Table';

--
-- Dumping data for table `catalog_product_entity_varchar`
--

LOCK TABLES `catalog_product_entity_varchar` WRITE;
/*!40000 ALTER TABLE `catalog_product_entity_varchar` DISABLE KEYS */;
INSERT INTO `catalog_product_entity_varchar` VALUES ('783',73,0,'27','Ampatop 25'),('784',136,0,'27','a251.1.25.00.site'),('785',87,0,'27','/a/m/ampatop_25.png'),('786',88,0,'27','/a/m/ampatop_25.png'),('787',89,0,'27','/a/m/ampatop_25.png'),('788',132,0,'27','/a/m/ampatop_25.png'),('789',119,0,'27','ampatop-25'),('790',122,0,'27','0'),('791',106,0,'27','container2'),('792',73,0,'28','Lamellé-collé BS-11 épicéa SI'),('793',136,0,'28','blcév.100 à 120.site'),('794',87,0,'28','/b/l/blc_lamellix.jpg'),('795',88,0,'28','/b/l/blc_lamellix.jpg'),('796',89,0,'28','/b/l/blc_lamellix.jpg'),('797',132,0,'28','/b/l/blc_lamellix.jpg'),('798',119,0,'28','lamelle-colle-bs-11-epicea-si'),('799',122,0,'28','0'),('800',106,0,'28','container2'),('801',73,0,'29','Carrelets guichets épicéa'),('802',136,0,'29','cdgé.75.110.ml.site'),('803',87,0,'29','/c/a/carrelets-de_-fenetre-epi-0.jpg'),('804',88,0,'29','/c/a/carrelets-de_-fenetre-epi-0.jpg'),('805',89,0,'29','/c/a/carrelets-de_-fenetre-epi-0.jpg'),('806',132,0,'29','/c/a/carrelets-de_-fenetre-epi-0.jpg'),('807',119,0,'29','carrelets-guichets-epicea'),('808',122,0,'29','0'),('809',106,0,'29','container2'),('810',73,0,'30','Vis de fixation Vidiwall'),('811',136,0,'30','vdfv.3.9.30.site'),('812',87,0,'30','/v/i/vis_knauf.png'),('813',88,0,'30','/v/i/vis_knauf.png'),('814',89,0,'30','/v/i/vis_knauf.png'),('815',132,0,'30','/v/i/vis_knauf.png'),('816',119,0,'30','vis-de-fixation-vidiwall'),('817',122,0,'30','0'),('818',106,0,'30','container2'),('819',73,0,'31','Lames mélèze IIB-IIIA'),('820',136,0,'31','lmpc.20.107.4.00.site'),('821',87,0,'31','/l/a/lames_meleze_chanfreinees.jpg'),('822',88,0,'31','/l/a/lames_meleze_chanfreinees.jpg'),('823',89,0,'31','/l/a/lames_meleze_chanfreinees.jpg'),('824',132,0,'31','/l/a/lames_meleze_chanfreinees.jpg'),('825',119,0,'31','lames-meleze-iib-iiia'),('826',122,0,'31','0'),('827',106,0,'31','container2'),('923',73,0,'35','Testproduct'),('924',84,0,'35','Testproduct'),('925',86,0,'35','Testproduct '),('926',106,0,'35','container2'),('927',119,0,'35','testproduct'),('928',134,0,'35','2'),('929',136,0,'35','testproduct.site'),('930',100,0,'35',NULL),('931',104,0,'35',NULL),('932',114,0,'35',NULL),('933',116,0,'35',NULL),('945',73,2,'35','Testproduit'),('946',136,2,'35','testproduit.site'),('947',119,2,'35','testproduit'),('948',122,3,'35','0'),('949',122,2,'35','0'),('950',106,2,'35','container2');
/*!40000 ALTER TABLE `catalog_product_entity_varchar` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `catalog_product_index_eav`
--

DROP TABLE IF EXISTS `catalog_product_index_eav`;
CREATE TABLE `catalog_product_index_eav` (
  `entity_id` int(10) unsigned NOT NULL COMMENT 'Entity ID',
  `attribute_id` smallint(5) unsigned NOT NULL COMMENT 'Attribute ID',
  `store_id` smallint(5) unsigned NOT NULL COMMENT 'Store ID',
  `value` int(10) unsigned NOT NULL COMMENT 'Value',
  `source_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Original entity Id for attribute value',
  PRIMARY KEY (`entity_id`,`attribute_id`,`store_id`,`value`,`source_id`),
  KEY `CATALOG_PRODUCT_INDEX_EAV_ATTRIBUTE_ID` (`attribute_id`),
  KEY `CATALOG_PRODUCT_INDEX_EAV_STORE_ID` (`store_id`),
  KEY `CATALOG_PRODUCT_INDEX_EAV_VALUE` (`value`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product EAV Index Table';

--
-- Table structure for table `catalog_product_index_eav_decimal`
--

DROP TABLE IF EXISTS `catalog_product_index_eav_decimal`;
CREATE TABLE `catalog_product_index_eav_decimal` (
  `entity_id` int(10) unsigned NOT NULL COMMENT 'Entity ID',
  `attribute_id` smallint(5) unsigned NOT NULL COMMENT 'Attribute ID',
  `store_id` smallint(5) unsigned NOT NULL COMMENT 'Store ID',
  `value` decimal(12,4) NOT NULL COMMENT 'Value',
  `source_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Original entity Id for attribute value',
  PRIMARY KEY (`entity_id`,`attribute_id`,`store_id`,`value`,`source_id`),
  KEY `CATALOG_PRODUCT_INDEX_EAV_DECIMAL_ATTRIBUTE_ID` (`attribute_id`),
  KEY `CATALOG_PRODUCT_INDEX_EAV_DECIMAL_STORE_ID` (`store_id`),
  KEY `CATALOG_PRODUCT_INDEX_EAV_DECIMAL_VALUE` (`value`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product EAV Decimal Index Table';

--
-- Table structure for table `catalog_product_index_eav_decimal_idx`
--

DROP TABLE IF EXISTS `catalog_product_index_eav_decimal_idx`;
CREATE TABLE `catalog_product_index_eav_decimal_idx` (
  `entity_id` int(10) unsigned NOT NULL COMMENT 'Entity ID',
  `attribute_id` smallint(5) unsigned NOT NULL COMMENT 'Attribute ID',
  `store_id` smallint(5) unsigned NOT NULL COMMENT 'Store ID',
  `value` decimal(12,4) NOT NULL COMMENT 'Value',
  `source_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Original entity Id for attribute value',
  PRIMARY KEY (`entity_id`,`attribute_id`,`store_id`,`value`,`source_id`),
  KEY `CATALOG_PRODUCT_INDEX_EAV_DECIMAL_IDX_ATTRIBUTE_ID` (`attribute_id`),
  KEY `CATALOG_PRODUCT_INDEX_EAV_DECIMAL_IDX_STORE_ID` (`store_id`),
  KEY `CATALOG_PRODUCT_INDEX_EAV_DECIMAL_IDX_VALUE` (`value`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product EAV Decimal Indexer Index Table';

--
-- Table structure for table `catalog_product_index_eav_decimal_tmp`
--

DROP TABLE IF EXISTS `catalog_product_index_eav_decimal_tmp`;
CREATE TABLE `catalog_product_index_eav_decimal_tmp` (
  `entity_id` int(10) unsigned NOT NULL COMMENT 'Entity ID',
  `attribute_id` smallint(5) unsigned NOT NULL COMMENT 'Attribute ID',
  `store_id` smallint(5) unsigned NOT NULL COMMENT 'Store ID',
  `value` decimal(12,4) NOT NULL COMMENT 'Value',
  `source_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Original entity Id for attribute value',
  PRIMARY KEY (`entity_id`,`attribute_id`,`store_id`,`value`,`source_id`),
  KEY `CATALOG_PRODUCT_INDEX_EAV_DECIMAL_TMP_ATTRIBUTE_ID` (`attribute_id`),
  KEY `CATALOG_PRODUCT_INDEX_EAV_DECIMAL_TMP_STORE_ID` (`store_id`),
  KEY `CATALOG_PRODUCT_INDEX_EAV_DECIMAL_TMP_VALUE` (`value`)
) ENGINE=MEMORY DEFAULT CHARSET=utf8 COMMENT='Catalog Product EAV Decimal Indexer Temp Table';

--
-- Table structure for table `catalog_product_index_eav_idx`
--

DROP TABLE IF EXISTS `catalog_product_index_eav_idx`;
CREATE TABLE `catalog_product_index_eav_idx` (
  `entity_id` int(10) unsigned NOT NULL COMMENT 'Entity ID',
  `attribute_id` smallint(5) unsigned NOT NULL COMMENT 'Attribute ID',
  `store_id` smallint(5) unsigned NOT NULL COMMENT 'Store ID',
  `value` int(10) unsigned NOT NULL COMMENT 'Value',
  `source_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Original entity Id for attribute value',
  PRIMARY KEY (`entity_id`,`attribute_id`,`store_id`,`value`,`source_id`),
  KEY `CATALOG_PRODUCT_INDEX_EAV_IDX_ATTRIBUTE_ID` (`attribute_id`),
  KEY `CATALOG_PRODUCT_INDEX_EAV_IDX_STORE_ID` (`store_id`),
  KEY `CATALOG_PRODUCT_INDEX_EAV_IDX_VALUE` (`value`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product EAV Indexer Index Table';

--
-- Table structure for table `catalog_product_index_eav_tmp`
--

DROP TABLE IF EXISTS `catalog_product_index_eav_tmp`;
CREATE TABLE `catalog_product_index_eav_tmp` (
  `entity_id` int(10) unsigned NOT NULL COMMENT 'Entity ID',
  `attribute_id` smallint(5) unsigned NOT NULL COMMENT 'Attribute ID',
  `store_id` smallint(5) unsigned NOT NULL COMMENT 'Store ID',
  `value` int(10) unsigned NOT NULL COMMENT 'Value',
  `source_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Original entity Id for attribute value',
  PRIMARY KEY (`entity_id`,`attribute_id`,`store_id`,`value`,`source_id`),
  KEY `CATALOG_PRODUCT_INDEX_EAV_TMP_ATTRIBUTE_ID` (`attribute_id`),
  KEY `CATALOG_PRODUCT_INDEX_EAV_TMP_STORE_ID` (`store_id`),
  KEY `CATALOG_PRODUCT_INDEX_EAV_TMP_VALUE` (`value`)
) ENGINE=MEMORY DEFAULT CHARSET=utf8 COMMENT='Catalog Product EAV Indexer Temp Table';

--
-- Table structure for table `catalog_product_index_price`
--

DROP TABLE IF EXISTS `catalog_product_index_price`;
CREATE TABLE `catalog_product_index_price` (
  `entity_id` int(10) unsigned NOT NULL COMMENT 'Entity ID',
  `customer_group_id` smallint(5) unsigned NOT NULL COMMENT 'Customer Group ID',
  `website_id` smallint(5) unsigned NOT NULL COMMENT 'Website ID',
  `tax_class_id` smallint(5) unsigned DEFAULT '0' COMMENT 'Tax Class ID',
  `price` decimal(12,4) DEFAULT NULL COMMENT 'Price',
  `final_price` decimal(12,4) DEFAULT NULL COMMENT 'Final Price',
  `min_price` decimal(12,4) DEFAULT NULL COMMENT 'Min Price',
  `max_price` decimal(12,4) DEFAULT NULL COMMENT 'Max Price',
  `tier_price` decimal(12,4) DEFAULT NULL COMMENT 'Tier Price',
  PRIMARY KEY (`entity_id`,`customer_group_id`,`website_id`),
  KEY `CATALOG_PRODUCT_INDEX_PRICE_CUSTOMER_GROUP_ID` (`customer_group_id`),
  KEY `CATALOG_PRODUCT_INDEX_PRICE_MIN_PRICE` (`min_price`),
  KEY `CAT_PRD_IDX_PRICE_WS_ID_CSTR_GROUP_ID_MIN_PRICE` (`website_id`,`customer_group_id`,`min_price`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product Price Index Table';

--
-- Dumping data for table `catalog_product_index_price`
--

LOCK TABLES `catalog_product_index_price` WRITE;
/*!40000 ALTER TABLE `catalog_product_index_price` DISABLE KEYS */;
INSERT INTO `catalog_product_index_price` VALUES ('27',0,2,4,'5.9000','5.9000','5.9000','5.9000',NULL),('27',1,2,4,'5.9000','5.9000','5.9000','5.9000',NULL),('27',2,2,4,'5.9000','5.9000','5.9000','5.9000',NULL),('27',3,2,4,'5.9000','5.9000','5.9000','5.9000',NULL),('27',4,2,4,'5.9000','5.9000','5.9000','5.9000',NULL),('27',5,2,4,'5.9000','5.9000','5.9000','5.9000',NULL),('27',6,2,4,'5.9000','5.9000','5.9000','5.9000',NULL),('27',7,2,4,'5.9000','5.9000','5.9000','5.9000',NULL),('27',8,2,4,'5.9000','5.9000','5.9000','5.9000','4.3800'),('28',0,2,4,'820.0000','820.0000','820.0000','820.0000',NULL),('28',1,2,4,'820.0000','820.0000','820.0000','820.0000',NULL),('28',2,2,4,'820.0000','820.0000','820.0000','820.0000',NULL),('28',3,2,4,'820.0000','820.0000','820.0000','820.0000',NULL),('28',4,2,4,'820.0000','820.0000','820.0000','820.0000',NULL),('28',5,2,4,'820.0000','820.0000','820.0000','820.0000',NULL),('28',6,2,4,'820.0000','820.0000','820.0000','820.0000',NULL),('28',7,2,4,'820.0000','820.0000','820.0000','820.0000',NULL),('28',8,2,4,'820.0000','820.0000','820.0000','820.0000','570.0000'),('29',0,2,4,'15.7500','15.7500','15.7500','15.7500',NULL),('29',1,2,4,'15.7500','15.7500','15.7500','15.7500',NULL),('29',2,2,4,'15.7500','15.7500','15.7500','15.7500',NULL),('29',3,2,4,'15.7500','15.7500','15.7500','15.7500',NULL),('29',4,2,4,'15.7500','15.7500','15.7500','15.7500',NULL),('29',5,2,4,'15.7500','15.7500','15.7500','15.7500',NULL),('29',6,2,4,'15.7500','15.7500','15.7500','15.7500',NULL),('29',7,2,4,'15.7500','15.7500','15.7500','15.7500',NULL),('29',8,2,4,'15.7500','15.7500','15.7500','15.7500','11.0000'),('30',0,2,4,'34.0000','34.0000','34.0000','34.0000',NULL),('30',1,2,4,'34.0000','34.0000','34.0000','34.0000',NULL),('30',2,2,4,'34.0000','34.0000','34.0000','34.0000',NULL),('30',3,2,4,'34.0000','34.0000','34.0000','34.0000',NULL),('30',4,2,4,'34.0000','34.0000','34.0000','34.0000',NULL),('30',5,2,4,'34.0000','34.0000','34.0000','34.0000',NULL),('30',6,2,4,'34.0000','34.0000','34.0000','34.0000',NULL),('30',7,2,4,'34.0000','34.0000','34.0000','34.0000',NULL),('30',8,2,4,'34.0000','34.0000','34.0000','34.0000','30.7000'),('31',0,2,4,'35.0000','35.0000','35.0000','35.0000',NULL),('31',1,2,4,'35.0000','35.0000','35.0000','35.0000',NULL),('31',2,2,4,'35.0000','35.0000','35.0000','35.0000',NULL),('31',3,2,4,'35.0000','35.0000','35.0000','35.0000',NULL),('31',4,2,4,'35.0000','35.0000','35.0000','35.0000',NULL),('31',5,2,4,'35.0000','35.0000','35.0000','35.0000',NULL),('31',6,2,4,'35.0000','35.0000','35.0000','35.0000',NULL),('31',7,2,4,'35.0000','35.0000','35.0000','35.0000',NULL),('31',8,2,4,'35.0000','35.0000','35.0000','35.0000','24.3000');
/*!40000 ALTER TABLE `catalog_product_index_price` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `catalog_product_index_price_bundle_idx`
--

DROP TABLE IF EXISTS `catalog_product_index_price_bundle_idx`;
CREATE TABLE `catalog_product_index_price_bundle_idx` (
  `entity_id` int(10) unsigned NOT NULL COMMENT 'Entity Id',
  `customer_group_id` smallint(5) unsigned NOT NULL COMMENT 'Customer Group Id',
  `website_id` smallint(5) unsigned NOT NULL COMMENT 'Website Id',
  `tax_class_id` smallint(5) unsigned DEFAULT '0' COMMENT 'Tax Class Id',
  `price_type` smallint(5) unsigned NOT NULL COMMENT 'Price Type',
  `special_price` decimal(12,4) DEFAULT NULL COMMENT 'Special Price',
  `tier_percent` decimal(12,4) DEFAULT NULL COMMENT 'Tier Percent',
  `orig_price` decimal(12,4) DEFAULT NULL COMMENT 'Orig Price',
  `price` decimal(12,4) DEFAULT NULL COMMENT 'Price',
  `min_price` decimal(12,4) DEFAULT NULL COMMENT 'Min Price',
  `max_price` decimal(12,4) DEFAULT NULL COMMENT 'Max Price',
  `tier_price` decimal(12,4) DEFAULT NULL COMMENT 'Tier Price',
  `base_tier` decimal(12,4) DEFAULT NULL COMMENT 'Base Tier',
  PRIMARY KEY (`entity_id`,`customer_group_id`,`website_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product Index Price Bundle Idx';

--
-- Table structure for table `catalog_product_index_price_bundle_opt_idx`
--

DROP TABLE IF EXISTS `catalog_product_index_price_bundle_opt_idx`;
CREATE TABLE `catalog_product_index_price_bundle_opt_idx` (
  `entity_id` int(10) unsigned NOT NULL COMMENT 'Entity Id',
  `customer_group_id` smallint(5) unsigned NOT NULL COMMENT 'Customer Group Id',
  `website_id` smallint(5) unsigned NOT NULL COMMENT 'Website Id',
  `option_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Option Id',
  `min_price` decimal(12,4) DEFAULT NULL COMMENT 'Min Price',
  `alt_price` decimal(12,4) DEFAULT NULL COMMENT 'Alt Price',
  `max_price` decimal(12,4) DEFAULT NULL COMMENT 'Max Price',
  `tier_price` decimal(12,4) DEFAULT NULL COMMENT 'Tier Price',
  `alt_tier_price` decimal(12,4) DEFAULT NULL COMMENT 'Alt Tier Price',
  PRIMARY KEY (`entity_id`,`customer_group_id`,`website_id`,`option_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product Index Price Bundle Opt Idx';

--
-- Table structure for table `catalog_product_index_price_bundle_opt_tmp`
--

DROP TABLE IF EXISTS `catalog_product_index_price_bundle_opt_tmp`;
CREATE TABLE `catalog_product_index_price_bundle_opt_tmp` (
  `entity_id` int(10) unsigned NOT NULL COMMENT 'Entity Id',
  `customer_group_id` smallint(5) unsigned NOT NULL COMMENT 'Customer Group Id',
  `website_id` smallint(5) unsigned NOT NULL COMMENT 'Website Id',
  `option_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Option Id',
  `min_price` decimal(12,4) DEFAULT NULL COMMENT 'Min Price',
  `alt_price` decimal(12,4) DEFAULT NULL COMMENT 'Alt Price',
  `max_price` decimal(12,4) DEFAULT NULL COMMENT 'Max Price',
  `tier_price` decimal(12,4) DEFAULT NULL COMMENT 'Tier Price',
  `alt_tier_price` decimal(12,4) DEFAULT NULL COMMENT 'Alt Tier Price',
  PRIMARY KEY (`entity_id`,`customer_group_id`,`website_id`,`option_id`)
) ENGINE=MEMORY DEFAULT CHARSET=utf8 COMMENT='Catalog Product Index Price Bundle Opt Tmp';

--
-- Table structure for table `catalog_product_index_price_bundle_sel_idx`
--

DROP TABLE IF EXISTS `catalog_product_index_price_bundle_sel_idx`;
CREATE TABLE `catalog_product_index_price_bundle_sel_idx` (
  `entity_id` int(10) unsigned NOT NULL COMMENT 'Entity Id',
  `customer_group_id` smallint(5) unsigned NOT NULL COMMENT 'Customer Group Id',
  `website_id` smallint(5) unsigned NOT NULL COMMENT 'Website Id',
  `option_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Option Id',
  `selection_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Selection Id',
  `group_type` smallint(5) unsigned DEFAULT '0' COMMENT 'Group Type',
  `is_required` smallint(5) unsigned DEFAULT '0' COMMENT 'Is Required',
  `price` decimal(12,4) DEFAULT NULL COMMENT 'Price',
  `tier_price` decimal(12,4) DEFAULT NULL COMMENT 'Tier Price',
  PRIMARY KEY (`entity_id`,`customer_group_id`,`website_id`,`option_id`,`selection_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product Index Price Bundle Sel Idx';

--
-- Table structure for table `catalog_product_index_price_bundle_sel_tmp`
--

DROP TABLE IF EXISTS `catalog_product_index_price_bundle_sel_tmp`;
CREATE TABLE `catalog_product_index_price_bundle_sel_tmp` (
  `entity_id` int(10) unsigned NOT NULL COMMENT 'Entity Id',
  `customer_group_id` smallint(5) unsigned NOT NULL COMMENT 'Customer Group Id',
  `website_id` smallint(5) unsigned NOT NULL COMMENT 'Website Id',
  `option_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Option Id',
  `selection_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Selection Id',
  `group_type` smallint(5) unsigned DEFAULT '0' COMMENT 'Group Type',
  `is_required` smallint(5) unsigned DEFAULT '0' COMMENT 'Is Required',
  `price` decimal(12,4) DEFAULT NULL COMMENT 'Price',
  `tier_price` decimal(12,4) DEFAULT NULL COMMENT 'Tier Price',
  PRIMARY KEY (`entity_id`,`customer_group_id`,`website_id`,`option_id`,`selection_id`)
) ENGINE=MEMORY DEFAULT CHARSET=utf8 COMMENT='Catalog Product Index Price Bundle Sel Tmp';

--
-- Table structure for table `catalog_product_index_price_bundle_tmp`
--

DROP TABLE IF EXISTS `catalog_product_index_price_bundle_tmp`;
CREATE TABLE `catalog_product_index_price_bundle_tmp` (
  `entity_id` int(10) unsigned NOT NULL COMMENT 'Entity Id',
  `customer_group_id` smallint(5) unsigned NOT NULL COMMENT 'Customer Group Id',
  `website_id` smallint(5) unsigned NOT NULL COMMENT 'Website Id',
  `tax_class_id` smallint(5) unsigned DEFAULT '0' COMMENT 'Tax Class Id',
  `price_type` smallint(5) unsigned NOT NULL COMMENT 'Price Type',
  `special_price` decimal(12,4) DEFAULT NULL COMMENT 'Special Price',
  `tier_percent` decimal(12,4) DEFAULT NULL COMMENT 'Tier Percent',
  `orig_price` decimal(12,4) DEFAULT NULL COMMENT 'Orig Price',
  `price` decimal(12,4) DEFAULT NULL COMMENT 'Price',
  `min_price` decimal(12,4) DEFAULT NULL COMMENT 'Min Price',
  `max_price` decimal(12,4) DEFAULT NULL COMMENT 'Max Price',
  `tier_price` decimal(12,4) DEFAULT NULL COMMENT 'Tier Price',
  `base_tier` decimal(12,4) DEFAULT NULL COMMENT 'Base Tier',
  PRIMARY KEY (`entity_id`,`customer_group_id`,`website_id`)
) ENGINE=MEMORY DEFAULT CHARSET=utf8 COMMENT='Catalog Product Index Price Bundle Tmp';

--
-- Table structure for table `catalog_product_index_price_cfg_opt_agr_idx`
--

DROP TABLE IF EXISTS `catalog_product_index_price_cfg_opt_agr_idx`;
CREATE TABLE `catalog_product_index_price_cfg_opt_agr_idx` (
  `parent_id` int(10) unsigned NOT NULL COMMENT 'Parent ID',
  `child_id` int(10) unsigned NOT NULL COMMENT 'Child ID',
  `customer_group_id` smallint(5) unsigned NOT NULL COMMENT 'Customer Group ID',
  `website_id` smallint(5) unsigned NOT NULL COMMENT 'Website ID',
  `price` decimal(12,4) DEFAULT NULL COMMENT 'Price',
  `tier_price` decimal(12,4) DEFAULT NULL COMMENT 'Tier Price',
  PRIMARY KEY (`parent_id`,`child_id`,`customer_group_id`,`website_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product Price Indexer Config Option Aggregate Index Table';

--
-- Table structure for table `catalog_product_index_price_cfg_opt_agr_tmp`
--

DROP TABLE IF EXISTS `catalog_product_index_price_cfg_opt_agr_tmp`;
CREATE TABLE `catalog_product_index_price_cfg_opt_agr_tmp` (
  `parent_id` int(10) unsigned NOT NULL COMMENT 'Parent ID',
  `child_id` int(10) unsigned NOT NULL COMMENT 'Child ID',
  `customer_group_id` smallint(5) unsigned NOT NULL COMMENT 'Customer Group ID',
  `website_id` smallint(5) unsigned NOT NULL COMMENT 'Website ID',
  `price` decimal(12,4) DEFAULT NULL COMMENT 'Price',
  `tier_price` decimal(12,4) DEFAULT NULL COMMENT 'Tier Price',
  PRIMARY KEY (`parent_id`,`child_id`,`customer_group_id`,`website_id`)
) ENGINE=MEMORY DEFAULT CHARSET=utf8 COMMENT='Catalog Product Price Indexer Config Option Aggregate Temp Table';

--
-- Table structure for table `catalog_product_index_price_cfg_opt_idx`
--

DROP TABLE IF EXISTS `catalog_product_index_price_cfg_opt_idx`;
CREATE TABLE `catalog_product_index_price_cfg_opt_idx` (
  `entity_id` int(10) unsigned NOT NULL COMMENT 'Entity ID',
  `customer_group_id` smallint(5) unsigned NOT NULL COMMENT 'Customer Group ID',
  `website_id` smallint(5) unsigned NOT NULL COMMENT 'Website ID',
  `min_price` decimal(12,4) DEFAULT NULL COMMENT 'Min Price',
  `max_price` decimal(12,4) DEFAULT NULL COMMENT 'Max Price',
  `tier_price` decimal(12,4) DEFAULT NULL COMMENT 'Tier Price',
  PRIMARY KEY (`entity_id`,`customer_group_id`,`website_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product Price Indexer Config Option Index Table';

--
-- Table structure for table `catalog_product_index_price_cfg_opt_tmp`
--

DROP TABLE IF EXISTS `catalog_product_index_price_cfg_opt_tmp`;
CREATE TABLE `catalog_product_index_price_cfg_opt_tmp` (
  `entity_id` int(10) unsigned NOT NULL COMMENT 'Entity ID',
  `customer_group_id` smallint(5) unsigned NOT NULL COMMENT 'Customer Group ID',
  `website_id` smallint(5) unsigned NOT NULL COMMENT 'Website ID',
  `min_price` decimal(12,4) DEFAULT NULL COMMENT 'Min Price',
  `max_price` decimal(12,4) DEFAULT NULL COMMENT 'Max Price',
  `tier_price` decimal(12,4) DEFAULT NULL COMMENT 'Tier Price',
  PRIMARY KEY (`entity_id`,`customer_group_id`,`website_id`)
) ENGINE=MEMORY DEFAULT CHARSET=utf8 COMMENT='Catalog Product Price Indexer Config Option Temp Table';

--
-- Table structure for table `catalog_product_index_price_downlod_idx`
--

DROP TABLE IF EXISTS `catalog_product_index_price_downlod_idx`;
CREATE TABLE `catalog_product_index_price_downlod_idx` (
  `entity_id` int(10) unsigned NOT NULL COMMENT 'Entity ID',
  `customer_group_id` smallint(5) unsigned NOT NULL COMMENT 'Customer Group ID',
  `website_id` smallint(5) unsigned NOT NULL COMMENT 'Website ID',
  `min_price` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Minimum price',
  `max_price` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Maximum price',
  PRIMARY KEY (`entity_id`,`customer_group_id`,`website_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Indexer Table for price of downloadable products';

--
-- Table structure for table `catalog_product_index_price_downlod_tmp`
--

DROP TABLE IF EXISTS `catalog_product_index_price_downlod_tmp`;
CREATE TABLE `catalog_product_index_price_downlod_tmp` (
  `entity_id` int(10) unsigned NOT NULL COMMENT 'Entity ID',
  `customer_group_id` smallint(5) unsigned NOT NULL COMMENT 'Customer Group ID',
  `website_id` smallint(5) unsigned NOT NULL COMMENT 'Website ID',
  `min_price` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Minimum price',
  `max_price` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Maximum price',
  PRIMARY KEY (`entity_id`,`customer_group_id`,`website_id`)
) ENGINE=MEMORY DEFAULT CHARSET=utf8 COMMENT='Temporary Indexer Table for price of downloadable products';

--
-- Table structure for table `catalog_product_index_price_final_idx`
--

DROP TABLE IF EXISTS `catalog_product_index_price_final_idx`;
CREATE TABLE `catalog_product_index_price_final_idx` (
  `entity_id` int(10) unsigned NOT NULL COMMENT 'Entity ID',
  `customer_group_id` smallint(5) unsigned NOT NULL COMMENT 'Customer Group ID',
  `website_id` smallint(5) unsigned NOT NULL COMMENT 'Website ID',
  `tax_class_id` smallint(5) unsigned DEFAULT '0' COMMENT 'Tax Class ID',
  `orig_price` decimal(12,4) DEFAULT NULL COMMENT 'Original Price',
  `price` decimal(12,4) DEFAULT NULL COMMENT 'Price',
  `min_price` decimal(12,4) DEFAULT NULL COMMENT 'Min Price',
  `max_price` decimal(12,4) DEFAULT NULL COMMENT 'Max Price',
  `tier_price` decimal(12,4) DEFAULT NULL COMMENT 'Tier Price',
  `base_tier` decimal(12,4) DEFAULT NULL COMMENT 'Base Tier',
  PRIMARY KEY (`entity_id`,`customer_group_id`,`website_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product Price Indexer Final Index Table';

--
-- Table structure for table `catalog_product_index_price_final_tmp`
--

DROP TABLE IF EXISTS `catalog_product_index_price_final_tmp`;
CREATE TABLE `catalog_product_index_price_final_tmp` (
  `entity_id` int(10) unsigned NOT NULL COMMENT 'Entity ID',
  `customer_group_id` smallint(5) unsigned NOT NULL COMMENT 'Customer Group ID',
  `website_id` smallint(5) unsigned NOT NULL COMMENT 'Website ID',
  `tax_class_id` smallint(5) unsigned DEFAULT '0' COMMENT 'Tax Class ID',
  `orig_price` decimal(12,4) DEFAULT NULL COMMENT 'Original Price',
  `price` decimal(12,4) DEFAULT NULL COMMENT 'Price',
  `min_price` decimal(12,4) DEFAULT NULL COMMENT 'Min Price',
  `max_price` decimal(12,4) DEFAULT NULL COMMENT 'Max Price',
  `tier_price` decimal(12,4) DEFAULT NULL COMMENT 'Tier Price',
  `base_tier` decimal(12,4) DEFAULT NULL COMMENT 'Base Tier',
  PRIMARY KEY (`entity_id`,`customer_group_id`,`website_id`)
) ENGINE=MEMORY DEFAULT CHARSET=utf8 COMMENT='Catalog Product Price Indexer Final Temp Table';

--
-- Table structure for table `catalog_product_index_price_idx`
--

DROP TABLE IF EXISTS `catalog_product_index_price_idx`;
CREATE TABLE `catalog_product_index_price_idx` (
  `entity_id` int(10) unsigned NOT NULL COMMENT 'Entity ID',
  `customer_group_id` smallint(5) unsigned NOT NULL COMMENT 'Customer Group ID',
  `website_id` smallint(5) unsigned NOT NULL COMMENT 'Website ID',
  `tax_class_id` smallint(5) unsigned DEFAULT '0' COMMENT 'Tax Class ID',
  `price` decimal(12,4) DEFAULT NULL COMMENT 'Price',
  `final_price` decimal(12,4) DEFAULT NULL COMMENT 'Final Price',
  `min_price` decimal(12,4) DEFAULT NULL COMMENT 'Min Price',
  `max_price` decimal(12,4) DEFAULT NULL COMMENT 'Max Price',
  `tier_price` decimal(12,4) DEFAULT NULL COMMENT 'Tier Price',
  PRIMARY KEY (`entity_id`,`customer_group_id`,`website_id`),
  KEY `CATALOG_PRODUCT_INDEX_PRICE_IDX_CUSTOMER_GROUP_ID` (`customer_group_id`),
  KEY `CATALOG_PRODUCT_INDEX_PRICE_IDX_WEBSITE_ID` (`website_id`),
  KEY `CATALOG_PRODUCT_INDEX_PRICE_IDX_MIN_PRICE` (`min_price`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product Price Indexer Index Table';

--
-- Dumping data for table `catalog_product_index_price_idx`
--

LOCK TABLES `catalog_product_index_price_idx` WRITE;
/*!40000 ALTER TABLE `catalog_product_index_price_idx` DISABLE KEYS */;
INSERT INTO `catalog_product_index_price_idx` VALUES ('27',0,2,4,'5.9000','5.9000','5.9000','5.9000',NULL),('27',1,2,4,'5.9000','5.9000','5.9000','5.9000',NULL),('27',2,2,4,'5.9000','5.9000','5.9000','5.9000',NULL),('27',3,2,4,'5.9000','5.9000','5.9000','5.9000',NULL),('27',4,2,4,'5.9000','5.9000','5.9000','5.9000',NULL),('27',5,2,4,'5.9000','5.9000','5.9000','5.9000',NULL),('27',6,2,4,'5.9000','5.9000','5.9000','5.9000',NULL),('27',7,2,4,'5.9000','5.9000','5.9000','5.9000',NULL),('27',8,2,4,'5.9000','5.9000','5.9000','5.9000','4.3800'),('28',0,2,4,'820.0000','820.0000','820.0000','820.0000',NULL),('28',1,2,4,'820.0000','820.0000','820.0000','820.0000',NULL),('28',2,2,4,'820.0000','820.0000','820.0000','820.0000',NULL),('28',3,2,4,'820.0000','820.0000','820.0000','820.0000',NULL),('28',4,2,4,'820.0000','820.0000','820.0000','820.0000',NULL),('28',5,2,4,'820.0000','820.0000','820.0000','820.0000',NULL),('28',6,2,4,'820.0000','820.0000','820.0000','820.0000',NULL),('28',7,2,4,'820.0000','820.0000','820.0000','820.0000',NULL),('28',8,2,4,'820.0000','820.0000','820.0000','820.0000','570.0000'),('29',0,2,4,'15.7500','15.7500','15.7500','15.7500',NULL),('29',1,2,4,'15.7500','15.7500','15.7500','15.7500',NULL),('29',2,2,4,'15.7500','15.7500','15.7500','15.7500',NULL),('29',3,2,4,'15.7500','15.7500','15.7500','15.7500',NULL),('29',4,2,4,'15.7500','15.7500','15.7500','15.7500',NULL),('29',5,2,4,'15.7500','15.7500','15.7500','15.7500',NULL),('29',6,2,4,'15.7500','15.7500','15.7500','15.7500',NULL),('29',7,2,4,'15.7500','15.7500','15.7500','15.7500',NULL),('29',8,2,4,'15.7500','15.7500','15.7500','15.7500','11.0000'),('30',0,2,4,'34.0000','34.0000','34.0000','34.0000',NULL),('30',1,2,4,'34.0000','34.0000','34.0000','34.0000',NULL),('30',2,2,4,'34.0000','34.0000','34.0000','34.0000',NULL),('30',3,2,4,'34.0000','34.0000','34.0000','34.0000',NULL),('30',4,2,4,'34.0000','34.0000','34.0000','34.0000',NULL),('30',5,2,4,'34.0000','34.0000','34.0000','34.0000',NULL),('30',6,2,4,'34.0000','34.0000','34.0000','34.0000',NULL),('30',7,2,4,'34.0000','34.0000','34.0000','34.0000',NULL),('30',8,2,4,'34.0000','34.0000','34.0000','34.0000','30.7000'),('31',0,2,4,'35.0000','35.0000','35.0000','35.0000',NULL),('31',1,2,4,'35.0000','35.0000','35.0000','35.0000',NULL),('31',2,2,4,'35.0000','35.0000','35.0000','35.0000',NULL),('31',3,2,4,'35.0000','35.0000','35.0000','35.0000',NULL),('31',4,2,4,'35.0000','35.0000','35.0000','35.0000',NULL),('31',5,2,4,'35.0000','35.0000','35.0000','35.0000',NULL),('31',6,2,4,'35.0000','35.0000','35.0000','35.0000',NULL),('31',7,2,4,'35.0000','35.0000','35.0000','35.0000',NULL),('31',8,2,4,'35.0000','35.0000','35.0000','35.0000','24.3000');
/*!40000 ALTER TABLE `catalog_product_index_price_idx` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `catalog_product_index_price_opt_agr_idx`
--

DROP TABLE IF EXISTS `catalog_product_index_price_opt_agr_idx`;
CREATE TABLE `catalog_product_index_price_opt_agr_idx` (
  `entity_id` int(10) unsigned NOT NULL COMMENT 'Entity ID',
  `customer_group_id` smallint(5) unsigned NOT NULL COMMENT 'Customer Group ID',
  `website_id` smallint(5) unsigned NOT NULL COMMENT 'Website ID',
  `option_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Option ID',
  `min_price` decimal(12,4) DEFAULT NULL COMMENT 'Min Price',
  `max_price` decimal(12,4) DEFAULT NULL COMMENT 'Max Price',
  `tier_price` decimal(12,4) DEFAULT NULL COMMENT 'Tier Price',
  PRIMARY KEY (`entity_id`,`customer_group_id`,`website_id`,`option_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product Price Indexer Option Aggregate Index Table';

--
-- Table structure for table `catalog_product_index_price_opt_agr_tmp`
--

DROP TABLE IF EXISTS `catalog_product_index_price_opt_agr_tmp`;
CREATE TABLE `catalog_product_index_price_opt_agr_tmp` (
  `entity_id` int(10) unsigned NOT NULL COMMENT 'Entity ID',
  `customer_group_id` smallint(5) unsigned NOT NULL COMMENT 'Customer Group ID',
  `website_id` smallint(5) unsigned NOT NULL COMMENT 'Website ID',
  `option_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Option ID',
  `min_price` decimal(12,4) DEFAULT NULL COMMENT 'Min Price',
  `max_price` decimal(12,4) DEFAULT NULL COMMENT 'Max Price',
  `tier_price` decimal(12,4) DEFAULT NULL COMMENT 'Tier Price',
  PRIMARY KEY (`entity_id`,`customer_group_id`,`website_id`,`option_id`)
) ENGINE=MEMORY DEFAULT CHARSET=utf8 COMMENT='Catalog Product Price Indexer Option Aggregate Temp Table';

--
-- Table structure for table `catalog_product_index_price_opt_idx`
--

DROP TABLE IF EXISTS `catalog_product_index_price_opt_idx`;
CREATE TABLE `catalog_product_index_price_opt_idx` (
  `entity_id` int(10) unsigned NOT NULL COMMENT 'Entity ID',
  `customer_group_id` smallint(5) unsigned NOT NULL COMMENT 'Customer Group ID',
  `website_id` smallint(5) unsigned NOT NULL COMMENT 'Website ID',
  `min_price` decimal(12,4) DEFAULT NULL COMMENT 'Min Price',
  `max_price` decimal(12,4) DEFAULT NULL COMMENT 'Max Price',
  `tier_price` decimal(12,4) DEFAULT NULL COMMENT 'Tier Price',
  PRIMARY KEY (`entity_id`,`customer_group_id`,`website_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product Price Indexer Option Index Table';

--
-- Table structure for table `catalog_product_index_price_opt_tmp`
--

DROP TABLE IF EXISTS `catalog_product_index_price_opt_tmp`;
CREATE TABLE `catalog_product_index_price_opt_tmp` (
  `entity_id` int(10) unsigned NOT NULL COMMENT 'Entity ID',
  `customer_group_id` smallint(5) unsigned NOT NULL COMMENT 'Customer Group ID',
  `website_id` smallint(5) unsigned NOT NULL COMMENT 'Website ID',
  `min_price` decimal(12,4) DEFAULT NULL COMMENT 'Min Price',
  `max_price` decimal(12,4) DEFAULT NULL COMMENT 'Max Price',
  `tier_price` decimal(12,4) DEFAULT NULL COMMENT 'Tier Price',
  PRIMARY KEY (`entity_id`,`customer_group_id`,`website_id`)
) ENGINE=MEMORY DEFAULT CHARSET=utf8 COMMENT='Catalog Product Price Indexer Option Temp Table';

--
-- Table structure for table `catalog_product_index_price_tmp`
--

DROP TABLE IF EXISTS `catalog_product_index_price_tmp`;
CREATE TABLE `catalog_product_index_price_tmp` (
  `entity_id` int(10) unsigned NOT NULL COMMENT 'Entity ID',
  `customer_group_id` smallint(5) unsigned NOT NULL COMMENT 'Customer Group ID',
  `website_id` smallint(5) unsigned NOT NULL COMMENT 'Website ID',
  `tax_class_id` smallint(5) unsigned DEFAULT '0' COMMENT 'Tax Class ID',
  `price` decimal(12,4) DEFAULT NULL COMMENT 'Price',
  `final_price` decimal(12,4) DEFAULT NULL COMMENT 'Final Price',
  `min_price` decimal(12,4) DEFAULT NULL COMMENT 'Min Price',
  `max_price` decimal(12,4) DEFAULT NULL COMMENT 'Max Price',
  `tier_price` decimal(12,4) DEFAULT NULL COMMENT 'Tier Price',
  PRIMARY KEY (`entity_id`,`customer_group_id`,`website_id`),
  KEY `CATALOG_PRODUCT_INDEX_PRICE_TMP_CUSTOMER_GROUP_ID` (`customer_group_id`),
  KEY `CATALOG_PRODUCT_INDEX_PRICE_TMP_WEBSITE_ID` (`website_id`),
  KEY `CATALOG_PRODUCT_INDEX_PRICE_TMP_MIN_PRICE` (`min_price`)
) ENGINE=MEMORY DEFAULT CHARSET=utf8 COMMENT='Catalog Product Price Indexer Temp Table';

--
-- Table structure for table `catalog_product_index_tier_price`
--

DROP TABLE IF EXISTS `catalog_product_index_tier_price`;
CREATE TABLE `catalog_product_index_tier_price` (
  `entity_id` int(10) unsigned NOT NULL COMMENT 'Entity ID',
  `customer_group_id` smallint(5) unsigned NOT NULL COMMENT 'Customer Group ID',
  `website_id` smallint(5) unsigned NOT NULL COMMENT 'Website ID',
  `min_price` decimal(12,4) DEFAULT NULL COMMENT 'Min Price',
  PRIMARY KEY (`entity_id`,`customer_group_id`,`website_id`),
  KEY `CATALOG_PRODUCT_INDEX_TIER_PRICE_CUSTOMER_GROUP_ID` (`customer_group_id`),
  KEY `CATALOG_PRODUCT_INDEX_TIER_PRICE_WEBSITE_ID` (`website_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product Tier Price Index Table';

--
-- Dumping data for table `catalog_product_index_tier_price`
--

LOCK TABLES `catalog_product_index_tier_price` WRITE;
/*!40000 ALTER TABLE `catalog_product_index_tier_price` DISABLE KEYS */;
INSERT INTO `catalog_product_index_tier_price` VALUES ('27',8,2,'4.3800'),('27',8,3,'4.3800'),('27',8,4,'4.3800'),('28',8,2,'570.0000'),('28',8,3,'570.0000'),('28',8,4,'570.0000'),('29',8,2,'11.0000'),('29',8,3,'11.0000'),('29',8,4,'11.0000'),('30',8,2,'30.7000'),('30',8,3,'30.7000'),('30',8,4,'30.7000'),('31',8,2,'24.3000'),('31',8,3,'24.3000'),('31',8,4,'24.3000');
/*!40000 ALTER TABLE `catalog_product_index_tier_price` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `catalog_product_index_website`
--

DROP TABLE IF EXISTS `catalog_product_index_website`;
CREATE TABLE `catalog_product_index_website` (
  `website_id` smallint(5) unsigned NOT NULL COMMENT 'Website ID',
  `website_date` date DEFAULT NULL COMMENT 'Website Date',
  `rate` float DEFAULT '1' COMMENT 'Rate',
  PRIMARY KEY (`website_id`),
  KEY `CATALOG_PRODUCT_INDEX_WEBSITE_WEBSITE_DATE` (`website_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product Website Index Table';

--
-- Dumping data for table `catalog_product_index_website`
--

LOCK TABLES `catalog_product_index_website` WRITE;
/*!40000 ALTER TABLE `catalog_product_index_website` DISABLE KEYS */;
INSERT INTO `catalog_product_index_website` VALUES (2,'2017-10-10','1'),(3,'2017-10-10','1'),(4,'2017-10-10','1');
/*!40000 ALTER TABLE `catalog_product_index_website` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `catalog_product_link`
--

DROP TABLE IF EXISTS `catalog_product_link`;
CREATE TABLE `catalog_product_link` (
  `link_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Link ID',
  `product_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Product ID',
  `linked_product_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Linked Product ID',
  `link_type_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Link Type ID',
  PRIMARY KEY (`link_id`),
  UNIQUE KEY `CATALOG_PRODUCT_LINK_LINK_TYPE_ID_PRODUCT_ID_LINKED_PRODUCT_ID` (`link_type_id`,`product_id`,`linked_product_id`),
  KEY `CATALOG_PRODUCT_LINK_PRODUCT_ID` (`product_id`),
  KEY `CATALOG_PRODUCT_LINK_LINKED_PRODUCT_ID` (`linked_product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product To Product Linkage Table';

--
-- Table structure for table `catalog_product_link_attribute`
--

DROP TABLE IF EXISTS `catalog_product_link_attribute`;
CREATE TABLE `catalog_product_link_attribute` (
  `product_link_attribute_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Product Link Attribute ID',
  `link_type_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Link Type ID',
  `product_link_attribute_code` varchar(32) DEFAULT NULL COMMENT 'Product Link Attribute Code',
  `data_type` varchar(32) DEFAULT NULL COMMENT 'Data Type',
  PRIMARY KEY (`product_link_attribute_id`),
  KEY `CATALOG_PRODUCT_LINK_ATTRIBUTE_LINK_TYPE_ID` (`link_type_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='Catalog Product Link Attribute Table';

--
-- Dumping data for table `catalog_product_link_attribute`
--

LOCK TABLES `catalog_product_link_attribute` WRITE;
/*!40000 ALTER TABLE `catalog_product_link_attribute` DISABLE KEYS */;
INSERT INTO `catalog_product_link_attribute` VALUES (1,1,'position','int'),(2,4,'position','int'),(3,5,'position','int'),(4,3,'position','int'),(5,3,'qty','decimal');
/*!40000 ALTER TABLE `catalog_product_link_attribute` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `catalog_product_link_attribute_decimal`
--

DROP TABLE IF EXISTS `catalog_product_link_attribute_decimal`;
CREATE TABLE `catalog_product_link_attribute_decimal` (
  `value_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Value ID',
  `product_link_attribute_id` smallint(5) unsigned DEFAULT NULL COMMENT 'Product Link Attribute ID',
  `link_id` int(10) unsigned NOT NULL COMMENT 'Link ID',
  `value` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Value',
  PRIMARY KEY (`value_id`),
  UNIQUE KEY `CAT_PRD_LNK_ATTR_DEC_PRD_LNK_ATTR_ID_LNK_ID` (`product_link_attribute_id`,`link_id`),
  KEY `CATALOG_PRODUCT_LINK_ATTRIBUTE_DECIMAL_LINK_ID` (`link_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product Link Decimal Attribute Table';

--
-- Table structure for table `catalog_product_link_attribute_int`
--

DROP TABLE IF EXISTS `catalog_product_link_attribute_int`;
CREATE TABLE `catalog_product_link_attribute_int` (
  `value_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Value ID',
  `product_link_attribute_id` smallint(5) unsigned DEFAULT NULL COMMENT 'Product Link Attribute ID',
  `link_id` int(10) unsigned NOT NULL COMMENT 'Link ID',
  `value` int(11) NOT NULL DEFAULT '0' COMMENT 'Value',
  PRIMARY KEY (`value_id`),
  UNIQUE KEY `CAT_PRD_LNK_ATTR_INT_PRD_LNK_ATTR_ID_LNK_ID` (`product_link_attribute_id`,`link_id`),
  KEY `CATALOG_PRODUCT_LINK_ATTRIBUTE_INT_LINK_ID` (`link_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product Link Integer Attribute Table';

--
-- Table structure for table `catalog_product_link_attribute_varchar`
--

DROP TABLE IF EXISTS `catalog_product_link_attribute_varchar`;
CREATE TABLE `catalog_product_link_attribute_varchar` (
  `value_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Value ID',
  `product_link_attribute_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Product Link Attribute ID',
  `link_id` int(10) unsigned NOT NULL COMMENT 'Link ID',
  `value` varchar(255) DEFAULT NULL COMMENT 'Value',
  PRIMARY KEY (`value_id`),
  UNIQUE KEY `CAT_PRD_LNK_ATTR_VCHR_PRD_LNK_ATTR_ID_LNK_ID` (`product_link_attribute_id`,`link_id`),
  KEY `CATALOG_PRODUCT_LINK_ATTRIBUTE_VARCHAR_LINK_ID` (`link_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product Link Varchar Attribute Table';

--
-- Table structure for table `catalog_product_link_type`
--

DROP TABLE IF EXISTS `catalog_product_link_type`;
CREATE TABLE `catalog_product_link_type` (
  `link_type_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Link Type ID',
  `code` varchar(32) DEFAULT NULL COMMENT 'Code',
  PRIMARY KEY (`link_type_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='Catalog Product Link Type Table';

--
-- Dumping data for table `catalog_product_link_type`
--

LOCK TABLES `catalog_product_link_type` WRITE;
/*!40000 ALTER TABLE `catalog_product_link_type` DISABLE KEYS */;
INSERT INTO `catalog_product_link_type` VALUES (1,'relation'),(3,'super'),(4,'up_sell'),(5,'cross_sell');
/*!40000 ALTER TABLE `catalog_product_link_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `catalog_product_option`
--

DROP TABLE IF EXISTS `catalog_product_option`;
CREATE TABLE `catalog_product_option` (
  `option_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Option ID',
  `product_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Product ID',
  `type` varchar(50) DEFAULT NULL COMMENT 'Type',
  `is_require` smallint(6) NOT NULL DEFAULT '1' COMMENT 'Is Required',
  `sku` varchar(64) DEFAULT NULL COMMENT 'SKU',
  `max_characters` int(10) unsigned DEFAULT NULL COMMENT 'Max Characters',
  `file_extension` varchar(50) DEFAULT NULL COMMENT 'File Extension',
  `image_size_x` smallint(5) unsigned DEFAULT NULL COMMENT 'Image Size X',
  `image_size_y` smallint(5) unsigned DEFAULT NULL COMMENT 'Image Size Y',
  `sort_order` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Sort Order',
  PRIMARY KEY (`option_id`),
  KEY `CATALOG_PRODUCT_OPTION_PRODUCT_ID` (`product_id`)
) ENGINE=InnoDB AUTO_INCREMENT=150 DEFAULT CHARSET=utf8 COMMENT='Catalog Product Option Table';

--
-- Dumping data for table `catalog_product_option`
--

LOCK TABLES `catalog_product_option` WRITE;
/*!40000 ALTER TABLE `catalog_product_option` DISABLE KEYS */;
INSERT INTO `catalog_product_option` VALUES ('1','27','field',0,'unitprice',NULL,NULL,NULL,NULL,'1'),('2','27','field',0,'actualqty',NULL,NULL,NULL,NULL,'2'),('3','27','drop_down',1,NULL,NULL,NULL,NULL,NULL,'3'),('4','27','drop_down',1,NULL,NULL,NULL,NULL,NULL,'4'),('5','27','drop_down',1,NULL,NULL,NULL,NULL,NULL,'5'),('6','27','field',0,'tgvalue',NULL,NULL,NULL,NULL,'6'),('7','27','field',0,'qtyreq',NULL,NULL,NULL,NULL,'7'),('8','31','field',0,'tgvalue',NULL,NULL,NULL,NULL,'8'),('9','31','field',0,'qtyreq',NULL,NULL,NULL,NULL,'9'),('56','29','field',0,'unitprice',NULL,NULL,NULL,NULL,'1'),('57','29','field',0,'actualqty',NULL,NULL,NULL,NULL,'2'),('58','29','drop_down',1,NULL,NULL,NULL,NULL,NULL,'3'),('59','29','drop_down',1,NULL,NULL,NULL,NULL,NULL,'4'),('60','29','drop_down',1,NULL,NULL,NULL,NULL,NULL,'5'),('61','29','field',0,'tgvalue',NULL,NULL,NULL,NULL,'6'),('62','29','field',0,'qtyreq',NULL,NULL,NULL,NULL,'7'),('63','30','field',0,'unitprice',NULL,NULL,NULL,NULL,'1'),('64','31','field',0,'unitprice',NULL,NULL,NULL,NULL,'1'),('65','31','field',0,'actualqty',NULL,NULL,NULL,NULL,'2'),('66','31','field',0,'actualdisc',NULL,NULL,NULL,NULL,'3'),('67','31','field',0,'nextdisclevel',NULL,NULL,NULL,NULL,'4'),('68','31','drop_down',1,NULL,NULL,NULL,NULL,NULL,'5'),('69','31','drop_down',1,NULL,NULL,NULL,NULL,NULL,'6'),('70','31','drop_down',1,NULL,NULL,NULL,NULL,NULL,'7'),('71','28','field',0,'unitprice',NULL,NULL,NULL,NULL,'1'),('72','28','field',0,'actualqty',NULL,NULL,NULL,NULL,'2'),('73','28','drop_down',1,NULL,NULL,NULL,NULL,NULL,'3'),('74','28','drop_down',1,NULL,NULL,NULL,NULL,NULL,'4'),('75','28','drop_down',1,NULL,NULL,NULL,NULL,NULL,'5'),('76','28','field',0,'tgvalue',NULL,NULL,NULL,NULL,'6'),('77','28','field',0,'qtyreq',NULL,NULL,NULL,NULL,'7'),('78','35','field',1,'dep',NULL,NULL,NULL,NULL,'1');
/*!40000 ALTER TABLE `catalog_product_option` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `catalog_product_option_price`
--

DROP TABLE IF EXISTS `catalog_product_option_price`;
CREATE TABLE `catalog_product_option_price` (
  `option_price_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Option Price ID',
  `option_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Option ID',
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Store ID',
  `price` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Price',
  `price_type` varchar(7) NOT NULL DEFAULT 'fixed' COMMENT 'Price Type',
  PRIMARY KEY (`option_price_id`),
  UNIQUE KEY `CATALOG_PRODUCT_OPTION_PRICE_OPTION_ID_STORE_ID` (`option_id`,`store_id`),
  KEY `CATALOG_PRODUCT_OPTION_PRICE_STORE_ID` (`store_id`)
) ENGINE=InnoDB AUTO_INCREMENT=100 DEFAULT CHARSET=utf8 COMMENT='Catalog Product Option Price Table';

--
-- Dumping data for table `catalog_product_option_price`
--

LOCK TABLES `catalog_product_option_price` WRITE;
/*!40000 ALTER TABLE `catalog_product_option_price` DISABLE KEYS */;
INSERT INTO `catalog_product_option_price` VALUES ('1','78',0,'0.0000','fixed');
/*!40000 ALTER TABLE `catalog_product_option_price` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `catalog_product_option_title`
--

DROP TABLE IF EXISTS `catalog_product_option_title`;
CREATE TABLE `catalog_product_option_title` (
  `option_title_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Option Title ID',
  `option_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Option ID',
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Store ID',
  `title` varchar(255) DEFAULT NULL COMMENT 'Title',
  PRIMARY KEY (`option_title_id`),
  UNIQUE KEY `CATALOG_PRODUCT_OPTION_TITLE_OPTION_ID_STORE_ID` (`option_id`,`store_id`),
  KEY `CATALOG_PRODUCT_OPTION_TITLE_STORE_ID` (`store_id`)
) ENGINE=InnoDB AUTO_INCREMENT=206 DEFAULT CHARSET=utf8 COMMENT='Catalog Product Option Title Table';

--
-- Dumping data for table `catalog_product_option_title`
--

LOCK TABLES `catalog_product_option_title` WRITE;
/*!40000 ALTER TABLE `catalog_product_option_title` DISABLE KEYS */;
INSERT INTO `catalog_product_option_title` VALUES ('91','56',0,'Votre prix [CHF/m.v.p]'),('92','57',0,'Quantité [m.v.p]'),('93','58',0,'Épaisseur [mm]'),('94','59',0,'Largeur [mm]'),('95','60',0,'Longueur [m]'),('96','61',0,'Quantité desirée [m.v.p]'),('97','62',0,'Nombre nécessaire [pce]'),('98','63',0,'Votre prix [CHF/pce]'),('99','1',0,'Votre prix [CHF/m2]'),('100','2',0,'Quantité [m2]'),('101','3',0,'Épaisseur [mm]'),('102','4',0,'Largeur [mm]'),('103','5',0,'Longueur [m]'),('104','6',0,'Quantité desirée [m2]'),('105','7',0,'Nombre nécessaire [pce]'),('106','64',0,'Votre prix [CHF/m2]'),('107','65',0,'Quantité [m2]'),('108','66',0,'Rabais [CHF]'),('109','67',0,'Échelle suivante [m2]'),('110','68',0,'Épaisseur [mm]'),('111','69',0,'Largeur [mm]'),('112','70',0,'Longueur [m]'),('113','8',0,'Quantité desirée [m2]'),('114','9',0,'Nombre nécessaire [pce]'),('115','71',0,'Votre prix [CHF/m3]'),('116','72',0,'Quantité [m3]'),('117','73',0,'Épaisseur [mm]'),('118','74',0,'Largeur [mm]'),('119','75',0,'Longueur [m]'),('120','76',0,'Quantité desirée [m3]'),('121','77',0,'Nombre nécessaire [pce]'),('122','78',0,'Épaisseur [mm]');
/*!40000 ALTER TABLE `catalog_product_option_title` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `catalog_product_option_type_price`
--

DROP TABLE IF EXISTS `catalog_product_option_type_price`;
CREATE TABLE `catalog_product_option_type_price` (
  `option_type_price_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Option Type Price ID',
  `option_type_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Option Type ID',
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Store ID',
  `price` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Price',
  `price_type` varchar(7) NOT NULL DEFAULT 'fixed' COMMENT 'Price Type',
  PRIMARY KEY (`option_type_price_id`),
  UNIQUE KEY `CATALOG_PRODUCT_OPTION_TYPE_PRICE_OPTION_TYPE_ID_STORE_ID` (`option_type_id`,`store_id`),
  KEY `CATALOG_PRODUCT_OPTION_TYPE_PRICE_STORE_ID` (`store_id`)
) ENGINE=InnoDB AUTO_INCREMENT=477 DEFAULT CHARSET=utf8 COMMENT='Catalog Product Option Type Price Table';

--
-- Dumping data for table `catalog_product_option_type_price`
--

LOCK TABLES `catalog_product_option_type_price` WRITE;
/*!40000 ALTER TABLE `catalog_product_option_type_price` DISABLE KEYS */;
INSERT INTO `catalog_product_option_type_price` VALUES ('169','64',0,'0.0000','fixed'),('170','65',0,'0.0000','fixed'),('171','66',0,'0.0000','fixed'),('172','67',0,'0.0000','fixed'),('173','68',0,'0.0000','fixed'),('174','1',0,'0.0000','fixed'),('175','2',0,'0.0000','fixed'),('176','3',0,'0.0000','fixed'),('177','69',0,'0.0000','fixed'),('178','70',0,'0.0000','fixed'),('179','71',0,'0.0000','fixed'),('180','72',0,'0.0000','fixed'),('181','73',0,'0.0000','fixed'),('182','74',0,'0.0000','fixed'),('183','75',0,'0.0000','fixed'),('184','76',0,'0.0000','fixed'),('185','77',0,'0.0000','fixed'),('186','78',0,'0.0000','fixed'),('187','4',0,'0.0000','fixed'),('188','5',0,'0.0000','fixed'),('189','6',0,'0.0000','fixed'),('190','7',0,'0.0000','fixed'),('191','8',0,'0.0000','fixed'),('192','9',0,'0.0000','fixed'),('193','10',0,'0.0000','fixed'),('194','11',0,'0.0000','fixed'),('195','12',0,'0.0000','fixed'),('196','13',0,'0.0000','fixed'),('197','14',0,'0.0000','fixed'),('198','15',0,'0.0000','fixed'),('199','16',0,'0.0000','fixed'),('200','17',0,'0.0000','fixed'),('201','18',0,'0.0000','fixed'),('202','19',0,'0.0000','fixed'),('203','20',0,'0.0000','fixed'),('204','21',0,'0.0000','fixed'),('205','22',0,'0.0000','fixed'),('206','23',0,'0.0000','fixed'),('207','24',0,'0.0000','fixed'),('208','25',0,'0.0000','fixed'),('209','26',0,'0.0000','fixed'),('210','27',0,'0.0000','fixed'),('211','28',0,'0.0000','fixed'),('212','29',0,'0.0000','fixed'),('213','30',0,'0.0000','fixed'),('214','31',0,'0.0000','fixed'),('215','32',0,'0.0000','fixed'),('216','33',0,'0.0000','fixed');
/*!40000 ALTER TABLE `catalog_product_option_type_price` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `catalog_product_option_type_title`
--

DROP TABLE IF EXISTS `catalog_product_option_type_title`;
CREATE TABLE `catalog_product_option_type_title` (
  `option_type_title_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Option Type Title ID',
  `option_type_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Option Type ID',
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Store ID',
  `title` varchar(255) DEFAULT NULL COMMENT 'Title',
  PRIMARY KEY (`option_type_title_id`),
  UNIQUE KEY `CATALOG_PRODUCT_OPTION_TYPE_TITLE_OPTION_TYPE_ID_STORE_ID` (`option_type_id`,`store_id`),
  KEY `CATALOG_PRODUCT_OPTION_TYPE_TITLE_STORE_ID` (`store_id`)
) ENGINE=InnoDB AUTO_INCREMENT=477 DEFAULT CHARSET=utf8 COMMENT='Catalog Product Option Type Title Table';

--
-- Dumping data for table `catalog_product_option_type_title`
--

LOCK TABLES `catalog_product_option_type_title` WRITE;
/*!40000 ALTER TABLE `catalog_product_option_type_title` DISABLE KEYS */;
INSERT INTO `catalog_product_option_type_title` VALUES ('169','64',0,'75.0'),('170','65',0,'110.0'),('171','66',0,'4.00'),('172','67',0,'4.50'),('173','68',0,'5.00'),('174','1',0,'11.0'),('175','2',0,'1100.0'),('176','3',0,'25.00'),('177','69',0,'20.0'),('178','70',0,'107.0'),('179','71',0,'135.0'),('180','72',0,'160.0'),('181','73',0,'3.00'),('182','74',0,'4.00'),('183','75',0,'5.00'),('184','76',0,'80.0'),('185','77',0,'90.0'),('186','78',0,'100.0'),('187','4',0,'120.0'),('188','5',0,'160.0'),('189','6',0,'200.0'),('190','7',0,'240.0'),('191','8',0,'280.0'),('192','9',0,'320.0'),('193','10',0,'360.0'),('194','11',0,'400.0'),('195','12',0,'440.0'),('196','13',0,'3.50'),('197','14',0,'4.00'),('198','15',0,'4.50'),('199','16',0,'5.00'),('200','17',0,'5.50'),('201','18',0,'6.00'),('202','19',0,'6.50'),('203','20',0,'7.00'),('204','21',0,'7.50'),('205','22',0,'8.00'),('206','23',0,'8.50'),('207','24',0,'9.00'),('208','25',0,'9.50'),('209','26',0,'10.00'),('210','27',0,'10.50'),('211','28',0,'11.00'),('212','29',0,'11.50'),('213','30',0,'12.00'),('214','31',0,'12.50'),('215','32',0,'13.00'),('216','33',0,'13.50');
/*!40000 ALTER TABLE `catalog_product_option_type_title` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `catalog_product_option_type_value`
--

DROP TABLE IF EXISTS `catalog_product_option_type_value`;
CREATE TABLE `catalog_product_option_type_value` (
  `option_type_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Option Type ID',
  `option_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Option ID',
  `sku` varchar(64) DEFAULT NULL COMMENT 'SKU',
  `sort_order` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Sort Order',
  PRIMARY KEY (`option_type_id`),
  KEY `CATALOG_PRODUCT_OPTION_TYPE_VALUE_OPTION_ID` (`option_id`)
) ENGINE=InnoDB AUTO_INCREMENT=461 DEFAULT CHARSET=utf8 COMMENT='Catalog Product Option Type Value Table';

--
-- Dumping data for table `catalog_product_option_type_value`
--

LOCK TABLES `catalog_product_option_type_value` WRITE;
/*!40000 ALTER TABLE `catalog_product_option_type_value` DISABLE KEYS */;
INSERT INTO `catalog_product_option_type_value` VALUES ('1','3','dep11.0','1'),('2','4','wid1100.0','1'),('3','5','len25.00','1'),('4','74','wid120.0','1'),('5','74','wid160.0','2'),('6','74','wid200.0','3'),('7','74','wid240.0','4'),('8','74','wid280.0','5'),('9','74','wid320.0','6'),('10','74','wid360.0','7'),('11','74','wid400.0','8'),('12','74','wid440.0','9'),('13','75','len3.50','1'),('14','75','len4.00','2'),('15','75','len4.50','3'),('16','75','len5.00','4'),('17','75','len5.50','5'),('18','75','len6.00','6'),('19','75','len6.50','7'),('20','75','len7.00','8'),('21','75','len7.50','9'),('22','75','len8.00','10'),('23','75','len8.50','11'),('24','75','len9.00','12'),('25','75','len9.50','13'),('26','75','len10.00','14'),('27','75','len10.50','15'),('28','75','len11.00','16'),('29','75','len11.50','17'),('30','75','len12.00','18'),('31','75','len12.50','19'),('32','75','len13.00','20'),('33','75','len13.50','21'),('64','58','dep75.0','1'),('65','59','wid110.0','1'),('66','60','len4.00','1'),('67','60','len4.50','2'),('68','60','len5.00','3'),('69','68','dep20.0','1'),('70','69','wid107.0','1'),('71','69','wid135.0','2'),('72','69','wid160.0','3'),('73','70','len3.00','1'),('74','70','len4.00','2'),('75','70','len5.00','3'),('76','73','dep80.0','1'),('77','73','dep90.0','2'),('78','73','dep100.0','3');
/*!40000 ALTER TABLE `catalog_product_option_type_value` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `catalog_product_relation`
--

DROP TABLE IF EXISTS `catalog_product_relation`;
CREATE TABLE `catalog_product_relation` (
  `parent_id` int(10) unsigned NOT NULL COMMENT 'Parent ID',
  `child_id` int(10) unsigned NOT NULL COMMENT 'Child ID',
  PRIMARY KEY (`parent_id`,`child_id`),
  KEY `CATALOG_PRODUCT_RELATION_CHILD_ID` (`child_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product Relation Table';

--
-- Table structure for table `catalog_product_super_attribute`
--

DROP TABLE IF EXISTS `catalog_product_super_attribute`;
CREATE TABLE `catalog_product_super_attribute` (
  `product_super_attribute_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Product Super Attribute ID',
  `product_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Product ID',
  `attribute_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Attribute ID',
  `position` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Position',
  PRIMARY KEY (`product_super_attribute_id`),
  UNIQUE KEY `CATALOG_PRODUCT_SUPER_ATTRIBUTE_PRODUCT_ID_ATTRIBUTE_ID` (`product_id`,`attribute_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product Super Attribute Table';

--
-- Table structure for table `catalog_product_super_attribute_label`
--

DROP TABLE IF EXISTS `catalog_product_super_attribute_label`;
CREATE TABLE `catalog_product_super_attribute_label` (
  `value_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Value ID',
  `product_super_attribute_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Product Super Attribute ID',
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Store ID',
  `use_default` smallint(5) unsigned DEFAULT '0' COMMENT 'Use Default Value',
  `value` varchar(255) DEFAULT NULL COMMENT 'Value',
  PRIMARY KEY (`value_id`),
  UNIQUE KEY `CAT_PRD_SPR_ATTR_LBL_PRD_SPR_ATTR_ID_STORE_ID` (`product_super_attribute_id`,`store_id`),
  KEY `CATALOG_PRODUCT_SUPER_ATTRIBUTE_LABEL_STORE_ID` (`store_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product Super Attribute Label Table';

--
-- Table structure for table `catalog_product_super_link`
--

DROP TABLE IF EXISTS `catalog_product_super_link`;
CREATE TABLE `catalog_product_super_link` (
  `link_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Link ID',
  `product_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Product ID',
  `parent_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Parent ID',
  PRIMARY KEY (`link_id`),
  UNIQUE KEY `CATALOG_PRODUCT_SUPER_LINK_PRODUCT_ID_PARENT_ID` (`product_id`,`parent_id`),
  KEY `CATALOG_PRODUCT_SUPER_LINK_PARENT_ID` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product Super Link Table';

--
-- Table structure for table `catalog_product_website`
--

DROP TABLE IF EXISTS `catalog_product_website`;
CREATE TABLE `catalog_product_website` (
  `product_id` int(10) unsigned NOT NULL COMMENT 'Product ID',
  `website_id` smallint(5) unsigned NOT NULL COMMENT 'Website ID',
  PRIMARY KEY (`product_id`,`website_id`),
  KEY `CATALOG_PRODUCT_WEBSITE_WEBSITE_ID` (`website_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product To Website Linkage Table';

--
-- Dumping data for table `catalog_product_website`
--

LOCK TABLES `catalog_product_website` WRITE;
/*!40000 ALTER TABLE `catalog_product_website` DISABLE KEYS */;
INSERT INTO `catalog_product_website` VALUES ('27',2),('28',2),('29',2),('30',2),('31',2),('35',2);
/*!40000 ALTER TABLE `catalog_product_website` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `catalog_url_rewrite_product_category`
--

DROP TABLE IF EXISTS `catalog_url_rewrite_product_category`;
CREATE TABLE `catalog_url_rewrite_product_category` (
  `url_rewrite_id` int(10) unsigned NOT NULL COMMENT 'url_rewrite_id',
  `category_id` int(10) unsigned NOT NULL COMMENT 'category_id',
  `product_id` int(10) unsigned NOT NULL COMMENT 'product_id',
  KEY `CATALOG_URL_REWRITE_PRODUCT_CATEGORY_CATEGORY_ID_PRODUCT_ID` (`category_id`,`product_id`),
  KEY `CAT_URL_REWRITE_PRD_CTGR_PRD_ID_CAT_PRD_ENTT_ENTT_ID` (`product_id`),
  KEY `FK_BB79E64705D7F17FE181F23144528FC8` (`url_rewrite_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='url_rewrite_relation';

--
-- Dumping data for table `catalog_url_rewrite_product_category`
--

LOCK TABLES `catalog_url_rewrite_product_category` WRITE;
/*!40000 ALTER TABLE `catalog_url_rewrite_product_category` DISABLE KEYS */;
INSERT INTO `catalog_url_rewrite_product_category` VALUES ('164','9','27'),('165','3','27'),('166','7','27'),('167','8','27'),('169','9','27'),('170','3','27'),('171','7','27'),('172','8','27'),('174','6','28'),('175','3','28'),('176','4','28'),('177','5','28'),('179','6','28'),('180','3','28'),('181','4','28'),('182','5','28'),('184','18','29'),('185','3','29'),('186','16','29'),('187','17','29'),('189','18','29'),('190','3','29'),('191','16','29'),('192','17','29'),('194','15','30'),('195','3','30'),('196','13','30'),('197','14','30'),('199','15','30'),('200','3','30'),('201','13','30'),('202','14','30'),('204','12','31'),('205','3','31'),('206','10','31'),('207','11','31'),('209','12','31'),('210','3','31'),('211','10','31'),('212','11','31'),('214','9','35'),('215','3','35'),('216','7','35'),('217','8','35');
/*!40000 ALTER TABLE `catalog_url_rewrite_product_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cataloginventory_stock`
--

DROP TABLE IF EXISTS `cataloginventory_stock`;
CREATE TABLE `cataloginventory_stock` (
  `stock_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Stock Id',
  `website_id` smallint(5) unsigned NOT NULL COMMENT 'Website Id',
  `stock_name` varchar(255) DEFAULT NULL COMMENT 'Stock Name',
  PRIMARY KEY (`stock_id`),
  KEY `CATALOGINVENTORY_STOCK_WEBSITE_ID` (`website_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='Cataloginventory Stock';

--
-- Dumping data for table `cataloginventory_stock`
--

LOCK TABLES `cataloginventory_stock` WRITE;
/*!40000 ALTER TABLE `cataloginventory_stock` DISABLE KEYS */;
INSERT INTO `cataloginventory_stock` VALUES (1,0,'Default');
/*!40000 ALTER TABLE `cataloginventory_stock` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cataloginventory_stock_item`
--

DROP TABLE IF EXISTS `cataloginventory_stock_item`;
CREATE TABLE `cataloginventory_stock_item` (
  `item_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Item Id',
  `product_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Product Id',
  `stock_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Stock Id',
  `qty` decimal(12,4) DEFAULT NULL COMMENT 'Qty',
  `min_qty` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Min Qty',
  `use_config_min_qty` smallint(5) unsigned NOT NULL DEFAULT '1' COMMENT 'Use Config Min Qty',
  `is_qty_decimal` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Is Qty Decimal',
  `backorders` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Backorders',
  `use_config_backorders` smallint(5) unsigned NOT NULL DEFAULT '1' COMMENT 'Use Config Backorders',
  `min_sale_qty` decimal(12,4) NOT NULL DEFAULT '1.0000' COMMENT 'Min Sale Qty',
  `use_config_min_sale_qty` smallint(5) unsigned NOT NULL DEFAULT '1' COMMENT 'Use Config Min Sale Qty',
  `max_sale_qty` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Max Sale Qty',
  `use_config_max_sale_qty` smallint(5) unsigned NOT NULL DEFAULT '1' COMMENT 'Use Config Max Sale Qty',
  `is_in_stock` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Is In Stock',
  `low_stock_date` timestamp NULL DEFAULT NULL COMMENT 'Low Stock Date',
  `notify_stock_qty` decimal(12,4) DEFAULT NULL COMMENT 'Notify Stock Qty',
  `use_config_notify_stock_qty` smallint(5) unsigned NOT NULL DEFAULT '1' COMMENT 'Use Config Notify Stock Qty',
  `manage_stock` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Manage Stock',
  `use_config_manage_stock` smallint(5) unsigned NOT NULL DEFAULT '1' COMMENT 'Use Config Manage Stock',
  `stock_status_changed_auto` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Stock Status Changed Automatically',
  `use_config_qty_increments` smallint(5) unsigned NOT NULL DEFAULT '1' COMMENT 'Use Config Qty Increments',
  `qty_increments` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Qty Increments',
  `use_config_enable_qty_inc` smallint(5) unsigned NOT NULL DEFAULT '1' COMMENT 'Use Config Enable Qty Increments',
  `enable_qty_increments` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Enable Qty Increments',
  `is_decimal_divided` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Is Divided into Multiple Boxes for Shipping',
  `website_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Is Divided into Multiple Boxes for Shipping',
  PRIMARY KEY (`item_id`),
  UNIQUE KEY `CATALOGINVENTORY_STOCK_ITEM_PRODUCT_ID_WEBSITE_ID` (`product_id`,`website_id`),
  KEY `CATALOGINVENTORY_STOCK_ITEM_WEBSITE_ID` (`website_id`),
  KEY `CATALOGINVENTORY_STOCK_ITEM_STOCK_ID` (`stock_id`)
) ENGINE=InnoDB AUTO_INCREMENT=49 DEFAULT CHARSET=utf8 COMMENT='Cataloginventory Stock Item';

--
-- Dumping data for table `cataloginventory_stock_item`
--

LOCK TABLES `cataloginventory_stock_item` WRITE;
/*!40000 ALTER TABLE `cataloginventory_stock_item` DISABLE KEYS */;
INSERT INTO `cataloginventory_stock_item` VALUES ('32','27',1,'0.0000','0.0000',1,1,0,1,'1.0000',1,'10000.0000',1,0,'2017-10-04 15:45:05','1.0000',1,0,0,1,1,'1.0000',1,0,0,0),('33','28',1,'0.0000','0.0000',1,1,0,1,'1.0000',1,'10000.0000',1,0,'2017-10-04 15:45:05','1.0000',1,0,0,1,1,'1.0000',1,0,0,0),('34','29',1,'0.0000','0.0000',1,1,0,1,'1.0000',1,'10000.0000',1,0,'2017-10-04 15:45:05','1.0000',1,0,0,1,1,'1.0000',1,0,0,0),('35','30',1,'0.0000','0.0000',1,0,0,1,'1.0000',1,'10000.0000',1,0,'2017-10-04 15:45:05','1.0000',1,0,0,1,1,'1.0000',1,0,0,0),('36','31',1,'0.0000','0.0000',1,1,0,1,'1.0000',1,'10000.0000',1,0,'2017-10-04 15:45:05','1.0000',1,0,0,1,0,'5.0000',0,1,0,0),('46','35',1,'0.0000','0.0000',1,1,0,1,'1.0000',1,'10000.0000',1,0,'2017-10-09 13:31:34','1.0000',1,0,0,1,1,'1.0000',1,0,0,0);
/*!40000 ALTER TABLE `cataloginventory_stock_item` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cataloginventory_stock_status`
--

DROP TABLE IF EXISTS `cataloginventory_stock_status`;
CREATE TABLE `cataloginventory_stock_status` (
  `product_id` int(10) unsigned NOT NULL COMMENT 'Product Id',
  `website_id` smallint(5) unsigned NOT NULL COMMENT 'Website Id',
  `stock_id` smallint(5) unsigned NOT NULL COMMENT 'Stock Id',
  `qty` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Qty',
  `stock_status` smallint(5) unsigned NOT NULL COMMENT 'Stock Status',
  PRIMARY KEY (`product_id`,`website_id`,`stock_id`),
  KEY `CATALOGINVENTORY_STOCK_STATUS_STOCK_ID` (`stock_id`),
  KEY `CATALOGINVENTORY_STOCK_STATUS_WEBSITE_ID` (`website_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Cataloginventory Stock Status';

--
-- Dumping data for table `cataloginventory_stock_status`
--

LOCK TABLES `cataloginventory_stock_status` WRITE;
/*!40000 ALTER TABLE `cataloginventory_stock_status` DISABLE KEYS */;
INSERT INTO `cataloginventory_stock_status` VALUES ('27',0,1,'0.0000',1),('28',0,1,'0.0000',1),('29',0,1,'0.0000',1),('30',0,1,'0.0000',1),('31',0,1,'0.0000',1),('35',0,1,'0.0000',1);
/*!40000 ALTER TABLE `cataloginventory_stock_status` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cataloginventory_stock_status_idx`
--

DROP TABLE IF EXISTS `cataloginventory_stock_status_idx`;
CREATE TABLE `cataloginventory_stock_status_idx` (
  `product_id` int(10) unsigned NOT NULL COMMENT 'Product Id',
  `website_id` smallint(5) unsigned NOT NULL COMMENT 'Website Id',
  `stock_id` smallint(5) unsigned NOT NULL COMMENT 'Stock Id',
  `qty` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Qty',
  `stock_status` smallint(5) unsigned NOT NULL COMMENT 'Stock Status',
  PRIMARY KEY (`product_id`,`website_id`,`stock_id`),
  KEY `CATALOGINVENTORY_STOCK_STATUS_IDX_STOCK_ID` (`stock_id`),
  KEY `CATALOGINVENTORY_STOCK_STATUS_IDX_WEBSITE_ID` (`website_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Cataloginventory Stock Status Indexer Idx';

--
-- Dumping data for table `cataloginventory_stock_status_idx`
--

LOCK TABLES `cataloginventory_stock_status_idx` WRITE;
/*!40000 ALTER TABLE `cataloginventory_stock_status_idx` DISABLE KEYS */;
INSERT INTO `cataloginventory_stock_status_idx` VALUES ('27',0,1,'0.0000',1),('28',0,1,'0.0000',1),('29',0,1,'0.0000',1),('30',0,1,'0.0000',1),('31',0,1,'0.0000',1),('35',0,1,'0.0000',1);
/*!40000 ALTER TABLE `cataloginventory_stock_status_idx` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cataloginventory_stock_status_tmp`
--

DROP TABLE IF EXISTS `cataloginventory_stock_status_tmp`;
CREATE TABLE `cataloginventory_stock_status_tmp` (
  `product_id` int(10) unsigned NOT NULL COMMENT 'Product Id',
  `website_id` smallint(5) unsigned NOT NULL COMMENT 'Website Id',
  `stock_id` smallint(5) unsigned NOT NULL COMMENT 'Stock Id',
  `qty` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Qty',
  `stock_status` smallint(5) unsigned NOT NULL COMMENT 'Stock Status',
  PRIMARY KEY (`product_id`,`website_id`,`stock_id`),
  KEY `CATALOGINVENTORY_STOCK_STATUS_TMP_STOCK_ID` (`stock_id`),
  KEY `CATALOGINVENTORY_STOCK_STATUS_TMP_WEBSITE_ID` (`website_id`)
) ENGINE=MEMORY DEFAULT CHARSET=utf8 COMMENT='Cataloginventory Stock Status Indexer Tmp';

--
-- Table structure for table `catalogrule`
--

DROP TABLE IF EXISTS `catalogrule`;
CREATE TABLE `catalogrule` (
  `rule_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Rule Id',
  `name` varchar(255) DEFAULT NULL COMMENT 'Name',
  `description` text COMMENT 'Description',
  `from_date` date DEFAULT NULL COMMENT 'From',
  `to_date` date DEFAULT NULL COMMENT 'To',
  `is_active` smallint(6) NOT NULL DEFAULT '0' COMMENT 'Is Active',
  `conditions_serialized` mediumtext COMMENT 'Conditions Serialized',
  `actions_serialized` mediumtext COMMENT 'Actions Serialized',
  `stop_rules_processing` smallint(6) NOT NULL DEFAULT '1' COMMENT 'Stop Rules Processing',
  `sort_order` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Sort Order',
  `simple_action` varchar(32) DEFAULT NULL COMMENT 'Simple Action',
  `discount_amount` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Discount Amount',
  PRIMARY KEY (`rule_id`),
  KEY `CATALOGRULE_IS_ACTIVE_SORT_ORDER_TO_DATE_FROM_DATE` (`is_active`,`sort_order`,`to_date`,`from_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='CatalogRule';

--
-- Table structure for table `catalogrule_customer_group`
--

DROP TABLE IF EXISTS `catalogrule_customer_group`;
CREATE TABLE `catalogrule_customer_group` (
  `rule_id` int(10) unsigned NOT NULL COMMENT 'Rule Id',
  `customer_group_id` smallint(5) unsigned NOT NULL COMMENT 'Customer Group Id',
  PRIMARY KEY (`rule_id`,`customer_group_id`),
  KEY `CATALOGRULE_CUSTOMER_GROUP_CUSTOMER_GROUP_ID` (`customer_group_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Rules To Customer Groups Relations';

--
-- Table structure for table `catalogrule_group_website`
--

DROP TABLE IF EXISTS `catalogrule_group_website`;
CREATE TABLE `catalogrule_group_website` (
  `rule_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Rule Id',
  `customer_group_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Customer Group Id',
  `website_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Website Id',
  PRIMARY KEY (`rule_id`,`customer_group_id`,`website_id`),
  KEY `CATALOGRULE_GROUP_WEBSITE_CUSTOMER_GROUP_ID` (`customer_group_id`),
  KEY `CATALOGRULE_GROUP_WEBSITE_WEBSITE_ID` (`website_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='CatalogRule Group Website';

--
-- Table structure for table `catalogrule_product`
--

DROP TABLE IF EXISTS `catalogrule_product`;
CREATE TABLE `catalogrule_product` (
  `rule_product_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Rule Product Id',
  `rule_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Rule Id',
  `from_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'From Time',
  `to_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'To time',
  `customer_group_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Customer Group Id',
  `product_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Product Id',
  `action_operator` varchar(10) DEFAULT 'to_fixed' COMMENT 'Action Operator',
  `action_amount` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Action Amount',
  `action_stop` smallint(6) NOT NULL DEFAULT '0' COMMENT 'Action Stop',
  `sort_order` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Sort Order',
  `website_id` smallint(5) unsigned NOT NULL COMMENT 'Website Id',
  PRIMARY KEY (`rule_product_id`),
  UNIQUE KEY `IDX_EAA51B56FF092A0DCB795D1CEF812B7B` (`rule_id`,`from_time`,`to_time`,`website_id`,`customer_group_id`,`product_id`,`sort_order`),
  KEY `CATALOGRULE_PRODUCT_CUSTOMER_GROUP_ID` (`customer_group_id`),
  KEY `CATALOGRULE_PRODUCT_WEBSITE_ID` (`website_id`),
  KEY `CATALOGRULE_PRODUCT_FROM_TIME` (`from_time`),
  KEY `CATALOGRULE_PRODUCT_TO_TIME` (`to_time`),
  KEY `CATALOGRULE_PRODUCT_PRODUCT_ID` (`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='CatalogRule Product';

--
-- Table structure for table `catalogrule_product_price`
--

DROP TABLE IF EXISTS `catalogrule_product_price`;
CREATE TABLE `catalogrule_product_price` (
  `rule_product_price_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Rule Product PriceId',
  `rule_date` date NOT NULL COMMENT 'Rule Date',
  `customer_group_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Customer Group Id',
  `product_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Product Id',
  `rule_price` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Rule Price',
  `website_id` smallint(5) unsigned NOT NULL COMMENT 'Website Id',
  `latest_start_date` date DEFAULT NULL COMMENT 'Latest StartDate',
  `earliest_end_date` date DEFAULT NULL COMMENT 'Earliest EndDate',
  PRIMARY KEY (`rule_product_price_id`),
  UNIQUE KEY `CATRULE_PRD_PRICE_RULE_DATE_WS_ID_CSTR_GROUP_ID_PRD_ID` (`rule_date`,`website_id`,`customer_group_id`,`product_id`),
  KEY `CATALOGRULE_PRODUCT_PRICE_CUSTOMER_GROUP_ID` (`customer_group_id`),
  KEY `CATALOGRULE_PRODUCT_PRICE_WEBSITE_ID` (`website_id`),
  KEY `CATALOGRULE_PRODUCT_PRICE_PRODUCT_ID` (`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='CatalogRule Product Price';

--
-- Table structure for table `catalogrule_website`
--

DROP TABLE IF EXISTS `catalogrule_website`;
CREATE TABLE `catalogrule_website` (
  `rule_id` int(10) unsigned NOT NULL COMMENT 'Rule Id',
  `website_id` smallint(5) unsigned NOT NULL COMMENT 'Website Id',
  PRIMARY KEY (`rule_id`,`website_id`),
  KEY `CATALOGRULE_WEBSITE_WEBSITE_ID` (`website_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Rules To Websites Relations';

--
-- Table structure for table `catalogsearch_fulltext_scope1`
--

DROP TABLE IF EXISTS `catalogsearch_fulltext_scope1`;
CREATE TABLE `catalogsearch_fulltext_scope1` (
  `entity_id` int(10) unsigned NOT NULL COMMENT 'Entity ID',
  `attribute_id` int(10) unsigned NOT NULL COMMENT 'Attribute_id',
  `data_index` longtext COMMENT 'Data index',
  PRIMARY KEY (`entity_id`,`attribute_id`),
  FULLTEXT KEY `FTI_FULLTEXT_DATA_INDEX` (`data_index`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='catalogsearch_fulltext_scope1';

--
-- Table structure for table `catalogsearch_fulltext_scope2`
--

DROP TABLE IF EXISTS `catalogsearch_fulltext_scope2`;
CREATE TABLE `catalogsearch_fulltext_scope2` (
  `entity_id` int(10) unsigned NOT NULL COMMENT 'Entity ID',
  `attribute_id` int(10) unsigned NOT NULL COMMENT 'Attribute_id',
  `data_index` longtext COMMENT 'Data index',
  PRIMARY KEY (`entity_id`,`attribute_id`),
  FULLTEXT KEY `FTI_FULLTEXT_DATA_INDEX` (`data_index`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='catalogsearch_fulltext_scope2';

--
-- Dumping data for table `catalogsearch_fulltext_scope2`
--

LOCK TABLES `catalogsearch_fulltext_scope2` WRITE;
/*!40000 ALTER TABLE `catalogsearch_fulltext_scope2` DISABLE KEYS */;
INSERT INTO `catalogsearch_fulltext_scope2` VALUES ('27','73','Ampatop 25'),('27','74','3865'),('28','73','Lamellé-collé BS-11 épicéa SI'),('28','74','4680'),('29','73','Carrelets guichets épicéa'),('29','74','4942'),('30','73','Vis de fixation Vidiwall'),('30','74','3814'),('31','73','Lames mélèze IIB-IIIA'),('31','74','4308');
/*!40000 ALTER TABLE `catalogsearch_fulltext_scope2` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `catalogsearch_fulltext_scope3`
--

DROP TABLE IF EXISTS `catalogsearch_fulltext_scope3`;
CREATE TABLE `catalogsearch_fulltext_scope3` (
  `entity_id` int(10) unsigned NOT NULL COMMENT 'Entity ID',
  `attribute_id` int(10) unsigned NOT NULL COMMENT 'Attribute_id',
  `data_index` longtext COMMENT 'Data index',
  PRIMARY KEY (`entity_id`,`attribute_id`),
  FULLTEXT KEY `FTI_FULLTEXT_DATA_INDEX` (`data_index`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='catalogsearch_fulltext_scope3';

--
-- Dumping data for table `catalogsearch_fulltext_scope3`
--

LOCK TABLES `catalogsearch_fulltext_scope3` WRITE;
/*!40000 ALTER TABLE `catalogsearch_fulltext_scope3` DISABLE KEYS */;
INSERT INTO `catalogsearch_fulltext_scope3` VALUES ('27','73','Ampatop 25'),('27','74','3865'),('28','73','Lamellé-collé BS-11 épicéa SI'),('28','74','4680'),('29','73','Carrelets guichets épicéa'),('29','74','4942'),('30','73','Vis de fixation Vidiwall'),('30','74','3814'),('31','73','Lames mélèze IIB-IIIA'),('31','74','4308');
/*!40000 ALTER TABLE `catalogsearch_fulltext_scope3` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `catalogsearch_fulltext_scope4`
--

DROP TABLE IF EXISTS `catalogsearch_fulltext_scope4`;
CREATE TABLE `catalogsearch_fulltext_scope4` (
  `entity_id` int(10) unsigned NOT NULL COMMENT 'Entity ID',
  `attribute_id` int(10) unsigned NOT NULL COMMENT 'Attribute_id',
  `data_index` longtext COMMENT 'Data index',
  PRIMARY KEY (`entity_id`,`attribute_id`),
  FULLTEXT KEY `FTI_FULLTEXT_DATA_INDEX` (`data_index`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='catalogsearch_fulltext_scope4';

--
-- Table structure for table `catalogsearch_fulltext_scope5`
--

DROP TABLE IF EXISTS `catalogsearch_fulltext_scope5`;
CREATE TABLE `catalogsearch_fulltext_scope5` (
  `entity_id` int(10) unsigned NOT NULL COMMENT 'Entity ID',
  `attribute_id` int(10) unsigned NOT NULL COMMENT 'Attribute_id',
  `data_index` longtext COMMENT 'Data index',
  PRIMARY KEY (`entity_id`,`attribute_id`),
  FULLTEXT KEY `FTI_FULLTEXT_DATA_INDEX` (`data_index`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='catalogsearch_fulltext_scope5';

--
-- Table structure for table `catalogsearch_fulltext_scope6`
--

DROP TABLE IF EXISTS `catalogsearch_fulltext_scope6`;
CREATE TABLE `catalogsearch_fulltext_scope6` (
  `entity_id` int(10) unsigned NOT NULL COMMENT 'Entity ID',
  `attribute_id` int(10) unsigned NOT NULL COMMENT 'Attribute_id',
  `data_index` longtext COMMENT 'Data index',
  PRIMARY KEY (`entity_id`,`attribute_id`),
  FULLTEXT KEY `FTI_FULLTEXT_DATA_INDEX` (`data_index`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='catalogsearch_fulltext_scope6';

--
-- Table structure for table `checkout_agreement`
--

DROP TABLE IF EXISTS `checkout_agreement`;
CREATE TABLE `checkout_agreement` (
  `agreement_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Agreement Id',
  `name` varchar(255) DEFAULT NULL COMMENT 'Name',
  `content` text COMMENT 'Content',
  `content_height` varchar(25) DEFAULT NULL COMMENT 'Content Height',
  `checkbox_text` text COMMENT 'Checkbox Text',
  `is_active` smallint(6) NOT NULL DEFAULT '0' COMMENT 'Is Active',
  `is_html` smallint(6) NOT NULL DEFAULT '0' COMMENT 'Is Html',
  `mode` smallint(6) NOT NULL DEFAULT '0' COMMENT 'Applied mode',
  PRIMARY KEY (`agreement_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Checkout Agreement';

--
-- Table structure for table `checkout_agreement_store`
--

DROP TABLE IF EXISTS `checkout_agreement_store`;
CREATE TABLE `checkout_agreement_store` (
  `agreement_id` int(10) unsigned NOT NULL COMMENT 'Agreement Id',
  `store_id` smallint(5) unsigned NOT NULL COMMENT 'Store Id',
  PRIMARY KEY (`agreement_id`,`store_id`),
  KEY `CHECKOUT_AGREEMENT_STORE_STORE_ID_STORE_STORE_ID` (`store_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Checkout Agreement Store';

--
-- Table structure for table `cms_block`
--

DROP TABLE IF EXISTS `cms_block`;
CREATE TABLE `cms_block` (
  `block_id` smallint(6) NOT NULL AUTO_INCREMENT COMMENT 'Block ID',
  `title` varchar(255) NOT NULL COMMENT 'Block Title',
  `identifier` varchar(255) NOT NULL COMMENT 'Block String Identifier',
  `content` mediumtext COMMENT 'Block Content',
  `creation_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Block Creation Time',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Block Modification Time',
  `is_active` smallint(6) NOT NULL DEFAULT '1' COMMENT 'Is Block Active',
  PRIMARY KEY (`block_id`),
  FULLTEXT KEY `CMS_BLOCK_TITLE_IDENTIFIER_CONTENT` (`title`,`identifier`,`content`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='CMS Block Table';

--
-- Table structure for table `cms_block_store`
--

DROP TABLE IF EXISTS `cms_block_store`;
CREATE TABLE `cms_block_store` (
  `block_id` smallint(6) NOT NULL COMMENT 'Block ID',
  `store_id` smallint(5) unsigned NOT NULL COMMENT 'Store ID',
  PRIMARY KEY (`block_id`,`store_id`),
  KEY `CMS_BLOCK_STORE_STORE_ID` (`store_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='CMS Block To Store Linkage Table';

--
-- Table structure for table `cms_page`
--

DROP TABLE IF EXISTS `cms_page`;
CREATE TABLE `cms_page` (
  `page_id` smallint(6) NOT NULL AUTO_INCREMENT COMMENT 'Page ID',
  `title` varchar(255) DEFAULT NULL COMMENT 'Page Title',
  `page_layout` varchar(255) DEFAULT NULL COMMENT 'Page Layout',
  `meta_keywords` text COMMENT 'Page Meta Keywords',
  `meta_description` text COMMENT 'Page Meta Description',
  `identifier` varchar(100) DEFAULT NULL COMMENT 'Page String Identifier',
  `content_heading` varchar(255) DEFAULT NULL COMMENT 'Page Content Heading',
  `content` mediumtext COMMENT 'Page Content',
  `creation_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Page Creation Time',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Page Modification Time',
  `is_active` smallint(6) NOT NULL DEFAULT '1' COMMENT 'Is Page Active',
  `sort_order` smallint(6) NOT NULL DEFAULT '0' COMMENT 'Page Sort Order',
  `layout_update_xml` text COMMENT 'Page Layout Update Content',
  `custom_theme` varchar(100) DEFAULT NULL COMMENT 'Page Custom Theme',
  `custom_root_template` varchar(255) DEFAULT NULL COMMENT 'Page Custom Template',
  `custom_layout_update_xml` text COMMENT 'Page Custom Layout Update Content',
  `custom_theme_from` date DEFAULT NULL COMMENT 'Page Custom Theme Active From Date',
  `custom_theme_to` date DEFAULT NULL COMMENT 'Page Custom Theme Active To Date',
  `meta_title` varchar(255) DEFAULT NULL COMMENT 'Page Meta Title',
  PRIMARY KEY (`page_id`),
  KEY `CMS_PAGE_IDENTIFIER` (`identifier`),
  FULLTEXT KEY `CMS_PAGE_TITLE_META_KEYWORDS_META_DESCRIPTION_IDENTIFIER_CONTENT` (`title`,`meta_keywords`,`meta_description`,`identifier`,`content`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='CMS Page Table';

--
-- Dumping data for table `cms_page`
--

LOCK TABLES `cms_page` WRITE;
/*!40000 ALTER TABLE `cms_page` DISABLE KEYS */;
INSERT INTO `cms_page` VALUES (1,'404 Not Found','2columns-right','Page keywords','Page description','no-route','Whoops, our bad...','<dl>\r\n<dt>The page you requested was not found, and we have a fine guess why.</dt>\r\n<dd>\r\n<ul class=\"disc\">\r\n<li>If you typed the URL directly, please make sure the spelling is correct.</li>\r\n<li>If you clicked on a link to get here, the link is outdated.</li>\r\n</ul></dd>\r\n</dl>\r\n<dl>\r\n<dt>What can you do?</dt>\r\n<dd>Have no fear, help is near! There are many ways you can get back on track with Magento Store.</dd>\r\n<dd>\r\n<ul class=\"disc\">\r\n<li><a href=\"#\" onclick=\"history.go(-1); return false;\">Go back</a> to the previous page.</li>\r\n<li>Use the search bar at the top of the page to search for your products.</li>\r\n<li>Follow these links to get you back on track!<br /><a href=\"{{store url=\"\"}}\">Store Home</a> <span class=\"separator\">|</span> <a href=\"{{store url=\"customer/account\"}}\">My Account</a></li></ul></dd></dl>\r\n','2017-09-20 09:34:36','2017-09-20 09:34:36',1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(2,'Fournier & Cie','1column','','','home','','<p>{{widget type=\"Magento\\CatalogWidget\\Block\\Product\\ProductsList\" title=\"Articles\" show_pager=\"0\" products_count=\"10\" template=\"product/widget/content/grid.phtml\" conditions_encoded=\"a:1:[i:1;a:4:[s:4:`type`;s:50:`Magento|CatalogWidget|Model|Rule|Condition|Combine`;s:10:`aggregator`;s:3:`all`;s:5:`value`;s:1:`1`;s:9:`new_child`;s:0:``;]]\"}}</p>','2017-09-20 09:34:37','2017-09-27 21:15:30',1,0,'<!--\r\n    <referenceContainer name=\"right\">\r\n        <action method=\"unsetChild\"><argument name=\"alias\" xsi:type=\"string\">right.reports.product.viewed</argument></action>\r\n        <action method=\"unsetChild\"><argument name=\"alias\" xsi:type=\"string\">right.reports.product.compared</argument></action>\r\n    </referenceContainer>-->','','',NULL,NULL,NULL,''),(3,'Enable Cookies','1column',NULL,NULL,'enable-cookies','What are Cookies?','<div class=\"enable-cookies cms-content\">\r\n<p>\"Cookies\" are little pieces of data we send when you visit our store. Cookies help us get to know you better and personalize your experience. Plus they help protect you and other shoppers from fraud.</p>\r\n<p style=\"margin-bottom: 20px;\">Set your browser to accept cookies so you can buy items, save items, and receive customized recommendations. Here’s how:</p>\r\n<ul>\r\n<li><a href=\"https://support.google.com/accounts/answer/61416?hl=en\" target=\"_blank\">Google Chrome</a></li>\r\n<li><a href=\"http://windows.microsoft.com/en-us/internet-explorer/delete-manage-cookies\" target=\"_blank\">Internet Explorer</a></li>\r\n<li><a href=\"http://support.apple.com/kb/PH19214\" target=\"_blank\">Safari</a></li>\r\n<li><a href=\"https://support.mozilla.org/en-US/kb/enable-and-disable-cookies-website-preferences\" target=\"_blank\">Mozilla/Firefox</a></li>\r\n</ul>\r\n</div>','2017-09-20 09:34:37','2017-09-20 09:34:37',1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(4,'Privacy and Cookie Policy','1column',NULL,NULL,'privacy-policy-cookie-restriction-mode','Privacy and Cookie Policy','<div class=\"privacy-policy cms-content\">\n    <div class=\"message info\">\n        <span>\n            Please replace this text with you Privacy Policy.\n            Please add any additional cookies your website uses below (e.g. Google Analytics).\n        </span>\n    </div>\n    <p>\n        This privacy policy sets out how this website (hereafter \"the Store\") uses and protects any information that\n        you give the Store while using this website. The Store is committed to ensuring that your privacy is protected.\n        Should we ask you to provide certain information by which you can be identified when using this website, then\n        you can be assured that it will only be used in accordance with this privacy statement. The Store may change\n        this policy from time to time by updating this page. You should check this page from time to time to ensure\n        that you are happy with any changes.\n    </p>\n    <h2>What we collect</h2>\n    <p>We may collect the following information:</p>\n    <ul>\n        <li>name</li>\n        <li>contact information including email address</li>\n        <li>demographic information such as postcode, preferences and interests</li>\n        <li>other information relevant to customer surveys and/or offers</li>\n    </ul>\n    <p>\n        For the exhaustive list of cookies we collect see the <a href=\"#list\">List of cookies we collect</a> section.\n    </p>\n    <h2>What we do with the information we gather</h2>\n    <p>\n        We require this information to understand your needs and provide you with a better service,\n        and in particular for the following reasons:\n    </p>\n    <ul>\n        <li>Internal record keeping.</li>\n        <li>We may use the information to improve our products and services.</li>\n        <li>\n            We may periodically send promotional emails about new products, special offers or other information which we\n            think you may find interesting using the email address which you have provided.\n        </li>\n        <li>\n            From time to time, we may also use your information to contact you for market research purposes.\n            We may contact you by email, phone, fax or mail. We may use the information to customise the website\n            according to your interests.\n        </li>\n    </ul>\n    <h2>Security</h2>\n    <p>\n        We are committed to ensuring that your information is secure. In order to prevent unauthorised access or\n        disclosure, we have put in place suitable physical, electronic and managerial procedures to safeguard and\n        secure the information we collect online.\n    </p>\n    <h2>How we use cookies</h2>\n    <p>\n        A cookie is a small file which asks permission to be placed on your computer\'s hard drive.\n        Once you agree, the file is added and the cookie helps analyse web traffic or lets you know when you visit\n        a particular site. Cookies allow web applications to respond to you as an individual. The web application\n        can tailor its operations to your needs, likes and dislikes by gathering and remembering information about\n        your preferences.\n    </p>\n    <p>\n        We use traffic log cookies to identify which pages are being used. This helps us analyse data about web page\n        traffic and improve our website in order to tailor it to customer needs. We only use this information for\n        statistical analysis purposes and then the data is removed from the system.\n    </p>\n    <p>\n        Overall, cookies help us provide you with a better website, by enabling us to monitor which pages you find\n        useful and which you do not. A cookie in no way gives us access to your computer or any information about you,\n        other than the data you choose to share with us. You can choose to accept or decline cookies.\n        Most web browsers automatically accept cookies, but you can usually modify your browser setting\n        to decline cookies if you prefer. This may prevent you from taking full advantage of the website.\n    </p>\n    <h2>Links to other websites</h2>\n    <p>\n        Our website may contain links to other websites of interest. However, once you have used these links\n        to leave our site, you should note that we do not have any control over that other website.\n        Therefore, we cannot be responsible for the protection and privacy of any information which you provide whilst\n        visiting such sites and such sites are not governed by this privacy statement.\n        You should exercise caution and look at the privacy statement applicable to the website in question.\n    </p>\n    <h2>Controlling your personal information</h2>\n    <p>You may choose to restrict the collection or use of your personal information in the following ways:</p>\n    <ul>\n        <li>\n            whenever you are asked to fill in a form on the website, look for the box that you can click to indicate\n            that you do not want the information to be used by anybody for direct marketing purposes\n        </li>\n        <li>\n            if you have previously agreed to us using your personal information for direct marketing purposes,\n            you may change your mind at any time by letting us know using our Contact Us information\n        </li>\n    </ul>\n    <p>\n        We will not sell, distribute or lease your personal information to third parties unless we have your permission\n        or are required by law to do so. We may use your personal information to send you promotional information\n        about third parties which we think you may find interesting if you tell us that you wish this to happen.\n    </p>\n    <p>\n        You may request details of personal information which we hold about you under the Data Protection Act 1998.\n        A small fee will be payable. If you would like a copy of the information held on you please email us this\n        request using our Contact Us information.\n    </p>\n    <p>\n        If you believe that any information we are holding on you is incorrect or incomplete,\n        please write to or email us as soon as possible, at the above address.\n        We will promptly correct any information found to be incorrect.\n    </p>\n    <h2><a name=\"list\"></a>List of cookies we collect</h2>\n    <p>The table below lists the cookies we collect and what information they store.</p>\n    <table class=\"data-table data-table-definition-list\">\n        <thead>\n        <tr>\n            <th>Cookie Name</th>\n            <th>Cookie Description</th>\n        </tr>\n        </thead>\n        <tbody>\n            <tr>\n                <th>FORM_KEY</th>\n                <td>Stores randomly generated key used to prevent forged requests.</td>\n            </tr>\n            <tr>\n                <th>PHPSESSID</th>\n                <td>Your session ID on the server.</td>\n            </tr>\n            <tr>\n                <th>GUEST-VIEW</th>\n                <td>Allows guests to view and edit their orders.</td>\n            </tr>\n            <tr>\n                <th>PERSISTENT_SHOPPING_CART</th>\n                <td>A link to information about your cart and viewing history, if you have asked for this.</td>\n            </tr>\n            <tr>\n                <th>STF</th>\n                <td>Information on products you have emailed to friends.</td>\n            </tr>\n            <tr>\n                <th>STORE</th>\n                <td>The store view or language you have selected.</td>\n            </tr>\n            <tr>\n                <th>USER_ALLOWED_SAVE_COOKIE</th>\n                <td>Indicates whether a customer allowed to use cookies.</td>\n            </tr>\n            <tr>\n                <th>MAGE-CACHE-SESSID</th>\n                <td>Facilitates caching of content on the browser to make pages load faster.</td>\n            </tr>\n            <tr>\n                <th>MAGE-CACHE-STORAGE</th>\n                <td>Facilitates caching of content on the browser to make pages load faster.</td>\n            </tr>\n            <tr>\n                <th>MAGE-CACHE-STORAGE-SECTION-INVALIDATION</th>\n                <td>Facilitates caching of content on the browser to make pages load faster.</td>\n            </tr>\n            <tr>\n                <th>MAGE-CACHE-TIMEOUT</th>\n                <td>Facilitates caching of content on the browser to make pages load faster.</td>\n            </tr>\n            <tr>\n                <th>SECTION-DATA-IDS</th>\n                <td>Facilitates caching of content on the browser to make pages load faster.</td>\n            </tr>\n            <tr>\n                <th>PRIVATE_CONTENT_VERSION</th>\n                <td>Facilitates caching of content on the browser to make pages load faster.</td>\n            </tr>\n            <tr>\n                <th>X-MAGENTO-VARY</th>\n                <td>Facilitates caching of content on the server to make pages load faster.</td>\n            </tr>\n            <tr>\n                <th>MAGE-TRANSLATION-FILE-VERSION</th>\n                <td>Facilitates translation of content to other languages.</td>\n            </tr>\n            <tr>\n                <th>MAGE-TRANSLATION-STORAGE</th>\n                <td>Facilitates translation of content to other languages.</td>\n            </tr>\n        </tbody>\n    </table>\n</div>','2017-09-20 09:34:37','2017-09-20 09:34:37',1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `cms_page` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cms_page_store`
--

DROP TABLE IF EXISTS `cms_page_store`;
CREATE TABLE `cms_page_store` (
  `page_id` smallint(6) NOT NULL COMMENT 'Page ID',
  `store_id` smallint(5) unsigned NOT NULL COMMENT 'Store ID',
  PRIMARY KEY (`page_id`,`store_id`),
  KEY `CMS_PAGE_STORE_STORE_ID` (`store_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='CMS Page To Store Linkage Table';

--
-- Dumping data for table `cms_page_store`
--

LOCK TABLES `cms_page_store` WRITE;
/*!40000 ALTER TABLE `cms_page_store` DISABLE KEYS */;
INSERT INTO `cms_page_store` VALUES (1,0),(2,0),(3,0),(4,0);
/*!40000 ALTER TABLE `cms_page_store` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `core_config_data`
--

DROP TABLE IF EXISTS `core_config_data`;
CREATE TABLE `core_config_data` (
  `config_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Config Id',
  `scope` varchar(8) NOT NULL DEFAULT 'default' COMMENT 'Config Scope',
  `scope_id` int(11) NOT NULL DEFAULT '0' COMMENT 'Config Scope Id',
  `path` varchar(255) NOT NULL DEFAULT 'general' COMMENT 'Config Path',
  `value` text COMMENT 'Config Value',
  PRIMARY KEY (`config_id`),
  UNIQUE KEY `CORE_CONFIG_DATA_SCOPE_SCOPE_ID_PATH` (`scope`,`scope_id`,`path`)
) ENGINE=InnoDB AUTO_INCREMENT=159 DEFAULT CHARSET=utf8 COMMENT='Config Data';

--
-- Dumping data for table `core_config_data`
--

LOCK TABLES `core_config_data` WRITE;
/*!40000 ALTER TABLE `core_config_data` DISABLE KEYS */;
INSERT INTO `core_config_data` VALUES ('1','default','0','web/seo/use_rewrites','1'),('2','default','0','web/unsecure/base_url','http://dev3.fournierbois.ch/'),('3','default','0','web/secure/base_url','https://dev3.fournierbois.ch/'),('4','default','0','general/locale/code','fr_FR'),('5','default','0','web/secure/use_in_frontend','0'),('6','default','0','web/secure/use_in_adminhtml','0'),('7','default','0','general/locale/timezone','Europe/Zurich'),('8','default','0','currency/options/base','CHF'),('9','default','0','currency/options/default','CHF'),('10','default','0','currency/options/allow','CHF'),('11','default','0','general/region/display_all','0'),('12','default','0','general/region/state_required','AT,BR,CA,EE,FI,LV,LT,RO,ES,US'),('13','default','0','catalog/category/root_id','2'),('14','default','0','itoris_productpriceformula/general/enabled','1'),('15','default','0','itoris_core/notifications/updates','1'),('16','default','0','itoris_core/notifications/newext','1'),('17','default','0','itoris_core/notifications/news','1'),('18','default','0','itoris_dynamicproductoptions/general/enabled','1'),('19','default','0','itoris_core/installed/Itoris_DynamicProductOptions','255|3e92187ef1d49caf52071bef108ec17d'),('20','default','0','itoris_core/installed/Itoris_ProductPriceFormula','287|ee9555ba811df338b40d668541b7c527'),('21','websites','2','design/theme/theme_id','4'),('22','websites','2','design/pagination/pagination_frame_skip',NULL),('23','websites','2','design/pagination/anchor_text_for_previous',NULL),('24','websites','2','design/pagination/anchor_text_for_next',NULL),('25','websites','2','design/head/title_prefix',NULL),('26','websites','2','design/head/title_suffix',NULL),('27','websites','2','design/head/includes',NULL),('28','websites','2','design/header/logo_width',NULL),('29','websites','2','design/header/logo_height',NULL),('30','websites','2','design/footer/absolute_footer',NULL),('31','websites','2','design/watermark/image_size',NULL),('32','websites','2','design/watermark/image_imageOpacity',NULL),('33','websites','2','design/watermark/small_image_size',NULL),('34','websites','2','design/watermark/small_image_imageOpacity',NULL),('35','websites','2','design/watermark/thumbnail_size',NULL),('36','websites','2','design/watermark/thumbnail_imageOpacity',NULL),('37','websites','2','design/email/logo_alt',NULL),('38','websites','2','design/email/logo_width','180'),('39','websites','2','design/email/logo_height',NULL),('40','websites','2','design/watermark/swatch_image_size',NULL),('41','websites','2','design/watermark/swatch_image_imageOpacity',NULL),('42','default','0','general/country/default','CH'),('43','default','0','general/store_information/name',NULL),('44','default','0','general/store_information/phone',NULL),('45','default','0','general/store_information/hours',NULL),('46','default','0','general/store_information/country_id',NULL),('47','default','0','general/store_information/region_id',NULL),('48','default','0','general/store_information/postcode',NULL),('49','default','0','general/store_information/city',NULL),('50','default','0','general/store_information/street_line1',NULL),('51','default','0','general/store_information/street_line2',NULL),('52','default','0','general/store_information/merchant_vat_number',NULL),('53','default','0','general/single_store_mode/enabled','0'),('54','default','0','general/locale/weight_unit','kgs'),('55','default','0','general/locale/firstday','1'),('56','default','0','web/url/use_store','1'),('57','default','0','web/unsecure/base_static_url',NULL),('58','default','0','web/unsecure/base_media_url',NULL),('59','default','0','web/secure/base_static_url',NULL),('60','default','0','web/secure/base_media_url',NULL),('61','default','0','web/cookie/cookie_path',NULL),('62','default','0','web/cookie/cookie_domain',NULL),('63','default','0','web/cookie/cookie_httponly','1'),('64','default','0','catalog/frontend/list_mode','list'),('65','default','0','catalog/frontend/list_allow_all','0'),('66','default','0','catalog/frontend/flat_catalog_product','0'),('67','default','0','catalog/productalert_cron/frequency','D'),('68','default','0','crontab/default/jobs/catalog_product_alert/schedule/cron_expr','0 0 * * *'),('69','default','0','crontab/default/jobs/catalog_product_alert/run/model',NULL),('70','default','0','catalog/productalert_cron/time','00,00,00'),('71','default','0','catalog/productalert_cron/error_email',NULL),('72','default','0','catalog/product_video/youtube_api_key',NULL),('73','default','0','catalog/price/scope','0'),('74','default','0','catalog/downloadable/shareable','0'),('75','default','0','catalog/downloadable/content_disposition','inline'),('76','default','0','catalog/custom_options/use_calendar','0'),('77','default','0','catalog/custom_options/year_range',','),('78','default','0','catalog/placeholder/image_placeholder',NULL),('79','default','0','catalog/placeholder/small_image_placeholder',NULL),('80','default','0','catalog/placeholder/swatch_image_placeholder',NULL),('81','default','0','catalog/placeholder/thumbnail_placeholder',NULL),('82','default','0','customer/online_customers/online_minutes_interval',NULL),('83','default','0','customer/create_account/disable_customer_registration','0'),('84','default','0','customer/create_account/auto_group_assign','0'),('85','default','0','customer/create_account/viv_disable_auto_group_assign_default','0'),('86','default','0','customer/create_account/generate_human_friendly_id','0'),('87','default','0','customer/address/prefix_show',NULL),('88','default','0','customer/address/prefix_options',NULL),('89','default','0','customer/address/middlename_show','0'),('90','default','0','customer/address/suffix_show',NULL),('91','default','0','customer/address/suffix_options',NULL),('92','default','0','customer/address/dob_show',NULL),('93','default','0','customer/address/taxvat_show',NULL),('94','default','0','customer/address/gender_show',NULL),('95','default','0','customer/address_templates/text','{{depend prefix}}{{var prefix}} {{/depend}}{{var firstname}} {{depend middlename}}{{var middlename}} {{/depend}}{{var lastname}}{{depend suffix}} {{var suffix}}{{/depend}}\r\n{{depend company}}{{var company}}{{/depend}}\r\n{{if street1}}{{var street1}}\r\n{{/if}}\r\n{{depend street2}}{{var street2}}{{/depend}}\r\n{{depend street3}}{{var street3}}{{/depend}}\r\n{{depend street4}}{{var street4}}{{/depend}}\r\n{{if postcode}}{{var postcode}}{{/if}} {{if city}}{{var city}}{{/if}}\r\n{{var country}}\r\nT: {{var telephone}}\r\n{{depend fax}}F: {{var fax}}{{/depend}}\r\n{{depend vat_id}}VAT: {{var vat_id}}{{/depend}}'),('96','default','0','customer/address_templates/oneline','{{depend prefix}}{{var prefix}} {{/depend}}{{var firstname}} {{depend middlename}}{{var middlename}} {{/depend}}{{var lastname}}{{depend suffix}} {{var suffix}}{{/depend}}, {{var street}}, {{var postcode}} {{var city}}, {{var country}}'),('97','default','0','customer/address_templates/html','{{depend prefix}}{{var prefix}} {{/depend}}{{var firstname}} {{depend middlename}}{{var middlename}} {{/depend}}{{var lastname}}{{depend suffix}} {{var suffix}}{{/depend}}{{depend firstname}}<br/>{{/depend}}\r\n{{depend company}}{{var company}}<br />{{/depend}}\r\n{{if street1}}{{var street1}}<br />{{/if}}\r\n{{depend street2}}{{var street2}}<br />{{/depend}}\r\n{{depend street3}}{{var street3}}<br />{{/depend}}\r\n{{depend street4}}{{var street4}}<br />{{/depend}}\r\n{{if postcode}}{{var postcode}}{{/if}} {{if city}}{{var city}}{{/if}}<br/>\r\n{{var country}}<br/>\r\n{{depend telephone}}T: {{var telephone}}{{/depend}}\r\n{{depend fax}}<br/>F: {{var fax}}{{/depend}}\r\n{{depend vat_id}}<br/>VAT: {{var vat_id}}{{/depend}}'),('98','default','0','customer/address_templates/pdf','{{depend prefix}}{{var prefix}} {{/depend}}{{var firstname}} {{depend middlename}}{{var middlename}} {{/depend}}{{var lastname}}{{depend suffix}} {{var suffix}}{{/depend}}|\r\n{{depend company}}{{var company}}|{{/depend}}\r\n{{if street1}}{{var street1}}\r\n{{/if}}\r\n{{depend street2}}{{var street2}}|{{/depend}}\r\n{{depend street3}}{{var street3}}|{{/depend}}\r\n{{depend street4}}{{var street4}}|{{/depend}}\r\n{{if postcode}}{{var postcode}}{{/if}} {{if city}}{{var city}}{{/if}}|\r\n{{var country}}|\r\n{{depend telephone}}T: {{var telephone}}{{/depend}}|\r\n{{depend fax}}<br/>F: {{var fax}}{{/depend}}|\r\n{{depend vat_id}}<br/>VAT: {{var vat_id}}{{/depend}}|'),('99','websites','2','design/email/logo','websites/2/logo_email.png'),('100','websites','2','trans_email/ident_general/name','Fournier & Cie - Info'),('101','websites','2','trans_email/ident_general/email','info@syscon.ch'),('102','websites','2','trans_email/ident_sales/name','Fournier & Cie - Ventes'),('103','websites','2','trans_email/ident_sales/email','info@syscon.ch'),('104','websites','2','trans_email/ident_support/name','Fournier & Cie - Support'),('105','websites','2','trans_email/ident_support/email','info@syscon.ch'),('107','stores','2','general/store_information/name','Fournierbois Professionelles'),('109','stores','2','design/pagination/pagination_frame_skip',NULL),('110','stores','2','design/pagination/anchor_text_for_previous',NULL),('111','stores','2','design/pagination/anchor_text_for_next',NULL),('112','stores','2','design/head/default_title','Fournier & Cie Commerce'),('113','stores','2','design/head/title_prefix',NULL),('114','stores','2','design/head/title_suffix',NULL),('115','stores','2','design/head/includes',NULL),('116','stores','2','design/header/logo_width',NULL),('117','stores','2','design/header/logo_height',NULL),('118','stores','2','design/footer/absolute_footer',NULL),('119','stores','2','design/watermark/image_size',NULL),('120','stores','2','design/watermark/image_imageOpacity',NULL),('121','stores','2','design/watermark/small_image_size',NULL),('122','stores','2','design/watermark/small_image_imageOpacity',NULL),('123','stores','2','design/watermark/thumbnail_size',NULL),('124','stores','2','design/watermark/thumbnail_imageOpacity',NULL),('125','stores','2','design/email/logo_alt',NULL),('126','stores','2','design/email/logo_height',NULL),('127','stores','2','design/watermark/swatch_image_size',NULL),('128','stores','2','design/watermark/swatch_image_imageOpacity',NULL),('129','websites','2','payment/checkmo/active','1'),('130','websites','2','payment/purchaseorder/active','0'),('131','stores','2','payment/purchaseorder/title','Sur facture'),('132','websites','2','carriers/flatrate/active','0'),('133','websites','2','carriers/freeshipping/active','1'),('134','websites','2','carriers/tablerate/import','1506505834,,,,4,0'),('135','stores','2','carriers/freeshipping/title','Livraison gratuite'),('136','stores','2','carriers/freeshipping/name','Gratuite'),('137','default','0','dev/restrict/allow_ips',NULL),('138','default','0','dev/debug/template_hints_storefront','0'),('139','default','0','dev/debug/template_hints_admin','0'),('140','default','0','dev/debug/template_hints_blocks','0'),('141','default','0','dev/template/allow_symlink','0'),('142','default','0','dev/translate_inline/active','0'),('143','default','0','dev/translate_inline/active_admin','0'),('144','default','0','dev/js/merge_files','0'),('145','default','0','dev/js/enable_js_bundling','0'),('146','default','0','dev/js/minify_files','0'),('147','default','0','dev/css/merge_css_files','0'),('148','default','0','dev/css/minify_files','0'),('149','default','0','dev/static/sign','1'),('150','stores','2','design/header/welcome','Bienvenue chez Fournier & Cie'),('151','stores','2','payment/checkmo/title','Sur facture'),('152','websites','2','checkout/sidebar/display','0'),('153','websites','2','customer/create_account/disable_customer_registration','1'),('154','websites','2','checkout/options/guest_checkout','0'),('155','default','0','customer/create_account/email_domain','fournierbois.ch'),('156','websites','2','customer/password/max_number_password_reset_requests','0'),('157','websites','2','customer/password/min_time_between_password_reset_requests','0'),('158','websites','2','contact/email/recipient_email','info@fournierbois.ch');
/*!40000 ALTER TABLE `core_config_data` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cron_schedule`
--

DROP TABLE IF EXISTS `cron_schedule`;
CREATE TABLE `cron_schedule` (
  `schedule_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Schedule Id',
  `job_code` varchar(255) NOT NULL DEFAULT '0' COMMENT 'Job Code',
  `status` varchar(7) NOT NULL DEFAULT 'pending' COMMENT 'Status',
  `messages` text COMMENT 'Messages',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Created At',
  `scheduled_at` timestamp NULL DEFAULT NULL COMMENT 'Scheduled At',
  `executed_at` timestamp NULL DEFAULT NULL COMMENT 'Executed At',
  `finished_at` timestamp NULL DEFAULT NULL COMMENT 'Finished At',
  PRIMARY KEY (`schedule_id`),
  KEY `CRON_SCHEDULE_JOB_CODE` (`job_code`),
  KEY `CRON_SCHEDULE_SCHEDULED_AT_STATUS` (`scheduled_at`,`status`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Cron Schedule';

--
-- Table structure for table `customer_address_entity`
--

DROP TABLE IF EXISTS `customer_address_entity`;
CREATE TABLE `customer_address_entity` (
  `entity_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Entity Id',
  `increment_id` varchar(50) DEFAULT NULL COMMENT 'Increment Id',
  `parent_id` int(10) unsigned DEFAULT NULL COMMENT 'Parent Id',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Created At',
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Updated At',
  `is_active` smallint(5) unsigned NOT NULL DEFAULT '1' COMMENT 'Is Active',
  `city` varchar(255) NOT NULL COMMENT 'City',
  `company` varchar(255) DEFAULT NULL COMMENT 'Company',
  `country_id` varchar(255) NOT NULL COMMENT 'Country',
  `fax` varchar(255) DEFAULT NULL COMMENT 'Fax',
  `firstname` varchar(255) NOT NULL COMMENT 'First Name',
  `lastname` varchar(255) NOT NULL COMMENT 'Last Name',
  `middlename` varchar(255) DEFAULT NULL COMMENT 'Middle Name',
  `postcode` varchar(255) DEFAULT NULL COMMENT 'Zip/Postal Code',
  `prefix` varchar(40) DEFAULT NULL COMMENT 'Prefix',
  `region` varchar(255) DEFAULT NULL COMMENT 'State/Province',
  `region_id` int(10) unsigned DEFAULT NULL COMMENT 'State/Province',
  `street` text NOT NULL COMMENT 'Street Address',
  `suffix` varchar(40) DEFAULT NULL COMMENT 'Suffix',
  `telephone` varchar(255) NOT NULL COMMENT 'Phone Number',
  `vat_id` varchar(255) DEFAULT NULL COMMENT 'VAT number',
  `vat_is_valid` int(10) unsigned DEFAULT NULL COMMENT 'VAT number validity',
  `vat_request_date` varchar(255) DEFAULT NULL COMMENT 'VAT number validation request date',
  `vat_request_id` varchar(255) DEFAULT NULL COMMENT 'VAT number validation request ID',
  `vat_request_success` int(10) unsigned DEFAULT NULL COMMENT 'VAT number validation request success',
  PRIMARY KEY (`entity_id`),
  KEY `CUSTOMER_ADDRESS_ENTITY_PARENT_ID` (`parent_id`)
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=utf8 COMMENT='Customer Address Entity';

--
-- Dumping data for table `customer_address_entity`
--

LOCK TABLES `customer_address_entity` WRITE;
/*!40000 ALTER TABLE `customer_address_entity` DISABLE KEYS */;
INSERT INTO `customer_address_entity` VALUES ('3',NULL,'3','2017-09-18 17:56:50','2017-09-21 16:59:02',1,'Villarlod',NULL,'CH',NULL,'21454','Perritaz Charly',NULL,'1695',NULL,'FR','0','Rte du Gibloux 73',NULL,'79 548 11 67',NULL,NULL,NULL,NULL,NULL),('4',NULL,'4','2017-09-18 17:56:50','2017-09-21 16:59:02',1,'Les Diablerets',NULL,'CH',NULL,'21462','Alpescréations Sàrl',NULL,'1865',NULL,'VD','0','Route du Pillon 40',NULL,'24 492 12 51',NULL,NULL,NULL,NULL,NULL),('5',NULL,'5','2017-09-18 17:56:51','2017-09-21 16:59:02',1,'Le Châble',NULL,'CH',NULL,'21464','Paul Maret SA',NULL,'1934',NULL,'VS','0','Rue du Stand 1',NULL,'27 776 13 71',NULL,NULL,NULL,NULL,NULL),('6',NULL,'6','2017-09-19 15:44:11','2017-10-05 09:26:58',1,'Zürich',NULL,'CH','44 715 26 90','29999','Syscon Systemberatung AG',NULL,'8036',NULL,'ZH','0','Zweierstrasse 129',NULL,'44 454 20 10',NULL,NULL,NULL,NULL,NULL),('7',NULL,'3','2017-09-18 17:56:50','2017-09-21 16:59:02',1,'Villarlod',NULL,'CH',NULL,'21454','Perritaz Charly',NULL,'1695',NULL,'FR','0','Rte du Gibloux 73',NULL,'79 548 11 67',NULL,NULL,NULL,NULL,NULL),('8',NULL,'4','2017-09-18 17:56:50','2017-09-21 16:59:02',1,'Les Diablerets',NULL,'CH',NULL,'21462','Alpescréations Sàrl',NULL,'1865',NULL,'VD','0','Route du Pillon 40',NULL,'24 492 12 51',NULL,NULL,NULL,NULL,NULL),('9',NULL,'5','2017-09-18 17:56:51','2017-09-21 16:59:02',1,'Le Châble',NULL,'CH',NULL,'21464','Paul Maret SA',NULL,'1934',NULL,'VS','0','Rue du Stand 1',NULL,'27 776 13 71',NULL,NULL,NULL,NULL,NULL),('10',NULL,'6','2017-09-19 15:44:11','2017-10-05 09:26:58',1,'Zürich',NULL,'CH','44 715 26 90','29999','Syscon Systemberatung AG',NULL,'8036',NULL,'ZH','0','Zweierstrasse 129',NULL,'44 454 20 10',NULL,NULL,NULL,NULL,NULL),('25',NULL,'19','2017-09-18 17:56:50','2017-10-10 09:16:45',1,'Villarlod',NULL,'CH',NULL,'Egil','Ruefli',NULL,'1695',NULL,'FR','0','Rte du Gibloux 73',NULL,'444542010',NULL,NULL,NULL,NULL,NULL),('26',NULL,'19','2017-09-18 17:56:50','2017-10-10 09:16:45',1,'Villarlod',NULL,'CH',NULL,'Egil','Ruefli',NULL,'1695',NULL,'FR','0','Rte du Gibloux 73',NULL,'444542010',NULL,NULL,NULL,NULL,NULL),('27',NULL,'19','2017-09-18 17:56:50','2017-10-10 09:16:45',1,'Villarlod',NULL,'CH',NULL,'Egil','Ruefli',NULL,'1695',NULL,'FR','0','Rte du Gibloux 73',NULL,'444542010',NULL,NULL,NULL,NULL,NULL),('28',NULL,'19','2017-09-18 17:56:50','2017-10-10 09:16:45',1,'Villarlod',NULL,'CH',NULL,'Egil','Ruefli',NULL,'1695',NULL,'FR','0','Rte du Gibloux 73',NULL,'444542010',NULL,NULL,NULL,NULL,NULL),('29',NULL,'19','2017-09-18 17:56:50','2017-10-10 09:16:45',1,'Villarlod',NULL,'CH',NULL,'Egil','Ruefli',NULL,'1695',NULL,'FR','0','Rte du Gibloux 73',NULL,'444542010',NULL,NULL,NULL,NULL,NULL),('30',NULL,'19','2017-09-18 17:56:50','2017-10-10 09:16:45',1,'Villarlod',NULL,'CH',NULL,'Egil','Ruefli',NULL,'1695',NULL,'FR','0','Rte du Gibloux 73',NULL,'444542010',NULL,NULL,NULL,NULL,NULL),('31',NULL,'19','2017-09-18 17:56:50','2017-10-10 09:16:45',1,'Villarlod',NULL,'CH',NULL,'Egil','Ruefli',NULL,'1695',NULL,'FR','0','Rte du Gibloux 73',NULL,'444542010',NULL,NULL,NULL,NULL,NULL),('32',NULL,'19','2017-09-18 17:56:50','2017-10-10 09:16:45',1,'Villarlod',NULL,'CH',NULL,'Egil','Ruefli',NULL,'1695',NULL,'FR','0','Rte du Gibloux 73',NULL,'444542010',NULL,NULL,NULL,NULL,NULL),('33',NULL,'19','2017-09-18 17:56:50','2017-10-10 09:16:45',1,'Villarlod',NULL,'CH',NULL,'Egil','Ruefli',NULL,'1695',NULL,'FR','0','Rte du Gibloux 73',NULL,'444542010',NULL,NULL,NULL,NULL,NULL),('34',NULL,'19','2017-09-18 17:56:50','2017-10-10 09:16:45',1,'Villarlod',NULL,'CH',NULL,'Egil','Ruefli',NULL,'1695',NULL,'FR','0','Rte du Gibloux 73',NULL,'444542010',NULL,NULL,NULL,NULL,NULL),('35',NULL,'19','2017-09-18 17:56:50','2017-10-10 09:16:45',1,'Villarlod',NULL,'CH',NULL,'Egil','Ruefli',NULL,'1695',NULL,'FR','0','Rte du Gibloux 73',NULL,'444542010',NULL,NULL,NULL,NULL,NULL),('36',NULL,'19','2017-09-18 17:56:50','2017-10-10 09:16:45',1,'Villarlod',NULL,'CH',NULL,'Egil','Ruefli',NULL,'1695',NULL,'FR','0','Rte du Gibloux 73',NULL,'444542010',NULL,NULL,NULL,NULL,NULL),('37',NULL,'19','2017-09-18 17:56:50','2017-10-10 09:16:45',1,'Villarlod',NULL,'CH',NULL,'Egil','Ruefli',NULL,'1695',NULL,'FR','0','Rte du Gibloux 73',NULL,'444542010',NULL,NULL,NULL,NULL,NULL),('38',NULL,'19','2017-09-18 17:56:50','2017-10-10 09:16:45',1,'Villarlod',NULL,'CH',NULL,'Egil','Ruefli',NULL,'1695',NULL,'FR','0','Rte du Gibloux 73',NULL,'444542010',NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `customer_address_entity` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customer_address_entity_datetime`
--

DROP TABLE IF EXISTS `customer_address_entity_datetime`;
CREATE TABLE `customer_address_entity_datetime` (
  `value_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Value Id',
  `attribute_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Attribute Id',
  `entity_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity Id',
  `value` datetime DEFAULT NULL COMMENT 'Value',
  PRIMARY KEY (`value_id`),
  UNIQUE KEY `CUSTOMER_ADDRESS_ENTITY_DATETIME_ENTITY_ID_ATTRIBUTE_ID` (`entity_id`,`attribute_id`),
  KEY `CUSTOMER_ADDRESS_ENTITY_DATETIME_ATTRIBUTE_ID` (`attribute_id`),
  KEY `CUSTOMER_ADDRESS_ENTITY_DATETIME_ENTITY_ID_ATTRIBUTE_ID_VALUE` (`entity_id`,`attribute_id`,`value`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Customer Address Entity Datetime';

--
-- Table structure for table `customer_address_entity_decimal`
--

DROP TABLE IF EXISTS `customer_address_entity_decimal`;
CREATE TABLE `customer_address_entity_decimal` (
  `value_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Value Id',
  `attribute_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Attribute Id',
  `entity_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity Id',
  `value` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Value',
  PRIMARY KEY (`value_id`),
  UNIQUE KEY `CUSTOMER_ADDRESS_ENTITY_DECIMAL_ENTITY_ID_ATTRIBUTE_ID` (`entity_id`,`attribute_id`),
  KEY `CUSTOMER_ADDRESS_ENTITY_DECIMAL_ATTRIBUTE_ID` (`attribute_id`),
  KEY `CUSTOMER_ADDRESS_ENTITY_DECIMAL_ENTITY_ID_ATTRIBUTE_ID_VALUE` (`entity_id`,`attribute_id`,`value`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Customer Address Entity Decimal';

--
-- Table structure for table `customer_address_entity_int`
--

DROP TABLE IF EXISTS `customer_address_entity_int`;
CREATE TABLE `customer_address_entity_int` (
  `value_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Value Id',
  `attribute_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Attribute Id',
  `entity_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity Id',
  `value` int(11) NOT NULL DEFAULT '0' COMMENT 'Value',
  PRIMARY KEY (`value_id`),
  UNIQUE KEY `CUSTOMER_ADDRESS_ENTITY_INT_ENTITY_ID_ATTRIBUTE_ID` (`entity_id`,`attribute_id`),
  KEY `CUSTOMER_ADDRESS_ENTITY_INT_ATTRIBUTE_ID` (`attribute_id`),
  KEY `CUSTOMER_ADDRESS_ENTITY_INT_ENTITY_ID_ATTRIBUTE_ID_VALUE` (`entity_id`,`attribute_id`,`value`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Customer Address Entity Int';

--
-- Table structure for table `customer_address_entity_text`
--

DROP TABLE IF EXISTS `customer_address_entity_text`;
CREATE TABLE `customer_address_entity_text` (
  `value_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Value Id',
  `attribute_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Attribute Id',
  `entity_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity Id',
  `value` text NOT NULL COMMENT 'Value',
  PRIMARY KEY (`value_id`),
  UNIQUE KEY `CUSTOMER_ADDRESS_ENTITY_TEXT_ENTITY_ID_ATTRIBUTE_ID` (`entity_id`,`attribute_id`),
  KEY `CUSTOMER_ADDRESS_ENTITY_TEXT_ATTRIBUTE_ID` (`attribute_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Customer Address Entity Text';

--
-- Table structure for table `customer_address_entity_varchar`
--

DROP TABLE IF EXISTS `customer_address_entity_varchar`;
CREATE TABLE `customer_address_entity_varchar` (
  `value_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Value Id',
  `attribute_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Attribute Id',
  `entity_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity Id',
  `value` varchar(255) DEFAULT NULL COMMENT 'Value',
  PRIMARY KEY (`value_id`),
  UNIQUE KEY `CUSTOMER_ADDRESS_ENTITY_VARCHAR_ENTITY_ID_ATTRIBUTE_ID` (`entity_id`,`attribute_id`),
  KEY `CUSTOMER_ADDRESS_ENTITY_VARCHAR_ATTRIBUTE_ID` (`attribute_id`),
  KEY `CUSTOMER_ADDRESS_ENTITY_VARCHAR_ENTITY_ID_ATTRIBUTE_ID_VALUE` (`entity_id`,`attribute_id`,`value`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Customer Address Entity Varchar';

--
-- Table structure for table `customer_eav_attribute`
--

DROP TABLE IF EXISTS `customer_eav_attribute`;
CREATE TABLE `customer_eav_attribute` (
  `attribute_id` smallint(5) unsigned NOT NULL COMMENT 'Attribute Id',
  `is_visible` smallint(5) unsigned NOT NULL DEFAULT '1' COMMENT 'Is Visible',
  `input_filter` varchar(255) DEFAULT NULL COMMENT 'Input Filter',
  `multiline_count` smallint(5) unsigned NOT NULL DEFAULT '1' COMMENT 'Multiline Count',
  `validate_rules` text COMMENT 'Validate Rules',
  `is_system` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Is System',
  `sort_order` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Sort Order',
  `data_model` varchar(255) DEFAULT NULL COMMENT 'Data Model',
  `is_used_in_grid` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Is Used in Grid',
  `is_visible_in_grid` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Is Visible in Grid',
  `is_filterable_in_grid` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Is Filterable in Grid',
  `is_searchable_in_grid` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Is Searchable in Grid',
  PRIMARY KEY (`attribute_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Customer Eav Attribute';

--
-- Dumping data for table `customer_eav_attribute`
--

LOCK TABLES `customer_eav_attribute` WRITE;
/*!40000 ALTER TABLE `customer_eav_attribute` DISABLE KEYS */;
INSERT INTO `customer_eav_attribute` VALUES (1,1,NULL,0,NULL,1,'10',NULL,1,1,1,0),(2,0,NULL,0,NULL,1,'0',NULL,0,0,0,0),(3,1,NULL,0,NULL,1,'20',NULL,1,1,0,1),(4,0,NULL,0,NULL,0,'30',NULL,0,0,0,0),(5,1,NULL,0,'a:2:{s:15:\"max_text_length\";i:255;s:15:\"min_text_length\";i:1;}',1,'40',NULL,0,0,0,0),(6,0,NULL,0,NULL,0,'50',NULL,0,0,0,0),(7,1,NULL,0,'a:2:{s:15:\"max_text_length\";i:255;s:15:\"min_text_length\";i:1;}',1,'60',NULL,0,0,0,0),(8,0,NULL,0,NULL,0,'70',NULL,0,0,0,0),(9,1,NULL,0,'a:1:{s:16:\"input_validation\";s:5:\"email\";}',1,'80',NULL,1,1,1,1),(10,1,NULL,0,NULL,1,'25',NULL,1,1,1,0),(11,0,'date',0,'a:1:{s:16:\"input_validation\";s:4:\"date\";}',0,'90',NULL,1,1,1,0),(12,0,NULL,0,NULL,1,'0',NULL,0,0,0,0),(13,0,NULL,0,NULL,1,'0',NULL,0,0,0,0),(14,0,NULL,0,'a:1:{s:16:\"input_validation\";s:4:\"date\";}',1,'0',NULL,0,0,0,0),(15,0,NULL,0,NULL,1,'0',NULL,0,0,0,0),(16,0,NULL,0,NULL,1,'0',NULL,0,0,0,0),(17,0,NULL,0,'a:1:{s:15:\"max_text_length\";i:255;}',0,'100',NULL,1,1,0,1),(18,0,NULL,0,NULL,1,'0',NULL,1,1,1,0),(19,0,NULL,0,NULL,0,'0',NULL,1,1,1,0),(20,0,NULL,0,'a:0:{}',0,'110',NULL,1,1,1,0),(21,1,NULL,0,NULL,1,'28',NULL,0,0,0,0),(22,0,NULL,0,NULL,0,'10',NULL,0,0,0,0),(23,1,NULL,0,'a:2:{s:15:\"max_text_length\";i:255;s:15:\"min_text_length\";i:1;}',1,'20',NULL,1,0,0,1),(24,0,NULL,0,NULL,0,'30',NULL,0,0,0,0),(25,1,NULL,0,'a:2:{s:15:\"max_text_length\";i:255;s:15:\"min_text_length\";i:1;}',1,'40',NULL,1,0,0,1),(26,0,NULL,0,NULL,0,'50',NULL,0,0,0,0),(27,1,NULL,0,'a:2:{s:15:\"max_text_length\";i:255;s:15:\"min_text_length\";i:1;}',1,'60',NULL,1,0,0,1),(28,1,NULL,2,'a:2:{s:15:\"max_text_length\";i:255;s:15:\"min_text_length\";i:1;}',1,'70',NULL,1,0,0,1),(29,1,NULL,0,'a:2:{s:15:\"max_text_length\";i:255;s:15:\"min_text_length\";i:1;}',1,'80',NULL,1,0,0,1),(30,1,NULL,0,NULL,1,'90',NULL,1,1,1,0),(31,1,NULL,0,NULL,1,'100',NULL,1,1,0,1),(32,1,NULL,0,NULL,1,'100',NULL,0,0,0,0),(33,1,NULL,0,'a:0:{}',1,'110','Magento\\Customer\\Model\\Attribute\\Data\\Postcode',1,1,1,1),(34,1,NULL,0,'a:2:{s:15:\"max_text_length\";i:255;s:15:\"min_text_length\";i:1;}',1,'120',NULL,1,1,1,1),(35,0,NULL,0,'a:2:{s:15:\"max_text_length\";i:255;s:15:\"min_text_length\";i:1;}',0,'130',NULL,1,0,0,1),(36,1,NULL,0,NULL,1,'140',NULL,0,0,0,0),(37,0,NULL,0,NULL,1,'0',NULL,0,0,0,0),(38,0,NULL,0,NULL,1,'0',NULL,0,0,0,0),(39,0,NULL,0,NULL,1,'0',NULL,0,0,0,0),(40,0,NULL,0,NULL,1,'0',NULL,0,0,0,0),(41,0,NULL,0,NULL,0,'0',NULL,0,0,0,0),(42,0,NULL,0,NULL,1,'0',NULL,0,0,0,0),(43,0,NULL,0,NULL,1,'0',NULL,0,0,0,0),(44,0,NULL,0,NULL,1,'0',NULL,0,0,0,0),(135,1,NULL,0,NULL,0,'100',NULL,0,0,0,0);
/*!40000 ALTER TABLE `customer_eav_attribute` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customer_eav_attribute_website`
--

DROP TABLE IF EXISTS `customer_eav_attribute_website`;
CREATE TABLE `customer_eav_attribute_website` (
  `attribute_id` smallint(5) unsigned NOT NULL COMMENT 'Attribute Id',
  `website_id` smallint(5) unsigned NOT NULL COMMENT 'Website Id',
  `is_visible` smallint(5) unsigned DEFAULT NULL COMMENT 'Is Visible',
  `is_required` smallint(5) unsigned DEFAULT NULL COMMENT 'Is Required',
  `default_value` text COMMENT 'Default Value',
  `multiline_count` smallint(5) unsigned DEFAULT NULL COMMENT 'Multiline Count',
  PRIMARY KEY (`attribute_id`,`website_id`),
  KEY `CUSTOMER_EAV_ATTRIBUTE_WEBSITE_WEBSITE_ID` (`website_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Customer Eav Attribute Website';

--
-- Dumping data for table `customer_eav_attribute_website`
--

LOCK TABLES `customer_eav_attribute_website` WRITE;
/*!40000 ALTER TABLE `customer_eav_attribute_website` DISABLE KEYS */;
INSERT INTO `customer_eav_attribute_website` VALUES (4,2,NULL,NULL,NULL,NULL),(6,2,NULL,NULL,NULL,NULL),(8,2,NULL,NULL,NULL,NULL),(11,2,NULL,NULL,NULL,NULL),(17,2,NULL,NULL,NULL,NULL),(20,2,NULL,NULL,NULL,NULL),(21,2,NULL,NULL,NULL,NULL),(22,2,NULL,NULL,NULL,NULL),(24,2,NULL,NULL,NULL,NULL),(26,2,NULL,NULL,NULL,NULL),(135,2,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `customer_eav_attribute_website` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customer_entity`
--

DROP TABLE IF EXISTS `customer_entity`;
CREATE TABLE `customer_entity` (
  `entity_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Entity Id',
  `website_id` smallint(5) unsigned DEFAULT NULL COMMENT 'Website Id',
  `email` varchar(255) DEFAULT NULL COMMENT 'Email',
  `group_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Group Id',
  `increment_id` varchar(50) DEFAULT NULL COMMENT 'Increment Id',
  `store_id` smallint(5) unsigned DEFAULT '0' COMMENT 'Store Id',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Created At',
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Updated At',
  `is_active` smallint(5) unsigned NOT NULL DEFAULT '1' COMMENT 'Is Active',
  `disable_auto_group_change` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Disable automatic group change based on VAT ID',
  `created_in` varchar(255) DEFAULT NULL COMMENT 'Created From',
  `prefix` varchar(40) DEFAULT NULL COMMENT 'Prefix',
  `firstname` varchar(255) DEFAULT NULL COMMENT 'First Name',
  `middlename` varchar(255) DEFAULT NULL COMMENT 'Middle Name/Initial',
  `lastname` varchar(255) DEFAULT NULL COMMENT 'Last Name',
  `suffix` varchar(40) DEFAULT NULL COMMENT 'Suffix',
  `dob` date DEFAULT NULL COMMENT 'Date of Birth',
  `password_hash` varchar(128) DEFAULT NULL COMMENT 'Password_hash',
  `rp_token` varchar(128) DEFAULT NULL COMMENT 'Reset password token',
  `rp_token_created_at` datetime DEFAULT NULL COMMENT 'Reset password token creation time',
  `default_billing` int(10) unsigned DEFAULT NULL COMMENT 'Default Billing Address',
  `default_shipping` int(10) unsigned DEFAULT NULL COMMENT 'Default Shipping Address',
  `taxvat` varchar(50) DEFAULT NULL COMMENT 'Tax/VAT Number',
  `confirmation` varchar(64) DEFAULT NULL COMMENT 'Is Confirmed',
  `gender` smallint(5) unsigned DEFAULT NULL COMMENT 'Gender',
  `failures_num` smallint(6) DEFAULT '0' COMMENT 'Failure Number',
  `first_failure` timestamp NULL DEFAULT NULL COMMENT 'First Failure',
  `lock_expires` timestamp NULL DEFAULT NULL COMMENT 'Lock Expiration Date',
  PRIMARY KEY (`entity_id`),
  UNIQUE KEY `CUSTOMER_ENTITY_EMAIL_WEBSITE_ID` (`email`,`website_id`),
  KEY `CUSTOMER_ENTITY_STORE_ID` (`store_id`),
  KEY `CUSTOMER_ENTITY_WEBSITE_ID` (`website_id`),
  KEY `CUSTOMER_ENTITY_FIRSTNAME` (`firstname`),
  KEY `CUSTOMER_ENTITY_LASTNAME` (`lastname`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8 COMMENT='Customer Entity';

--
-- Dumping data for table `customer_entity`
--

LOCK TABLES `customer_entity` WRITE;
/*!40000 ALTER TABLE `customer_entity` DISABLE KEYS */;
INSERT INTO `customer_entity` VALUES ('3',2,'pergamesemsales@bluemail.ch',5,NULL,2,'2017-09-18 17:56:50','2017-09-21 16:59:02',1,0,'prof_view_fr',NULL,'21454',NULL,'Perritaz Charly',NULL,NULL,NULL,NULL,NULL,'7','7',NULL,NULL,3,0,NULL,NULL),('4',2,'mrfenetre@netplus.ch',6,NULL,2,'2017-09-18 17:56:50','2017-09-21 16:59:02',1,0,'prof_view_fr',NULL,'21462',NULL,'Alpescréations Sàrl',NULL,NULL,NULL,NULL,NULL,'8','8',NULL,NULL,3,0,NULL,NULL),('5',2,'momect@bluewin.ch',7,NULL,2,'2017-09-18 17:56:51','2017-09-21 16:59:02',1,0,'prof_view_fr',NULL,'21464',NULL,'Paul Maret SA',NULL,NULL,NULL,NULL,NULL,'9','9',NULL,NULL,3,0,NULL,NULL),('6',2,'zaugg@syscon.ch',8,NULL,2,'2017-09-19 15:44:11','2017-10-05 09:26:58',1,0,'prof_view_fr',NULL,'29999',NULL,'Syscon Systemberatung AG',NULL,NULL,'3154357ca2e73aa968ab0f83ee84c02f9353b20f132a03a81054bde1bfefc6b3:JoV0NS64RaH6CcI0lUAB5LWHTUWBpSvV:1',NULL,NULL,'10','10',NULL,NULL,3,0,NULL,NULL),('19',2,'egil.ruefli@gmail.com',5,NULL,2,'2017-09-18 17:56:50','2017-10-10 09:16:45',1,0,'prof_view_fr',NULL,'Egil',NULL,'Ruefli',NULL,NULL,'471e609e02d6557eb8106706b71eaef2b4a00975099e3f43cc312286fe7f2522:6i07xg6M2FRDTD3CgDj6ALYhgWcfV6nF:1',NULL,NULL,'38','38',NULL,NULL,3,0,NULL,NULL);
/*!40000 ALTER TABLE `customer_entity` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customer_entity_datetime`
--

DROP TABLE IF EXISTS `customer_entity_datetime`;
CREATE TABLE `customer_entity_datetime` (
  `value_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Value Id',
  `attribute_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Attribute Id',
  `entity_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity Id',
  `value` datetime DEFAULT NULL COMMENT 'Value',
  PRIMARY KEY (`value_id`),
  UNIQUE KEY `CUSTOMER_ENTITY_DATETIME_ENTITY_ID_ATTRIBUTE_ID` (`entity_id`,`attribute_id`),
  KEY `CUSTOMER_ENTITY_DATETIME_ATTRIBUTE_ID` (`attribute_id`),
  KEY `CUSTOMER_ENTITY_DATETIME_ENTITY_ID_ATTRIBUTE_ID_VALUE` (`entity_id`,`attribute_id`,`value`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Customer Entity Datetime';

--
-- Table structure for table `customer_entity_decimal`
--

DROP TABLE IF EXISTS `customer_entity_decimal`;
CREATE TABLE `customer_entity_decimal` (
  `value_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Value Id',
  `attribute_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Attribute Id',
  `entity_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity Id',
  `value` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Value',
  PRIMARY KEY (`value_id`),
  UNIQUE KEY `CUSTOMER_ENTITY_DECIMAL_ENTITY_ID_ATTRIBUTE_ID` (`entity_id`,`attribute_id`),
  KEY `CUSTOMER_ENTITY_DECIMAL_ATTRIBUTE_ID` (`attribute_id`),
  KEY `CUSTOMER_ENTITY_DECIMAL_ENTITY_ID_ATTRIBUTE_ID_VALUE` (`entity_id`,`attribute_id`,`value`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Customer Entity Decimal';

--
-- Table structure for table `customer_entity_int`
--

DROP TABLE IF EXISTS `customer_entity_int`;
CREATE TABLE `customer_entity_int` (
  `value_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Value Id',
  `attribute_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Attribute Id',
  `entity_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity Id',
  `value` int(11) NOT NULL DEFAULT '0' COMMENT 'Value',
  PRIMARY KEY (`value_id`),
  UNIQUE KEY `CUSTOMER_ENTITY_INT_ENTITY_ID_ATTRIBUTE_ID` (`entity_id`,`attribute_id`),
  KEY `CUSTOMER_ENTITY_INT_ATTRIBUTE_ID` (`attribute_id`),
  KEY `CUSTOMER_ENTITY_INT_ENTITY_ID_ATTRIBUTE_ID_VALUE` (`entity_id`,`attribute_id`,`value`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8 COMMENT='Customer Entity Int';

--
-- Dumping data for table `customer_entity_int`
--

LOCK TABLES `customer_entity_int` WRITE;
/*!40000 ALTER TABLE `customer_entity_int` DISABLE KEYS */;
INSERT INTO `customer_entity_int` VALUES ('4',135,'3','1482'),('5',135,'4','1490'),('6',135,'5','1492'),('7',135,'6','1045'),('18',135,'19','9999');
/*!40000 ALTER TABLE `customer_entity_int` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customer_entity_text`
--

DROP TABLE IF EXISTS `customer_entity_text`;
CREATE TABLE `customer_entity_text` (
  `value_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Value Id',
  `attribute_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Attribute Id',
  `entity_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity Id',
  `value` text NOT NULL COMMENT 'Value',
  PRIMARY KEY (`value_id`),
  UNIQUE KEY `CUSTOMER_ENTITY_TEXT_ENTITY_ID_ATTRIBUTE_ID` (`entity_id`,`attribute_id`),
  KEY `CUSTOMER_ENTITY_TEXT_ATTRIBUTE_ID` (`attribute_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Customer Entity Text';

--
-- Table structure for table `customer_entity_varchar`
--

DROP TABLE IF EXISTS `customer_entity_varchar`;
CREATE TABLE `customer_entity_varchar` (
  `value_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Value Id',
  `attribute_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Attribute Id',
  `entity_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity Id',
  `value` varchar(255) DEFAULT NULL COMMENT 'Value',
  PRIMARY KEY (`value_id`),
  UNIQUE KEY `CUSTOMER_ENTITY_VARCHAR_ENTITY_ID_ATTRIBUTE_ID` (`entity_id`,`attribute_id`),
  KEY `CUSTOMER_ENTITY_VARCHAR_ATTRIBUTE_ID` (`attribute_id`),
  KEY `CUSTOMER_ENTITY_VARCHAR_ENTITY_ID_ATTRIBUTE_ID_VALUE` (`entity_id`,`attribute_id`,`value`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Customer Entity Varchar';

--
-- Table structure for table `customer_form_attribute`
--

DROP TABLE IF EXISTS `customer_form_attribute`;
CREATE TABLE `customer_form_attribute` (
  `form_code` varchar(32) NOT NULL COMMENT 'Form Code',
  `attribute_id` smallint(5) unsigned NOT NULL COMMENT 'Attribute Id',
  PRIMARY KEY (`form_code`,`attribute_id`),
  KEY `CUSTOMER_FORM_ATTRIBUTE_ATTRIBUTE_ID` (`attribute_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Customer Form Attribute';

--
-- Dumping data for table `customer_form_attribute`
--

LOCK TABLES `customer_form_attribute` WRITE;
/*!40000 ALTER TABLE `customer_form_attribute` DISABLE KEYS */;
INSERT INTO `customer_form_attribute` VALUES ('adminhtml_customer',1),('adminhtml_customer',3),('adminhtml_customer',4),('customer_account_create',4),('customer_account_edit',4),('adminhtml_customer',5),('customer_account_create',5),('customer_account_edit',5),('adminhtml_customer',6),('customer_account_create',6),('customer_account_edit',6),('adminhtml_customer',7),('customer_account_create',7),('customer_account_edit',7),('adminhtml_customer',8),('customer_account_create',8),('customer_account_edit',8),('adminhtml_checkout',9),('adminhtml_customer',9),('customer_account_create',9),('customer_account_edit',9),('adminhtml_checkout',10),('adminhtml_customer',10),('adminhtml_checkout',11),('adminhtml_customer',11),('customer_account_create',11),('customer_account_edit',11),('adminhtml_checkout',17),('adminhtml_customer',17),('customer_account_create',17),('customer_account_edit',17),('adminhtml_customer',19),('customer_account_create',19),('customer_account_edit',19),('adminhtml_checkout',20),('adminhtml_customer',20),('customer_account_create',20),('customer_account_edit',20),('adminhtml_customer',21),('adminhtml_customer_address',22),('customer_address_edit',22),('customer_register_address',22),('adminhtml_customer_address',23),('customer_address_edit',23),('customer_register_address',23),('adminhtml_customer_address',24),('customer_address_edit',24),('customer_register_address',24),('adminhtml_customer_address',25),('customer_address_edit',25),('customer_register_address',25),('adminhtml_customer_address',26),('customer_address_edit',26),('customer_register_address',26),('adminhtml_customer_address',27),('customer_address_edit',27),('customer_register_address',27),('adminhtml_customer_address',28),('customer_address_edit',28),('customer_register_address',28),('adminhtml_customer_address',29),('customer_address_edit',29),('customer_register_address',29),('adminhtml_customer_address',30),('customer_address_edit',30),('customer_register_address',30),('adminhtml_customer_address',31),('customer_address_edit',31),('customer_register_address',31),('adminhtml_customer_address',32),('customer_address_edit',32),('customer_register_address',32),('adminhtml_customer_address',33),('customer_address_edit',33),('customer_register_address',33),('adminhtml_customer_address',34),('customer_address_edit',34),('customer_register_address',34),('adminhtml_customer_address',35),('customer_address_edit',35),('customer_register_address',35),('adminhtml_customer_address',36),('customer_address_edit',36),('customer_register_address',36),('adminhtml_checkout',135),('adminhtml_customer',135),('checkout_register',135),('customer_account_create',135),('customer_account_edit',135);
/*!40000 ALTER TABLE `customer_form_attribute` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customer_grid_flat`
--

DROP TABLE IF EXISTS `customer_grid_flat`;
CREATE TABLE `customer_grid_flat` (
  `entity_id` int(10) unsigned NOT NULL COMMENT 'Entity ID',
  `name` text COMMENT 'Name',
  `email` varchar(255) DEFAULT NULL COMMENT 'Email',
  `group_id` int(11) DEFAULT NULL COMMENT 'Group_id',
  `created_at` timestamp NULL DEFAULT NULL COMMENT 'Created_at',
  `website_id` int(11) DEFAULT NULL COMMENT 'Website_id',
  `confirmation` varchar(255) DEFAULT NULL COMMENT 'Confirmation',
  `created_in` text COMMENT 'Created_in',
  `dob` date DEFAULT NULL COMMENT 'Dob',
  `gender` int(11) DEFAULT NULL COMMENT 'Gender',
  `taxvat` varchar(255) DEFAULT NULL COMMENT 'Taxvat',
  `lock_expires` timestamp NULL DEFAULT NULL COMMENT 'Lock_expires',
  `shipping_full` text COMMENT 'Shipping_full',
  `billing_full` text COMMENT 'Billing_full',
  `billing_firstname` varchar(255) DEFAULT NULL COMMENT 'Billing_firstname',
  `billing_lastname` varchar(255) DEFAULT NULL COMMENT 'Billing_lastname',
  `billing_telephone` varchar(255) DEFAULT NULL COMMENT 'Billing_telephone',
  `billing_postcode` varchar(255) DEFAULT NULL COMMENT 'Billing_postcode',
  `billing_country_id` varchar(255) DEFAULT NULL COMMENT 'Billing_country_id',
  `billing_region` varchar(255) DEFAULT NULL COMMENT 'Billing_region',
  `billing_street` varchar(255) DEFAULT NULL COMMENT 'Billing_street',
  `billing_city` varchar(255) DEFAULT NULL COMMENT 'Billing_city',
  `billing_fax` varchar(255) DEFAULT NULL COMMENT 'Billing_fax',
  `billing_vat_id` varchar(255) DEFAULT NULL COMMENT 'Billing_vat_id',
  `billing_company` varchar(255) DEFAULT NULL COMMENT 'Billing_company',
  PRIMARY KEY (`entity_id`),
  KEY `CUSTOMER_GRID_FLAT_GROUP_ID` (`group_id`),
  KEY `CUSTOMER_GRID_FLAT_CREATED_AT` (`created_at`),
  KEY `CUSTOMER_GRID_FLAT_WEBSITE_ID` (`website_id`),
  KEY `CUSTOMER_GRID_FLAT_CONFIRMATION` (`confirmation`),
  KEY `CUSTOMER_GRID_FLAT_DOB` (`dob`),
  KEY `CUSTOMER_GRID_FLAT_GENDER` (`gender`),
  KEY `CUSTOMER_GRID_FLAT_BILLING_COUNTRY_ID` (`billing_country_id`),
  FULLTEXT KEY `FTI_8746F705702DD5F6D45B8C7CE7FE9F2F` (`name`,`email`,`created_in`,`taxvat`,`shipping_full`,`billing_full`,`billing_firstname`,`billing_lastname`,`billing_telephone`,`billing_postcode`,`billing_region`,`billing_city`,`billing_fax`,`billing_company`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='customer_grid_flat';

--
-- Dumping data for table `customer_grid_flat`
--

LOCK TABLES `customer_grid_flat` WRITE;
/*!40000 ALTER TABLE `customer_grid_flat` DISABLE KEYS */;
INSERT INTO `customer_grid_flat` VALUES ('3','21454 Perritaz Charly','pergamesemsales@bluemail.ch','5','2017-09-18 17:56:50','2',NULL,'prof_view_fr',NULL,'3',NULL,NULL,'Rte du Gibloux 73 Villarlod FR 1695','Rte du Gibloux 73 Villarlod FR 1695','21454','Perritaz Charly','79 548 11 67','1695','CH','FR','Rte du Gibloux 73','Villarlod',NULL,NULL,NULL),('4','21462 Alpescréations Sàrl','mrfenetre@netplus.ch','6','2017-09-18 17:56:50','2',NULL,'prof_view_fr',NULL,'3',NULL,NULL,'Route du Pillon 40 Les Diablerets VD 1865','Route du Pillon 40 Les Diablerets VD 1865','21462','Alpescréations Sàrl','24 492 12 51','1865','CH','VD','Route du Pillon 40','Les Diablerets',NULL,NULL,NULL),('5','21464 Paul Maret SA','momect@bluewin.ch','7','2017-09-18 17:56:51','2',NULL,'prof_view_fr',NULL,'3',NULL,NULL,'Rue du Stand 1 Le Châble VS 1934','Rue du Stand 1 Le Châble VS 1934','21464','Paul Maret SA','27 776 13 71','1934','CH','VS','Rue du Stand 1','Le Châble',NULL,NULL,NULL),('6','29999 Syscon Systemberatung AG','zaugg@syscon.ch','8','2017-09-19 15:44:11','2',NULL,'prof_view_fr',NULL,'3',NULL,NULL,'Zweierstrasse 129 Zürich ZH 8036','Zweierstrasse 129 Zürich ZH 8036','29999','Syscon Systemberatung AG','44 454 20 10','8036','CH','ZH','Zweierstrasse 129','Zürich','44 715 26 90',NULL,NULL),('19','Egil Ruefli','egil.ruefli@gmail.com','5','2017-09-18 17:56:50','2',NULL,'prof_view_fr',NULL,'3',NULL,NULL,'Rte du Gibloux 73 Villarlod FR 1695','Rte du Gibloux 73 Villarlod FR 1695','Egil','Ruefli','444542010','1695','CH','FR','Rte du Gibloux 73','Villarlod',NULL,NULL,NULL);
/*!40000 ALTER TABLE `customer_grid_flat` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customer_group`
--

DROP TABLE IF EXISTS `customer_group`;
CREATE TABLE `customer_group` (
  `customer_group_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Customer Group Id',
  `customer_group_code` varchar(32) NOT NULL COMMENT 'Customer Group Code',
  `tax_class_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Tax Class Id',
  PRIMARY KEY (`customer_group_id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COMMENT='Customer Group';

--
-- Dumping data for table `customer_group`
--

LOCK TABLES `customer_group` WRITE;
/*!40000 ALTER TABLE `customer_group` DISABLE KEYS */;
INSERT INTO `customer_group` VALUES (0,'NOT LOGGED IN','3'),(1,'General','3'),(2,'Wholesale','3'),(3,'Retailer','3'),(4,'29999','3'),(5,'1482','3'),(6,'1490','3'),(7,'1492','3'),(8,'1045','3');
/*!40000 ALTER TABLE `customer_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customer_log`
--

DROP TABLE IF EXISTS `customer_log`;
CREATE TABLE `customer_log` (
  `log_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Log ID',
  `customer_id` int(11) NOT NULL COMMENT 'Customer ID',
  `last_login_at` timestamp NULL DEFAULT NULL COMMENT 'Last Login Time',
  `last_logout_at` timestamp NULL DEFAULT NULL COMMENT 'Last Logout Time',
  PRIMARY KEY (`log_id`),
  UNIQUE KEY `CUSTOMER_LOG_CUSTOMER_ID` (`customer_id`)
) ENGINE=InnoDB AUTO_INCREMENT=53 DEFAULT CHARSET=utf8 COMMENT='Customer Log Table';

--
-- Dumping data for table `customer_log`
--

LOCK TABLES `customer_log` WRITE;
/*!40000 ALTER TABLE `customer_log` DISABLE KEYS */;
INSERT INTO `customer_log` VALUES ('1','7','2017-09-28 08:47:58','2017-09-27 09:00:08'),('3','6','2017-10-09 13:53:42','2017-10-09 13:54:28'),('43','19','2017-10-10 09:17:14','2017-10-10 09:17:19');
/*!40000 ALTER TABLE `customer_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customer_visitor`
--

DROP TABLE IF EXISTS `customer_visitor`;
CREATE TABLE `customer_visitor` (
  `visitor_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Visitor ID',
  `customer_id` int(11) DEFAULT NULL COMMENT 'Customer Id',
  `session_id` varchar(64) DEFAULT NULL COMMENT 'Session ID',
  `last_visit_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Last Visit Time',
  PRIMARY KEY (`visitor_id`),
  KEY `CUSTOMER_VISITOR_CUSTOMER_ID` (`customer_id`),
  KEY `CUSTOMER_VISITOR_LAST_VISIT_AT` (`last_visit_at`)
) ENGINE=InnoDB AUTO_INCREMENT=224 DEFAULT CHARSET=utf8 COMMENT='Visitor Table';

--
-- Dumping data for table `customer_visitor`
--

LOCK TABLES `customer_visitor` WRITE;
/*!40000 ALTER TABLE `customer_visitor` DISABLE KEYS */;
INSERT INTO `customer_visitor` VALUES (1,NULL,'m82vorbirrojsehu2bh5kvg481','2017-09-20 09:38:12'),(2,NULL,'kvem4tn96fah0li0o4p3b8gb02','2017-09-20 09:38:27'),(3,NULL,'4e6rmb3vaio2nari51ih24vs83','2017-09-21 09:56:13'),(4,NULL,'343olvm937u2li4prst1og6pn2','2017-09-21 09:56:28'),(5,NULL,'a97tmrdm8g8kil9q7rjvo3fqm4','2017-09-21 09:57:39'),(6,NULL,'f375k634kg9qk9h1e9u3u5tg67','2017-09-21 10:26:53'),(7,NULL,'vnbgddgar9qbl6gqfl1dvvlgu0','2017-09-21 13:20:05'),(8,NULL,'muuhhc7197uub57frpofo1ivb7','2017-09-21 13:20:20'),(9,NULL,'l5bmnfc55u84rn2c8kak70vpo2','2017-09-21 13:20:31'),(10,NULL,'6b06gr9ajm2m9ge8gg9rg97ic2','2017-09-21 14:20:20'),(11,NULL,'mttjl2kj47glm25ogin7rf6ct7','2017-09-21 15:15:56'),(12,NULL,'etul6aji7l4fon7no1me0juo60','2017-09-22 07:58:11'),(13,NULL,'svvlpu3dusahpu88o82i3jujg0','2017-09-22 07:58:31'),(14,NULL,'svvlpu3dusahpu88o82i3jujg0','2017-09-22 08:55:21'),(15,NULL,'onu3hkbt34q6gft3ss8th2cfk0','2017-09-22 15:40:24'),(16,NULL,'o9onn1h3cegda600l7jbqonuh5','2017-09-22 15:40:37'),(17,NULL,'3p7b0cvqfehtamm4enskk2ea31','2017-09-22 15:59:17'),(18,NULL,'tnlg2h5ersdc1bns6rs3hgcj65','2017-09-22 16:00:44'),(19,NULL,'eqouc5180voprb0c8hiqfaft06','2017-09-22 16:01:18'),(20,NULL,'30l5m5qjemhsvifvdqjpt5h9m1','2017-09-22 23:29:07'),(21,NULL,'ipar65jp0kvnn900rpjgoq7ff7','2017-09-23 03:25:33'),(22,NULL,'uuvo2q72kk6kilffpm1hhft417','2017-09-23 03:42:03'),(23,NULL,'2je14pd414tcp6g8ugtjc6lug0','2017-09-23 06:52:14'),(24,NULL,'jl7uj5uv6710i6q24s5r84iqr5','2017-09-23 16:32:55'),(25,NULL,'3vlpk2n4vs2vpv1q0cv11a6rj6','2017-09-23 16:33:03'),(26,NULL,'799aeo25305oo73a5tbot14pd3','2017-09-23 16:33:21'),(27,NULL,'kin1od4073a536verav8njn1p7','2017-09-23 16:38:00'),(28,NULL,'1ce5aecg796s512knjm2ij6t20','2017-09-23 16:38:53'),(29,NULL,'b79qltqo14f5hoou9fohbuch32','2017-09-23 16:38:54'),(30,NULL,'79rcgsqgus4pmd62kuiho1grf0','2017-09-23 16:38:54'),(31,NULL,'tdktoaabs9ika7al6312c4ees2','2017-09-23 16:39:36'),(32,NULL,'n6ho3o479uvpknmud3bfdhuqg5','2017-09-23 16:39:37'),(33,NULL,'cjc2sp2vqet7umme67v1k3vo56','2017-09-23 16:40:08'),(34,NULL,'jng7mjiarrl8l8nsmsabn942f1','2017-09-23 16:40:08'),(35,NULL,'7l059kjct9trfgo4373euras03','2017-09-23 16:40:09'),(36,NULL,'alqr78o9hsn4tqj8me6gjcpfp6','2017-09-23 16:41:05'),(37,NULL,'mlcb55v6d8k0ivq57gp92kfql4','2017-09-23 16:41:05'),(38,NULL,'rsm00ub0lfcb58lmtq01bk6267','2017-09-24 00:05:43'),(39,NULL,'rn5o93gsosjuequthldde28v93','2017-09-24 00:05:45'),(40,NULL,'2o2cn0pt6svuvpja5anme1jm14','2017-09-24 11:43:03'),(41,NULL,'3bte8p6scndfekkl6bpocbnbb5','2017-09-24 11:43:07'),(42,NULL,'t43m9eiqh3bg48jrgctst04n52','2017-09-24 11:43:08'),(43,NULL,'e4lgn8rjdl4k5s81j1afpigfn0','2017-09-24 11:43:09'),(44,NULL,'jqh9j5m0l69igo0pggp8mhf7k1','2017-09-24 11:43:10'),(45,NULL,'n55tuncer4vqipf4f57uftnh03','2017-09-24 11:43:10'),(46,NULL,'nahf2abojr0u3setq6s139ibu0','2017-09-24 11:43:11'),(47,NULL,'1vv3acj3p6s8f3fc6gcmp9gvk6','2017-09-24 11:43:12'),(48,NULL,'cvevsov64bp3nmc42hgg0llol2','2017-09-24 22:20:26'),(49,NULL,'qmn53aciq7s3et1hv4195m25s3','2017-09-25 07:22:03'),(50,NULL,'kbh22qchijhe7b4n4gbcjvvuq3','2017-09-25 08:17:46'),(51,NULL,'lcam1ff1gg0m5g47ihpi0a8th4','2017-09-25 08:17:48'),(52,NULL,'6k5act2sselonid7skolt62c53','2017-09-25 08:17:48'),(53,'7','46tqq9bo91aqj5s0i9c5g8hek3','2017-09-25 09:00:53'),(54,'7','9konld2kliapn52lmuq9f2rd60','2017-09-25 10:00:48'),(55,NULL,'74a6so3nsl5al764clj0gcm743','2017-09-25 10:33:44'),(56,NULL,'q1qkd7qdps6f2q9bdtcg5mc384','2017-09-25 11:25:00'),(57,'6','8vaubeots6uhh9r4ga61sl0953','2017-09-25 11:28:53'),(58,NULL,'snfk4uijvdv2357h1d6movu1i7','2017-09-25 13:03:54'),(59,NULL,'4g1idkaehp282ipqnqc2btjiv6','2017-09-25 13:03:57'),(60,NULL,'bgma720e0e0jic31o5i1rshvm5','2017-09-25 13:03:57'),(61,NULL,'3thppkko487fjm2om5ilj4quk5','2017-09-25 13:51:47'),(62,NULL,'ck3d2a4trlqldfcrihker0mb52','2017-09-25 13:39:41'),(63,NULL,'edggc49r1eit21rtimejagp8k5','2017-09-25 14:06:37'),(64,NULL,'hph13duku353rel8761sm10863','2017-09-25 13:39:44'),(65,NULL,'l1b3j8agph3oal7hri6o841bn4','2017-09-25 13:39:44'),(66,NULL,'rc3qd0taqs32q6ubbhudo6hmn7','2017-09-25 14:31:03'),(67,NULL,'4b7j05rilp6et6m9t8l34egbf5','2017-09-25 14:31:04'),(68,NULL,'ds3ar9hvl9hidfvevf18l9s4r0','2017-09-25 14:33:40'),(69,NULL,'odba1uouksab8ajjkgmmea14r7','2017-09-25 14:31:04'),(70,NULL,'f49vepc2kvnduffee7lkggput0','2017-09-25 14:41:24'),(71,NULL,'1si5kgc2dmtsk3vfg6en96rcr0','2017-09-25 14:41:45'),(72,'7','avbetf9pe6urqbrl1q2pg4mif4','2017-09-25 14:59:06'),(73,NULL,'h8e49a49cjktbqb67f86iqba56','2017-09-25 14:41:46'),(74,NULL,'vf38j8q8t2lk52i7j67fnip635','2017-09-25 14:59:16'),(75,'6','e9cfcf8oktkid7rja58v8vcci3','2017-09-25 19:30:57'),(76,'6','digde30enihi3p0q9917gfv6r0','2017-09-25 18:46:40'),(77,NULL,'7imrb3v61mm1gpnba39clm3m16','2017-09-25 19:31:05'),(78,'6','uvjai6lk796loqufpvgcqb40n7','2017-09-26 07:20:15'),(79,NULL,'4fpeqn3i5k241ak08nmbl79ve2','2017-09-26 08:28:33'),(80,NULL,'4ll9ia93l0uahji7deau04hrn2','2017-09-26 09:33:43'),(81,NULL,'2sd4foj0h3ndopttg9ibp23nk1','2017-09-26 09:34:01'),(82,NULL,'03gcihvugntl7i2bo1stdnuci3','2017-09-26 09:33:48'),(83,NULL,'877jqhphvkl476e5612tmdpuj7','2017-09-26 09:33:48'),(84,'6','qrjg33f654slt5do0eer1vci83','2017-09-26 16:21:45'),(85,NULL,'1c5gajn9bltk8oo8sl2jctvme2','2017-09-26 17:24:09'),(86,NULL,'9a7vl40riall2382d2lookurd3','2017-09-26 17:33:25'),(87,NULL,'a9gcf0d3hcipb86bi26034i7i1','2017-09-26 17:33:27'),(88,'6','bonsutfo61ip4l3rrg5ppdq2o1','2017-09-26 17:44:59'),(89,NULL,'5hsc8m28ipmtpu8rudtcdd5l23','2017-09-26 17:33:27'),(90,'6','qodlo03v505vba61t5n0tlfri7','2017-09-26 18:37:13'),(91,NULL,'1ck418tdtsokr5a4u6qnvevkd1','2017-09-27 06:06:25'),(92,'6','opb1pvcs7kh6guoqk714lovnm4','2017-09-27 07:59:01'),(93,NULL,'t3f11g4a57gvm3kslrnintedo6','2017-09-27 07:03:28'),(94,NULL,'ruisgnnn3t85slpedbjrijhmc7','2017-09-27 08:03:30'),(95,'7','2ihllm8uofhedbjcku8stei174','2017-09-27 09:00:08'),(96,NULL,'cs31d7fflr2h3h0t63f5s6tf40','2017-09-27 08:26:45'),(97,NULL,'2cgfg5hh5tlbehj0eds12k6263','2017-09-27 08:26:45'),(98,'7','ki9a7d41ckp133g0sf2rl1op63','2017-09-27 10:18:53'),(99,NULL,'h4gaielfej32ngddo23mugq545','2017-09-27 10:00:43'),(100,'6','9fq1mvoo84dvgc608dc5cldpi5','2017-09-27 11:28:56'),(101,'6','fkhp229k6cv2ooh1j52va7ep35','2017-09-27 11:30:14'),(102,'7','ctcnras26qtcu4bppntiic91q4','2017-09-27 12:51:18'),(103,'7','ecdmqdcq8g65sp72shvf66kti0','2017-09-27 14:21:18'),(104,'6','v8imm9kdkfn11q69f64em08k25','2017-09-27 14:28:39'),(105,'6','9iio10m95a3qe5rcals331tpd4','2017-09-27 16:26:34'),(106,NULL,'eg4tibpamf4lih421urfm19c16','2017-09-27 16:34:36'),(107,'6','g7eaismdvl879ett4e3vhg5g97','2017-09-27 18:17:31'),(108,NULL,'k61is05jsnug8lv90ht51dt457','2017-09-27 18:23:31'),(109,NULL,'8mokua55b74c7uvc1es0eiug91','2017-09-27 19:13:08'),(110,NULL,'8mokua55b74c7uvc1es0eiug91','2017-09-27 20:11:38'),(111,NULL,'ef53k90288tas3cbmj8vn1fte3','2017-09-27 21:29:39'),(112,NULL,'t465o0tjfb7s75j3rasjppf0p5','2017-09-27 22:07:35'),(113,NULL,'qqm0fdt761peomblnhp3hjb503','2017-09-28 07:15:03'),(114,NULL,'l3tv9obv0vlam78iu0hv3kst07','2017-09-28 07:40:50'),(115,'7','d6doa6e9ivuf06m72fh512rb42','2017-09-28 09:15:07'),(116,NULL,'e6f8q81ho9kqmavt9ppsh7l890','2017-09-28 14:17:53'),(117,NULL,'g5t3s8j5kvsaalkodcla2j52p6','2017-09-28 23:46:58'),(118,NULL,'6m0i8bnhf8jp2c0ne2btm1gn71','2017-09-29 04:11:41'),(119,NULL,'shc8lk5k8j2cdru0a8n7heoae1','2017-09-29 07:18:11'),(120,NULL,'poti316kgthgbfs6q47v90uqs5','2017-09-29 10:54:09'),(121,NULL,'dmr6realro7md721i6s4pq7bu5','2017-09-29 16:08:17'),(122,'6','bgh134mj00nfr30bo6rc426fb3','2017-09-29 17:03:55'),(123,NULL,'9ct8ke5rsp9i1he0r19mf9f3o7','2017-09-29 20:45:45'),(124,NULL,'71d0k5joqb9opdkmfuk3b7elt1','2017-09-30 12:07:12'),(125,NULL,'4v5ll9ic2q17fa1fbms6bjfpe6','2017-10-01 01:38:26'),(126,'6','ni3hsb677kvs9n6kuk0um69gi3','2017-10-01 10:23:27'),(127,NULL,'t08cjrc9nf3b44017iun6cumj3','2017-10-01 10:23:35'),(128,'6','3els9i4ph5k5bm8ufuj59gopr3','2017-10-01 11:56:07'),(129,NULL,'a6sltn765h85d6kk5tgea9o706','2017-10-01 11:57:49'),(130,'6','87989gi1ci34iv0fvr7kmere20','2017-10-01 13:23:27'),(131,NULL,'o1m2d7e370un8pfqqh1ejk7bm7','2017-10-01 13:23:30'),(132,NULL,'t5ge7o1bdept2d1cbgvr2qkj80','2017-10-01 14:21:01'),(133,NULL,'p885ab6i6n3k07ecl52229v0h3','2017-10-01 14:21:02'),(134,NULL,'lnbfj7gqbe813hurtvs9mck8a4','2017-10-01 14:21:03'),(135,NULL,'jvgouhv2c465hn8k9nmds7jl40','2017-10-01 22:07:43'),(136,NULL,'7m97824n7gv0ubd21ehf7ouc13','2017-10-02 06:58:11'),(137,NULL,'9b8t97ci8g873ai8tm1cjsutj2','2017-10-02 07:13:32'),(138,'6','urdvuuggm3lgk4tpjr0e6o8gk1','2017-10-02 07:57:41'),(139,NULL,'b480g1beichq26cm8d6c0uo6t5','2017-10-02 07:58:13'),(140,NULL,'ina7vj7h45157c7h584g9s00a4','2017-10-02 09:00:30'),(141,'6','u78fnm77f67rt4ogdoua4atjn0','2017-10-02 09:30:01'),(142,NULL,'paoaelaujqcukt4b6kcd7era83','2017-10-02 09:31:50'),(143,'6','slok9fr4fnfscdo90vsj1edpa0','2017-10-02 13:00:25'),(144,'6','95ffbbr8r5c38rqc5b1d7dpdk5','2017-10-02 14:05:41'),(145,NULL,'4os32um08lqp2qfah41hu1qlk7','2017-10-02 14:06:51'),(146,'6','0dl0klrg1n2tvi8gvmme0u2p23','2017-10-02 14:11:28'),(147,'6','3coofslf89frbb35hjvqrl90h1','2017-10-02 14:53:19'),(148,'6','ohundh7s6gbftbmlbqn1u2kao3','2017-10-02 14:58:23'),(149,'6','kct6s01dhq3q6q7snot6dqlrq3','2017-10-02 15:02:30'),(150,NULL,'somprnp5jpugs26a906s7deak3','2017-10-02 14:59:11'),(151,'6','bu267lhadm5e873l5f5gja8rg6','2017-10-02 15:16:28'),(152,'6','somprnp5jpugs26a906s7deak3','2017-10-02 16:01:26'),(153,'6','g5id9rqtkqa439lb4fijk65ld2','2017-10-02 16:41:15'),(154,NULL,'nf4h0lsebpbmecjikflldjc2m5','2017-10-02 16:41:21'),(155,NULL,'30tq68dijeel36rruqtjk41255','2017-10-03 06:45:07'),(156,NULL,'lmiqa4eb25e5oqokbuavtlj034','2017-10-03 07:13:16'),(157,NULL,'ab044earqdvs2qte6q4duihog0','2017-10-03 07:29:04'),(158,NULL,'b4fiamma7f5sgr7kpkkliemqp5','2017-10-03 09:28:13'),(159,'6','519t2jral6s544h30681hg9u02','2017-10-03 10:13:56'),(160,NULL,'fp0m7ns8at0595p62drvvgoh30','2017-10-03 10:14:13'),(161,NULL,'0psdgn2tlg43loolfmklhelji0','2017-10-03 13:45:52'),(162,NULL,'k5lpqt72thca7b8oe1tvr8j4p7','2017-10-03 16:16:54'),(163,NULL,'8t32l3re7f7p28gr3p441h4hp4','2017-10-03 20:15:13'),(164,NULL,'hm5q4ec75ao8h8h77jmamhv940','2017-10-03 22:32:55'),(165,NULL,'ameiq45kbgmc7hh5l2qie5ap12','2017-10-04 03:57:48'),(166,'6','n1s23a713a0qeigp2iq6qi14o0','2017-10-04 08:02:49'),(167,'6','c7ismi2vm5fvnmgr5vcmrs4a81','2017-10-04 08:03:28'),(168,NULL,'ckag4ebj2d7fd3ic0g608jl4g6','2017-10-04 10:01:46'),(169,NULL,'llpkt1nf2e4lclcb2d5uo16223','2017-10-04 10:43:26'),(170,NULL,'855ku5u1q50pj95ff6uaaeuhg2','2017-10-04 10:57:37'),(171,'6','b213fclq8epauob2gjf8rg7u25','2017-10-04 14:27:56'),(172,NULL,'kk09ao36pjnh5eka4o231bmp24','2017-10-04 14:28:56'),(173,'6','kl90nknriivokicpi5sknvtqd1','2017-10-04 15:39:32'),(174,'6','6j1i5ncu2seod28lut7phmd6r4','2017-10-04 16:00:00'),(175,NULL,'aekglf7jvcflvhf4kl5a1pe376','2017-10-04 18:09:36'),(176,NULL,'uisvmomacbobf3ntpocf7hacv1','2017-10-04 21:07:24'),(177,NULL,'h2i11397sgclfkbmrgnh7pjdc6','2017-10-05 07:19:34'),(178,'6','8v0mhdc07oib6ms4f2h95skhl5','2017-10-05 09:28:11'),(179,NULL,'9klscme8o9u1dc3a3h2e6ap1p6','2017-10-05 09:28:18'),(180,NULL,'agqn3j7m9noqcn8pp81rm9mhr4','2017-10-05 12:16:03'),(181,NULL,'580e2n1616oe0c1i2niuiudlr7','2017-10-05 13:55:50'),(182,NULL,'rkhnt0gclnihveb135ka31qtj2','2017-10-05 15:28:23'),(183,NULL,'trc81k0kls1n2baalf3uiuek03','2017-10-05 15:54:11'),(184,NULL,'b08n05t98icpv63o9d7cgun417','2017-10-05 20:55:13'),(185,NULL,'86ed7gd0rjhoa3nsgeajqkq4k1','2017-10-06 08:31:25'),(186,NULL,'ef5jclspqmd8vilfaop2ielu91','2017-10-06 11:22:20'),(187,NULL,'jakeeba9leknfr53cb6k1j9i82','2017-10-06 14:09:06'),(188,NULL,'sfb8k6ub3jjqrugoievli9ees3','2017-10-06 17:11:44'),(189,NULL,'7ql59s9vkqda3uoak1bg6bj6g3','2017-10-06 21:43:37'),(190,NULL,'du2l0d1i4erippb6bku17d7lf3','2017-10-07 19:35:30'),(191,NULL,'neb7oom8e9gvebj0a8cp3pmfm6','2017-10-07 19:53:31'),(192,NULL,'t7fau56ft4aamn26shln4ktgu4','2017-10-07 22:31:25'),(193,NULL,'5oqtk34oafcfuapljupfrc2lu5','2017-10-07 23:23:23'),(194,NULL,'nniodrt2q50blf477rtdgkovp2','2017-10-08 01:59:51'),(195,NULL,'n4147t7u9jaqjf4647hlkqe944','2017-10-08 04:19:05'),(196,NULL,'3g6seb582no5r5d7m7ehpuu9r6','2017-10-08 06:33:20'),(197,NULL,'9cge71atlfp97vqmf3sg01jis3','2017-10-08 06:33:20'),(198,NULL,'uj5ci2tt7pactm9mcio9e8t2d2','2017-10-08 13:11:08'),(199,NULL,'tujl581ti26p3lsc81o3m98ba7','2017-10-08 13:30:30'),(200,NULL,'s7h27t84qjol9ebs1j47r1kk12','2017-10-08 19:31:32'),(201,NULL,'lkmguaeuu8qbnjejapl2nokf12','2017-10-08 20:15:36'),(202,NULL,'jsn1b29a925aidi7un0k06da11','2017-10-08 21:57:41'),(203,NULL,'099t44jc5ck00tj0rq05df7er0','2017-10-09 01:21:35'),(204,NULL,'sql6b4lnuj5u485djellmfcvg5','2017-10-09 07:43:54'),(205,NULL,'8emustft6dlvh7si6khbfaosn2','2017-10-09 09:20:40'),(206,NULL,'6k1kjie7ku10is42usl54ag732','2017-10-09 11:42:20'),(207,NULL,'h31am5ri6fbopa0djtngl32e45','2017-10-09 12:44:43'),(208,NULL,'gp8s693b3h6a8io83ncr1vkq71','2017-10-09 12:16:02'),(209,NULL,'7754fvacida8kumhj5g9v9knk0','2017-10-09 12:16:04'),(210,NULL,'8bq6e8r7sdletkjs94h80v6uh5','2017-10-09 12:16:04'),(211,NULL,'n8pckog7uq7lnj5f4on30qg537','2017-10-09 12:32:12'),(212,'6','74kf791e3jljd2t3ofqkklrur1','2017-10-09 13:55:54'),(213,'6','rcjjmcu3gk2ns91202m5dkd1v1','2017-10-09 13:54:28'),(214,NULL,'2rdc8iplc6g4rh72rq1ddkbu60','2017-10-09 13:54:36'),(215,NULL,'eis23v281ukr619dcibr8piha2','2017-10-09 16:55:01'),(216,NULL,'h73fefal4je6h7gmf415sf2gb2','2017-10-09 18:36:53'),(217,NULL,'hrl7s4ppnhavapglkkvsmmm5l0','2017-10-09 19:19:47'),(218,'19','4prt1g61ngbcopj05hgvd4veh5','2017-10-10 08:24:56'),(219,'19','lef7ft2m1vfte6lknr3g0ssii4','2017-10-10 08:46:00'),(220,'19','i1mcekj06icg9e9ol00g485ov7','2017-10-10 08:53:34'),(221,'19','aigvcqm07ql2s2hvssj0gsvho7','2017-10-10 09:05:25'),(222,'19','584ca01n94au0jrsgteiteee03','2017-10-10 09:17:19'),(223,NULL,'u2d9aphq737d70jbnstv4ht6r5','2017-10-10 09:17:25');
/*!40000 ALTER TABLE `customer_visitor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `design_change`
--

DROP TABLE IF EXISTS `design_change`;
CREATE TABLE `design_change` (
  `design_change_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Design Change Id',
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Store Id',
  `design` varchar(255) DEFAULT NULL COMMENT 'Design',
  `date_from` date DEFAULT NULL COMMENT 'First Date of Design Activity',
  `date_to` date DEFAULT NULL COMMENT 'Last Date of Design Activity',
  PRIMARY KEY (`design_change_id`),
  KEY `DESIGN_CHANGE_STORE_ID` (`store_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Design Changes';

--
-- Table structure for table `design_config_grid_flat`
--

DROP TABLE IF EXISTS `design_config_grid_flat`;
CREATE TABLE `design_config_grid_flat` (
  `entity_id` int(10) unsigned NOT NULL COMMENT 'Entity ID',
  `store_website_id` int(11) DEFAULT NULL COMMENT 'Store_website_id',
  `store_group_id` int(11) DEFAULT NULL COMMENT 'Store_group_id',
  `store_id` int(11) DEFAULT NULL COMMENT 'Store_id',
  `theme_theme_id` varchar(255) DEFAULT NULL COMMENT 'Theme_theme_id',
  PRIMARY KEY (`entity_id`),
  KEY `DESIGN_CONFIG_GRID_FLAT_STORE_WEBSITE_ID` (`store_website_id`),
  KEY `DESIGN_CONFIG_GRID_FLAT_STORE_GROUP_ID` (`store_group_id`),
  KEY `DESIGN_CONFIG_GRID_FLAT_STORE_ID` (`store_id`),
  FULLTEXT KEY `DESIGN_CONFIG_GRID_FLAT_THEME_THEME_ID` (`theme_theme_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='design_config_grid_flat';

--
-- Dumping data for table `design_config_grid_flat`
--

LOCK TABLES `design_config_grid_flat` WRITE;
/*!40000 ALTER TABLE `design_config_grid_flat` DISABLE KEYS */;
INSERT INTO `design_config_grid_flat` VALUES ('0',NULL,NULL,NULL,''),('1','2',NULL,NULL,'4'),('2','2','2','3','4'),('3','2','2','2','4'),('4','3',NULL,NULL,''),('5','3','3','5',''),('6','3','3','4',''),('7','4',NULL,NULL,''),('8','4','4','6','');
/*!40000 ALTER TABLE `design_config_grid_flat` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `directory_country`
--

DROP TABLE IF EXISTS `directory_country`;
CREATE TABLE `directory_country` (
  `country_id` varchar(2) NOT NULL COMMENT 'Country Id in ISO-2',
  `iso2_code` varchar(2) DEFAULT NULL COMMENT 'Country ISO-2 format',
  `iso3_code` varchar(3) DEFAULT NULL COMMENT 'Country ISO-3',
  PRIMARY KEY (`country_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Directory Country';

--
-- Dumping data for table `directory_country`
--

LOCK TABLES `directory_country` WRITE;
/*!40000 ALTER TABLE `directory_country` DISABLE KEYS */;
INSERT INTO `directory_country` VALUES ('AD','AD','AND'),('AE','AE','ARE'),('AF','AF','AFG'),('AG','AG','ATG'),('AI','AI','AIA'),('AL','AL','ALB'),('AM','AM','ARM'),('AN','AN','ANT'),('AO','AO','AGO'),('AQ','AQ','ATA'),('AR','AR','ARG'),('AS','AS','ASM'),('AT','AT','AUT'),('AU','AU','AUS'),('AW','AW','ABW'),('AX','AX','ALA'),('AZ','AZ','AZE'),('BA','BA','BIH'),('BB','BB','BRB'),('BD','BD','BGD'),('BE','BE','BEL'),('BF','BF','BFA'),('BG','BG','BGR'),('BH','BH','BHR'),('BI','BI','BDI'),('BJ','BJ','BEN'),('BL','BL','BLM'),('BM','BM','BMU'),('BN','BN','BRN'),('BO','BO','BOL'),('BR','BR','BRA'),('BS','BS','BHS'),('BT','BT','BTN'),('BV','BV','BVT'),('BW','BW','BWA'),('BY','BY','BLR'),('BZ','BZ','BLZ'),('CA','CA','CAN'),('CC','CC','CCK'),('CD','CD','COD'),('CF','CF','CAF'),('CG','CG','COG'),('CH','CH','CHE'),('CI','CI','CIV'),('CK','CK','COK'),('CL','CL','CHL'),('CM','CM','CMR'),('CN','CN','CHN'),('CO','CO','COL'),('CR','CR','CRI'),('CU','CU','CUB'),('CV','CV','CPV'),('CX','CX','CXR'),('CY','CY','CYP'),('CZ','CZ','CZE'),('DE','DE','DEU'),('DJ','DJ','DJI'),('DK','DK','DNK'),('DM','DM','DMA'),('DO','DO','DOM'),('DZ','DZ','DZA'),('EC','EC','ECU'),('EE','EE','EST'),('EG','EG','EGY'),('EH','EH','ESH'),('ER','ER','ERI'),('ES','ES','ESP'),('ET','ET','ETH'),('FI','FI','FIN'),('FJ','FJ','FJI'),('FK','FK','FLK'),('FM','FM','FSM'),('FO','FO','FRO'),('FR','FR','FRA'),('GA','GA','GAB'),('GB','GB','GBR'),('GD','GD','GRD'),('GE','GE','GEO'),('GF','GF','GUF'),('GG','GG','GGY'),('GH','GH','GHA'),('GI','GI','GIB'),('GL','GL','GRL'),('GM','GM','GMB'),('GN','GN','GIN'),('GP','GP','GLP'),('GQ','GQ','GNQ'),('GR','GR','GRC'),('GS','GS','SGS'),('GT','GT','GTM'),('GU','GU','GUM'),('GW','GW','GNB'),('GY','GY','GUY'),('HK','HK','HKG'),('HM','HM','HMD'),('HN','HN','HND'),('HR','HR','HRV'),('HT','HT','HTI'),('HU','HU','HUN'),('ID','ID','IDN'),('IE','IE','IRL'),('IL','IL','ISR'),('IM','IM','IMN'),('IN','IN','IND'),('IO','IO','IOT'),('IQ','IQ','IRQ'),('IR','IR','IRN'),('IS','IS','ISL'),('IT','IT','ITA'),('JE','JE','JEY'),('JM','JM','JAM'),('JO','JO','JOR'),('JP','JP','JPN'),('KE','KE','KEN'),('KG','KG','KGZ'),('KH','KH','KHM'),('KI','KI','KIR'),('KM','KM','COM'),('KN','KN','KNA'),('KP','KP','PRK'),('KR','KR','KOR'),('KW','KW','KWT'),('KY','KY','CYM'),('KZ','KZ','KAZ'),('LA','LA','LAO'),('LB','LB','LBN'),('LC','LC','LCA'),('LI','LI','LIE'),('LK','LK','LKA'),('LR','LR','LBR'),('LS','LS','LSO'),('LT','LT','LTU'),('LU','LU','LUX'),('LV','LV','LVA'),('LY','LY','LBY'),('MA','MA','MAR'),('MC','MC','MCO'),('MD','MD','MDA'),('ME','ME','MNE'),('MF','MF','MAF'),('MG','MG','MDG'),('MH','MH','MHL'),('MK','MK','MKD'),('ML','ML','MLI'),('MM','MM','MMR'),('MN','MN','MNG'),('MO','MO','MAC'),('MP','MP','MNP'),('MQ','MQ','MTQ'),('MR','MR','MRT'),('MS','MS','MSR'),('MT','MT','MLT'),('MU','MU','MUS'),('MV','MV','MDV'),('MW','MW','MWI'),('MX','MX','MEX'),('MY','MY','MYS'),('MZ','MZ','MOZ'),('NA','NA','NAM'),('NC','NC','NCL'),('NE','NE','NER'),('NF','NF','NFK'),('NG','NG','NGA'),('NI','NI','NIC'),('NL','NL','NLD'),('NO','NO','NOR'),('NP','NP','NPL'),('NR','NR','NRU'),('NU','NU','NIU'),('NZ','NZ','NZL'),('OM','OM','OMN'),('PA','PA','PAN'),('PE','PE','PER'),('PF','PF','PYF'),('PG','PG','PNG'),('PH','PH','PHL'),('PK','PK','PAK'),('PL','PL','POL'),('PM','PM','SPM'),('PN','PN','PCN'),('PS','PS','PSE'),('PT','PT','PRT'),('PW','PW','PLW'),('PY','PY','PRY'),('QA','QA','QAT'),('RE','RE','REU'),('RO','RO','ROU'),('RS','RS','SRB'),('RU','RU','RUS'),('RW','RW','RWA'),('SA','SA','SAU'),('SB','SB','SLB'),('SC','SC','SYC'),('SD','SD','SDN'),('SE','SE','SWE'),('SG','SG','SGP'),('SH','SH','SHN'),('SI','SI','SVN'),('SJ','SJ','SJM'),('SK','SK','SVK'),('SL','SL','SLE'),('SM','SM','SMR'),('SN','SN','SEN'),('SO','SO','SOM'),('SR','SR','SUR'),('ST','ST','STP'),('SV','SV','SLV'),('SY','SY','SYR'),('SZ','SZ','SWZ'),('TC','TC','TCA'),('TD','TD','TCD'),('TF','TF','ATF'),('TG','TG','TGO'),('TH','TH','THA'),('TJ','TJ','TJK'),('TK','TK','TKL'),('TL','TL','TLS'),('TM','TM','TKM'),('TN','TN','TUN'),('TO','TO','TON'),('TR','TR','TUR'),('TT','TT','TTO'),('TV','TV','TUV'),('TW','TW','TWN'),('TZ','TZ','TZA'),('UA','UA','UKR'),('UG','UG','UGA'),('UM','UM','UMI'),('US','US','USA'),('UY','UY','URY'),('UZ','UZ','UZB'),('VA','VA','VAT'),('VC','VC','VCT'),('VE','VE','VEN'),('VG','VG','VGB'),('VI','VI','VIR'),('VN','VN','VNM'),('VU','VU','VUT'),('WF','WF','WLF'),('WS','WS','WSM'),('YE','YE','YEM'),('YT','YT','MYT'),('ZA','ZA','ZAF'),('ZM','ZM','ZMB'),('ZW','ZW','ZWE');
/*!40000 ALTER TABLE `directory_country` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `directory_country_format`
--

DROP TABLE IF EXISTS `directory_country_format`;
CREATE TABLE `directory_country_format` (
  `country_format_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Country Format Id',
  `country_id` varchar(2) DEFAULT NULL COMMENT 'Country Id in ISO-2',
  `type` varchar(30) DEFAULT NULL COMMENT 'Country Format Type',
  `format` text NOT NULL COMMENT 'Country Format',
  PRIMARY KEY (`country_format_id`),
  UNIQUE KEY `DIRECTORY_COUNTRY_FORMAT_COUNTRY_ID_TYPE` (`country_id`,`type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Directory Country Format';

--
-- Table structure for table `directory_country_region`
--

DROP TABLE IF EXISTS `directory_country_region`;
CREATE TABLE `directory_country_region` (
  `region_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Region Id',
  `country_id` varchar(4) NOT NULL DEFAULT '0' COMMENT 'Country Id in ISO-2',
  `code` varchar(32) DEFAULT NULL COMMENT 'Region code',
  `default_name` varchar(255) DEFAULT NULL COMMENT 'Region Name',
  PRIMARY KEY (`region_id`),
  KEY `DIRECTORY_COUNTRY_REGION_COUNTRY_ID` (`country_id`)
) ENGINE=InnoDB AUTO_INCREMENT=512 DEFAULT CHARSET=utf8 COMMENT='Directory Country Region';

--
-- Dumping data for table `directory_country_region`
--

LOCK TABLES `directory_country_region` WRITE;
/*!40000 ALTER TABLE `directory_country_region` DISABLE KEYS */;
INSERT INTO `directory_country_region` VALUES ('1','US','AL','Alabama'),('2','US','AK','Alaska'),('3','US','AS','American Samoa'),('4','US','AZ','Arizona'),('5','US','AR','Arkansas'),('6','US','AE','Armed Forces Africa'),('7','US','AA','Armed Forces Americas'),('8','US','AE','Armed Forces Canada'),('9','US','AE','Armed Forces Europe'),('10','US','AE','Armed Forces Middle East'),('11','US','AP','Armed Forces Pacific'),('12','US','CA','California'),('13','US','CO','Colorado'),('14','US','CT','Connecticut'),('15','US','DE','Delaware'),('16','US','DC','District of Columbia'),('17','US','FM','Federated States Of Micronesia'),('18','US','FL','Florida'),('19','US','GA','Georgia'),('20','US','GU','Guam'),('21','US','HI','Hawaii'),('22','US','ID','Idaho'),('23','US','IL','Illinois'),('24','US','IN','Indiana'),('25','US','IA','Iowa'),('26','US','KS','Kansas'),('27','US','KY','Kentucky'),('28','US','LA','Louisiana'),('29','US','ME','Maine'),('30','US','MH','Marshall Islands'),('31','US','MD','Maryland'),('32','US','MA','Massachusetts'),('33','US','MI','Michigan'),('34','US','MN','Minnesota'),('35','US','MS','Mississippi'),('36','US','MO','Missouri'),('37','US','MT','Montana'),('38','US','NE','Nebraska'),('39','US','NV','Nevada'),('40','US','NH','New Hampshire'),('41','US','NJ','New Jersey'),('42','US','NM','New Mexico'),('43','US','NY','New York'),('44','US','NC','North Carolina'),('45','US','ND','North Dakota'),('46','US','MP','Northern Mariana Islands'),('47','US','OH','Ohio'),('48','US','OK','Oklahoma'),('49','US','OR','Oregon'),('50','US','PW','Palau'),('51','US','PA','Pennsylvania'),('52','US','PR','Puerto Rico'),('53','US','RI','Rhode Island'),('54','US','SC','South Carolina'),('55','US','SD','South Dakota'),('56','US','TN','Tennessee'),('57','US','TX','Texas'),('58','US','UT','Utah'),('59','US','VT','Vermont'),('60','US','VI','Virgin Islands'),('61','US','VA','Virginia'),('62','US','WA','Washington'),('63','US','WV','West Virginia'),('64','US','WI','Wisconsin'),('65','US','WY','Wyoming'),('66','CA','AB','Alberta'),('67','CA','BC','British Columbia'),('68','CA','MB','Manitoba'),('69','CA','NL','Newfoundland and Labrador'),('70','CA','NB','New Brunswick'),('71','CA','NS','Nova Scotia'),('72','CA','NT','Northwest Territories'),('73','CA','NU','Nunavut'),('74','CA','ON','Ontario'),('75','CA','PE','Prince Edward Island'),('76','CA','QC','Quebec'),('77','CA','SK','Saskatchewan'),('78','CA','YT','Yukon Territory'),('79','DE','NDS','Niedersachsen'),('80','DE','BAW','Baden-Württemberg'),('81','DE','BAY','Bayern'),('82','DE','BER','Berlin'),('83','DE','BRG','Brandenburg'),('84','DE','BRE','Bremen'),('85','DE','HAM','Hamburg'),('86','DE','HES','Hessen'),('87','DE','MEC','Mecklenburg-Vorpommern'),('88','DE','NRW','Nordrhein-Westfalen'),('89','DE','RHE','Rheinland-Pfalz'),('90','DE','SAR','Saarland'),('91','DE','SAS','Sachsen'),('92','DE','SAC','Sachsen-Anhalt'),('93','DE','SCN','Schleswig-Holstein'),('94','DE','THE','Thüringen'),('95','AT','WI','Wien'),('96','AT','NO','Niederösterreich'),('97','AT','OO','Oberösterreich'),('98','AT','SB','Salzburg'),('99','AT','KN','Kärnten'),('100','AT','ST','Steiermark'),('101','AT','TI','Tirol'),('102','AT','BL','Burgenland'),('103','AT','VB','Vorarlberg'),('104','CH','AG','Aargau'),('105','CH','AI','Appenzell Innerrhoden'),('106','CH','AR','Appenzell Ausserrhoden'),('107','CH','BE','Bern'),('108','CH','BL','Basel-Landschaft'),('109','CH','BS','Basel-Stadt'),('110','CH','FR','Freiburg'),('111','CH','GE','Genf'),('112','CH','GL','Glarus'),('113','CH','GR','Graubünden'),('114','CH','JU','Jura'),('115','CH','LU','Luzern'),('116','CH','NE','Neuenburg'),('117','CH','NW','Nidwalden'),('118','CH','OW','Obwalden'),('119','CH','SG','St. Gallen'),('120','CH','SH','Schaffhausen'),('121','CH','SO','Solothurn'),('122','CH','SZ','Schwyz'),('123','CH','TG','Thurgau'),('124','CH','TI','Tessin'),('125','CH','UR','Uri'),('126','CH','VD','Waadt'),('127','CH','VS','Wallis'),('128','CH','ZG','Zug'),('129','CH','ZH','Zürich'),('130','ES','A Coruсa','A Coruña'),('131','ES','Alava','Alava'),('132','ES','Albacete','Albacete'),('133','ES','Alicante','Alicante'),('134','ES','Almeria','Almeria'),('135','ES','Asturias','Asturias'),('136','ES','Avila','Avila'),('137','ES','Badajoz','Badajoz'),('138','ES','Baleares','Baleares'),('139','ES','Barcelona','Barcelona'),('140','ES','Burgos','Burgos'),('141','ES','Caceres','Caceres'),('142','ES','Cadiz','Cadiz'),('143','ES','Cantabria','Cantabria'),('144','ES','Castellon','Castellon'),('145','ES','Ceuta','Ceuta'),('146','ES','Ciudad Real','Ciudad Real'),('147','ES','Cordoba','Cordoba'),('148','ES','Cuenca','Cuenca'),('149','ES','Girona','Girona'),('150','ES','Granada','Granada'),('151','ES','Guadalajara','Guadalajara'),('152','ES','Guipuzcoa','Guipuzcoa'),('153','ES','Huelva','Huelva'),('154','ES','Huesca','Huesca'),('155','ES','Jaen','Jaen'),('156','ES','La Rioja','La Rioja'),('157','ES','Las Palmas','Las Palmas'),('158','ES','Leon','Leon'),('159','ES','Lleida','Lleida'),('160','ES','Lugo','Lugo'),('161','ES','Madrid','Madrid'),('162','ES','Malaga','Malaga'),('163','ES','Melilla','Melilla'),('164','ES','Murcia','Murcia'),('165','ES','Navarra','Navarra'),('166','ES','Ourense','Ourense'),('167','ES','Palencia','Palencia'),('168','ES','Pontevedra','Pontevedra'),('169','ES','Salamanca','Salamanca'),('170','ES','Santa Cruz de Tenerife','Santa Cruz de Tenerife'),('171','ES','Segovia','Segovia'),('172','ES','Sevilla','Sevilla'),('173','ES','Soria','Soria'),('174','ES','Tarragona','Tarragona'),('175','ES','Teruel','Teruel'),('176','ES','Toledo','Toledo'),('177','ES','Valencia','Valencia'),('178','ES','Valladolid','Valladolid'),('179','ES','Vizcaya','Vizcaya'),('180','ES','Zamora','Zamora'),('181','ES','Zaragoza','Zaragoza'),('182','FR','1','Ain'),('183','FR','2','Aisne'),('184','FR','3','Allier'),('185','FR','4','Alpes-de-Haute-Provence'),('186','FR','5','Hautes-Alpes'),('187','FR','6','Alpes-Maritimes'),('188','FR','7','Ardèche'),('189','FR','8','Ardennes'),('190','FR','9','Ariège'),('191','FR','10','Aube'),('192','FR','11','Aude'),('193','FR','12','Aveyron'),('194','FR','13','Bouches-du-Rhône'),('195','FR','14','Calvados'),('196','FR','15','Cantal'),('197','FR','16','Charente'),('198','FR','17','Charente-Maritime'),('199','FR','18','Cher'),('200','FR','19','Corrèze'),('201','FR','2A','Corse-du-Sud'),('202','FR','2B','Haute-Corse'),('203','FR','21','Côte-d\'Or'),('204','FR','22','Côtes-d\'Armor'),('205','FR','23','Creuse'),('206','FR','24','Dordogne'),('207','FR','25','Doubs'),('208','FR','26','Drôme'),('209','FR','27','Eure'),('210','FR','28','Eure-et-Loir'),('211','FR','29','Finistère'),('212','FR','30','Gard'),('213','FR','31','Haute-Garonne'),('214','FR','32','Gers'),('215','FR','33','Gironde'),('216','FR','34','Hérault'),('217','FR','35','Ille-et-Vilaine'),('218','FR','36','Indre'),('219','FR','37','Indre-et-Loire'),('220','FR','38','Isère'),('221','FR','39','Jura'),('222','FR','40','Landes'),('223','FR','41','Loir-et-Cher'),('224','FR','42','Loire'),('225','FR','43','Haute-Loire'),('226','FR','44','Loire-Atlantique'),('227','FR','45','Loiret'),('228','FR','46','Lot'),('229','FR','47','Lot-et-Garonne'),('230','FR','48','Lozère'),('231','FR','49','Maine-et-Loire'),('232','FR','50','Manche'),('233','FR','51','Marne'),('234','FR','52','Haute-Marne'),('235','FR','53','Mayenne'),('236','FR','54','Meurthe-et-Moselle'),('237','FR','55','Meuse'),('238','FR','56','Morbihan'),('239','FR','57','Moselle'),('240','FR','58','Nièvre'),('241','FR','59','Nord'),('242','FR','60','Oise'),('243','FR','61','Orne'),('244','FR','62','Pas-de-Calais'),('245','FR','63','Puy-de-Dôme'),('246','FR','64','Pyrénées-Atlantiques'),('247','FR','65','Hautes-Pyrénées'),('248','FR','66','Pyrénées-Orientales'),('249','FR','67','Bas-Rhin'),('250','FR','68','Haut-Rhin'),('251','FR','69','Rhône'),('252','FR','70','Haute-Saône'),('253','FR','71','Saône-et-Loire'),('254','FR','72','Sarthe'),('255','FR','73','Savoie'),('256','FR','74','Haute-Savoie'),('257','FR','75','Paris'),('258','FR','76','Seine-Maritime'),('259','FR','77','Seine-et-Marne'),('260','FR','78','Yvelines'),('261','FR','79','Deux-Sèvres'),('262','FR','80','Somme'),('263','FR','81','Tarn'),('264','FR','82','Tarn-et-Garonne'),('265','FR','83','Var'),('266','FR','84','Vaucluse'),('267','FR','85','Vendée'),('268','FR','86','Vienne'),('269','FR','87','Haute-Vienne'),('270','FR','88','Vosges'),('271','FR','89','Yonne'),('272','FR','90','Territoire-de-Belfort'),('273','FR','91','Essonne'),('274','FR','92','Hauts-de-Seine'),('275','FR','93','Seine-Saint-Denis'),('276','FR','94','Val-de-Marne'),('277','FR','95','Val-d\'Oise'),('278','RO','AB','Alba'),('279','RO','AR','Arad'),('280','RO','AG','Argeş'),('281','RO','BC','Bacău'),('282','RO','BH','Bihor'),('283','RO','BN','Bistriţa-Năsăud'),('284','RO','BT','Botoşani'),('285','RO','BV','Braşov'),('286','RO','BR','Brăila'),('287','RO','B','Bucureşti'),('288','RO','BZ','Buzău'),('289','RO','CS','Caraş-Severin'),('290','RO','CL','Călăraşi'),('291','RO','CJ','Cluj'),('292','RO','CT','Constanţa'),('293','RO','CV','Covasna'),('294','RO','DB','Dâmboviţa'),('295','RO','DJ','Dolj'),('296','RO','GL','Galaţi'),('297','RO','GR','Giurgiu'),('298','RO','GJ','Gorj'),('299','RO','HR','Harghita'),('300','RO','HD','Hunedoara'),('301','RO','IL','Ialomiţa'),('302','RO','IS','Iaşi'),('303','RO','IF','Ilfov'),('304','RO','MM','Maramureş'),('305','RO','MH','Mehedinţi'),('306','RO','MS','Mureş'),('307','RO','NT','Neamţ'),('308','RO','OT','Olt'),('309','RO','PH','Prahova'),('310','RO','SM','Satu-Mare'),('311','RO','SJ','Sălaj'),('312','RO','SB','Sibiu'),('313','RO','SV','Suceava'),('314','RO','TR','Teleorman'),('315','RO','TM','Timiş'),('316','RO','TL','Tulcea'),('317','RO','VS','Vaslui'),('318','RO','VL','Vâlcea'),('319','RO','VN','Vrancea'),('320','FI','Lappi','Lappi'),('321','FI','Pohjois-Pohjanmaa','Pohjois-Pohjanmaa'),('322','FI','Kainuu','Kainuu'),('323','FI','Pohjois-Karjala','Pohjois-Karjala'),('324','FI','Pohjois-Savo','Pohjois-Savo'),('325','FI','Etelä-Savo','Etelä-Savo'),('326','FI','Etelä-Pohjanmaa','Etelä-Pohjanmaa'),('327','FI','Pohjanmaa','Pohjanmaa'),('328','FI','Pirkanmaa','Pirkanmaa'),('329','FI','Satakunta','Satakunta'),('330','FI','Keski-Pohjanmaa','Keski-Pohjanmaa'),('331','FI','Keski-Suomi','Keski-Suomi'),('332','FI','Varsinais-Suomi','Varsinais-Suomi'),('333','FI','Etelä-Karjala','Etelä-Karjala'),('334','FI','Päijät-Häme','Päijät-Häme'),('335','FI','Kanta-Häme','Kanta-Häme'),('336','FI','Uusimaa','Uusimaa'),('337','FI','Itä-Uusimaa','Itä-Uusimaa'),('338','FI','Kymenlaakso','Kymenlaakso'),('339','FI','Ahvenanmaa','Ahvenanmaa'),('340','EE','EE-37','Harjumaa'),('341','EE','EE-39','Hiiumaa'),('342','EE','EE-44','Ida-Virumaa'),('343','EE','EE-49','Jõgevamaa'),('344','EE','EE-51','Järvamaa'),('345','EE','EE-57','Läänemaa'),('346','EE','EE-59','Lääne-Virumaa'),('347','EE','EE-65','Põlvamaa'),('348','EE','EE-67','Pärnumaa'),('349','EE','EE-70','Raplamaa'),('350','EE','EE-74','Saaremaa'),('351','EE','EE-78','Tartumaa'),('352','EE','EE-82','Valgamaa'),('353','EE','EE-84','Viljandimaa'),('354','EE','EE-86','Võrumaa'),('355','LV','LV-DGV','Daugavpils'),('356','LV','LV-JEL','Jelgava'),('357','LV','Jēkabpils','Jēkabpils'),('358','LV','LV-JUR','Jūrmala'),('359','LV','LV-LPX','Liepāja'),('360','LV','LV-LE','Liepājas novads'),('361','LV','LV-REZ','Rēzekne'),('362','LV','LV-RIX','Rīga'),('363','LV','LV-RI','Rīgas novads'),('364','LV','Valmiera','Valmiera'),('365','LV','LV-VEN','Ventspils'),('366','LV','Aglonas novads','Aglonas novads'),('367','LV','LV-AI','Aizkraukles novads'),('368','LV','Aizputes novads','Aizputes novads'),('369','LV','Aknīstes novads','Aknīstes novads'),('370','LV','Alojas novads','Alojas novads'),('371','LV','Alsungas novads','Alsungas novads'),('372','LV','LV-AL','Alūksnes novads'),('373','LV','Amatas novads','Amatas novads'),('374','LV','Apes novads','Apes novads'),('375','LV','Auces novads','Auces novads'),('376','LV','Babītes novads','Babītes novads'),('377','LV','Baldones novads','Baldones novads'),('378','LV','Baltinavas novads','Baltinavas novads'),('379','LV','LV-BL','Balvu novads'),('380','LV','LV-BU','Bauskas novads'),('381','LV','Beverīnas novads','Beverīnas novads'),('382','LV','Brocēnu novads','Brocēnu novads'),('383','LV','Burtnieku novads','Burtnieku novads'),('384','LV','Carnikavas novads','Carnikavas novads'),('385','LV','Cesvaines novads','Cesvaines novads'),('386','LV','Ciblas novads','Ciblas novads'),('387','LV','LV-CE','Cēsu novads'),('388','LV','Dagdas novads','Dagdas novads'),('389','LV','LV-DA','Daugavpils novads'),('390','LV','LV-DO','Dobeles novads'),('391','LV','Dundagas novads','Dundagas novads'),('392','LV','Durbes novads','Durbes novads'),('393','LV','Engures novads','Engures novads'),('394','LV','Garkalnes novads','Garkalnes novads'),('395','LV','Grobiņas novads','Grobiņas novads'),('396','LV','LV-GU','Gulbenes novads'),('397','LV','Iecavas novads','Iecavas novads'),('398','LV','Ikšķiles novads','Ikšķiles novads'),('399','LV','Ilūkstes novads','Ilūkstes novads'),('400','LV','Inčukalna novads','Inčukalna novads'),('401','LV','Jaunjelgavas novads','Jaunjelgavas novads'),('402','LV','Jaunpiebalgas novads','Jaunpiebalgas novads'),('403','LV','Jaunpils novads','Jaunpils novads'),('404','LV','LV-JL','Jelgavas novads'),('405','LV','LV-JK','Jēkabpils novads'),('406','LV','Kandavas novads','Kandavas novads'),('407','LV','Kokneses novads','Kokneses novads'),('408','LV','Krimuldas novads','Krimuldas novads'),('409','LV','Krustpils novads','Krustpils novads'),('410','LV','LV-KR','Krāslavas novads'),('411','LV','LV-KU','Kuldīgas novads'),('412','LV','Kārsavas novads','Kārsavas novads'),('413','LV','Lielvārdes novads','Lielvārdes novads'),('414','LV','LV-LM','Limbažu novads'),('415','LV','Lubānas novads','Lubānas novads'),('416','LV','LV-LU','Ludzas novads'),('417','LV','Līgatnes novads','Līgatnes novads'),('418','LV','Līvānu novads','Līvānu novads'),('419','LV','LV-MA','Madonas novads'),('420','LV','Mazsalacas novads','Mazsalacas novads'),('421','LV','Mālpils novads','Mālpils novads'),('422','LV','Mārupes novads','Mārupes novads'),('423','LV','Naukšēnu novads','Naukšēnu novads'),('424','LV','Neretas novads','Neretas novads'),('425','LV','Nīcas novads','Nīcas novads'),('426','LV','LV-OG','Ogres novads'),('427','LV','Olaines novads','Olaines novads'),('428','LV','Ozolnieku novads','Ozolnieku novads'),('429','LV','LV-PR','Preiļu novads'),('430','LV','Priekules novads','Priekules novads'),('431','LV','Priekuļu novads','Priekuļu novads'),('432','LV','Pārgaujas novads','Pārgaujas novads'),('433','LV','Pāvilostas novads','Pāvilostas novads'),('434','LV','Pļaviņu novads','Pļaviņu novads'),('435','LV','Raunas novads','Raunas novads'),('436','LV','Riebiņu novads','Riebiņu novads'),('437','LV','Rojas novads','Rojas novads'),('438','LV','Ropažu novads','Ropažu novads'),('439','LV','Rucavas novads','Rucavas novads'),('440','LV','Rugāju novads','Rugāju novads'),('441','LV','Rundāles novads','Rundāles novads'),('442','LV','LV-RE','Rēzeknes novads'),('443','LV','Rūjienas novads','Rūjienas novads'),('444','LV','Salacgrīvas novads','Salacgrīvas novads'),('445','LV','Salas novads','Salas novads'),('446','LV','Salaspils novads','Salaspils novads'),('447','LV','LV-SA','Saldus novads'),('448','LV','Saulkrastu novads','Saulkrastu novads'),('449','LV','Siguldas novads','Siguldas novads'),('450','LV','Skrundas novads','Skrundas novads'),('451','LV','Skrīveru novads','Skrīveru novads'),('452','LV','Smiltenes novads','Smiltenes novads'),('453','LV','Stopiņu novads','Stopiņu novads'),('454','LV','Strenču novads','Strenču novads'),('455','LV','Sējas novads','Sējas novads'),('456','LV','LV-TA','Talsu novads'),('457','LV','LV-TU','Tukuma novads'),('458','LV','Tērvetes novads','Tērvetes novads'),('459','LV','Vaiņodes novads','Vaiņodes novads'),('460','LV','LV-VK','Valkas novads'),('461','LV','LV-VM','Valmieras novads'),('462','LV','Varakļānu novads','Varakļānu novads'),('463','LV','Vecpiebalgas novads','Vecpiebalgas novads'),('464','LV','Vecumnieku novads','Vecumnieku novads'),('465','LV','LV-VE','Ventspils novads'),('466','LV','Viesītes novads','Viesītes novads'),('467','LV','Viļakas novads','Viļakas novads'),('468','LV','Viļānu novads','Viļānu novads'),('469','LV','Vārkavas novads','Vārkavas novads'),('470','LV','Zilupes novads','Zilupes novads'),('471','LV','Ādažu novads','Ādažu novads'),('472','LV','Ērgļu novads','Ērgļu novads'),('473','LV','Ķeguma novads','Ķeguma novads'),('474','LV','Ķekavas novads','Ķekavas novads'),('475','LT','LT-AL','Alytaus Apskritis'),('476','LT','LT-KU','Kauno Apskritis'),('477','LT','LT-KL','Klaipėdos Apskritis'),('478','LT','LT-MR','Marijampolės Apskritis'),('479','LT','LT-PN','Panevėžio Apskritis'),('480','LT','LT-SA','Šiaulių Apskritis'),('481','LT','LT-TA','Tauragės Apskritis'),('482','LT','LT-TE','Telšių Apskritis'),('483','LT','LT-UT','Utenos Apskritis'),('484','LT','LT-VL','Vilniaus Apskritis'),('485','BR','AC','Acre'),('486','BR','AL','Alagoas'),('487','BR','AP','Amapá'),('488','BR','AM','Amazonas'),('489','BR','BA','Bahia'),('490','BR','CE','Ceará'),('491','BR','ES','Espírito Santo'),('492','BR','GO','Goiás'),('493','BR','MA','Maranhão'),('494','BR','MT','Mato Grosso'),('495','BR','MS','Mato Grosso do Sul'),('496','BR','MG','Minas Gerais'),('497','BR','PA','Pará'),('498','BR','PB','Paraíba'),('499','BR','PR','Paraná'),('500','BR','PE','Pernambuco'),('501','BR','PI','Piauí'),('502','BR','RJ','Rio de Janeiro'),('503','BR','RN','Rio Grande do Norte'),('504','BR','RS','Rio Grande do Sul'),('505','BR','RO','Rondônia'),('506','BR','RR','Roraima'),('507','BR','SC','Santa Catarina'),('508','BR','SP','São Paulo'),('509','BR','SE','Sergipe'),('510','BR','TO','Tocantins'),('511','BR','DF','Distrito Federal');
/*!40000 ALTER TABLE `directory_country_region` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `directory_country_region_name`
--

DROP TABLE IF EXISTS `directory_country_region_name`;
CREATE TABLE `directory_country_region_name` (
  `locale` varchar(8) NOT NULL COMMENT 'Locale',
  `region_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Region Id',
  `name` varchar(255) DEFAULT NULL COMMENT 'Region Name',
  PRIMARY KEY (`locale`,`region_id`),
  KEY `DIRECTORY_COUNTRY_REGION_NAME_REGION_ID` (`region_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Directory Country Region Name';

--
-- Dumping data for table `directory_country_region_name`
--

LOCK TABLES `directory_country_region_name` WRITE;
/*!40000 ALTER TABLE `directory_country_region_name` DISABLE KEYS */;
INSERT INTO `directory_country_region_name` VALUES ('en_US','1','Alabama'),('en_US','2','Alaska'),('en_US','3','American Samoa'),('en_US','4','Arizona'),('en_US','5','Arkansas'),('en_US','6','Armed Forces Africa'),('en_US','7','Armed Forces Americas'),('en_US','8','Armed Forces Canada'),('en_US','9','Armed Forces Europe'),('en_US','10','Armed Forces Middle East'),('en_US','11','Armed Forces Pacific'),('en_US','12','California'),('en_US','13','Colorado'),('en_US','14','Connecticut'),('en_US','15','Delaware'),('en_US','16','District of Columbia'),('en_US','17','Federated States Of Micronesia'),('en_US','18','Florida'),('en_US','19','Georgia'),('en_US','20','Guam'),('en_US','21','Hawaii'),('en_US','22','Idaho'),('en_US','23','Illinois'),('en_US','24','Indiana'),('en_US','25','Iowa'),('en_US','26','Kansas'),('en_US','27','Kentucky'),('en_US','28','Louisiana'),('en_US','29','Maine'),('en_US','30','Marshall Islands'),('en_US','31','Maryland'),('en_US','32','Massachusetts'),('en_US','33','Michigan'),('en_US','34','Minnesota'),('en_US','35','Mississippi'),('en_US','36','Missouri'),('en_US','37','Montana'),('en_US','38','Nebraska'),('en_US','39','Nevada'),('en_US','40','New Hampshire'),('en_US','41','New Jersey'),('en_US','42','New Mexico'),('en_US','43','New York'),('en_US','44','North Carolina'),('en_US','45','North Dakota'),('en_US','46','Northern Mariana Islands'),('en_US','47','Ohio'),('en_US','48','Oklahoma'),('en_US','49','Oregon'),('en_US','50','Palau'),('en_US','51','Pennsylvania'),('en_US','52','Puerto Rico'),('en_US','53','Rhode Island'),('en_US','54','South Carolina'),('en_US','55','South Dakota'),('en_US','56','Tennessee'),('en_US','57','Texas'),('en_US','58','Utah'),('en_US','59','Vermont'),('en_US','60','Virgin Islands'),('en_US','61','Virginia'),('en_US','62','Washington'),('en_US','63','West Virginia'),('en_US','64','Wisconsin'),('en_US','65','Wyoming'),('en_US','66','Alberta'),('en_US','67','British Columbia'),('en_US','68','Manitoba'),('en_US','69','Newfoundland and Labrador'),('en_US','70','New Brunswick'),('en_US','71','Nova Scotia'),('en_US','72','Northwest Territories'),('en_US','73','Nunavut'),('en_US','74','Ontario'),('en_US','75','Prince Edward Island'),('en_US','76','Quebec'),('en_US','77','Saskatchewan'),('en_US','78','Yukon Territory'),('en_US','79','Niedersachsen'),('en_US','80','Baden-Württemberg'),('en_US','81','Bayern'),('en_US','82','Berlin'),('en_US','83','Brandenburg'),('en_US','84','Bremen'),('en_US','85','Hamburg'),('en_US','86','Hessen'),('en_US','87','Mecklenburg-Vorpommern'),('en_US','88','Nordrhein-Westfalen'),('en_US','89','Rheinland-Pfalz'),('en_US','90','Saarland'),('en_US','91','Sachsen'),('en_US','92','Sachsen-Anhalt'),('en_US','93','Schleswig-Holstein'),('en_US','94','Thüringen'),('en_US','95','Wien'),('en_US','96','Niederösterreich'),('en_US','97','Oberösterreich'),('en_US','98','Salzburg'),('en_US','99','Kärnten'),('en_US','100','Steiermark'),('en_US','101','Tirol'),('en_US','102','Burgenland'),('en_US','103','Vorarlberg'),('en_US','104','Aargau'),('en_US','105','Appenzell Innerrhoden'),('en_US','106','Appenzell Ausserrhoden'),('en_US','107','Bern'),('en_US','108','Basel-Landschaft'),('en_US','109','Basel-Stadt'),('en_US','110','Freiburg'),('en_US','111','Genf'),('en_US','112','Glarus'),('en_US','113','Graubünden'),('en_US','114','Jura'),('en_US','115','Luzern'),('en_US','116','Neuenburg'),('en_US','117','Nidwalden'),('en_US','118','Obwalden'),('en_US','119','St. Gallen'),('en_US','120','Schaffhausen'),('en_US','121','Solothurn'),('en_US','122','Schwyz'),('en_US','123','Thurgau'),('en_US','124','Tessin'),('en_US','125','Uri'),('en_US','126','Waadt'),('en_US','127','Wallis'),('en_US','128','Zug'),('en_US','129','Zürich'),('en_US','130','A Coruña'),('en_US','131','Alava'),('en_US','132','Albacete'),('en_US','133','Alicante'),('en_US','134','Almeria'),('en_US','135','Asturias'),('en_US','136','Avila'),('en_US','137','Badajoz'),('en_US','138','Baleares'),('en_US','139','Barcelona'),('en_US','140','Burgos'),('en_US','141','Caceres'),('en_US','142','Cadiz'),('en_US','143','Cantabria'),('en_US','144','Castellon'),('en_US','145','Ceuta'),('en_US','146','Ciudad Real'),('en_US','147','Cordoba'),('en_US','148','Cuenca'),('en_US','149','Girona'),('en_US','150','Granada'),('en_US','151','Guadalajara'),('en_US','152','Guipuzcoa'),('en_US','153','Huelva'),('en_US','154','Huesca'),('en_US','155','Jaen'),('en_US','156','La Rioja'),('en_US','157','Las Palmas'),('en_US','158','Leon'),('en_US','159','Lleida'),('en_US','160','Lugo'),('en_US','161','Madrid'),('en_US','162','Malaga'),('en_US','163','Melilla'),('en_US','164','Murcia'),('en_US','165','Navarra'),('en_US','166','Ourense'),('en_US','167','Palencia'),('en_US','168','Pontevedra'),('en_US','169','Salamanca'),('en_US','170','Santa Cruz de Tenerife'),('en_US','171','Segovia'),('en_US','172','Sevilla'),('en_US','173','Soria'),('en_US','174','Tarragona'),('en_US','175','Teruel'),('en_US','176','Toledo'),('en_US','177','Valencia'),('en_US','178','Valladolid'),('en_US','179','Vizcaya'),('en_US','180','Zamora'),('en_US','181','Zaragoza'),('en_US','182','Ain'),('en_US','183','Aisne'),('en_US','184','Allier'),('en_US','185','Alpes-de-Haute-Provence'),('en_US','186','Hautes-Alpes'),('en_US','187','Alpes-Maritimes'),('en_US','188','Ardèche'),('en_US','189','Ardennes'),('en_US','190','Ariège'),('en_US','191','Aube'),('en_US','192','Aude'),('en_US','193','Aveyron'),('en_US','194','Bouches-du-Rhône'),('en_US','195','Calvados'),('en_US','196','Cantal'),('en_US','197','Charente'),('en_US','198','Charente-Maritime'),('en_US','199','Cher'),('en_US','200','Corrèze'),('en_US','201','Corse-du-Sud'),('en_US','202','Haute-Corse'),('en_US','203','Côte-d\'Or'),('en_US','204','Côtes-d\'Armor'),('en_US','205','Creuse'),('en_US','206','Dordogne'),('en_US','207','Doubs'),('en_US','208','Drôme'),('en_US','209','Eure'),('en_US','210','Eure-et-Loir'),('en_US','211','Finistère'),('en_US','212','Gard'),('en_US','213','Haute-Garonne'),('en_US','214','Gers'),('en_US','215','Gironde'),('en_US','216','Hérault'),('en_US','217','Ille-et-Vilaine'),('en_US','218','Indre'),('en_US','219','Indre-et-Loire'),('en_US','220','Isère'),('en_US','221','Jura'),('en_US','222','Landes'),('en_US','223','Loir-et-Cher'),('en_US','224','Loire'),('en_US','225','Haute-Loire'),('en_US','226','Loire-Atlantique'),('en_US','227','Loiret'),('en_US','228','Lot'),('en_US','229','Lot-et-Garonne'),('en_US','230','Lozère'),('en_US','231','Maine-et-Loire'),('en_US','232','Manche'),('en_US','233','Marne'),('en_US','234','Haute-Marne'),('en_US','235','Mayenne'),('en_US','236','Meurthe-et-Moselle'),('en_US','237','Meuse'),('en_US','238','Morbihan'),('en_US','239','Moselle'),('en_US','240','Nièvre'),('en_US','241','Nord'),('en_US','242','Oise'),('en_US','243','Orne'),('en_US','244','Pas-de-Calais'),('en_US','245','Puy-de-Dôme'),('en_US','246','Pyrénées-Atlantiques'),('en_US','247','Hautes-Pyrénées'),('en_US','248','Pyrénées-Orientales'),('en_US','249','Bas-Rhin'),('en_US','250','Haut-Rhin'),('en_US','251','Rhône'),('en_US','252','Haute-Saône'),('en_US','253','Saône-et-Loire'),('en_US','254','Sarthe'),('en_US','255','Savoie'),('en_US','256','Haute-Savoie'),('en_US','257','Paris'),('en_US','258','Seine-Maritime'),('en_US','259','Seine-et-Marne'),('en_US','260','Yvelines'),('en_US','261','Deux-Sèvres'),('en_US','262','Somme'),('en_US','263','Tarn'),('en_US','264','Tarn-et-Garonne'),('en_US','265','Var'),('en_US','266','Vaucluse'),('en_US','267','Vendée'),('en_US','268','Vienne'),('en_US','269','Haute-Vienne'),('en_US','270','Vosges'),('en_US','271','Yonne'),('en_US','272','Territoire-de-Belfort'),('en_US','273','Essonne'),('en_US','274','Hauts-de-Seine'),('en_US','275','Seine-Saint-Denis'),('en_US','276','Val-de-Marne'),('en_US','277','Val-d\'Oise'),('en_US','278','Alba'),('en_US','279','Arad'),('en_US','280','Argeş'),('en_US','281','Bacău'),('en_US','282','Bihor'),('en_US','283','Bistriţa-Năsăud'),('en_US','284','Botoşani'),('en_US','285','Braşov'),('en_US','286','Brăila'),('en_US','287','Bucureşti'),('en_US','288','Buzău'),('en_US','289','Caraş-Severin'),('en_US','290','Călăraşi'),('en_US','291','Cluj'),('en_US','292','Constanţa'),('en_US','293','Covasna'),('en_US','294','Dâmboviţa'),('en_US','295','Dolj'),('en_US','296','Galaţi'),('en_US','297','Giurgiu'),('en_US','298','Gorj'),('en_US','299','Harghita'),('en_US','300','Hunedoara'),('en_US','301','Ialomiţa'),('en_US','302','Iaşi'),('en_US','303','Ilfov'),('en_US','304','Maramureş'),('en_US','305','Mehedinţi'),('en_US','306','Mureş'),('en_US','307','Neamţ'),('en_US','308','Olt'),('en_US','309','Prahova'),('en_US','310','Satu-Mare'),('en_US','311','Sălaj'),('en_US','312','Sibiu'),('en_US','313','Suceava'),('en_US','314','Teleorman'),('en_US','315','Timiş'),('en_US','316','Tulcea'),('en_US','317','Vaslui'),('en_US','318','Vâlcea'),('en_US','319','Vrancea'),('en_US','320','Lappi'),('en_US','321','Pohjois-Pohjanmaa'),('en_US','322','Kainuu'),('en_US','323','Pohjois-Karjala'),('en_US','324','Pohjois-Savo'),('en_US','325','Etelä-Savo'),('en_US','326','Etelä-Pohjanmaa'),('en_US','327','Pohjanmaa'),('en_US','328','Pirkanmaa'),('en_US','329','Satakunta'),('en_US','330','Keski-Pohjanmaa'),('en_US','331','Keski-Suomi'),('en_US','332','Varsinais-Suomi'),('en_US','333','Etelä-Karjala'),('en_US','334','Päijät-Häme'),('en_US','335','Kanta-Häme'),('en_US','336','Uusimaa'),('en_US','337','Itä-Uusimaa'),('en_US','338','Kymenlaakso'),('en_US','339','Ahvenanmaa'),('en_US','340','Harjumaa'),('en_US','341','Hiiumaa'),('en_US','342','Ida-Virumaa'),('en_US','343','Jõgevamaa'),('en_US','344','Järvamaa'),('en_US','345','Läänemaa'),('en_US','346','Lääne-Virumaa'),('en_US','347','Põlvamaa'),('en_US','348','Pärnumaa'),('en_US','349','Raplamaa'),('en_US','350','Saaremaa'),('en_US','351','Tartumaa'),('en_US','352','Valgamaa'),('en_US','353','Viljandimaa'),('en_US','354','Võrumaa'),('en_US','355','Daugavpils'),('en_US','356','Jelgava'),('en_US','357','Jēkabpils'),('en_US','358','Jūrmala'),('en_US','359','Liepāja'),('en_US','360','Liepājas novads'),('en_US','361','Rēzekne'),('en_US','362','Rīga'),('en_US','363','Rīgas novads'),('en_US','364','Valmiera'),('en_US','365','Ventspils'),('en_US','366','Aglonas novads'),('en_US','367','Aizkraukles novads'),('en_US','368','Aizputes novads'),('en_US','369','Aknīstes novads'),('en_US','370','Alojas novads'),('en_US','371','Alsungas novads'),('en_US','372','Alūksnes novads'),('en_US','373','Amatas novads'),('en_US','374','Apes novads'),('en_US','375','Auces novads'),('en_US','376','Babītes novads'),('en_US','377','Baldones novads'),('en_US','378','Baltinavas novads'),('en_US','379','Balvu novads'),('en_US','380','Bauskas novads'),('en_US','381','Beverīnas novads'),('en_US','382','Brocēnu novads'),('en_US','383','Burtnieku novads'),('en_US','384','Carnikavas novads'),('en_US','385','Cesvaines novads'),('en_US','386','Ciblas novads'),('en_US','387','Cēsu novads'),('en_US','388','Dagdas novads'),('en_US','389','Daugavpils novads'),('en_US','390','Dobeles novads'),('en_US','391','Dundagas novads'),('en_US','392','Durbes novads'),('en_US','393','Engures novads'),('en_US','394','Garkalnes novads'),('en_US','395','Grobiņas novads'),('en_US','396','Gulbenes novads'),('en_US','397','Iecavas novads'),('en_US','398','Ikšķiles novads'),('en_US','399','Ilūkstes novads'),('en_US','400','Inčukalna novads'),('en_US','401','Jaunjelgavas novads'),('en_US','402','Jaunpiebalgas novads'),('en_US','403','Jaunpils novads'),('en_US','404','Jelgavas novads'),('en_US','405','Jēkabpils novads'),('en_US','406','Kandavas novads'),('en_US','407','Kokneses novads'),('en_US','408','Krimuldas novads'),('en_US','409','Krustpils novads'),('en_US','410','Krāslavas novads'),('en_US','411','Kuldīgas novads'),('en_US','412','Kārsavas novads'),('en_US','413','Lielvārdes novads'),('en_US','414','Limbažu novads'),('en_US','415','Lubānas novads'),('en_US','416','Ludzas novads'),('en_US','417','Līgatnes novads'),('en_US','418','Līvānu novads'),('en_US','419','Madonas novads'),('en_US','420','Mazsalacas novads'),('en_US','421','Mālpils novads'),('en_US','422','Mārupes novads'),('en_US','423','Naukšēnu novads'),('en_US','424','Neretas novads'),('en_US','425','Nīcas novads'),('en_US','426','Ogres novads'),('en_US','427','Olaines novads'),('en_US','428','Ozolnieku novads'),('en_US','429','Preiļu novads'),('en_US','430','Priekules novads'),('en_US','431','Priekuļu novads'),('en_US','432','Pārgaujas novads'),('en_US','433','Pāvilostas novads'),('en_US','434','Pļaviņu novads'),('en_US','435','Raunas novads'),('en_US','436','Riebiņu novads'),('en_US','437','Rojas novads'),('en_US','438','Ropažu novads'),('en_US','439','Rucavas novads'),('en_US','440','Rugāju novads'),('en_US','441','Rundāles novads'),('en_US','442','Rēzeknes novads'),('en_US','443','Rūjienas novads'),('en_US','444','Salacgrīvas novads'),('en_US','445','Salas novads'),('en_US','446','Salaspils novads'),('en_US','447','Saldus novads'),('en_US','448','Saulkrastu novads'),('en_US','449','Siguldas novads'),('en_US','450','Skrundas novads'),('en_US','451','Skrīveru novads'),('en_US','452','Smiltenes novads'),('en_US','453','Stopiņu novads'),('en_US','454','Strenču novads'),('en_US','455','Sējas novads'),('en_US','456','Talsu novads'),('en_US','457','Tukuma novads'),('en_US','458','Tērvetes novads'),('en_US','459','Vaiņodes novads'),('en_US','460','Valkas novads'),('en_US','461','Valmieras novads'),('en_US','462','Varakļānu novads'),('en_US','463','Vecpiebalgas novads'),('en_US','464','Vecumnieku novads'),('en_US','465','Ventspils novads'),('en_US','466','Viesītes novads'),('en_US','467','Viļakas novads'),('en_US','468','Viļānu novads'),('en_US','469','Vārkavas novads'),('en_US','470','Zilupes novads'),('en_US','471','Ādažu novads'),('en_US','472','Ērgļu novads'),('en_US','473','Ķeguma novads'),('en_US','474','Ķekavas novads'),('en_US','475','Alytaus Apskritis'),('en_US','476','Kauno Apskritis'),('en_US','477','Klaipėdos Apskritis'),('en_US','478','Marijampolės Apskritis'),('en_US','479','Panevėžio Apskritis'),('en_US','480','Šiaulių Apskritis'),('en_US','481','Tauragės Apskritis'),('en_US','482','Telšių Apskritis'),('en_US','483','Utenos Apskritis'),('en_US','484','Vilniaus Apskritis'),('en_US','485','Acre'),('en_US','486','Alagoas'),('en_US','487','Amapá'),('en_US','488','Amazonas'),('en_US','489','Bahia'),('en_US','490','Ceará'),('en_US','491','Espírito Santo'),('en_US','492','Goiás'),('en_US','493','Maranhão'),('en_US','494','Mato Grosso'),('en_US','495','Mato Grosso do Sul'),('en_US','496','Minas Gerais'),('en_US','497','Pará'),('en_US','498','Paraíba'),('en_US','499','Paraná'),('en_US','500','Pernambuco'),('en_US','501','Piauí'),('en_US','502','Rio de Janeiro'),('en_US','503','Rio Grande do Norte'),('en_US','504','Rio Grande do Sul'),('en_US','505','Rondônia'),('en_US','506','Roraima'),('en_US','507','Santa Catarina'),('en_US','508','São Paulo'),('en_US','509','Sergipe'),('en_US','510','Tocantins'),('en_US','511','Distrito Federal');
/*!40000 ALTER TABLE `directory_country_region_name` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `directory_currency_rate`
--

DROP TABLE IF EXISTS `directory_currency_rate`;
CREATE TABLE `directory_currency_rate` (
  `currency_from` varchar(3) NOT NULL COMMENT 'Currency Code Convert From',
  `currency_to` varchar(3) NOT NULL COMMENT 'Currency Code Convert To',
  `rate` decimal(24,12) NOT NULL DEFAULT '0.000000000000' COMMENT 'Currency Conversion Rate',
  PRIMARY KEY (`currency_from`,`currency_to`),
  KEY `DIRECTORY_CURRENCY_RATE_CURRENCY_TO` (`currency_to`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Directory Currency Rate';

--
-- Dumping data for table `directory_currency_rate`
--

LOCK TABLES `directory_currency_rate` WRITE;
/*!40000 ALTER TABLE `directory_currency_rate` DISABLE KEYS */;
INSERT INTO `directory_currency_rate` VALUES ('EUR','EUR','1.000000000000'),('EUR','USD','1.415000000000'),('USD','EUR','0.706700000000'),('USD','USD','1.000000000000');
/*!40000 ALTER TABLE `directory_currency_rate` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `downloadable_link`
--

DROP TABLE IF EXISTS `downloadable_link`;
CREATE TABLE `downloadable_link` (
  `link_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Link ID',
  `product_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Product ID',
  `sort_order` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Sort order',
  `number_of_downloads` int(11) DEFAULT NULL COMMENT 'Number of downloads',
  `is_shareable` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Shareable flag',
  `link_url` varchar(255) DEFAULT NULL COMMENT 'Link Url',
  `link_file` varchar(255) DEFAULT NULL COMMENT 'Link File',
  `link_type` varchar(20) DEFAULT NULL COMMENT 'Link Type',
  `sample_url` varchar(255) DEFAULT NULL COMMENT 'Sample Url',
  `sample_file` varchar(255) DEFAULT NULL COMMENT 'Sample File',
  `sample_type` varchar(20) DEFAULT NULL COMMENT 'Sample Type',
  PRIMARY KEY (`link_id`),
  KEY `DOWNLOADABLE_LINK_PRODUCT_ID_SORT_ORDER` (`product_id`,`sort_order`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Downloadable Link Table';

--
-- Table structure for table `downloadable_link_price`
--

DROP TABLE IF EXISTS `downloadable_link_price`;
CREATE TABLE `downloadable_link_price` (
  `price_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Price ID',
  `link_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Link ID',
  `website_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Website ID',
  `price` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Price',
  PRIMARY KEY (`price_id`),
  KEY `DOWNLOADABLE_LINK_PRICE_LINK_ID` (`link_id`),
  KEY `DOWNLOADABLE_LINK_PRICE_WEBSITE_ID` (`website_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Downloadable Link Price Table';

--
-- Table structure for table `downloadable_link_purchased`
--

DROP TABLE IF EXISTS `downloadable_link_purchased`;
CREATE TABLE `downloadable_link_purchased` (
  `purchased_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Purchased ID',
  `order_id` int(10) unsigned DEFAULT '0' COMMENT 'Order ID',
  `order_increment_id` varchar(50) DEFAULT NULL COMMENT 'Order Increment ID',
  `order_item_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Order Item ID',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Date of creation',
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Date of modification',
  `customer_id` int(10) unsigned DEFAULT '0' COMMENT 'Customer ID',
  `product_name` varchar(255) DEFAULT NULL COMMENT 'Product name',
  `product_sku` varchar(255) DEFAULT NULL COMMENT 'Product sku',
  `link_section_title` varchar(255) DEFAULT NULL COMMENT 'Link_section_title',
  PRIMARY KEY (`purchased_id`),
  KEY `DOWNLOADABLE_LINK_PURCHASED_ORDER_ID` (`order_id`),
  KEY `DOWNLOADABLE_LINK_PURCHASED_ORDER_ITEM_ID` (`order_item_id`),
  KEY `DOWNLOADABLE_LINK_PURCHASED_CUSTOMER_ID` (`customer_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Downloadable Link Purchased Table';

--
-- Table structure for table `downloadable_link_purchased_item`
--

DROP TABLE IF EXISTS `downloadable_link_purchased_item`;
CREATE TABLE `downloadable_link_purchased_item` (
  `item_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Item ID',
  `purchased_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Purchased ID',
  `order_item_id` int(10) unsigned DEFAULT '0' COMMENT 'Order Item ID',
  `product_id` int(10) unsigned DEFAULT '0' COMMENT 'Product ID',
  `link_hash` varchar(255) DEFAULT NULL COMMENT 'Link hash',
  `number_of_downloads_bought` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Number of downloads bought',
  `number_of_downloads_used` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Number of downloads used',
  `link_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Link ID',
  `link_title` varchar(255) DEFAULT NULL COMMENT 'Link Title',
  `is_shareable` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Shareable Flag',
  `link_url` varchar(255) DEFAULT NULL COMMENT 'Link Url',
  `link_file` varchar(255) DEFAULT NULL COMMENT 'Link File',
  `link_type` varchar(255) DEFAULT NULL COMMENT 'Link Type',
  `status` varchar(50) DEFAULT NULL COMMENT 'Status',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Creation Time',
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Update Time',
  PRIMARY KEY (`item_id`),
  KEY `DOWNLOADABLE_LINK_PURCHASED_ITEM_LINK_HASH` (`link_hash`),
  KEY `DOWNLOADABLE_LINK_PURCHASED_ITEM_ORDER_ITEM_ID` (`order_item_id`),
  KEY `DOWNLOADABLE_LINK_PURCHASED_ITEM_PURCHASED_ID` (`purchased_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Downloadable Link Purchased Item Table';

--
-- Table structure for table `downloadable_link_title`
--

DROP TABLE IF EXISTS `downloadable_link_title`;
CREATE TABLE `downloadable_link_title` (
  `title_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Title ID',
  `link_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Link ID',
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Store ID',
  `title` varchar(255) DEFAULT NULL COMMENT 'Title',
  PRIMARY KEY (`title_id`),
  UNIQUE KEY `DOWNLOADABLE_LINK_TITLE_LINK_ID_STORE_ID` (`link_id`,`store_id`),
  KEY `DOWNLOADABLE_LINK_TITLE_STORE_ID` (`store_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Link Title Table';

--
-- Table structure for table `downloadable_sample`
--

DROP TABLE IF EXISTS `downloadable_sample`;
CREATE TABLE `downloadable_sample` (
  `sample_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Sample ID',
  `product_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Product ID',
  `sample_url` varchar(255) DEFAULT NULL COMMENT 'Sample URL',
  `sample_file` varchar(255) DEFAULT NULL COMMENT 'Sample file',
  `sample_type` varchar(20) DEFAULT NULL COMMENT 'Sample Type',
  `sort_order` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Sort Order',
  PRIMARY KEY (`sample_id`),
  KEY `DOWNLOADABLE_SAMPLE_PRODUCT_ID` (`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Downloadable Sample Table';

--
-- Table structure for table `downloadable_sample_title`
--

DROP TABLE IF EXISTS `downloadable_sample_title`;
CREATE TABLE `downloadable_sample_title` (
  `title_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Title ID',
  `sample_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Sample ID',
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Store ID',
  `title` varchar(255) DEFAULT NULL COMMENT 'Title',
  PRIMARY KEY (`title_id`),
  UNIQUE KEY `DOWNLOADABLE_SAMPLE_TITLE_SAMPLE_ID_STORE_ID` (`sample_id`,`store_id`),
  KEY `DOWNLOADABLE_SAMPLE_TITLE_STORE_ID` (`store_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Downloadable Sample Title Table';

--
-- Table structure for table `eav_attribute`
--

DROP TABLE IF EXISTS `eav_attribute`;
CREATE TABLE `eav_attribute` (
  `attribute_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Attribute Id',
  `entity_type_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity Type Id',
  `attribute_code` varchar(255) DEFAULT NULL COMMENT 'Attribute Code',
  `attribute_model` varchar(255) DEFAULT NULL COMMENT 'Attribute Model',
  `backend_model` varchar(255) DEFAULT NULL COMMENT 'Backend Model',
  `backend_type` varchar(8) NOT NULL DEFAULT 'static' COMMENT 'Backend Type',
  `backend_table` varchar(255) DEFAULT NULL COMMENT 'Backend Table',
  `frontend_model` varchar(255) DEFAULT NULL COMMENT 'Frontend Model',
  `frontend_input` varchar(50) DEFAULT NULL COMMENT 'Frontend Input',
  `frontend_label` varchar(255) DEFAULT NULL COMMENT 'Frontend Label',
  `frontend_class` varchar(255) DEFAULT NULL COMMENT 'Frontend Class',
  `source_model` varchar(255) DEFAULT NULL COMMENT 'Source Model',
  `is_required` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Defines Is Required',
  `is_user_defined` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Defines Is User Defined',
  `default_value` text COMMENT 'Default Value',
  `is_unique` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Defines Is Unique',
  `note` varchar(255) DEFAULT NULL COMMENT 'Note',
  PRIMARY KEY (`attribute_id`),
  UNIQUE KEY `EAV_ATTRIBUTE_ENTITY_TYPE_ID_ATTRIBUTE_CODE` (`entity_type_id`,`attribute_code`)
) ENGINE=InnoDB AUTO_INCREMENT=137 DEFAULT CHARSET=utf8 COMMENT='Eav Attribute';

--
-- Dumping data for table `eav_attribute`
--

LOCK TABLES `eav_attribute` WRITE;
/*!40000 ALTER TABLE `eav_attribute` DISABLE KEYS */;
INSERT INTO `eav_attribute` VALUES (1,1,'website_id',NULL,'Magento\\Customer\\Model\\Customer\\Attribute\\Backend\\Website','static',NULL,NULL,'select','Associate to Website',NULL,'Magento\\Customer\\Model\\Customer\\Attribute\\Source\\Website',1,0,NULL,0,NULL),(2,1,'store_id',NULL,'Magento\\Customer\\Model\\Customer\\Attribute\\Backend\\Store','static',NULL,NULL,'select','Create In',NULL,'Magento\\Customer\\Model\\Customer\\Attribute\\Source\\Store',1,0,NULL,0,NULL),(3,1,'created_in',NULL,NULL,'static',NULL,NULL,'text','Created From',NULL,NULL,0,0,NULL,0,NULL),(4,1,'prefix',NULL,NULL,'static',NULL,NULL,'text','Prefix',NULL,NULL,0,0,NULL,0,NULL),(5,1,'firstname',NULL,NULL,'static',NULL,NULL,'text','First Name',NULL,NULL,1,0,NULL,0,NULL),(6,1,'middlename',NULL,NULL,'static',NULL,NULL,'text','Middle Name/Initial',NULL,NULL,0,0,NULL,0,NULL),(7,1,'lastname',NULL,NULL,'static',NULL,NULL,'text','Last Name',NULL,NULL,1,0,NULL,0,NULL),(8,1,'suffix',NULL,NULL,'static',NULL,NULL,'text','Suffix',NULL,NULL,0,0,NULL,0,NULL),(9,1,'email',NULL,NULL,'static',NULL,NULL,'text','Email',NULL,NULL,1,0,NULL,0,NULL),(10,1,'group_id',NULL,NULL,'static',NULL,NULL,'select','Group',NULL,'Magento\\Customer\\Model\\Customer\\Attribute\\Source\\Group',1,0,NULL,0,NULL),(11,1,'dob',NULL,'Magento\\Eav\\Model\\Entity\\Attribute\\Backend\\Datetime','static',NULL,'Magento\\Eav\\Model\\Entity\\Attribute\\Frontend\\Datetime','date','Date of Birth',NULL,NULL,0,0,NULL,0,NULL),(12,1,'password_hash',NULL,'Magento\\Customer\\Model\\Customer\\Attribute\\Backend\\Password','static',NULL,NULL,'hidden',NULL,NULL,NULL,0,0,NULL,0,NULL),(13,1,'rp_token',NULL,NULL,'static',NULL,NULL,'hidden',NULL,NULL,NULL,0,0,NULL,0,NULL),(14,1,'rp_token_created_at',NULL,NULL,'static',NULL,NULL,'date',NULL,NULL,NULL,0,0,NULL,0,NULL),(15,1,'default_billing',NULL,'Magento\\Customer\\Model\\Customer\\Attribute\\Backend\\Billing','static',NULL,NULL,'text','Default Billing Address',NULL,NULL,0,0,NULL,0,NULL),(16,1,'default_shipping',NULL,'Magento\\Customer\\Model\\Customer\\Attribute\\Backend\\Shipping','static',NULL,NULL,'text','Default Shipping Address',NULL,NULL,0,0,NULL,0,NULL),(17,1,'taxvat',NULL,NULL,'static',NULL,NULL,'text','Tax/VAT Number',NULL,NULL,0,0,NULL,0,NULL),(18,1,'confirmation',NULL,NULL,'static',NULL,NULL,'text','Is Confirmed',NULL,NULL,0,0,NULL,0,NULL),(19,1,'created_at',NULL,NULL,'static',NULL,NULL,'date','Created At',NULL,NULL,0,0,NULL,0,NULL),(20,1,'gender',NULL,NULL,'static',NULL,NULL,'select','Gender',NULL,'Magento\\Eav\\Model\\Entity\\Attribute\\Source\\Table',0,0,NULL,0,NULL),(21,1,'disable_auto_group_change',NULL,'Magento\\Customer\\Model\\Attribute\\Backend\\Data\\Boolean','static',NULL,NULL,'boolean','Disable Automatic Group Change Based on VAT ID',NULL,NULL,0,0,'0',0,NULL),(22,2,'prefix',NULL,NULL,'static',NULL,NULL,'text','Prefix',NULL,NULL,0,0,NULL,0,NULL),(23,2,'firstname',NULL,NULL,'static',NULL,NULL,'text','First Name',NULL,NULL,1,0,NULL,0,NULL),(24,2,'middlename',NULL,NULL,'static',NULL,NULL,'text','Middle Name/Initial',NULL,NULL,0,0,NULL,0,NULL),(25,2,'lastname',NULL,NULL,'static',NULL,NULL,'text','Last Name',NULL,NULL,1,0,NULL,0,NULL),(26,2,'suffix',NULL,NULL,'static',NULL,NULL,'text','Suffix',NULL,NULL,0,0,NULL,0,NULL),(27,2,'company',NULL,NULL,'static',NULL,NULL,'text','Company',NULL,NULL,0,0,NULL,0,NULL),(28,2,'street',NULL,'Magento\\Eav\\Model\\Entity\\Attribute\\Backend\\DefaultBackend','static',NULL,NULL,'multiline','Street Address',NULL,NULL,1,0,NULL,0,NULL),(29,2,'city',NULL,NULL,'static',NULL,NULL,'text','City',NULL,NULL,1,0,NULL,0,NULL),(30,2,'country_id',NULL,NULL,'static',NULL,NULL,'select','Country',NULL,'Magento\\Customer\\Model\\ResourceModel\\Address\\Attribute\\Source\\Country',1,0,NULL,0,NULL),(31,2,'region',NULL,'Magento\\Customer\\Model\\ResourceModel\\Address\\Attribute\\Backend\\Region','static',NULL,NULL,'text','State/Province',NULL,NULL,0,0,NULL,0,NULL),(32,2,'region_id',NULL,NULL,'static',NULL,NULL,'hidden','State/Province',NULL,'Magento\\Customer\\Model\\ResourceModel\\Address\\Attribute\\Source\\Region',0,0,NULL,0,NULL),(33,2,'postcode',NULL,NULL,'static',NULL,NULL,'text','Zip/Postal Code',NULL,NULL,0,0,NULL,0,NULL),(34,2,'telephone',NULL,NULL,'static',NULL,NULL,'text','Phone Number',NULL,NULL,1,0,NULL,0,NULL),(35,2,'fax',NULL,NULL,'static',NULL,NULL,'text','Fax',NULL,NULL,0,0,NULL,0,NULL),(36,2,'vat_id',NULL,NULL,'static',NULL,NULL,'text','VAT number',NULL,NULL,0,0,NULL,0,NULL),(37,2,'vat_is_valid',NULL,NULL,'static',NULL,NULL,'text','VAT number validity',NULL,NULL,0,0,NULL,0,NULL),(38,2,'vat_request_id',NULL,NULL,'static',NULL,NULL,'text','VAT number validation request ID',NULL,NULL,0,0,NULL,0,NULL),(39,2,'vat_request_date',NULL,NULL,'static',NULL,NULL,'text','VAT number validation request date',NULL,NULL,0,0,NULL,0,NULL),(40,2,'vat_request_success',NULL,NULL,'static',NULL,NULL,'text','VAT number validation request success',NULL,NULL,0,0,NULL,0,NULL),(41,1,'updated_at',NULL,NULL,'static',NULL,NULL,'date','Updated At',NULL,NULL,0,0,NULL,0,NULL),(42,1,'failures_num',NULL,NULL,'static',NULL,NULL,'hidden','Failures Number',NULL,NULL,0,0,NULL,0,NULL),(43,1,'first_failure',NULL,NULL,'static',NULL,NULL,'date','First Failure Date',NULL,NULL,0,0,NULL,0,NULL),(44,1,'lock_expires',NULL,NULL,'static',NULL,NULL,'date','Failures Number',NULL,NULL,0,0,NULL,0,NULL),(45,3,'name',NULL,NULL,'varchar',NULL,NULL,'text','Name',NULL,NULL,1,0,NULL,0,NULL),(46,3,'is_active',NULL,NULL,'int',NULL,NULL,'select','Is Active',NULL,'Magento\\Eav\\Model\\Entity\\Attribute\\Source\\Boolean',1,0,NULL,0,NULL),(47,3,'description',NULL,NULL,'text',NULL,NULL,'textarea','Description',NULL,NULL,0,0,NULL,0,NULL),(48,3,'image',NULL,'Magento\\Catalog\\Model\\Category\\Attribute\\Backend\\Image','varchar',NULL,NULL,'image','Image',NULL,NULL,0,0,NULL,0,NULL),(49,3,'meta_title',NULL,NULL,'varchar',NULL,NULL,'text','Page Title',NULL,NULL,0,0,NULL,0,NULL),(50,3,'meta_keywords',NULL,NULL,'text',NULL,NULL,'textarea','Meta Keywords',NULL,NULL,0,0,NULL,0,NULL),(51,3,'meta_description',NULL,NULL,'text',NULL,NULL,'textarea','Meta Description',NULL,NULL,0,0,NULL,0,NULL),(52,3,'display_mode',NULL,NULL,'varchar',NULL,NULL,'select','Display Mode',NULL,'Magento\\Catalog\\Model\\Category\\Attribute\\Source\\Mode',0,0,NULL,0,NULL),(53,3,'landing_page',NULL,NULL,'int',NULL,NULL,'select','CMS Block',NULL,'Magento\\Catalog\\Model\\Category\\Attribute\\Source\\Page',0,0,NULL,0,NULL),(54,3,'is_anchor',NULL,NULL,'int',NULL,NULL,'select','Is Anchor',NULL,'Magento\\Eav\\Model\\Entity\\Attribute\\Source\\Boolean',0,0,'1',0,NULL),(55,3,'path',NULL,NULL,'static',NULL,NULL,'text','Path',NULL,NULL,0,0,NULL,0,NULL),(56,3,'position',NULL,NULL,'static',NULL,NULL,'text','Position',NULL,NULL,0,0,NULL,0,NULL),(57,3,'all_children',NULL,NULL,'text',NULL,NULL,'text',NULL,NULL,NULL,0,0,NULL,0,NULL),(58,3,'path_in_store',NULL,NULL,'text',NULL,NULL,'text',NULL,NULL,NULL,0,0,NULL,0,NULL),(59,3,'children',NULL,NULL,'text',NULL,NULL,'text',NULL,NULL,NULL,0,0,NULL,0,NULL),(60,3,'custom_design',NULL,NULL,'varchar',NULL,NULL,'select','Custom Design',NULL,'Magento\\Theme\\Model\\Theme\\Source\\Theme',0,0,NULL,0,NULL),(61,3,'custom_design_from','Magento\\Catalog\\Model\\ResourceModel\\Eav\\Attribute','Magento\\Catalog\\Model\\Attribute\\Backend\\Startdate','datetime',NULL,'Magento\\Eav\\Model\\Entity\\Attribute\\Frontend\\Datetime','date','Active From',NULL,NULL,0,0,NULL,0,NULL),(62,3,'custom_design_to',NULL,'Magento\\Eav\\Model\\Entity\\Attribute\\Backend\\Datetime','datetime',NULL,NULL,'date','Active To',NULL,NULL,0,0,NULL,0,NULL),(63,3,'page_layout',NULL,NULL,'varchar',NULL,NULL,'select','Page Layout',NULL,'Magento\\Catalog\\Model\\Category\\Attribute\\Source\\Layout',0,0,NULL,0,NULL),(64,3,'custom_layout_update',NULL,'Magento\\Catalog\\Model\\Attribute\\Backend\\Customlayoutupdate','text',NULL,NULL,'textarea','Custom Layout Update',NULL,NULL,0,0,NULL,0,NULL),(65,3,'level',NULL,NULL,'static',NULL,NULL,'text','Level',NULL,NULL,0,0,NULL,0,NULL),(66,3,'children_count',NULL,NULL,'static',NULL,NULL,'text','Children Count',NULL,NULL,0,0,NULL,0,NULL),(67,3,'available_sort_by',NULL,'Magento\\Catalog\\Model\\Category\\Attribute\\Backend\\Sortby','text',NULL,NULL,'multiselect','Available Product Listing Sort By',NULL,'Magento\\Catalog\\Model\\Category\\Attribute\\Source\\Sortby',1,0,NULL,0,NULL),(68,3,'default_sort_by',NULL,'Magento\\Catalog\\Model\\Category\\Attribute\\Backend\\Sortby','varchar',NULL,NULL,'select','Default Product Listing Sort By',NULL,'Magento\\Catalog\\Model\\Category\\Attribute\\Source\\Sortby',1,0,NULL,0,NULL),(69,3,'include_in_menu',NULL,NULL,'int',NULL,NULL,'select','Include in Navigation Menu',NULL,'Magento\\Eav\\Model\\Entity\\Attribute\\Source\\Boolean',1,0,'1',0,NULL),(70,3,'custom_use_parent_settings',NULL,NULL,'int',NULL,NULL,'select','Use Parent Category Settings',NULL,'Magento\\Eav\\Model\\Entity\\Attribute\\Source\\Boolean',0,0,NULL,0,NULL),(71,3,'custom_apply_to_products',NULL,NULL,'int',NULL,NULL,'select','Apply To Products',NULL,'Magento\\Eav\\Model\\Entity\\Attribute\\Source\\Boolean',0,0,NULL,0,NULL),(72,3,'filter_price_range',NULL,NULL,'decimal',NULL,NULL,'text','Layered Navigation Price Step',NULL,NULL,0,0,NULL,0,NULL),(73,4,'name',NULL,NULL,'varchar',NULL,NULL,'text','Product Name','validate-length maximum-length-255',NULL,1,0,NULL,0,NULL),(74,4,'sku',NULL,'Magento\\Catalog\\Model\\Product\\Attribute\\Backend\\Sku','static',NULL,NULL,'text','SKU','validate-length maximum-length-64',NULL,1,0,NULL,1,NULL),(75,4,'description',NULL,NULL,'text',NULL,NULL,'textarea','Description',NULL,NULL,0,0,NULL,0,NULL),(76,4,'short_description',NULL,NULL,'text',NULL,NULL,'textarea','Short Description',NULL,NULL,0,0,NULL,0,NULL),(77,4,'price',NULL,'Magento\\Catalog\\Model\\Product\\Attribute\\Backend\\Price','decimal',NULL,NULL,'price','Price',NULL,NULL,1,0,NULL,0,NULL),(78,4,'special_price',NULL,'Magento\\Catalog\\Model\\Product\\Attribute\\Backend\\Price','decimal',NULL,NULL,'price','Special Price',NULL,NULL,0,0,NULL,0,NULL),(79,4,'special_from_date',NULL,'Magento\\Catalog\\Model\\Attribute\\Backend\\Startdate','datetime',NULL,NULL,'date','Special Price From Date',NULL,NULL,0,0,NULL,0,NULL),(80,4,'special_to_date',NULL,'Magento\\Eav\\Model\\Entity\\Attribute\\Backend\\Datetime','datetime',NULL,NULL,'date','Special Price To Date',NULL,NULL,0,0,NULL,0,NULL),(81,4,'cost',NULL,'Magento\\Catalog\\Model\\Product\\Attribute\\Backend\\Price','decimal',NULL,NULL,'price','Cost',NULL,NULL,0,1,NULL,0,NULL),(82,4,'weight',NULL,'Magento\\Catalog\\Model\\Product\\Attribute\\Backend\\Weight','decimal',NULL,NULL,'weight','Weight',NULL,NULL,0,0,NULL,0,NULL),(83,4,'manufacturer',NULL,NULL,'int',NULL,NULL,'select','Manufacturer',NULL,NULL,0,1,NULL,0,NULL),(84,4,'meta_title',NULL,NULL,'varchar',NULL,NULL,'text','Meta Title',NULL,NULL,0,0,NULL,0,NULL),(85,4,'meta_keyword',NULL,NULL,'text',NULL,NULL,'textarea','Meta Keywords',NULL,NULL,0,0,NULL,0,NULL),(86,4,'meta_description',NULL,NULL,'varchar',NULL,NULL,'textarea','Meta Description',NULL,NULL,0,0,NULL,0,'Maximum 255 chars. Meta Description should optimally be between 150-160 characters'),(87,4,'image',NULL,NULL,'varchar',NULL,'Magento\\Catalog\\Model\\Product\\Attribute\\Frontend\\Image','media_image','Base',NULL,NULL,0,0,NULL,0,NULL),(88,4,'small_image',NULL,NULL,'varchar',NULL,'Magento\\Catalog\\Model\\Product\\Attribute\\Frontend\\Image','media_image','Small',NULL,NULL,0,0,NULL,0,NULL),(89,4,'thumbnail',NULL,NULL,'varchar',NULL,'Magento\\Catalog\\Model\\Product\\Attribute\\Frontend\\Image','media_image','Thumbnail',NULL,NULL,0,0,NULL,0,NULL),(90,4,'media_gallery',NULL,NULL,'static',NULL,NULL,'gallery','Media Gallery',NULL,NULL,0,0,NULL,0,NULL),(91,4,'old_id',NULL,NULL,'int',NULL,NULL,'text',NULL,NULL,NULL,0,0,NULL,0,NULL),(92,4,'tier_price',NULL,'Magento\\Catalog\\Model\\Product\\Attribute\\Backend\\Tierprice','decimal',NULL,NULL,'text','Tier Price',NULL,NULL,0,0,NULL,0,NULL),(93,4,'color',NULL,NULL,'int',NULL,NULL,'select','Color',NULL,NULL,0,1,NULL,0,NULL),(94,4,'news_from_date',NULL,'Magento\\Catalog\\Model\\Attribute\\Backend\\Startdate','datetime',NULL,NULL,'date','Set Product as New from Date',NULL,NULL,0,0,NULL,0,NULL),(95,4,'news_to_date',NULL,'Magento\\Eav\\Model\\Entity\\Attribute\\Backend\\Datetime','datetime',NULL,NULL,'date','Set Product as New to Date',NULL,NULL,0,0,NULL,0,NULL),(96,4,'gallery',NULL,NULL,'varchar',NULL,NULL,'gallery','Image Gallery',NULL,NULL,0,0,NULL,0,NULL),(97,4,'status',NULL,NULL,'int',NULL,NULL,'select','Enable Product',NULL,'Magento\\Catalog\\Model\\Product\\Attribute\\Source\\Status',0,0,'1',0,NULL),(98,4,'minimal_price',NULL,'Magento\\Catalog\\Model\\Product\\Attribute\\Backend\\Price','decimal',NULL,NULL,'price','Minimal Price',NULL,NULL,0,0,NULL,0,NULL),(99,4,'visibility',NULL,NULL,'int',NULL,NULL,'select','Visibility',NULL,'Magento\\Catalog\\Model\\Product\\Visibility',0,0,'4',0,NULL),(100,4,'custom_design',NULL,NULL,'varchar',NULL,NULL,'select','New Theme',NULL,'Magento\\Theme\\Model\\Theme\\Source\\Theme',0,0,NULL,0,NULL),(101,4,'custom_design_from',NULL,'Magento\\Catalog\\Model\\Attribute\\Backend\\Startdate','datetime',NULL,NULL,'date','Active From',NULL,NULL,0,0,NULL,0,NULL),(102,4,'custom_design_to',NULL,'Magento\\Eav\\Model\\Entity\\Attribute\\Backend\\Datetime','datetime',NULL,NULL,'date','Active To',NULL,NULL,0,0,NULL,0,NULL),(103,4,'custom_layout_update',NULL,'Magento\\Catalog\\Model\\Attribute\\Backend\\Customlayoutupdate','text',NULL,NULL,'textarea','Layout Update XML',NULL,NULL,0,0,NULL,0,NULL),(104,4,'page_layout',NULL,NULL,'varchar',NULL,NULL,'select','Layout',NULL,'Magento\\Catalog\\Model\\Product\\Attribute\\Source\\Layout',0,0,NULL,0,NULL),(105,4,'category_ids',NULL,'Magento\\Catalog\\Model\\Product\\Attribute\\Backend\\Category','static',NULL,NULL,'text','Categories',NULL,NULL,0,0,NULL,0,NULL),(106,4,'options_container',NULL,NULL,'varchar',NULL,NULL,'select','Display Product Options In',NULL,'Magento\\Catalog\\Model\\Entity\\Product\\Attribute\\Design\\Options\\Container',0,0,'container2',0,NULL),(107,4,'required_options',NULL,NULL,'static',NULL,NULL,'text',NULL,NULL,NULL,0,0,NULL,0,NULL),(108,4,'has_options',NULL,NULL,'static',NULL,NULL,'text',NULL,NULL,NULL,0,0,NULL,0,NULL),(109,4,'image_label',NULL,NULL,'varchar',NULL,NULL,'text','Image Label',NULL,NULL,0,0,NULL,0,NULL),(110,4,'small_image_label',NULL,NULL,'varchar',NULL,NULL,'text','Small Image Label',NULL,NULL,0,0,NULL,0,NULL),(111,4,'thumbnail_label',NULL,NULL,'varchar',NULL,NULL,'text','Thumbnail Label',NULL,NULL,0,0,NULL,0,NULL),(112,4,'created_at',NULL,NULL,'static',NULL,NULL,'date',NULL,NULL,NULL,1,0,NULL,0,NULL),(113,4,'updated_at',NULL,NULL,'static',NULL,NULL,'date',NULL,NULL,NULL,1,0,NULL,0,NULL),(114,4,'country_of_manufacture',NULL,NULL,'varchar',NULL,NULL,'select','Country of Manufacture',NULL,'Magento\\Catalog\\Model\\Product\\Attribute\\Source\\Countryofmanufacture',0,0,NULL,0,NULL),(115,4,'quantity_and_stock_status',NULL,'Magento\\Catalog\\Model\\Product\\Attribute\\Backend\\Stock','int',NULL,NULL,'select','Quantity',NULL,'Magento\\CatalogInventory\\Model\\Source\\Stock',0,0,'1',0,NULL),(116,4,'custom_layout',NULL,NULL,'varchar',NULL,NULL,'select','New Layout',NULL,'Magento\\Catalog\\Model\\Product\\Attribute\\Source\\Layout',0,0,NULL,0,NULL),(117,3,'url_key',NULL,NULL,'varchar',NULL,NULL,'text','URL Key',NULL,NULL,0,0,NULL,0,NULL),(118,3,'url_path',NULL,NULL,'varchar',NULL,NULL,'text',NULL,NULL,NULL,0,0,NULL,0,NULL),(119,4,'url_key',NULL,NULL,'varchar',NULL,NULL,'text','URL Key',NULL,NULL,0,0,NULL,0,NULL),(120,4,'url_path',NULL,NULL,'varchar',NULL,NULL,'text',NULL,NULL,NULL,0,0,NULL,0,NULL),(121,4,'msrp',NULL,'Magento\\Catalog\\Model\\Product\\Attribute\\Backend\\Price','decimal',NULL,NULL,'price','Manufacturer\'s Suggested Retail Price',NULL,NULL,0,0,NULL,0,NULL),(122,4,'msrp_display_actual_price_type',NULL,'Magento\\Catalog\\Model\\Product\\Attribute\\Backend\\Boolean','varchar',NULL,NULL,'select','Display Actual Price',NULL,'Magento\\Msrp\\Model\\Product\\Attribute\\Source\\Type\\Price',0,0,'0',0,NULL),(123,4,'price_type',NULL,NULL,'int',NULL,NULL,'boolean','Dynamic Price',NULL,NULL,1,0,'0',0,NULL),(124,4,'sku_type',NULL,NULL,'int',NULL,NULL,'boolean','Dynamic SKU',NULL,NULL,1,0,'0',0,NULL),(125,4,'weight_type',NULL,NULL,'int',NULL,NULL,'boolean','Dynamic Weight',NULL,NULL,1,0,'0',0,NULL),(126,4,'price_view',NULL,NULL,'int',NULL,NULL,'select','Price View',NULL,'Magento\\Bundle\\Model\\Product\\Attribute\\Source\\Price\\View',1,0,NULL,0,NULL),(127,4,'shipment_type',NULL,NULL,'int',NULL,NULL,'select','Ship Bundle Items',NULL,'Magento\\Bundle\\Model\\Product\\Attribute\\Source\\Shipment\\Type',1,0,'0',0,NULL),(128,4,'links_purchased_separately',NULL,NULL,'int',NULL,NULL,NULL,'Links can be purchased separately',NULL,NULL,1,0,NULL,0,NULL),(129,4,'samples_title',NULL,NULL,'varchar',NULL,NULL,NULL,'Samples title',NULL,NULL,1,0,NULL,0,NULL),(130,4,'links_title',NULL,NULL,'varchar',NULL,NULL,NULL,'Links title',NULL,NULL,1,0,NULL,0,NULL),(131,4,'links_exist',NULL,NULL,'int',NULL,NULL,NULL,NULL,NULL,NULL,0,0,'0',0,NULL),(132,4,'swatch_image',NULL,NULL,'varchar',NULL,'Magento\\Catalog\\Model\\Product\\Attribute\\Frontend\\Image','media_image','Swatch',NULL,NULL,0,0,NULL,0,NULL),(133,4,'tax_class_id',NULL,NULL,'int',NULL,NULL,'select','Tax Class',NULL,'Magento\\Tax\\Model\\TaxClass\\Source\\Product',0,0,'2',0,NULL),(134,4,'gift_message_available',NULL,'Magento\\Catalog\\Model\\Product\\Attribute\\Backend\\Boolean','varchar',NULL,NULL,'select','Allow Gift Message',NULL,'Magento\\Catalog\\Model\\Product\\Attribute\\Source\\Boolean',0,0,NULL,0,NULL),(135,1,'vkfadressen_autoid',NULL,NULL,'int',NULL,NULL,'text','Vkfadressen Autoid',NULL,NULL,0,1,NULL,0,NULL),(136,4,'product_nbr',NULL,NULL,'varchar',NULL,NULL,'text','Productnumber',NULL,NULL,0,1,NULL,0,NULL);
/*!40000 ALTER TABLE `eav_attribute` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `eav_attribute_group`
--

DROP TABLE IF EXISTS `eav_attribute_group`;
CREATE TABLE `eav_attribute_group` (
  `attribute_group_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Attribute Group Id',
  `attribute_set_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Attribute Set Id',
  `attribute_group_name` varchar(255) DEFAULT NULL COMMENT 'Attribute Group Name',
  `sort_order` smallint(6) NOT NULL DEFAULT '0' COMMENT 'Sort Order',
  `default_id` smallint(5) unsigned DEFAULT '0' COMMENT 'Default Id',
  `attribute_group_code` varchar(255) NOT NULL COMMENT 'Attribute Group Code',
  `tab_group_code` varchar(255) DEFAULT NULL COMMENT 'Tab Group Code',
  PRIMARY KEY (`attribute_group_id`),
  UNIQUE KEY `EAV_ATTRIBUTE_GROUP_ATTRIBUTE_SET_ID_ATTRIBUTE_GROUP_NAME` (`attribute_set_id`,`attribute_group_name`),
  KEY `EAV_ATTRIBUTE_GROUP_ATTRIBUTE_SET_ID_SORT_ORDER` (`attribute_set_id`,`sort_order`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8 COMMENT='Eav Attribute Group';

--
-- Dumping data for table `eav_attribute_group`
--

LOCK TABLES `eav_attribute_group` WRITE;
/*!40000 ALTER TABLE `eav_attribute_group` DISABLE KEYS */;
INSERT INTO `eav_attribute_group` VALUES (1,1,'General',1,1,'general',NULL),(2,2,'General',1,1,'general',NULL),(3,3,'General',10,1,'general',NULL),(4,3,'General Information',2,0,'general-information',NULL),(5,3,'Display Settings',20,0,'display-settings',NULL),(6,3,'Custom Design',30,0,'custom-design',NULL),(7,4,'Product Details',1,1,'product-details','basic'),(8,4,'Advanced Pricing',6,0,'advanced-pricing','advanced'),(9,4,'Search Engine Optimization',5,0,'search-engine-optimization','basic'),(10,4,'Images',4,0,'image-management','basic'),(11,4,'Design',7,0,'design','advanced'),(12,4,'Autosettings',9,0,'autosettings','advanced'),(13,4,'Content',2,0,'content','basic'),(14,4,'Schedule Design Update',8,0,'schedule-design-update','advanced'),(15,4,'Bundle Items',3,0,'bundle-items',NULL),(16,5,'General',1,1,'general',NULL),(17,6,'General',1,1,'general',NULL),(18,7,'General',1,1,'general',NULL),(19,8,'General',1,1,'general',NULL),(20,4,'Gift Options',10,0,'gift-options',NULL);
/*!40000 ALTER TABLE `eav_attribute_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `eav_attribute_label`
--

DROP TABLE IF EXISTS `eav_attribute_label`;
CREATE TABLE `eav_attribute_label` (
  `attribute_label_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Attribute Label Id',
  `attribute_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Attribute Id',
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Store Id',
  `value` varchar(255) DEFAULT NULL COMMENT 'Value',
  PRIMARY KEY (`attribute_label_id`),
  KEY `EAV_ATTRIBUTE_LABEL_STORE_ID` (`store_id`),
  KEY `EAV_ATTRIBUTE_LABEL_ATTRIBUTE_ID_STORE_ID` (`attribute_id`,`store_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Eav Attribute Label';

--
-- Table structure for table `eav_attribute_option`
--

DROP TABLE IF EXISTS `eav_attribute_option`;
CREATE TABLE `eav_attribute_option` (
  `option_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Option Id',
  `attribute_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Attribute Id',
  `sort_order` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Sort Order',
  PRIMARY KEY (`option_id`),
  KEY `EAV_ATTRIBUTE_OPTION_ATTRIBUTE_ID` (`attribute_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='Eav Attribute Option';

--
-- Dumping data for table `eav_attribute_option`
--

LOCK TABLES `eav_attribute_option` WRITE;
/*!40000 ALTER TABLE `eav_attribute_option` DISABLE KEYS */;
INSERT INTO `eav_attribute_option` VALUES ('1',20,0),('2',20,1),('3',20,3);
/*!40000 ALTER TABLE `eav_attribute_option` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `eav_attribute_option_swatch`
--

DROP TABLE IF EXISTS `eav_attribute_option_swatch`;
CREATE TABLE `eav_attribute_option_swatch` (
  `swatch_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Swatch ID',
  `option_id` int(10) unsigned NOT NULL COMMENT 'Option ID',
  `store_id` smallint(5) unsigned NOT NULL COMMENT 'Store ID',
  `type` smallint(5) unsigned NOT NULL COMMENT 'Swatch type: 0 - text, 1 - visual color, 2 - visual image',
  `value` varchar(255) DEFAULT NULL COMMENT 'Swatch Value',
  PRIMARY KEY (`swatch_id`),
  UNIQUE KEY `EAV_ATTRIBUTE_OPTION_SWATCH_STORE_ID_OPTION_ID` (`store_id`,`option_id`),
  KEY `EAV_ATTRIBUTE_OPTION_SWATCH_SWATCH_ID` (`swatch_id`),
  KEY `EAV_ATTR_OPT_SWATCH_OPT_ID_EAV_ATTR_OPT_OPT_ID` (`option_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Magento Swatches table';

--
-- Table structure for table `eav_attribute_option_value`
--

DROP TABLE IF EXISTS `eav_attribute_option_value`;
CREATE TABLE `eav_attribute_option_value` (
  `value_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Value Id',
  `option_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Option Id',
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Store Id',
  `value` varchar(255) DEFAULT NULL COMMENT 'Value',
  PRIMARY KEY (`value_id`),
  KEY `EAV_ATTRIBUTE_OPTION_VALUE_OPTION_ID` (`option_id`),
  KEY `EAV_ATTRIBUTE_OPTION_VALUE_STORE_ID` (`store_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='Eav Attribute Option Value';

--
-- Dumping data for table `eav_attribute_option_value`
--

LOCK TABLES `eav_attribute_option_value` WRITE;
/*!40000 ALTER TABLE `eav_attribute_option_value` DISABLE KEYS */;
INSERT INTO `eav_attribute_option_value` VALUES ('1','1',0,'Male'),('2','2',0,'Female'),('3','3',0,'Not Specified');
/*!40000 ALTER TABLE `eav_attribute_option_value` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `eav_attribute_set`
--

DROP TABLE IF EXISTS `eav_attribute_set`;
CREATE TABLE `eav_attribute_set` (
  `attribute_set_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Attribute Set Id',
  `entity_type_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity Type Id',
  `attribute_set_name` varchar(255) DEFAULT NULL COMMENT 'Attribute Set Name',
  `sort_order` smallint(6) NOT NULL DEFAULT '0' COMMENT 'Sort Order',
  PRIMARY KEY (`attribute_set_id`),
  UNIQUE KEY `EAV_ATTRIBUTE_SET_ENTITY_TYPE_ID_ATTRIBUTE_SET_NAME` (`entity_type_id`,`attribute_set_name`),
  KEY `EAV_ATTRIBUTE_SET_ENTITY_TYPE_ID_SORT_ORDER` (`entity_type_id`,`sort_order`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COMMENT='Eav Attribute Set';

--
-- Dumping data for table `eav_attribute_set`
--

LOCK TABLES `eav_attribute_set` WRITE;
/*!40000 ALTER TABLE `eav_attribute_set` DISABLE KEYS */;
INSERT INTO `eav_attribute_set` VALUES (1,1,'Default',2),(2,2,'Default',2),(3,3,'Default',1),(4,4,'Default',1),(5,5,'Default',1),(6,6,'Default',1),(7,7,'Default',1),(8,8,'Default',1);
/*!40000 ALTER TABLE `eav_attribute_set` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `eav_entity`
--

DROP TABLE IF EXISTS `eav_entity`;
CREATE TABLE `eav_entity` (
  `entity_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Entity Id',
  `entity_type_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity Type Id',
  `attribute_set_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Attribute Set Id',
  `increment_id` varchar(50) DEFAULT NULL COMMENT 'Increment Id',
  `parent_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Parent Id',
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Store Id',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Created At',
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Updated At',
  `is_active` smallint(5) unsigned NOT NULL DEFAULT '1' COMMENT 'Defines Is Entity Active',
  PRIMARY KEY (`entity_id`),
  KEY `EAV_ENTITY_ENTITY_TYPE_ID` (`entity_type_id`),
  KEY `EAV_ENTITY_STORE_ID` (`store_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Eav Entity';

--
-- Table structure for table `eav_entity_attribute`
--

DROP TABLE IF EXISTS `eav_entity_attribute`;
CREATE TABLE `eav_entity_attribute` (
  `entity_attribute_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Entity Attribute Id',
  `entity_type_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity Type Id',
  `attribute_set_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Attribute Set Id',
  `attribute_group_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Attribute Group Id',
  `attribute_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Attribute Id',
  `sort_order` smallint(6) NOT NULL DEFAULT '0' COMMENT 'Sort Order',
  PRIMARY KEY (`entity_attribute_id`),
  UNIQUE KEY `EAV_ENTITY_ATTRIBUTE_ATTRIBUTE_SET_ID_ATTRIBUTE_ID` (`attribute_set_id`,`attribute_id`),
  UNIQUE KEY `EAV_ENTITY_ATTRIBUTE_ATTRIBUTE_GROUP_ID_ATTRIBUTE_ID` (`attribute_group_id`,`attribute_id`),
  KEY `EAV_ENTITY_ATTRIBUTE_ATTRIBUTE_SET_ID_SORT_ORDER` (`attribute_set_id`,`sort_order`),
  KEY `EAV_ENTITY_ATTRIBUTE_ATTRIBUTE_ID` (`attribute_id`)
) ENGINE=InnoDB AUTO_INCREMENT=224 DEFAULT CHARSET=utf8 COMMENT='Eav Entity Attributes';

--
-- Dumping data for table `eav_entity_attribute`
--

LOCK TABLES `eav_entity_attribute` WRITE;
/*!40000 ALTER TABLE `eav_entity_attribute` DISABLE KEYS */;
INSERT INTO `eav_entity_attribute` VALUES ('1',1,1,1,1,10),('2',1,1,1,2,20),('3',1,1,1,3,20),('4',1,1,1,4,30),('5',1,1,1,5,40),('6',1,1,1,6,50),('7',1,1,1,7,60),('8',1,1,1,8,70),('9',1,1,1,9,80),('10',1,1,1,10,25),('11',1,1,1,11,90),('12',1,1,1,12,81),('13',1,1,1,13,115),('14',1,1,1,14,120),('15',1,1,1,15,82),('16',1,1,1,16,83),('17',1,1,1,17,100),('18',1,1,1,18,85),('19',1,1,1,19,86),('20',1,1,1,20,110),('21',1,1,1,21,28),('22',2,2,2,22,10),('23',2,2,2,23,20),('24',2,2,2,24,30),('25',2,2,2,25,40),('26',2,2,2,26,50),('27',2,2,2,27,60),('28',2,2,2,28,70),('29',2,2,2,29,80),('30',2,2,2,30,90),('31',2,2,2,31,100),('32',2,2,2,32,100),('33',2,2,2,33,110),('34',2,2,2,34,120),('35',2,2,2,35,130),('36',2,2,2,36,131),('37',2,2,2,37,132),('38',2,2,2,38,133),('39',2,2,2,39,134),('40',2,2,2,40,135),('41',1,1,1,41,87),('42',1,1,1,42,100),('43',1,1,1,43,110),('44',1,1,1,44,120),('45',3,3,4,45,1),('46',3,3,4,46,2),('47',3,3,4,47,4),('48',3,3,4,48,5),('49',3,3,4,49,6),('50',3,3,4,50,7),('51',3,3,4,51,8),('52',3,3,5,52,10),('53',3,3,5,53,20),('54',3,3,5,54,30),('55',3,3,4,55,12),('56',3,3,4,56,13),('57',3,3,4,57,14),('58',3,3,4,58,15),('59',3,3,4,59,16),('60',3,3,6,60,10),('61',3,3,6,61,30),('62',3,3,6,62,40),('63',3,3,6,63,50),('64',3,3,6,64,60),('65',3,3,4,65,24),('66',3,3,4,66,25),('67',3,3,5,67,40),('68',3,3,5,68,50),('69',3,3,4,69,10),('70',3,3,6,70,5),('71',3,3,6,71,6),('72',3,3,5,72,51),('90',4,4,7,91,6),('96',4,4,8,98,8),('105',4,4,7,107,14),('106',4,4,7,108,15),('107',4,4,7,109,16),('108',4,4,7,110,17),('109',4,4,7,111,18),('110',4,4,7,112,19),('111',4,4,7,113,20),('115',3,3,4,117,3),('116',3,3,4,118,17),('118',4,4,7,120,11),('126',4,4,7,128,111),('127',4,4,7,129,112),('128',4,4,7,130,113),('129',4,4,7,131,114),('133',1,1,1,135,100),('135',4,4,7,73,2),('137',4,4,7,74,3),('139',4,4,7,77,5),('141',4,4,7,82,9),('143',4,4,7,94,13),('145',4,4,7,95,14),('147',4,4,7,97,1),('149',4,4,7,99,12),('151',4,4,7,105,11),('153',4,4,7,114,15),('155',4,4,7,115,8),('157',4,4,7,123,6),('159',4,4,7,124,4),('161',4,4,7,125,10),('163',4,4,7,133,7),('165',4,4,7,136,16),('167',4,4,13,75,1),('169',4,4,13,76,2),('171',4,4,15,127,1),('173',4,4,10,87,1),('175',4,4,10,88,2),('177',4,4,10,89,3),('179',4,4,10,90,5),('181',4,4,10,96,6),('183',4,4,10,132,4),('185',4,4,9,84,2),('187',4,4,9,85,3),('189',4,4,9,86,4),('191',4,4,9,119,1),('193',4,4,8,78,1),('195',4,4,8,79,2),('197',4,4,8,80,3),('199',4,4,8,81,4),('201',4,4,8,92,5),('203',4,4,8,121,6),('205',4,4,8,122,7),('207',4,4,8,126,8),('209',4,4,11,103,3),('211',4,4,11,104,1),('213',4,4,11,106,2),('215',4,4,14,100,3),('217',4,4,14,101,1),('219',4,4,14,102,2),('221',4,4,14,116,4),('223',4,4,20,134,1);
/*!40000 ALTER TABLE `eav_entity_attribute` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `eav_entity_datetime`
--

DROP TABLE IF EXISTS `eav_entity_datetime`;
CREATE TABLE `eav_entity_datetime` (
  `value_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Value Id',
  `entity_type_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity Type Id',
  `attribute_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Attribute Id',
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Store Id',
  `entity_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity Id',
  `value` datetime DEFAULT NULL COMMENT 'Attribute Value',
  PRIMARY KEY (`value_id`),
  UNIQUE KEY `EAV_ENTITY_DATETIME_ENTITY_ID_ATTRIBUTE_ID_STORE_ID` (`entity_id`,`attribute_id`,`store_id`),
  KEY `EAV_ENTITY_DATETIME_STORE_ID` (`store_id`),
  KEY `EAV_ENTITY_DATETIME_ATTRIBUTE_ID_VALUE` (`attribute_id`,`value`),
  KEY `EAV_ENTITY_DATETIME_ENTITY_TYPE_ID_VALUE` (`entity_type_id`,`value`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Eav Entity Value Prefix';

--
-- Table structure for table `eav_entity_decimal`
--

DROP TABLE IF EXISTS `eav_entity_decimal`;
CREATE TABLE `eav_entity_decimal` (
  `value_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Value Id',
  `entity_type_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity Type Id',
  `attribute_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Attribute Id',
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Store Id',
  `entity_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity Id',
  `value` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Attribute Value',
  PRIMARY KEY (`value_id`),
  UNIQUE KEY `EAV_ENTITY_DECIMAL_ENTITY_ID_ATTRIBUTE_ID_STORE_ID` (`entity_id`,`attribute_id`,`store_id`),
  KEY `EAV_ENTITY_DECIMAL_STORE_ID` (`store_id`),
  KEY `EAV_ENTITY_DECIMAL_ATTRIBUTE_ID_VALUE` (`attribute_id`,`value`),
  KEY `EAV_ENTITY_DECIMAL_ENTITY_TYPE_ID_VALUE` (`entity_type_id`,`value`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Eav Entity Value Prefix';

--
-- Table structure for table `eav_entity_int`
--

DROP TABLE IF EXISTS `eav_entity_int`;
CREATE TABLE `eav_entity_int` (
  `value_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Value Id',
  `entity_type_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity Type Id',
  `attribute_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Attribute Id',
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Store Id',
  `entity_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity Id',
  `value` int(11) NOT NULL DEFAULT '0' COMMENT 'Attribute Value',
  PRIMARY KEY (`value_id`),
  UNIQUE KEY `EAV_ENTITY_INT_ENTITY_ID_ATTRIBUTE_ID_STORE_ID` (`entity_id`,`attribute_id`,`store_id`),
  KEY `EAV_ENTITY_INT_STORE_ID` (`store_id`),
  KEY `EAV_ENTITY_INT_ATTRIBUTE_ID_VALUE` (`attribute_id`,`value`),
  KEY `EAV_ENTITY_INT_ENTITY_TYPE_ID_VALUE` (`entity_type_id`,`value`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Eav Entity Value Prefix';

--
-- Table structure for table `eav_entity_store`
--

DROP TABLE IF EXISTS `eav_entity_store`;
CREATE TABLE `eav_entity_store` (
  `entity_store_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Entity Store Id',
  `entity_type_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity Type Id',
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Store Id',
  `increment_prefix` varchar(20) DEFAULT NULL COMMENT 'Increment Prefix',
  `increment_last_id` varchar(50) DEFAULT NULL COMMENT 'Last Incremented Id',
  PRIMARY KEY (`entity_store_id`),
  KEY `EAV_ENTITY_STORE_ENTITY_TYPE_ID` (`entity_type_id`),
  KEY `EAV_ENTITY_STORE_STORE_ID` (`store_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Eav Entity Store';

--
-- Table structure for table `eav_entity_text`
--

DROP TABLE IF EXISTS `eav_entity_text`;
CREATE TABLE `eav_entity_text` (
  `value_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Value Id',
  `entity_type_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity Type Id',
  `attribute_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Attribute Id',
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Store Id',
  `entity_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity Id',
  `value` text NOT NULL COMMENT 'Attribute Value',
  PRIMARY KEY (`value_id`),
  UNIQUE KEY `EAV_ENTITY_TEXT_ENTITY_ID_ATTRIBUTE_ID_STORE_ID` (`entity_id`,`attribute_id`,`store_id`),
  KEY `EAV_ENTITY_TEXT_ENTITY_TYPE_ID` (`entity_type_id`),
  KEY `EAV_ENTITY_TEXT_ATTRIBUTE_ID` (`attribute_id`),
  KEY `EAV_ENTITY_TEXT_STORE_ID` (`store_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Eav Entity Value Prefix';

--
-- Table structure for table `eav_entity_type`
--

DROP TABLE IF EXISTS `eav_entity_type`;
CREATE TABLE `eav_entity_type` (
  `entity_type_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Entity Type Id',
  `entity_type_code` varchar(50) NOT NULL COMMENT 'Entity Type Code',
  `entity_model` varchar(255) NOT NULL COMMENT 'Entity Model',
  `attribute_model` varchar(255) DEFAULT NULL COMMENT 'Attribute Model',
  `entity_table` varchar(255) DEFAULT NULL COMMENT 'Entity Table',
  `value_table_prefix` varchar(255) DEFAULT NULL COMMENT 'Value Table Prefix',
  `entity_id_field` varchar(255) DEFAULT NULL COMMENT 'Entity Id Field',
  `is_data_sharing` smallint(5) unsigned NOT NULL DEFAULT '1' COMMENT 'Defines Is Data Sharing',
  `data_sharing_key` varchar(100) DEFAULT 'default' COMMENT 'Data Sharing Key',
  `default_attribute_set_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Default Attribute Set Id',
  `increment_model` varchar(255) DEFAULT NULL COMMENT 'Increment Model',
  `increment_per_store` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Increment Per Store',
  `increment_pad_length` smallint(5) unsigned NOT NULL DEFAULT '8' COMMENT 'Increment Pad Length',
  `increment_pad_char` varchar(1) NOT NULL DEFAULT '0' COMMENT 'Increment Pad Char',
  `additional_attribute_table` varchar(255) DEFAULT NULL COMMENT 'Additional Attribute Table',
  `entity_attribute_collection` varchar(255) DEFAULT NULL COMMENT 'Entity Attribute Collection',
  PRIMARY KEY (`entity_type_id`),
  KEY `EAV_ENTITY_TYPE_ENTITY_TYPE_CODE` (`entity_type_code`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COMMENT='Eav Entity Type';

--
-- Dumping data for table `eav_entity_type`
--

LOCK TABLES `eav_entity_type` WRITE;
/*!40000 ALTER TABLE `eav_entity_type` DISABLE KEYS */;
INSERT INTO `eav_entity_type` VALUES (1,'customer','Magento\\Customer\\Model\\ResourceModel\\Customer','Magento\\Customer\\Model\\Attribute','customer_entity',NULL,NULL,1,'default',1,'Magento\\Eav\\Model\\Entity\\Increment\\NumericValue',0,8,'0','customer_eav_attribute','Magento\\Customer\\Model\\ResourceModel\\Attribute\\Collection'),(2,'customer_address','Magento\\Customer\\Model\\ResourceModel\\Address','Magento\\Customer\\Model\\Attribute','customer_address_entity',NULL,NULL,1,'default',2,NULL,0,8,'0','customer_eav_attribute','Magento\\Customer\\Model\\ResourceModel\\Address\\Attribute\\Collection'),(3,'catalog_category','Magento\\Catalog\\Model\\ResourceModel\\Category','Magento\\Catalog\\Model\\ResourceModel\\Eav\\Attribute','catalog_category_entity',NULL,NULL,1,'default',3,NULL,0,8,'0','catalog_eav_attribute','Magento\\Catalog\\Model\\ResourceModel\\Category\\Attribute\\Collection'),(4,'catalog_product','Magento\\Catalog\\Model\\ResourceModel\\Product','Magento\\Catalog\\Model\\ResourceModel\\Eav\\Attribute','catalog_product_entity',NULL,NULL,1,'default',4,NULL,0,8,'0','catalog_eav_attribute','Magento\\Catalog\\Model\\ResourceModel\\Product\\Attribute\\Collection'),(5,'order','Magento\\Sales\\Model\\ResourceModel\\Order',NULL,'sales_order',NULL,NULL,1,'default',5,'Magento\\Eav\\Model\\Entity\\Increment\\NumericValue',1,8,'0',NULL,NULL),(6,'invoice','Magento\\Sales\\Model\\ResourceModel\\Order',NULL,'sales_invoice',NULL,NULL,1,'default',6,'Magento\\Eav\\Model\\Entity\\Increment\\NumericValue',1,8,'0',NULL,NULL),(7,'creditmemo','Magento\\Sales\\Model\\ResourceModel\\Order\\Creditmemo',NULL,'sales_creditmemo',NULL,NULL,1,'default',7,'Magento\\Eav\\Model\\Entity\\Increment\\NumericValue',1,8,'0',NULL,NULL),(8,'shipment','Magento\\Sales\\Model\\ResourceModel\\Order\\Shipment',NULL,'sales_shipment',NULL,NULL,1,'default',8,'Magento\\Eav\\Model\\Entity\\Increment\\NumericValue',1,8,'0',NULL,NULL);
/*!40000 ALTER TABLE `eav_entity_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `eav_entity_varchar`
--

DROP TABLE IF EXISTS `eav_entity_varchar`;
CREATE TABLE `eav_entity_varchar` (
  `value_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Value Id',
  `entity_type_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity Type Id',
  `attribute_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Attribute Id',
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Store Id',
  `entity_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity Id',
  `value` varchar(255) DEFAULT NULL COMMENT 'Attribute Value',
  PRIMARY KEY (`value_id`),
  UNIQUE KEY `EAV_ENTITY_VARCHAR_ENTITY_ID_ATTRIBUTE_ID_STORE_ID` (`entity_id`,`attribute_id`,`store_id`),
  KEY `EAV_ENTITY_VARCHAR_STORE_ID` (`store_id`),
  KEY `EAV_ENTITY_VARCHAR_ATTRIBUTE_ID_VALUE` (`attribute_id`,`value`),
  KEY `EAV_ENTITY_VARCHAR_ENTITY_TYPE_ID_VALUE` (`entity_type_id`,`value`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Eav Entity Value Prefix';

--
-- Table structure for table `eav_form_element`
--

DROP TABLE IF EXISTS `eav_form_element`;
CREATE TABLE `eav_form_element` (
  `element_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Element Id',
  `type_id` smallint(5) unsigned NOT NULL COMMENT 'Type Id',
  `fieldset_id` smallint(5) unsigned DEFAULT NULL COMMENT 'Fieldset Id',
  `attribute_id` smallint(5) unsigned NOT NULL COMMENT 'Attribute Id',
  `sort_order` int(11) NOT NULL DEFAULT '0' COMMENT 'Sort Order',
  PRIMARY KEY (`element_id`),
  UNIQUE KEY `EAV_FORM_ELEMENT_TYPE_ID_ATTRIBUTE_ID` (`type_id`,`attribute_id`),
  KEY `EAV_FORM_ELEMENT_FIELDSET_ID` (`fieldset_id`),
  KEY `EAV_FORM_ELEMENT_ATTRIBUTE_ID` (`attribute_id`)
) ENGINE=InnoDB AUTO_INCREMENT=43 DEFAULT CHARSET=utf8 COMMENT='Eav Form Element';

--
-- Dumping data for table `eav_form_element`
--

LOCK TABLES `eav_form_element` WRITE;
/*!40000 ALTER TABLE `eav_form_element` DISABLE KEYS */;
INSERT INTO `eav_form_element` VALUES ('1',1,NULL,23,'0'),('2',1,NULL,25,'1'),('3',1,NULL,27,'2'),('4',1,NULL,9,'3'),('5',1,NULL,28,'4'),('6',1,NULL,29,'5'),('7',1,NULL,31,'6'),('8',1,NULL,33,'7'),('9',1,NULL,30,'8'),('10',1,NULL,34,'9'),('11',1,NULL,35,'10'),('12',2,NULL,23,'0'),('13',2,NULL,25,'1'),('14',2,NULL,27,'2'),('15',2,NULL,9,'3'),('16',2,NULL,28,'4'),('17',2,NULL,29,'5'),('18',2,NULL,31,'6'),('19',2,NULL,33,'7'),('20',2,NULL,30,'8'),('21',2,NULL,34,'9'),('22',2,NULL,35,'10'),('23',3,NULL,23,'0'),('24',3,NULL,25,'1'),('25',3,NULL,27,'2'),('26',3,NULL,28,'3'),('27',3,NULL,29,'4'),('28',3,NULL,31,'5'),('29',3,NULL,33,'6'),('30',3,NULL,30,'7'),('31',3,NULL,34,'8'),('32',3,NULL,35,'9'),('33',4,NULL,23,'0'),('34',4,NULL,25,'1'),('35',4,NULL,27,'2'),('36',4,NULL,28,'3'),('37',4,NULL,29,'4'),('38',4,NULL,31,'5'),('39',4,NULL,33,'6'),('40',4,NULL,30,'7'),('41',4,NULL,34,'8'),('42',4,NULL,35,'9');
/*!40000 ALTER TABLE `eav_form_element` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `eav_form_fieldset`
--

DROP TABLE IF EXISTS `eav_form_fieldset`;
CREATE TABLE `eav_form_fieldset` (
  `fieldset_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Fieldset Id',
  `type_id` smallint(5) unsigned NOT NULL COMMENT 'Type Id',
  `code` varchar(64) NOT NULL COMMENT 'Code',
  `sort_order` int(11) NOT NULL DEFAULT '0' COMMENT 'Sort Order',
  PRIMARY KEY (`fieldset_id`),
  UNIQUE KEY `EAV_FORM_FIELDSET_TYPE_ID_CODE` (`type_id`,`code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Eav Form Fieldset';

--
-- Table structure for table `eav_form_fieldset_label`
--

DROP TABLE IF EXISTS `eav_form_fieldset_label`;
CREATE TABLE `eav_form_fieldset_label` (
  `fieldset_id` smallint(5) unsigned NOT NULL COMMENT 'Fieldset Id',
  `store_id` smallint(5) unsigned NOT NULL COMMENT 'Store Id',
  `label` varchar(255) NOT NULL COMMENT 'Label',
  PRIMARY KEY (`fieldset_id`,`store_id`),
  KEY `EAV_FORM_FIELDSET_LABEL_STORE_ID` (`store_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Eav Form Fieldset Label';

--
-- Table structure for table `eav_form_type`
--

DROP TABLE IF EXISTS `eav_form_type`;
CREATE TABLE `eav_form_type` (
  `type_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Type Id',
  `code` varchar(64) NOT NULL COMMENT 'Code',
  `label` varchar(255) NOT NULL COMMENT 'Label',
  `is_system` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Is System',
  `theme` varchar(64) DEFAULT NULL COMMENT 'Theme',
  `store_id` smallint(5) unsigned NOT NULL COMMENT 'Store Id',
  PRIMARY KEY (`type_id`),
  UNIQUE KEY `EAV_FORM_TYPE_CODE_THEME_STORE_ID` (`code`,`theme`,`store_id`),
  KEY `EAV_FORM_TYPE_STORE_ID` (`store_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='Eav Form Type';

--
-- Dumping data for table `eav_form_type`
--

LOCK TABLES `eav_form_type` WRITE;
/*!40000 ALTER TABLE `eav_form_type` DISABLE KEYS */;
INSERT INTO `eav_form_type` VALUES (1,'checkout_onepage_register','checkout_onepage_register',1,'',0),(2,'checkout_onepage_register_guest','checkout_onepage_register_guest',1,'',0),(3,'checkout_onepage_billing_address','checkout_onepage_billing_address',1,'',0),(4,'checkout_onepage_shipping_address','checkout_onepage_shipping_address',1,'',0);
/*!40000 ALTER TABLE `eav_form_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `eav_form_type_entity`
--

DROP TABLE IF EXISTS `eav_form_type_entity`;
CREATE TABLE `eav_form_type_entity` (
  `type_id` smallint(5) unsigned NOT NULL COMMENT 'Type Id',
  `entity_type_id` smallint(5) unsigned NOT NULL COMMENT 'Entity Type Id',
  PRIMARY KEY (`type_id`,`entity_type_id`),
  KEY `EAV_FORM_TYPE_ENTITY_ENTITY_TYPE_ID` (`entity_type_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Eav Form Type Entity';

--
-- Dumping data for table `eav_form_type_entity`
--

LOCK TABLES `eav_form_type_entity` WRITE;
/*!40000 ALTER TABLE `eav_form_type_entity` DISABLE KEYS */;
INSERT INTO `eav_form_type_entity` VALUES (1,1),(2,1),(1,2),(2,2),(3,2),(4,2);
/*!40000 ALTER TABLE `eav_form_type_entity` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `email_template`
--

DROP TABLE IF EXISTS `email_template`;
CREATE TABLE `email_template` (
  `template_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Template ID',
  `template_code` varchar(150) NOT NULL COMMENT 'Template Name',
  `template_text` text NOT NULL COMMENT 'Template Content',
  `template_styles` text COMMENT 'Templste Styles',
  `template_type` int(10) unsigned DEFAULT NULL COMMENT 'Template Type',
  `template_subject` varchar(200) NOT NULL COMMENT 'Template Subject',
  `template_sender_name` varchar(200) DEFAULT NULL COMMENT 'Template Sender Name',
  `template_sender_email` varchar(200) DEFAULT NULL COMMENT 'Template Sender Email',
  `added_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Date of Template Creation',
  `modified_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Date of Template Modification',
  `orig_template_code` varchar(200) DEFAULT NULL COMMENT 'Original Template Code',
  `orig_template_variables` text COMMENT 'Original Template Variables',
  PRIMARY KEY (`template_id`),
  UNIQUE KEY `EMAIL_TEMPLATE_TEMPLATE_CODE` (`template_code`),
  KEY `EMAIL_TEMPLATE_ADDED_AT` (`added_at`),
  KEY `EMAIL_TEMPLATE_MODIFIED_AT` (`modified_at`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Email Templates';

--
-- Table structure for table `flag`
--

DROP TABLE IF EXISTS `flag`;
CREATE TABLE `flag` (
  `flag_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Flag Id',
  `flag_code` varchar(255) NOT NULL COMMENT 'Flag Code',
  `state` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Flag State',
  `flag_data` text COMMENT 'Flag Data',
  `last_update` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Date of Last Flag Update',
  PRIMARY KEY (`flag_id`),
  KEY `FLAG_LAST_UPDATE` (`last_update`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Flag';

--
-- Table structure for table `gift_message`
--

DROP TABLE IF EXISTS `gift_message`;
CREATE TABLE `gift_message` (
  `gift_message_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'GiftMessage Id',
  `customer_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Customer id',
  `sender` varchar(255) DEFAULT NULL COMMENT 'Sender',
  `recipient` varchar(255) DEFAULT NULL COMMENT 'Registrant',
  `message` text COMMENT 'Message',
  PRIMARY KEY (`gift_message_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Gift Message';

--
-- Table structure for table `googleoptimizer_code`
--

DROP TABLE IF EXISTS `googleoptimizer_code`;
CREATE TABLE `googleoptimizer_code` (
  `code_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Google experiment code id',
  `entity_id` int(10) unsigned NOT NULL COMMENT 'Optimized entity id product id or catalog id',
  `entity_type` varchar(50) DEFAULT NULL COMMENT 'Optimized entity type',
  `store_id` smallint(5) unsigned NOT NULL COMMENT 'Store id',
  `experiment_script` text COMMENT 'Google experiment script',
  PRIMARY KEY (`code_id`),
  UNIQUE KEY `GOOGLEOPTIMIZER_CODE_STORE_ID_ENTITY_ID_ENTITY_TYPE` (`store_id`,`entity_id`,`entity_type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Google Experiment code';

--
-- Table structure for table `import_history`
--

DROP TABLE IF EXISTS `import_history`;
CREATE TABLE `import_history` (
  `history_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'History record Id',
  `started_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Started at',
  `user_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'User ID',
  `imported_file` varchar(255) DEFAULT NULL COMMENT 'Imported file',
  `execution_time` varchar(255) DEFAULT NULL COMMENT 'Execution time',
  `summary` varchar(255) DEFAULT NULL COMMENT 'Summary',
  `error_file` varchar(255) NOT NULL COMMENT 'Imported file with errors',
  PRIMARY KEY (`history_id`)
) ENGINE=InnoDB AUTO_INCREMENT=69 DEFAULT CHARSET=utf8 COMMENT='Import history table';

--
-- Dumping data for table `import_history`
--

LOCK TABLES `import_history` WRITE;
/*!40000 ALTER TABLE `import_history` DISABLE KEYS */;
INSERT INTO `import_history` VALUES ('1','2017-09-21 13:19:31','1','1505999971_catalog_product_20170921_130635_import.csv','02:00:34','Created: 3, Updated: 0, Deleted: 0',''),('2','2017-09-21 13:54:37','1','1506002077_magexport.products.ins.23288.csv','Validation',NULL,''),('3','2017-09-21 13:59:48','1','1506002388_magexport.products.ins.23288.csv','Validation',NULL,''),('4','2017-09-21 14:02:14','1','1506002534_magexport.products.ins.23288.csv','02:00:18','Created: 1, Updated: 0, Deleted: 0',''),('5','2017-09-25 11:58:46','1','1506340726_magexport.products.ins.23289.csv','02:00:04','Created: 1, Updated: 0, Deleted: 0',''),('6','2017-09-25 12:56:59','1','1506344219_magexport.products.ins.select.23290.txt','Validation',NULL,''),('7','2017-09-25 12:57:32','1','1506344252_magexport.products.ins.23290.csv','02:00:45','Created: 1, Updated: 0, Deleted: 0',''),('8','2017-09-25 13:19:18','1','1506345558_magexport.products.ins.23290.csv','02:00:26','Created: 1, Updated: 0, Deleted: 0',''),('9','2017-09-25 13:46:47','1','1506347206_magexport.products.ins.23292.csv','02:00:57','Created: 1, Updated: 0, Deleted: 0',''),('10','2017-09-25 18:56:43','1','1506365803_magexport.products.ins.23293.csv','Validation',NULL,''),('11','2017-09-25 19:03:39','1','1506366219_magexport.products.ins.23293.csv','Validation',NULL,''),('12','2017-09-25 19:04:55','1','1506366295_magexport.products.ins.23293.csv','Validation',NULL,''),('13','2017-09-25 19:10:40','1','1506366640_magexport.products.ins.23293.csv','02:00:59','Created: 1, Updated: 0, Deleted: 0',''),('14','2017-09-26 08:51:38','1','1506415898_magexport.products.ins.23293.csv','Validation',NULL,''),('15','2017-09-26 08:54:51','1','1506416091_magexport.products.ins.23293.csv','Validation',NULL,''),('16','2017-09-26 08:58:54','1','1506416334_magexport.products.ins.23293.csv','Validation',NULL,''),('17','2017-09-26 09:01:55','1','1506416515_magexport.products.ins.23293.csv','Validation',NULL,''),('18','2017-09-26 09:08:19','1','1506416899_magexport.products.ins.23293.csv','Validation',NULL,''),('19','2017-09-26 09:11:37','1','1506417097_magexport.products.ins.23293.csv','Validation',NULL,'1506417097_magexport.products.ins.23293_error_report.csv'),('20','2017-09-26 09:18:38','1','1506417518_magexport.products.ins.23293.csv','Validation',NULL,''),('21','2017-09-26 09:20:53','1','1506417653_magexport.products.ins.23293.csv','02:00:00','Created: 1, Updated: 0, Deleted: 0',''),('22','2017-09-26 16:25:09','1','1506443108_magexport.products.ins.23304.csv','Validation',NULL,'1506443108_magexport.products.ins.23304_error_report.csv'),('23','2017-09-26 16:37:16','1','1506443836_magexport.products.ins.23304.csv','02:00:57','Created: 2, Updated: 0, Deleted: 0',''),('24','2017-09-26 16:42:56','1','1506444176_magexport.products.advanced_pricing.23304.csv','Validation',NULL,'1506444176_magexport.products.advanced_pricing.23304_error_report.csv'),('25','2017-09-26 16:47:09','1','1506444429_magexport.products.advanced_pricing.23304.csv','02:00:16','Created: 2, Updated: 0, Deleted: 0',''),('26','2017-09-27 08:14:24','1','1506500064_magexport.products.ins.23304.csv','02:00:46','Created: 2, Updated: 0, Deleted: 0',''),('27','2017-09-27 08:55:33','2','1506502533_advanced_pricing_20170927_084723.csv','02:00:38','Created: 1, Updated: 0, Deleted: 0',''),('28','2017-09-27 09:13:27','1','1506503607_magexport.products.ins.23305.csv','Validation',NULL,''),('29','2017-09-27 10:13:01','1','1506507181_magexport.products.ins.23305.csv','02:00:51','Created: 2, Updated: 0, Deleted: 0',''),('30','2017-09-27 11:15:24','1','1506510924_magexport.products.ins.23307.csv','Validation',NULL,''),('31','2017-09-27 11:16:33','1','1506510993_magexport.products.ins.23307.csv','Validation',NULL,''),('32','2017-09-27 11:17:12','1','1506511032_magexport.products.ins.23307.csv','02:00:20','Created: 2, Updated: 0, Deleted: 0',''),('33','2017-09-27 11:20:00','1','1506511200_magexport.products.advanced_pricing.23307.csv','02:00:05','Created: 2, Updated: 0, Deleted: 0',''),('34','2017-09-27 16:11:09','1','1506528669_magexport.products.ins.23308.csv','02:00:17','Created: 2, Updated: 0, Deleted: 0',''),('35','2017-09-27 16:12:19','1','1506528739_magexport.products.advanced_pricing.23308.csv','02:00:31','Created: 2, Updated: 0, Deleted: 0',''),('36','2017-10-01 09:55:41','1','1506851741_magexport.products.ins.23309.csv','02:00:48','Created: 1, Updated: 0, Deleted: 0',''),('37','2017-10-01 10:07:06','1','1506852426_magexport.products.ins.23310.csv','02:00:14','Created: 1, Updated: 0, Deleted: 0',''),('38','2017-10-01 10:09:06','1','1506852546_magexport.products.advanced_pricing.23310.csv','02:00:11','Created: 1, Updated: 2, Deleted: 0',''),('39','2017-10-02 13:38:39','1','1506951519_magexport.products.ins.23313.csv','Validation',NULL,'1506951519_magexport.products.ins.23313_error_report.csv'),('40','2017-10-02 13:42:24','1','1506951744_magexport.products.ins.23313.csv','02:00:31','Created: 2, Updated: 0, Deleted: 0',''),('41','2017-10-02 13:43:56','1','1506951836_magexport.products.advanced_pricing.23313.csv','Validation',NULL,'1506951836_magexport.products.advanced_pricing.23313_error_report.csv'),('42','2017-10-02 13:50:27','1','1506952227_magexport.products.advanced_pricing.23313.csv','Validation',NULL,''),('43','2017-10-02 14:00:18','1','1506952818_magexport.products.advanced_pricing.23313.csv','02:00:35','Created: 2, Updated: 3, Deleted: 0',''),('44','2017-10-02 14:39:42','1','1506955182_magexport.products.ins.23315.csv','02:00:49','Created: 1, Updated: 0, Deleted: 0',''),('45','2017-10-02 14:41:17','1','1506955277_magexport.products.advanced_pricing.23315.csv','Validation',NULL,'1506955277_magexport.products.advanced_pricing.23315_error_report.csv'),('46','2017-10-02 14:42:44','1','1506955364_magexport.products.advanced_pricing.23315.csv','02:00:50','Created: 1, Updated: 4, Deleted: 0',''),('47','2017-10-04 14:14:10','1','1507126450_magexport.products.ins.23324.csv','Validation',NULL,''),('48','2017-10-04 14:16:21','1','1507126581_magexport.products.23324.csv','02:00:26','Created: 0, Updated: 5, Deleted: 0',''),('49','2017-10-04 15:11:14','1','1507129874_magexport.products.23325.csv','02:00:21','Created: 2, Updated: 0, Deleted: 0',''),('50','2017-10-04 15:12:01','1','1507129921_magexport.products.advanced_pricing.23325.csv','Validation',NULL,'1507129921_magexport.products.advanced_pricing.23325_error_report.csv'),('51','2017-10-04 15:16:59','1','1507130219_magexport.products.advanced_pricing.23325.csv','02:00:03','Created: 2, Updated: 0, Deleted: 0',''),('52','2017-10-04 15:44:55','1','1507131895_magexport.products.23326.csv','02:00:05','Created: 3, Updated: 2, Deleted: 0',''),('53','2017-10-04 15:47:59','1','1507132079_magexport.products.advanced_pricing.23326.csv','02:00:04','Created: 3, Updated: 2, Deleted: 0',''),('54','2017-10-08 20:33:30','2','1507494810_customer_20171008_202829.csv','Validation',NULL,''),('55','2017-10-08 20:35:04','2','1507494904_customer_20171008_202829.csv','02:00:08','Created: 1, Updated: 0, Deleted: 0',''),('56','2017-10-08 20:36:36','2','1507494996_customer_20171008_202829.csv','Validation',NULL,'1507494996_customer_20171008_202829_error_report.csv'),('57','2017-10-08 20:37:18','2','1507495038_customer_20171008_202829.csv','02:00:20','Created: 0, Updated: 1, Deleted: 0',''),('58','2017-10-08 21:15:48','2','1507497348_catalog_product_20171008_194520_import.csv','02:00:54','Created: 1, Updated: 0, Deleted: 0',''),('59','2017-10-08 21:43:39','2','1507499019_catalog_product_20171008_194520_import.csv','02:00:43','Created: 1, Updated: 0, Deleted: 0',''),('60','2017-10-08 21:49:09','2','1507499349_catalog_product_20171008_194520_import.csv','Validation',NULL,'1507499349_catalog_product_20171008_194520_import_error_report.csv'),('61','2017-10-08 21:49:57','2','1507499397_catalog_product_20171008_194520_import.csv','02:00:11','Created: 0, Updated: 1, Deleted: 0',''),('62','2017-10-08 21:52:52','2','1507499572_catalog_product_20171008_194520_import.csv','02:00:55','Created: 0, Updated: 1, Deleted: 0',''),('63','2017-10-08 22:12:39','2','1507500759_catalog_product_20171008_194520_import.csv','02:00:43','Created: 1, Updated: 0, Deleted: 0',''),('64','2017-10-08 22:14:51','2','1507500891_catalog_product_20171008_194520_import.csv','02:00:54','Created: 0, Updated: 1, Deleted: 0',''),('65','2017-10-08 22:17:39','2','1507501059_catalog_product_20171008_194520_import.csv','02:00:42','Created: 0, Updated: 1, Deleted: 0',''),('66','2017-10-09 13:27:23','2','1507555643_catalog_product_20171008_194520_import.csv','Validation',NULL,'1507555643_catalog_product_20171008_194520_import_error_report.csv'),('67','2017-10-09 13:28:01','2','1507555681_catalog_product_20171008_194520_import.csv','02:00:22','Created: 1, Updated: 0, Deleted: 0',''),('68','2017-10-09 13:31:31','2','1507555891_catalog_product_20171008_194520_import.csv','02:00:34','Created: 0, Updated: 1, Deleted: 0','');
/*!40000 ALTER TABLE `import_history` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `importexport_importdata`
--

DROP TABLE IF EXISTS `importexport_importdata`;
CREATE TABLE `importexport_importdata` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Id',
  `entity` varchar(50) NOT NULL COMMENT 'Entity',
  `behavior` varchar(10) NOT NULL DEFAULT 'append' COMMENT 'Behavior',
  `data` longtext COMMENT 'Data',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=50 DEFAULT CHARSET=utf8 COMMENT='Import Data Table';

--
-- Dumping data for table `importexport_importdata`
--

LOCK TABLES `importexport_importdata` WRITE;
/*!40000 ALTER TABLE `importexport_importdata` DISABLE KEYS */;
INSERT INTO `importexport_importdata` VALUES ('49','catalog_product','append','[{\"sku\":\"9999\",\"store_view_code\":\"prof_view_fr\",\"attribute_set_code\":\"Default\",\"product_type\":\"simple\",\"categories\":\"Professionnels\\/Isolation\\/Ampack\\/Ampacoll\",\"product_websites\":\"prof\",\"name\":\"Testproduit\",\"description\":\"C\'est un produit test.\",\"short_description\":null,\"weight\":null,\"product_online\":\"2\",\"tax_class_name\":\"TVA taux normal\",\"visibility\":\"Catalog, Search\",\"price\":\"150\",\"special_price\":null,\"special_price_from_date\":null,\"special_price_to_date\":null,\"url_key\":null,\"meta_title\":null,\"meta_keywords\":null,\"meta_description\":null,\"base_image\":null,\"base_image_label\":null,\"small_image\":null,\"small_image_label\":null,\"thumbnail_image\":null,\"thumbnail_image_label\":null,\"swatch_image\":null,\"swatch_image_label\":null,\"created_at\":null,\"updated_at\":null,\"new_from_date\":null,\"new_to_date\":null,\"display_product_options_in\":\"Block after Info Column\",\"map_price\":null,\"msrp_price\":null,\"map_enabled\":null,\"gift_message_available\":null,\"custom_design\":null,\"custom_design_from\":null,\"custom_design_to\":null,\"custom_layout_update\":null,\"page_layout\":null,\"product_options_container\":null,\"msrp_display_actual_price_type\":\"Use config\",\"country_of_manufacture\":null,\"additional_attributes\":\"product_nbr=testproduit.site\",\"qty\":\"0\",\"out_of_stock_qty\":\"0\",\"use_config_min_qty\":\"1\",\"is_qty_decimal\":\"1\",\"allow_backorders\":\"0\",\"use_config_backorders\":\"1\",\"min_cart_qty\":\"1\",\"use_config_min_sale_qty\":\"1\",\"max_cart_qty\":\"10000\",\"use_config_max_sale_qty\":\"1\",\"is_in_stock\":\"0\",\"notify_on_stock_below\":\"1\",\"use_config_notify_stock_qty\":\"1\",\"manage_stock\":\"0\",\"use_config_manage_stock\":\"0\",\"use_config_qty_increments\":\"1\",\"qty_increments\":\"1\",\"use_config_enable_qty_inc\":\"1\",\"enable_qty_increments\":\"0\",\"is_decimal_divided\":\"0\",\"website_id\":null,\"related_skus\":null,\"related_position\":null,\"crosssell_skus\":null,\"crosssell_position\":null,\"upsell_skus\":null,\"upsell_position\":null,\"additional_images\":null,\"additional_image_labels\":null,\"hide_from_product_page\":null,\"custom_options\":null,\"bundle_price_type\":null,\"bundle_sku_type\":null,\"bundle_price_view\":null,\"bundle_weight_type\":null,\"bundle_values\":null,\"bundle_shipment_type\":null,\"associated_skus\":null,\"image\":null,\"image_label\":null,\"thumbnail\":null,\"thumbnail_label\":null,\"_media_image\":null,\"_media_image_label\":null,\"_media_is_disabled\":null,\"_store\":\"prof_view_fr\",\"_attribute_set\":\"Default\",\"_product_websites\":\"prof\",\"status\":2,\"news_from_date\":null,\"news_to_date\":null,\"options_container\":\"Block after Info Column\",\"minimal_price\":null,\"msrp\":null,\"msrp_enabled\":null,\"special_from_date\":null,\"special_to_date\":null,\"min_qty\":\"0\",\"backorders\":\"0\",\"min_sale_qty\":\"1\",\"max_sale_qty\":\"10000\",\"notify_stock_qty\":\"1\",\"_related_sku\":null,\"_related_position\":null,\"_crosssell_sku\":null,\"_crosssell_position\":null,\"_upsell_sku\":null,\"_upsell_position\":null,\"meta_keyword\":null,\"price_type\":null,\"shipment_type\":null,\"price_view\":null,\"weight_type\":null,\"sku_type\":null,\"product_nbr\":\"testproduit.site\"}]');
/*!40000 ALTER TABLE `importexport_importdata` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `indexer_state`
--

DROP TABLE IF EXISTS `indexer_state`;
CREATE TABLE `indexer_state` (
  `state_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Indexer State Id',
  `indexer_id` varchar(255) DEFAULT NULL COMMENT 'Indexer Id',
  `status` varchar(16) DEFAULT 'invalid' COMMENT 'Indexer Status',
  `updated` datetime DEFAULT NULL COMMENT 'Indexer Status',
  `hash_config` varchar(32) NOT NULL COMMENT 'Hash of indexer config',
  PRIMARY KEY (`state_id`),
  KEY `INDEXER_STATE_INDEXER_ID` (`indexer_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COMMENT='Indexer State';

--
-- Dumping data for table `indexer_state`
--

LOCK TABLES `indexer_state` WRITE;
/*!40000 ALTER TABLE `indexer_state` DISABLE KEYS */;
INSERT INTO `indexer_state` VALUES ('1','design_config_grid','valid','2017-10-10 09:13:30','27baa8fe6a5369f52c8b7cbd54a3c3c4'),('2','customer_grid','valid','2017-10-10 09:13:28','d572ea00944c9e3f517b3f46bad058a4'),('3','catalog_category_product','valid','2017-10-10 09:13:30','57b48d3cf1fcd64abe6b01dea3173d02'),('4','catalog_product_category','valid','2017-10-10 07:58:25','9957f66909342cc58ff2703dcd268bf4'),('5','catalog_product_price','valid','2017-10-10 09:13:31','15a819a577a149220cd0722c291de721'),('6','catalog_product_attribute','valid','2017-10-10 09:13:32','77eed0bf72b16099d299d0ab47b74910'),('7','cataloginventory_stock','valid','2017-10-10 09:13:32','78a405fd852458c326c85096099d7d5e'),('8','catalogrule_rule','valid','2017-10-10 09:13:32','5afe3cacdcb52ec3a7e68dc245679021'),('9','catalogrule_product','valid','2017-09-20 15:35:51','0ebee9e52ed424273132e8227fe646f3'),('10','catalogsearch_fulltext','valid','2017-10-10 09:13:42','4486b57e2021aa78b526c68c9af2dcab');
/*!40000 ALTER TABLE `indexer_state` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `integration`
--

DROP TABLE IF EXISTS `integration`;
CREATE TABLE `integration` (
  `integration_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Integration ID',
  `name` varchar(255) NOT NULL COMMENT 'Integration name is displayed in the admin interface',
  `email` varchar(255) NOT NULL COMMENT 'Email address of the contact person',
  `endpoint` varchar(255) DEFAULT NULL COMMENT 'Endpoint for posting consumer credentials',
  `status` smallint(5) unsigned NOT NULL COMMENT 'Integration status',
  `consumer_id` int(10) unsigned DEFAULT NULL COMMENT 'Oauth consumer',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Creation Time',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP COMMENT 'Update Time',
  `setup_type` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Integration type - manual or config file',
  `identity_link_url` varchar(255) DEFAULT NULL COMMENT 'Identity linking Url',
  PRIMARY KEY (`integration_id`),
  UNIQUE KEY `INTEGRATION_NAME` (`name`),
  UNIQUE KEY `INTEGRATION_CONSUMER_ID` (`consumer_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='integration';

--
-- Table structure for table `itoris_dynamicproductoptions_option`
--

DROP TABLE IF EXISTS `itoris_dynamicproductoptions_option`;
CREATE TABLE `itoris_dynamicproductoptions_option` (
  `option_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `orig_option_id` int(10) unsigned DEFAULT NULL,
  `product_id` int(10) unsigned NOT NULL,
  `store_id` smallint(5) unsigned NOT NULL,
  `configuration` mediumtext NOT NULL,
  PRIMARY KEY (`option_id`),
  KEY `FK_ITORIS_DOPTIONS_OPTION_OPTION_ID` (`orig_option_id`),
  KEY `FK_ITORIS_DOPTIONS_OPTION_PRODUCT_ID` (`product_id`),
  KEY `FK_ITORIS_DOPTIONS_OPTION_STORE_ID` (`store_id`)
) ENGINE=InnoDB AUTO_INCREMENT=123 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `itoris_dynamicproductoptions_option`
--

LOCK TABLES `itoris_dynamicproductoptions_option` WRITE;
/*!40000 ALTER TABLE `itoris_dynamicproductoptions_option` DISABLE KEYS */;
INSERT INTO `itoris_dynamicproductoptions_option` VALUES ('91','56','29',0,'{\"order\":1,\"removable\":true,\"option_id\":56,\"id\":56,\"is_require\":0,\"hide_on_focus\":1,\"section_order\":1,\"type\":\"field\",\"internal_id\":1001,\"visibility_action\":\"hidden\",\"visibility\":\"visible\",\"customer_group\":\"\",\"title\":\"Votre prix [CHF\\/m.v.p]\",\"sku\":\"unitprice\",\"css_class\":\"unitprice\",\"sort_order\":1,\"itoris_option_id\":0,\"img_src\":null}'),('92','57','29',0,'{\"order\":2,\"removable\":true,\"option_id\":57,\"id\":57,\"is_require\":0,\"hide_on_focus\":1,\"section_order\":1,\"type\":\"field\",\"internal_id\":1002,\"visibility_action\":\"hidden\",\"visibility\":\"visible\",\"customer_group\":\"\",\"title\":\"Quantit\\u00e9 [m.v.p]\",\"sku\":\"actualqty\",\"css_class\":\"actualqty\",\"sort_order\":2,\"itoris_option_id\":0,\"img_src\":null}'),('93','58','29',0,'{\"order\":1,\"removable\":true,\"option_id\":58,\"id\":58,\"is_require\":1,\"hide_on_focus\":1,\"section_order\":2,\"type\":\"drop_down\",\"internal_id\":1003,\"visibility_action\":\"hidden\",\"visibility\":\"visible\",\"customer_group\":\"\",\"title\":\"\\u00c9paisseur [mm]\",\"items\":[null,{\"order\":1,\"price_type\":\"fixed\",\"is_selected\":0,\"is_disabled\":0,\"row\":[],\"visibility_action\":\"hidden\",\"visibility\":\"visible\",\"customer_group\":\"\",\"title\":\"75.0\",\"price\":0,\"sku\":\"dep75.0\",\"css_class\":\"dep75.0\",\"sort_order\":1,\"option_type_id\":64,\"option_id\":58,\"image_src\":null}],\"default_select_title\":\"Choisissez svp\",\"css_class\":\"dep\",\"sort_order\":3,\"itoris_option_id\":0,\"img_src\":null}'),('94','59','29',0,'{\"order\":2,\"removable\":true,\"option_id\":59,\"id\":59,\"is_require\":1,\"hide_on_focus\":1,\"section_order\":2,\"type\":\"drop_down\",\"internal_id\":1004,\"visibility_action\":\"hidden\",\"visibility\":\"visible\",\"customer_group\":\"\",\"title\":\"Largeur [mm]\",\"items\":[null,{\"order\":1,\"price_type\":\"fixed\",\"is_selected\":0,\"is_disabled\":0,\"row\":[],\"visibility_action\":\"hidden\",\"visibility\":\"visible\",\"customer_group\":\"\",\"title\":\"110.0\",\"price\":0,\"sku\":\"wid110.0\",\"css_class\":\"wid110.0\",\"sort_order\":1,\"option_type_id\":65,\"option_id\":59,\"image_src\":null}],\"default_select_title\":\"Choisissez svp\",\"css_class\":\"wid\",\"sort_order\":4,\"itoris_option_id\":0,\"img_src\":null}'),('95','60','29',0,'{\"order\":3,\"removable\":true,\"option_id\":60,\"id\":60,\"is_require\":1,\"hide_on_focus\":1,\"section_order\":2,\"type\":\"drop_down\",\"internal_id\":1005,\"visibility_action\":\"hidden\",\"visibility\":\"visible\",\"customer_group\":\"\",\"title\":\"Longueur [m]\",\"items\":[null,{\"order\":1,\"price_type\":\"fixed\",\"is_selected\":0,\"is_disabled\":0,\"row\":[],\"visibility_action\":\"hidden\",\"visibility\":\"visible\",\"customer_group\":\"\",\"title\":\"4.00\",\"price\":0,\"sku\":\"len4.00\",\"css_class\":\"len4.00\",\"sort_order\":1,\"option_type_id\":66,\"option_id\":60,\"image_src\":null},{\"order\":2,\"price_type\":\"fixed\",\"is_selected\":0,\"is_disabled\":0,\"row\":[],\"visibility_action\":\"hidden\",\"visibility\":\"visible\",\"customer_group\":\"\",\"title\":\"4.50\",\"price\":0,\"sku\":\"len4.50\",\"css_class\":\"len4.50\",\"sort_order\":2,\"option_type_id\":67,\"option_id\":60,\"image_src\":null},{\"order\":3,\"price_type\":\"fixed\",\"is_selected\":0,\"is_disabled\":0,\"row\":[],\"visibility_action\":\"hidden\",\"visibility\":\"visible\",\"customer_group\":\"\",\"title\":\"5.00\",\"price\":0,\"sku\":\"len5.00\",\"css_class\":\"len5.00\",\"sort_order\":3,\"option_type_id\":68,\"option_id\":60,\"image_src\":null}],\"default_select_title\":\"Choisissez svp\",\"css_class\":\"len\",\"sort_order\":5,\"itoris_option_id\":0,\"img_src\":null}'),('96','61','29',0,'{\"order\":1,\"removable\":true,\"option_id\":61,\"id\":61,\"is_require\":0,\"hide_on_focus\":1,\"section_order\":3,\"type\":\"field\",\"internal_id\":1006,\"visibility_action\":\"hidden\",\"visibility\":\"visible\",\"customer_group\":\"\",\"title\":\"Quantit\\u00e9 desir\\u00e9e [m.v.p]\",\"sku\":\"tgvalue\",\"css_class\":\"tgvalue\",\"sort_order\":6,\"itoris_option_id\":0,\"img_src\":null}'),('97','62','29',0,'{\"order\":2,\"removable\":true,\"option_id\":62,\"id\":62,\"is_require\":0,\"hide_on_focus\":1,\"section_order\":3,\"type\":\"field\",\"internal_id\":1007,\"visibility_action\":\"hidden\",\"visibility\":\"visible\",\"customer_group\":\"\",\"title\":\"Nombre n\\u00e9cessaire [pce]\",\"sku\":\"qtyreq\",\"css_class\":\"qtyreq\",\"sort_order\":7,\"itoris_option_id\":0,\"img_src\":null}'),('98','63','30',0,'{\"order\":1,\"removable\":true,\"option_id\":63,\"id\":63,\"is_require\":0,\"hide_on_focus\":1,\"section_order\":1,\"type\":\"field\",\"internal_id\":1001,\"visibility_action\":\"hidden\",\"visibility\":\"visible\",\"customer_group\":\"\",\"title\":\"Votre prix [CHF\\/pce]\",\"sku\":\"unitprice\",\"css_class\":\"unitprice\",\"sort_order\":1,\"itoris_option_id\":0,\"img_src\":null}'),('99','1','27',0,'{\"order\":1,\"removable\":true,\"option_id\":1,\"id\":1,\"is_require\":0,\"hide_on_focus\":1,\"section_order\":1,\"type\":\"field\",\"internal_id\":1001,\"visibility_action\":\"hidden\",\"visibility\":\"visible\",\"customer_group\":\"\",\"title\":\"Votre prix [CHF\\/m2]\",\"sku\":\"unitprice\",\"css_class\":\"unitprice\",\"sort_order\":1,\"itoris_option_id\":0,\"img_src\":null}'),('100','2','27',0,'{\"order\":2,\"removable\":true,\"option_id\":2,\"id\":2,\"is_require\":0,\"hide_on_focus\":1,\"section_order\":1,\"type\":\"field\",\"internal_id\":1002,\"visibility_action\":\"hidden\",\"visibility\":\"visible\",\"customer_group\":\"\",\"title\":\"Quantit\\u00e9 [m2]\",\"sku\":\"actualqty\",\"css_class\":\"actualqty\",\"sort_order\":2,\"itoris_option_id\":0,\"img_src\":null}'),('101','3','27',0,'{\"order\":1,\"removable\":true,\"option_id\":3,\"id\":3,\"is_require\":1,\"hide_on_focus\":1,\"section_order\":2,\"type\":\"drop_down\",\"internal_id\":1003,\"visibility_action\":\"hidden\",\"visibility\":\"visible\",\"customer_group\":\"\",\"title\":\"\\u00c9paisseur [mm]\",\"items\":[null,{\"order\":1,\"price_type\":\"fixed\",\"is_selected\":0,\"is_disabled\":0,\"row\":[],\"visibility_action\":\"hidden\",\"visibility\":\"visible\",\"customer_group\":\"\",\"title\":\"11.0\",\"price\":0,\"sku\":\"dep11.0\",\"css_class\":\"dep11.0\",\"sort_order\":1,\"option_type_id\":1,\"option_id\":3,\"image_src\":null}],\"default_select_title\":\"Choisissez svp\",\"css_class\":\"dep\",\"sort_order\":3,\"itoris_option_id\":0,\"img_src\":null}'),('102','4','27',0,'{\"order\":2,\"removable\":true,\"option_id\":4,\"id\":4,\"is_require\":1,\"hide_on_focus\":1,\"section_order\":2,\"type\":\"drop_down\",\"internal_id\":1004,\"visibility_action\":\"hidden\",\"visibility\":\"visible\",\"customer_group\":\"\",\"title\":\"Largeur [mm]\",\"items\":[null,{\"order\":1,\"price_type\":\"fixed\",\"is_selected\":0,\"is_disabled\":0,\"row\":[],\"visibility_action\":\"hidden\",\"visibility\":\"visible\",\"customer_group\":\"\",\"title\":\"1100.0\",\"price\":0,\"sku\":\"wid1100.0\",\"css_class\":\"wid1100.0\",\"sort_order\":1,\"option_type_id\":2,\"option_id\":4,\"image_src\":null}],\"default_select_title\":\"Choisissez svp\",\"css_class\":\"wid\",\"sort_order\":4,\"itoris_option_id\":0,\"img_src\":null}'),('103','5','27',0,'{\"order\":3,\"removable\":true,\"option_id\":5,\"id\":5,\"is_require\":1,\"hide_on_focus\":1,\"section_order\":2,\"type\":\"drop_down\",\"internal_id\":1005,\"visibility_action\":\"hidden\",\"visibility\":\"visible\",\"customer_group\":\"\",\"title\":\"Longueur [m]\",\"items\":[null,{\"order\":1,\"price_type\":\"fixed\",\"is_selected\":0,\"is_disabled\":0,\"row\":[],\"visibility_action\":\"hidden\",\"visibility\":\"visible\",\"customer_group\":\"\",\"title\":\"25.00\",\"price\":0,\"sku\":\"len25.00\",\"css_class\":\"len25.00\",\"sort_order\":1,\"option_type_id\":3,\"option_id\":5,\"image_src\":null}],\"default_select_title\":\"Choisissez svp\",\"css_class\":\"len\",\"sort_order\":5,\"itoris_option_id\":0,\"img_src\":null}'),('104','6','27',0,'{\"order\":1,\"removable\":true,\"option_id\":6,\"id\":6,\"is_require\":0,\"hide_on_focus\":1,\"section_order\":3,\"type\":\"field\",\"internal_id\":1006,\"visibility_action\":\"hidden\",\"visibility\":\"visible\",\"customer_group\":\"\",\"title\":\"Quantit\\u00e9 desir\\u00e9e [m2]\",\"sku\":\"tgvalue\",\"css_class\":\"tgvalue\",\"sort_order\":6,\"itoris_option_id\":0,\"img_src\":null}'),('105','7','27',0,'{\"order\":2,\"removable\":true,\"option_id\":7,\"id\":7,\"is_require\":0,\"hide_on_focus\":1,\"section_order\":3,\"type\":\"field\",\"internal_id\":1007,\"visibility_action\":\"hidden\",\"visibility\":\"visible\",\"customer_group\":\"\",\"title\":\"Nombre n\\u00e9cessaire [pce]\",\"sku\":\"qtyreq\",\"css_class\":\"qtyreq\",\"sort_order\":7,\"itoris_option_id\":0,\"img_src\":null}'),('106','64','31',0,'{\"order\":1,\"removable\":true,\"option_id\":64,\"id\":64,\"is_require\":0,\"hide_on_focus\":1,\"section_order\":1,\"type\":\"field\",\"internal_id\":1001,\"visibility_action\":\"hidden\",\"visibility\":\"visible\",\"customer_group\":\"\",\"title\":\"Votre prix [CHF\\/m2]\",\"sku\":\"unitprice\",\"css_class\":\"unitprice\",\"sort_order\":1,\"itoris_option_id\":0,\"img_src\":null}'),('107','65','31',0,'{\"order\":2,\"removable\":true,\"option_id\":65,\"id\":65,\"is_require\":0,\"hide_on_focus\":1,\"section_order\":1,\"type\":\"field\",\"internal_id\":1002,\"visibility_action\":\"hidden\",\"visibility\":\"visible\",\"customer_group\":\"\",\"title\":\"Quantit\\u00e9 [m2]\",\"sku\":\"actualqty\",\"css_class\":\"actualqty\",\"sort_order\":2,\"itoris_option_id\":0,\"img_src\":null}'),('108','66','31',0,'{\"order\":1,\"removable\":true,\"option_id\":66,\"id\":66,\"is_require\":0,\"hide_on_focus\":1,\"section_order\":2,\"type\":\"field\",\"internal_id\":1003,\"visibility_action\":\"hidden\",\"visibility\":\"visible\",\"customer_group\":\"\",\"title\":\"Rabais [CHF]\",\"sku\":\"actualdisc\",\"css_class\":\"actualdisc\",\"sort_order\":3,\"itoris_option_id\":0,\"img_src\":null}'),('109','67','31',0,'{\"order\":2,\"removable\":true,\"option_id\":67,\"id\":67,\"is_require\":0,\"hide_on_focus\":1,\"section_order\":2,\"type\":\"field\",\"internal_id\":1004,\"visibility_action\":\"hidden\",\"visibility\":\"visible\",\"customer_group\":\"\",\"title\":\"\\u00c9chelle suivante [m2]\",\"sku\":\"nextdisclevel\",\"css_class\":\"nextdisclevel\",\"sort_order\":4,\"itoris_option_id\":0,\"img_src\":null}'),('110','68','31',0,'{\"order\":1,\"removable\":true,\"option_id\":68,\"id\":68,\"is_require\":1,\"hide_on_focus\":1,\"section_order\":3,\"type\":\"drop_down\",\"internal_id\":1005,\"visibility_action\":\"hidden\",\"visibility\":\"visible\",\"customer_group\":\"\",\"title\":\"\\u00c9paisseur [mm]\",\"items\":[null,{\"order\":1,\"price_type\":\"fixed\",\"is_selected\":0,\"is_disabled\":0,\"row\":[],\"visibility_action\":\"hidden\",\"visibility\":\"visible\",\"customer_group\":\"\",\"title\":\"20.0\",\"price\":0,\"sku\":\"dep20.0\",\"css_class\":\"dep20.0\",\"sort_order\":1,\"option_type_id\":69,\"option_id\":68,\"image_src\":null}],\"default_select_title\":\"Choisissez svp\",\"css_class\":\"dep\",\"sort_order\":5,\"itoris_option_id\":0,\"img_src\":null}'),('111','69','31',0,'{\"order\":2,\"removable\":true,\"option_id\":69,\"id\":69,\"is_require\":1,\"hide_on_focus\":1,\"section_order\":3,\"type\":\"drop_down\",\"internal_id\":1006,\"visibility_action\":\"hidden\",\"visibility\":\"visible\",\"customer_group\":\"\",\"title\":\"Largeur [mm]\",\"items\":[null,{\"order\":1,\"price_type\":\"fixed\",\"is_selected\":0,\"is_disabled\":0,\"row\":[],\"visibility_action\":\"hidden\",\"visibility\":\"visible\",\"customer_group\":\"\",\"title\":\"107.0\",\"price\":0,\"sku\":\"wid107.0\",\"css_class\":\"wid107.0\",\"sort_order\":1,\"option_type_id\":70,\"option_id\":69,\"image_src\":null},{\"order\":2,\"price_type\":\"fixed\",\"is_selected\":0,\"is_disabled\":0,\"row\":[],\"visibility_action\":\"hidden\",\"visibility\":\"visible\",\"customer_group\":\"\",\"title\":\"135.0\",\"price\":0,\"sku\":\"wid135.0\",\"css_class\":\"wid135.0\",\"sort_order\":2,\"option_type_id\":71,\"option_id\":69,\"image_src\":null},{\"order\":3,\"price_type\":\"fixed\",\"is_selected\":0,\"is_disabled\":0,\"row\":[],\"visibility_action\":\"hidden\",\"visibility\":\"visible\",\"customer_group\":\"\",\"title\":\"160.0\",\"price\":0,\"sku\":\"wid160.0\",\"css_class\":\"wid160.0\",\"sort_order\":3,\"option_type_id\":72,\"option_id\":69,\"image_src\":null}],\"default_select_title\":\"Choisissez svp\",\"css_class\":\"wid\",\"sort_order\":6,\"itoris_option_id\":0,\"img_src\":null}'),('112','70','31',0,'{\"order\":3,\"removable\":true,\"option_id\":70,\"id\":70,\"is_require\":1,\"hide_on_focus\":1,\"section_order\":3,\"type\":\"drop_down\",\"internal_id\":1007,\"visibility_action\":\"hidden\",\"visibility\":\"visible\",\"customer_group\":\"\",\"title\":\"Longueur [m]\",\"items\":[null,{\"order\":1,\"price_type\":\"fixed\",\"is_selected\":0,\"is_disabled\":0,\"row\":[],\"visibility_action\":\"hidden\",\"visibility\":\"visible\",\"customer_group\":\"\",\"title\":\"3.00\",\"price\":0,\"sku\":\"len3.00\",\"css_class\":\"len3.00\",\"sort_order\":1,\"option_type_id\":73,\"option_id\":70,\"image_src\":null},{\"order\":2,\"price_type\":\"fixed\",\"is_selected\":0,\"is_disabled\":0,\"row\":[],\"visibility_action\":\"hidden\",\"visibility\":\"visible\",\"customer_group\":\"\",\"title\":\"4.00\",\"price\":0,\"sku\":\"len4.00\",\"css_class\":\"len4.00\",\"sort_order\":2,\"option_type_id\":74,\"option_id\":70,\"image_src\":null},{\"order\":3,\"price_type\":\"fixed\",\"is_selected\":0,\"is_disabled\":0,\"row\":[],\"visibility_action\":\"hidden\",\"visibility\":\"visible\",\"customer_group\":\"\",\"title\":\"5.00\",\"price\":0,\"sku\":\"len5.00\",\"css_class\":\"len5.00\",\"sort_order\":3,\"option_type_id\":75,\"option_id\":70,\"image_src\":null}],\"default_select_title\":\"Choisissez svp\",\"css_class\":\"len\",\"sort_order\":7,\"itoris_option_id\":0,\"img_src\":null}'),('113','8','31',0,'{\"order\":1,\"removable\":true,\"option_id\":8,\"id\":8,\"is_require\":0,\"hide_on_focus\":1,\"section_order\":4,\"type\":\"field\",\"internal_id\":1008,\"visibility_action\":\"hidden\",\"visibility\":\"visible\",\"customer_group\":\"\",\"title\":\"Quantit\\u00e9 desir\\u00e9e [m2]\",\"sku\":\"tgvalue\",\"css_class\":\"tgvalue\",\"sort_order\":8,\"itoris_option_id\":0,\"img_src\":null}'),('114','9','31',0,'{\"order\":2,\"removable\":true,\"option_id\":9,\"id\":9,\"is_require\":0,\"hide_on_focus\":1,\"section_order\":4,\"type\":\"field\",\"internal_id\":1009,\"visibility_action\":\"hidden\",\"visibility\":\"visible\",\"customer_group\":\"\",\"title\":\"Nombre n\\u00e9cessaire [pce]\",\"sku\":\"qtyreq\",\"css_class\":\"qtyreq\",\"sort_order\":9,\"itoris_option_id\":0,\"img_src\":null}'),('115','71','28',0,'{\"order\":1,\"removable\":true,\"option_id\":71,\"id\":71,\"is_require\":0,\"hide_on_focus\":1,\"section_order\":1,\"type\":\"field\",\"internal_id\":1001,\"visibility_action\":\"hidden\",\"visibility\":\"visible\",\"customer_group\":\"\",\"title\":\"Votre prix [CHF\\/m3]\",\"sku\":\"unitprice\",\"css_class\":\"unitprice\",\"sort_order\":1,\"itoris_option_id\":0,\"img_src\":null}'),('116','72','28',0,'{\"order\":2,\"removable\":true,\"option_id\":72,\"id\":72,\"is_require\":0,\"hide_on_focus\":1,\"section_order\":1,\"type\":\"field\",\"internal_id\":1002,\"visibility_action\":\"hidden\",\"visibility\":\"visible\",\"customer_group\":\"\",\"title\":\"Quantit\\u00e9 [m3]\",\"sku\":\"actualqty\",\"css_class\":\"actualqty\",\"sort_order\":2,\"itoris_option_id\":0,\"img_src\":null}'),('117','73','28',0,'{\"order\":1,\"removable\":true,\"option_id\":73,\"id\":73,\"is_require\":1,\"hide_on_focus\":1,\"section_order\":2,\"type\":\"drop_down\",\"internal_id\":1003,\"visibility_action\":\"hidden\",\"visibility\":\"visible\",\"customer_group\":\"\",\"title\":\"\\u00c9paisseur [mm]\",\"items\":[null,{\"order\":1,\"price_type\":\"fixed\",\"is_selected\":0,\"is_disabled\":0,\"row\":[],\"visibility_action\":\"hidden\",\"visibility\":\"visible\",\"customer_group\":\"\",\"title\":\"80.0\",\"price\":0,\"sku\":\"dep80.0\",\"css_class\":\"dep80.0\",\"sort_order\":1,\"option_type_id\":76,\"option_id\":73,\"image_src\":null},{\"order\":2,\"price_type\":\"fixed\",\"is_selected\":0,\"is_disabled\":0,\"row\":[],\"visibility_action\":\"hidden\",\"visibility\":\"visible\",\"customer_group\":\"\",\"title\":\"90.0\",\"price\":0,\"sku\":\"dep90.0\",\"css_class\":\"dep90.0\",\"sort_order\":2,\"option_type_id\":77,\"option_id\":73,\"image_src\":null},{\"order\":3,\"price_type\":\"fixed\",\"is_selected\":0,\"is_disabled\":0,\"row\":[],\"visibility_action\":\"hidden\",\"visibility\":\"visible\",\"customer_group\":\"\",\"title\":\"100.0\",\"price\":0,\"sku\":\"dep100.0\",\"css_class\":\"dep100.0\",\"sort_order\":3,\"option_type_id\":78,\"option_id\":73,\"image_src\":null}],\"default_select_title\":\"Choisissez svp\",\"css_class\":\"dep\",\"sort_order\":3,\"itoris_option_id\":0,\"img_src\":null}'),('118','74','28',0,'{\"order\":2,\"removable\":true,\"option_id\":74,\"id\":74,\"is_require\":1,\"hide_on_focus\":1,\"section_order\":2,\"type\":\"drop_down\",\"internal_id\":1004,\"visibility_action\":\"hidden\",\"visibility\":\"visible\",\"customer_group\":\"\",\"title\":\"Largeur [mm]\",\"items\":[null,{\"order\":1,\"price_type\":\"fixed\",\"is_selected\":0,\"is_disabled\":0,\"row\":[],\"visibility_action\":\"hidden\",\"visibility\":\"visible\",\"customer_group\":\"\",\"title\":\"120.0\",\"price\":0,\"sku\":\"wid120.0\",\"css_class\":\"wid120.0\",\"sort_order\":1,\"option_type_id\":4,\"option_id\":74,\"image_src\":null},{\"order\":2,\"price_type\":\"fixed\",\"is_selected\":0,\"is_disabled\":0,\"row\":[],\"visibility_action\":\"hidden\",\"visibility\":\"visible\",\"customer_group\":\"\",\"title\":\"160.0\",\"price\":0,\"sku\":\"wid160.0\",\"css_class\":\"wid160.0\",\"sort_order\":2,\"option_type_id\":5,\"option_id\":74,\"image_src\":null},{\"order\":3,\"price_type\":\"fixed\",\"is_selected\":0,\"is_disabled\":0,\"row\":[],\"visibility_action\":\"hidden\",\"visibility\":\"visible\",\"customer_group\":\"\",\"title\":\"200.0\",\"price\":0,\"sku\":\"wid200.0\",\"css_class\":\"wid200.0\",\"sort_order\":3,\"option_type_id\":6,\"option_id\":74,\"image_src\":null},{\"order\":4,\"price_type\":\"fixed\",\"is_selected\":0,\"is_disabled\":0,\"row\":[],\"visibility_action\":\"hidden\",\"visibility\":\"visible\",\"customer_group\":\"\",\"title\":\"240.0\",\"price\":0,\"sku\":\"wid240.0\",\"css_class\":\"wid240.0\",\"sort_order\":4,\"option_type_id\":7,\"option_id\":74,\"image_src\":null},{\"order\":5,\"price_type\":\"fixed\",\"is_selected\":0,\"is_disabled\":0,\"row\":[],\"visibility_action\":\"hidden\",\"visibility\":\"visible\",\"customer_group\":\"\",\"title\":\"280.0\",\"price\":0,\"sku\":\"wid280.0\",\"css_class\":\"wid280.0\",\"sort_order\":5,\"option_type_id\":8,\"option_id\":74,\"image_src\":null},{\"order\":6,\"price_type\":\"fixed\",\"is_selected\":0,\"is_disabled\":0,\"row\":[],\"visibility_action\":\"hidden\",\"visibility\":\"visible\",\"customer_group\":\"\",\"title\":\"320.0\",\"price\":0,\"sku\":\"wid320.0\",\"css_class\":\"wid320.0\",\"sort_order\":6,\"option_type_id\":9,\"option_id\":74,\"image_src\":null},{\"order\":7,\"price_type\":\"fixed\",\"is_selected\":0,\"is_disabled\":0,\"row\":[],\"visibility_action\":\"hidden\",\"visibility\":\"visible\",\"customer_group\":\"\",\"title\":\"360.0\",\"price\":0,\"sku\":\"wid360.0\",\"css_class\":\"wid360.0\",\"sort_order\":7,\"option_type_id\":10,\"option_id\":74,\"image_src\":null},{\"order\":8,\"price_type\":\"fixed\",\"is_selected\":0,\"is_disabled\":0,\"row\":[],\"visibility_action\":\"hidden\",\"visibility\":\"visible\",\"customer_group\":\"\",\"title\":\"400.0\",\"price\":0,\"sku\":\"wid400.0\",\"css_class\":\"wid400.0\",\"sort_order\":8,\"option_type_id\":11,\"option_id\":74,\"image_src\":null},{\"order\":9,\"price_type\":\"fixed\",\"is_selected\":0,\"is_disabled\":0,\"row\":[],\"visibility_action\":\"hidden\",\"visibility\":\"visible\",\"customer_group\":\"\",\"title\":\"440.0\",\"price\":0,\"sku\":\"wid440.0\",\"css_class\":\"wid440.0\",\"sort_order\":9,\"option_type_id\":12,\"option_id\":74,\"image_src\":null}],\"default_select_title\":\"Choisissez svp\",\"css_class\":\"wid\",\"sort_order\":4,\"itoris_option_id\":0,\"img_src\":null}'),('119','75','28',0,'{\"order\":3,\"removable\":true,\"option_id\":75,\"id\":75,\"is_require\":1,\"hide_on_focus\":1,\"section_order\":2,\"type\":\"drop_down\",\"internal_id\":1005,\"visibility_action\":\"hidden\",\"visibility\":\"visible\",\"customer_group\":\"\",\"title\":\"Longueur [m]\",\"items\":[null,{\"order\":1,\"price_type\":\"fixed\",\"is_selected\":0,\"is_disabled\":0,\"row\":[],\"visibility_action\":\"hidden\",\"visibility\":\"visible\",\"customer_group\":\"\",\"title\":\"3.50\",\"price\":0,\"sku\":\"len3.50\",\"css_class\":\"len3.50\",\"sort_order\":1,\"option_type_id\":13,\"option_id\":75,\"image_src\":null},{\"order\":2,\"price_type\":\"fixed\",\"is_selected\":0,\"is_disabled\":0,\"row\":[],\"visibility_action\":\"hidden\",\"visibility\":\"visible\",\"customer_group\":\"\",\"title\":\"4.00\",\"price\":0,\"sku\":\"len4.00\",\"css_class\":\"len4.00\",\"sort_order\":2,\"option_type_id\":14,\"option_id\":75,\"image_src\":null},{\"order\":3,\"price_type\":\"fixed\",\"is_selected\":0,\"is_disabled\":0,\"row\":[],\"visibility_action\":\"hidden\",\"visibility\":\"visible\",\"customer_group\":\"\",\"title\":\"4.50\",\"price\":0,\"sku\":\"len4.50\",\"css_class\":\"len4.50\",\"sort_order\":3,\"option_type_id\":15,\"option_id\":75,\"image_src\":null},{\"order\":4,\"price_type\":\"fixed\",\"is_selected\":0,\"is_disabled\":0,\"row\":[],\"visibility_action\":\"hidden\",\"visibility\":\"visible\",\"customer_group\":\"\",\"title\":\"5.00\",\"price\":0,\"sku\":\"len5.00\",\"css_class\":\"len5.00\",\"sort_order\":4,\"option_type_id\":16,\"option_id\":75,\"image_src\":null},{\"order\":5,\"price_type\":\"fixed\",\"is_selected\":0,\"is_disabled\":0,\"row\":[],\"visibility_action\":\"hidden\",\"visibility\":\"visible\",\"customer_group\":\"\",\"title\":\"5.50\",\"price\":0,\"sku\":\"len5.50\",\"css_class\":\"len5.50\",\"sort_order\":5,\"option_type_id\":17,\"option_id\":75,\"image_src\":null},{\"order\":6,\"price_type\":\"fixed\",\"is_selected\":0,\"is_disabled\":0,\"row\":[],\"visibility_action\":\"hidden\",\"visibility\":\"visible\",\"customer_group\":\"\",\"title\":\"6.00\",\"price\":0,\"sku\":\"len6.00\",\"css_class\":\"len6.00\",\"sort_order\":6,\"option_type_id\":18,\"option_id\":75,\"image_src\":null},{\"order\":7,\"price_type\":\"fixed\",\"is_selected\":0,\"is_disabled\":0,\"row\":[],\"visibility_action\":\"hidden\",\"visibility\":\"visible\",\"customer_group\":\"\",\"title\":\"6.50\",\"price\":0,\"sku\":\"len6.50\",\"css_class\":\"len6.50\",\"sort_order\":7,\"option_type_id\":19,\"option_id\":75,\"image_src\":null},{\"order\":8,\"price_type\":\"fixed\",\"is_selected\":0,\"is_disabled\":0,\"row\":[],\"visibility_action\":\"hidden\",\"visibility\":\"visible\",\"customer_group\":\"\",\"title\":\"7.00\",\"price\":0,\"sku\":\"len7.00\",\"css_class\":\"len7.00\",\"sort_order\":8,\"option_type_id\":20,\"option_id\":75,\"image_src\":null},{\"order\":9,\"price_type\":\"fixed\",\"is_selected\":0,\"is_disabled\":0,\"row\":[],\"visibility_action\":\"hidden\",\"visibility\":\"visible\",\"customer_group\":\"\",\"title\":\"7.50\",\"price\":0,\"sku\":\"len7.50\",\"css_class\":\"len7.50\",\"sort_order\":9,\"option_type_id\":21,\"option_id\":75,\"image_src\":null},{\"order\":10,\"price_type\":\"fixed\",\"is_selected\":0,\"is_disabled\":0,\"row\":[],\"visibility_action\":\"hidden\",\"visibility\":\"visible\",\"customer_group\":\"\",\"title\":\"8.00\",\"price\":0,\"sku\":\"len8.00\",\"css_class\":\"len8.00\",\"sort_order\":10,\"option_type_id\":22,\"option_id\":75,\"image_src\":null},{\"order\":11,\"price_type\":\"fixed\",\"is_selected\":0,\"is_disabled\":0,\"row\":[],\"visibility_action\":\"hidden\",\"visibility\":\"visible\",\"customer_group\":\"\",\"title\":\"8.50\",\"price\":0,\"sku\":\"len8.50\",\"css_class\":\"len8.50\",\"sort_order\":11,\"option_type_id\":23,\"option_id\":75,\"image_src\":null},{\"order\":12,\"price_type\":\"fixed\",\"is_selected\":0,\"is_disabled\":0,\"row\":[],\"visibility_action\":\"hidden\",\"visibility\":\"visible\",\"customer_group\":\"\",\"title\":\"9.00\",\"price\":0,\"sku\":\"len9.00\",\"css_class\":\"len9.00\",\"sort_order\":12,\"option_type_id\":24,\"option_id\":75,\"image_src\":null},{\"order\":13,\"price_type\":\"fixed\",\"is_selected\":0,\"is_disabled\":0,\"row\":[],\"visibility_action\":\"hidden\",\"visibility\":\"visible\",\"customer_group\":\"\",\"title\":\"9.50\",\"price\":0,\"sku\":\"len9.50\",\"css_class\":\"len9.50\",\"sort_order\":13,\"option_type_id\":25,\"option_id\":75,\"image_src\":null},{\"order\":14,\"price_type\":\"fixed\",\"is_selected\":0,\"is_disabled\":0,\"row\":[],\"visibility_action\":\"hidden\",\"visibility\":\"visible\",\"customer_group\":\"\",\"title\":\"10.00\",\"price\":0,\"sku\":\"len10.00\",\"css_class\":\"len10.00\",\"sort_order\":14,\"option_type_id\":26,\"option_id\":75,\"image_src\":null},{\"order\":15,\"price_type\":\"fixed\",\"is_selected\":0,\"is_disabled\":0,\"row\":[],\"visibility_action\":\"hidden\",\"visibility\":\"visible\",\"customer_group\":\"\",\"title\":\"10.50\",\"price\":0,\"sku\":\"len10.50\",\"css_class\":\"len10.50\",\"sort_order\":15,\"option_type_id\":27,\"option_id\":75,\"image_src\":null},{\"order\":16,\"price_type\":\"fixed\",\"is_selected\":0,\"is_disabled\":0,\"row\":[],\"visibility_action\":\"hidden\",\"visibility\":\"visible\",\"customer_group\":\"\",\"title\":\"11.00\",\"price\":0,\"sku\":\"len11.00\",\"css_class\":\"len11.00\",\"sort_order\":16,\"option_type_id\":28,\"option_id\":75,\"image_src\":null},{\"order\":17,\"price_type\":\"fixed\",\"is_selected\":0,\"is_disabled\":0,\"row\":[],\"visibility_action\":\"hidden\",\"visibility\":\"visible\",\"customer_group\":\"\",\"title\":\"11.50\",\"price\":0,\"sku\":\"len11.50\",\"css_class\":\"len11.50\",\"sort_order\":17,\"option_type_id\":29,\"option_id\":75,\"image_src\":null},{\"order\":18,\"price_type\":\"fixed\",\"is_selected\":0,\"is_disabled\":0,\"row\":[],\"visibility_action\":\"hidden\",\"visibility\":\"visible\",\"customer_group\":\"\",\"title\":\"12.00\",\"price\":0,\"sku\":\"len12.00\",\"css_class\":\"len12.00\",\"sort_order\":18,\"option_type_id\":30,\"option_id\":75,\"image_src\":null},{\"order\":19,\"price_type\":\"fixed\",\"is_selected\":0,\"is_disabled\":0,\"row\":[],\"visibility_action\":\"hidden\",\"visibility\":\"visible\",\"customer_group\":\"\",\"title\":\"12.50\",\"price\":0,\"sku\":\"len12.50\",\"css_class\":\"len12.50\",\"sort_order\":19,\"option_type_id\":31,\"option_id\":75,\"image_src\":null},{\"order\":20,\"price_type\":\"fixed\",\"is_selected\":0,\"is_disabled\":0,\"row\":[],\"visibility_action\":\"hidden\",\"visibility\":\"visible\",\"customer_group\":\"\",\"title\":\"13.00\",\"price\":0,\"sku\":\"len13.00\",\"css_class\":\"len13.00\",\"sort_order\":20,\"option_type_id\":32,\"option_id\":75,\"image_src\":null},{\"order\":21,\"price_type\":\"fixed\",\"is_selected\":0,\"is_disabled\":0,\"row\":[],\"visibility_action\":\"hidden\",\"visibility\":\"visible\",\"customer_group\":\"\",\"title\":\"13.50\",\"price\":0,\"sku\":\"len13.50\",\"css_class\":\"len13.50\",\"sort_order\":21,\"option_type_id\":33,\"option_id\":75,\"image_src\":null}],\"default_select_title\":\"Choisissez svp\",\"css_class\":\"len\",\"sort_order\":5,\"itoris_option_id\":0,\"img_src\":null}'),('120','76','28',0,'{\"order\":1,\"removable\":true,\"option_id\":76,\"id\":76,\"is_require\":0,\"hide_on_focus\":1,\"section_order\":3,\"type\":\"field\",\"internal_id\":1006,\"visibility_action\":\"hidden\",\"visibility\":\"visible\",\"customer_group\":\"\",\"title\":\"Quantit\\u00e9 desir\\u00e9e [m3]\",\"sku\":\"tgvalue\",\"css_class\":\"tgvalue\",\"sort_order\":6,\"itoris_option_id\":0,\"img_src\":null}'),('121','77','28',0,'{\"order\":2,\"removable\":true,\"option_id\":77,\"id\":77,\"is_require\":0,\"hide_on_focus\":1,\"section_order\":3,\"type\":\"field\",\"internal_id\":1007,\"visibility_action\":\"hidden\",\"visibility\":\"visible\",\"customer_group\":\"\",\"title\":\"Nombre n\\u00e9cessaire [pce]\",\"sku\":\"qtyreq\",\"css_class\":\"qtyreq\",\"sort_order\":7,\"itoris_option_id\":0,\"img_src\":null}'),('122','78','35',0,'{\"order\":1,\"removable\":true,\"option_id\":78,\"id\":78,\"is_require\":\"1\",\"hide_on_focus\":1,\"section_order\":1,\"type\":\"field\",\"internal_id\":2,\"visibility_action\":\"hidden\",\"visibility\":\"visible\",\"customer_group\":\"\",\"title\":\"\\u00c9paisseur [mm]\",\"sku\":\"dep\",\"default_value\":\"11\",\"css_class\":\"dep\",\"sort_order\":1,\"price\":0,\"price_type\":\"fixed\",\"itoris_option_id\":0,\"img_src\":null}');
/*!40000 ALTER TABLE `itoris_dynamicproductoptions_option` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `itoris_dynamicproductoptions_option_customergroup`
--

DROP TABLE IF EXISTS `itoris_dynamicproductoptions_option_customergroup`;
CREATE TABLE `itoris_dynamicproductoptions_option_customergroup` (
  `option_id` int(10) unsigned NOT NULL,
  `group_id` smallint(5) unsigned NOT NULL,
  KEY `FK_ITORIS_DOPTIONS_OPTION_CUSTOMERGROUP_OPTION_ID` (`option_id`),
  KEY `FK_ITORIS_DOPTIONS_OPTION_CUSTOMERGROUP_GROUP_ID` (`group_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Table structure for table `itoris_dynamicproductoptions_option_value`
--

DROP TABLE IF EXISTS `itoris_dynamicproductoptions_option_value`;
CREATE TABLE `itoris_dynamicproductoptions_option_value` (
  `value_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `orig_value_id` int(10) unsigned DEFAULT NULL,
  `product_id` int(10) unsigned NOT NULL,
  `store_id` smallint(5) unsigned NOT NULL,
  `configuration` text NOT NULL,
  PRIMARY KEY (`value_id`),
  KEY `FK_ITORIS_DOPTIONS_VALUE_VALUE_ID` (`orig_value_id`),
  KEY `FK_ITORIS_DOPTIONS_VALUE_PRODUCT_ID` (`product_id`),
  KEY `FK_ITORIS_DOPTIONS_VALUE_STORE_ID` (`store_id`)
) ENGINE=InnoDB AUTO_INCREMENT=217 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `itoris_dynamicproductoptions_option_value`
--

LOCK TABLES `itoris_dynamicproductoptions_option_value` WRITE;
/*!40000 ALTER TABLE `itoris_dynamicproductoptions_option_value` DISABLE KEYS */;
INSERT INTO `itoris_dynamicproductoptions_option_value` VALUES ('169','64','29',0,'{\"order\":1,\"price_type\":\"fixed\",\"is_selected\":0,\"is_disabled\":0,\"row\":[],\"visibility_action\":\"hidden\",\"visibility\":\"visible\",\"customer_group\":\"\",\"title\":\"75.0\",\"price\":0,\"sku\":\"dep75.0\",\"css_class\":\"dep75.0\",\"sort_order\":1,\"option_type_id\":64,\"option_id\":58,\"image_src\":null}'),('170','65','29',0,'{\"order\":1,\"price_type\":\"fixed\",\"is_selected\":0,\"is_disabled\":0,\"row\":[],\"visibility_action\":\"hidden\",\"visibility\":\"visible\",\"customer_group\":\"\",\"title\":\"110.0\",\"price\":0,\"sku\":\"wid110.0\",\"css_class\":\"wid110.0\",\"sort_order\":1,\"option_type_id\":65,\"option_id\":59,\"image_src\":null}'),('171','66','29',0,'{\"order\":1,\"price_type\":\"fixed\",\"is_selected\":0,\"is_disabled\":0,\"row\":[],\"visibility_action\":\"hidden\",\"visibility\":\"visible\",\"customer_group\":\"\",\"title\":\"4.00\",\"price\":0,\"sku\":\"len4.00\",\"css_class\":\"len4.00\",\"sort_order\":1,\"option_type_id\":66,\"option_id\":60,\"image_src\":null}'),('172','67','29',0,'{\"order\":2,\"price_type\":\"fixed\",\"is_selected\":0,\"is_disabled\":0,\"row\":[],\"visibility_action\":\"hidden\",\"visibility\":\"visible\",\"customer_group\":\"\",\"title\":\"4.50\",\"price\":0,\"sku\":\"len4.50\",\"css_class\":\"len4.50\",\"sort_order\":2,\"option_type_id\":67,\"option_id\":60,\"image_src\":null}'),('173','68','29',0,'{\"order\":3,\"price_type\":\"fixed\",\"is_selected\":0,\"is_disabled\":0,\"row\":[],\"visibility_action\":\"hidden\",\"visibility\":\"visible\",\"customer_group\":\"\",\"title\":\"5.00\",\"price\":0,\"sku\":\"len5.00\",\"css_class\":\"len5.00\",\"sort_order\":3,\"option_type_id\":68,\"option_id\":60,\"image_src\":null}'),('174','1','27',0,'{\"order\":1,\"price_type\":\"fixed\",\"is_selected\":0,\"is_disabled\":0,\"row\":[],\"visibility_action\":\"hidden\",\"visibility\":\"visible\",\"customer_group\":\"\",\"title\":\"11.0\",\"price\":0,\"sku\":\"dep11.0\",\"css_class\":\"dep11.0\",\"sort_order\":1,\"option_type_id\":1,\"option_id\":3,\"image_src\":null}'),('175','2','27',0,'{\"order\":1,\"price_type\":\"fixed\",\"is_selected\":0,\"is_disabled\":0,\"row\":[],\"visibility_action\":\"hidden\",\"visibility\":\"visible\",\"customer_group\":\"\",\"title\":\"1100.0\",\"price\":0,\"sku\":\"wid1100.0\",\"css_class\":\"wid1100.0\",\"sort_order\":1,\"option_type_id\":2,\"option_id\":4,\"image_src\":null}'),('176','3','27',0,'{\"order\":1,\"price_type\":\"fixed\",\"is_selected\":0,\"is_disabled\":0,\"row\":[],\"visibility_action\":\"hidden\",\"visibility\":\"visible\",\"customer_group\":\"\",\"title\":\"25.00\",\"price\":0,\"sku\":\"len25.00\",\"css_class\":\"len25.00\",\"sort_order\":1,\"option_type_id\":3,\"option_id\":5,\"image_src\":null}'),('177','69','31',0,'{\"order\":1,\"price_type\":\"fixed\",\"is_selected\":0,\"is_disabled\":0,\"row\":[],\"visibility_action\":\"hidden\",\"visibility\":\"visible\",\"customer_group\":\"\",\"title\":\"20.0\",\"price\":0,\"sku\":\"dep20.0\",\"css_class\":\"dep20.0\",\"sort_order\":1,\"option_type_id\":69,\"option_id\":68,\"image_src\":null}'),('178','70','31',0,'{\"order\":1,\"price_type\":\"fixed\",\"is_selected\":0,\"is_disabled\":0,\"row\":[],\"visibility_action\":\"hidden\",\"visibility\":\"visible\",\"customer_group\":\"\",\"title\":\"107.0\",\"price\":0,\"sku\":\"wid107.0\",\"css_class\":\"wid107.0\",\"sort_order\":1,\"option_type_id\":70,\"option_id\":69,\"image_src\":null}'),('179','71','31',0,'{\"order\":2,\"price_type\":\"fixed\",\"is_selected\":0,\"is_disabled\":0,\"row\":[],\"visibility_action\":\"hidden\",\"visibility\":\"visible\",\"customer_group\":\"\",\"title\":\"135.0\",\"price\":0,\"sku\":\"wid135.0\",\"css_class\":\"wid135.0\",\"sort_order\":2,\"option_type_id\":71,\"option_id\":69,\"image_src\":null}'),('180','72','31',0,'{\"order\":3,\"price_type\":\"fixed\",\"is_selected\":0,\"is_disabled\":0,\"row\":[],\"visibility_action\":\"hidden\",\"visibility\":\"visible\",\"customer_group\":\"\",\"title\":\"160.0\",\"price\":0,\"sku\":\"wid160.0\",\"css_class\":\"wid160.0\",\"sort_order\":3,\"option_type_id\":72,\"option_id\":69,\"image_src\":null}'),('181','73','31',0,'{\"order\":1,\"price_type\":\"fixed\",\"is_selected\":0,\"is_disabled\":0,\"row\":[],\"visibility_action\":\"hidden\",\"visibility\":\"visible\",\"customer_group\":\"\",\"title\":\"3.00\",\"price\":0,\"sku\":\"len3.00\",\"css_class\":\"len3.00\",\"sort_order\":1,\"option_type_id\":73,\"option_id\":70,\"image_src\":null}'),('182','74','31',0,'{\"order\":2,\"price_type\":\"fixed\",\"is_selected\":0,\"is_disabled\":0,\"row\":[],\"visibility_action\":\"hidden\",\"visibility\":\"visible\",\"customer_group\":\"\",\"title\":\"4.00\",\"price\":0,\"sku\":\"len4.00\",\"css_class\":\"len4.00\",\"sort_order\":2,\"option_type_id\":74,\"option_id\":70,\"image_src\":null}'),('183','75','31',0,'{\"order\":3,\"price_type\":\"fixed\",\"is_selected\":0,\"is_disabled\":0,\"row\":[],\"visibility_action\":\"hidden\",\"visibility\":\"visible\",\"customer_group\":\"\",\"title\":\"5.00\",\"price\":0,\"sku\":\"len5.00\",\"css_class\":\"len5.00\",\"sort_order\":3,\"option_type_id\":75,\"option_id\":70,\"image_src\":null}'),('184','76','28',0,'{\"order\":1,\"price_type\":\"fixed\",\"is_selected\":0,\"is_disabled\":0,\"row\":[],\"visibility_action\":\"hidden\",\"visibility\":\"visible\",\"customer_group\":\"\",\"title\":\"80.0\",\"price\":0,\"sku\":\"dep80.0\",\"css_class\":\"dep80.0\",\"sort_order\":1,\"option_type_id\":76,\"option_id\":73,\"image_src\":null}'),('185','77','28',0,'{\"order\":2,\"price_type\":\"fixed\",\"is_selected\":0,\"is_disabled\":0,\"row\":[],\"visibility_action\":\"hidden\",\"visibility\":\"visible\",\"customer_group\":\"\",\"title\":\"90.0\",\"price\":0,\"sku\":\"dep90.0\",\"css_class\":\"dep90.0\",\"sort_order\":2,\"option_type_id\":77,\"option_id\":73,\"image_src\":null}'),('186','78','28',0,'{\"order\":3,\"price_type\":\"fixed\",\"is_selected\":0,\"is_disabled\":0,\"row\":[],\"visibility_action\":\"hidden\",\"visibility\":\"visible\",\"customer_group\":\"\",\"title\":\"100.0\",\"price\":0,\"sku\":\"dep100.0\",\"css_class\":\"dep100.0\",\"sort_order\":3,\"option_type_id\":78,\"option_id\":73,\"image_src\":null}'),('187','4','28',0,'{\"order\":1,\"price_type\":\"fixed\",\"is_selected\":0,\"is_disabled\":0,\"row\":[],\"visibility_action\":\"hidden\",\"visibility\":\"visible\",\"customer_group\":\"\",\"title\":\"120.0\",\"price\":0,\"sku\":\"wid120.0\",\"css_class\":\"wid120.0\",\"sort_order\":1,\"option_type_id\":4,\"option_id\":74,\"image_src\":null}'),('188','5','28',0,'{\"order\":2,\"price_type\":\"fixed\",\"is_selected\":0,\"is_disabled\":0,\"row\":[],\"visibility_action\":\"hidden\",\"visibility\":\"visible\",\"customer_group\":\"\",\"title\":\"160.0\",\"price\":0,\"sku\":\"wid160.0\",\"css_class\":\"wid160.0\",\"sort_order\":2,\"option_type_id\":5,\"option_id\":74,\"image_src\":null}'),('189','6','28',0,'{\"order\":3,\"price_type\":\"fixed\",\"is_selected\":0,\"is_disabled\":0,\"row\":[],\"visibility_action\":\"hidden\",\"visibility\":\"visible\",\"customer_group\":\"\",\"title\":\"200.0\",\"price\":0,\"sku\":\"wid200.0\",\"css_class\":\"wid200.0\",\"sort_order\":3,\"option_type_id\":6,\"option_id\":74,\"image_src\":null}'),('190','7','28',0,'{\"order\":4,\"price_type\":\"fixed\",\"is_selected\":0,\"is_disabled\":0,\"row\":[],\"visibility_action\":\"hidden\",\"visibility\":\"visible\",\"customer_group\":\"\",\"title\":\"240.0\",\"price\":0,\"sku\":\"wid240.0\",\"css_class\":\"wid240.0\",\"sort_order\":4,\"option_type_id\":7,\"option_id\":74,\"image_src\":null}'),('191','8','28',0,'{\"order\":5,\"price_type\":\"fixed\",\"is_selected\":0,\"is_disabled\":0,\"row\":[],\"visibility_action\":\"hidden\",\"visibility\":\"visible\",\"customer_group\":\"\",\"title\":\"280.0\",\"price\":0,\"sku\":\"wid280.0\",\"css_class\":\"wid280.0\",\"sort_order\":5,\"option_type_id\":8,\"option_id\":74,\"image_src\":null}'),('192','9','28',0,'{\"order\":6,\"price_type\":\"fixed\",\"is_selected\":0,\"is_disabled\":0,\"row\":[],\"visibility_action\":\"hidden\",\"visibility\":\"visible\",\"customer_group\":\"\",\"title\":\"320.0\",\"price\":0,\"sku\":\"wid320.0\",\"css_class\":\"wid320.0\",\"sort_order\":6,\"option_type_id\":9,\"option_id\":74,\"image_src\":null}'),('193','10','28',0,'{\"order\":7,\"price_type\":\"fixed\",\"is_selected\":0,\"is_disabled\":0,\"row\":[],\"visibility_action\":\"hidden\",\"visibility\":\"visible\",\"customer_group\":\"\",\"title\":\"360.0\",\"price\":0,\"sku\":\"wid360.0\",\"css_class\":\"wid360.0\",\"sort_order\":7,\"option_type_id\":10,\"option_id\":74,\"image_src\":null}'),('194','11','28',0,'{\"order\":8,\"price_type\":\"fixed\",\"is_selected\":0,\"is_disabled\":0,\"row\":[],\"visibility_action\":\"hidden\",\"visibility\":\"visible\",\"customer_group\":\"\",\"title\":\"400.0\",\"price\":0,\"sku\":\"wid400.0\",\"css_class\":\"wid400.0\",\"sort_order\":8,\"option_type_id\":11,\"option_id\":74,\"image_src\":null}'),('195','12','28',0,'{\"order\":9,\"price_type\":\"fixed\",\"is_selected\":0,\"is_disabled\":0,\"row\":[],\"visibility_action\":\"hidden\",\"visibility\":\"visible\",\"customer_group\":\"\",\"title\":\"440.0\",\"price\":0,\"sku\":\"wid440.0\",\"css_class\":\"wid440.0\",\"sort_order\":9,\"option_type_id\":12,\"option_id\":74,\"image_src\":null}'),('196','13','28',0,'{\"order\":1,\"price_type\":\"fixed\",\"is_selected\":0,\"is_disabled\":0,\"row\":[],\"visibility_action\":\"hidden\",\"visibility\":\"visible\",\"customer_group\":\"\",\"title\":\"3.50\",\"price\":0,\"sku\":\"len3.50\",\"css_class\":\"len3.50\",\"sort_order\":1,\"option_type_id\":13,\"option_id\":75,\"image_src\":null}'),('197','14','28',0,'{\"order\":2,\"price_type\":\"fixed\",\"is_selected\":0,\"is_disabled\":0,\"row\":[],\"visibility_action\":\"hidden\",\"visibility\":\"visible\",\"customer_group\":\"\",\"title\":\"4.00\",\"price\":0,\"sku\":\"len4.00\",\"css_class\":\"len4.00\",\"sort_order\":2,\"option_type_id\":14,\"option_id\":75,\"image_src\":null}'),('198','15','28',0,'{\"order\":3,\"price_type\":\"fixed\",\"is_selected\":0,\"is_disabled\":0,\"row\":[],\"visibility_action\":\"hidden\",\"visibility\":\"visible\",\"customer_group\":\"\",\"title\":\"4.50\",\"price\":0,\"sku\":\"len4.50\",\"css_class\":\"len4.50\",\"sort_order\":3,\"option_type_id\":15,\"option_id\":75,\"image_src\":null}'),('199','16','28',0,'{\"order\":4,\"price_type\":\"fixed\",\"is_selected\":0,\"is_disabled\":0,\"row\":[],\"visibility_action\":\"hidden\",\"visibility\":\"visible\",\"customer_group\":\"\",\"title\":\"5.00\",\"price\":0,\"sku\":\"len5.00\",\"css_class\":\"len5.00\",\"sort_order\":4,\"option_type_id\":16,\"option_id\":75,\"image_src\":null}'),('200','17','28',0,'{\"order\":5,\"price_type\":\"fixed\",\"is_selected\":0,\"is_disabled\":0,\"row\":[],\"visibility_action\":\"hidden\",\"visibility\":\"visible\",\"customer_group\":\"\",\"title\":\"5.50\",\"price\":0,\"sku\":\"len5.50\",\"css_class\":\"len5.50\",\"sort_order\":5,\"option_type_id\":17,\"option_id\":75,\"image_src\":null}'),('201','18','28',0,'{\"order\":6,\"price_type\":\"fixed\",\"is_selected\":0,\"is_disabled\":0,\"row\":[],\"visibility_action\":\"hidden\",\"visibility\":\"visible\",\"customer_group\":\"\",\"title\":\"6.00\",\"price\":0,\"sku\":\"len6.00\",\"css_class\":\"len6.00\",\"sort_order\":6,\"option_type_id\":18,\"option_id\":75,\"image_src\":null}'),('202','19','28',0,'{\"order\":7,\"price_type\":\"fixed\",\"is_selected\":0,\"is_disabled\":0,\"row\":[],\"visibility_action\":\"hidden\",\"visibility\":\"visible\",\"customer_group\":\"\",\"title\":\"6.50\",\"price\":0,\"sku\":\"len6.50\",\"css_class\":\"len6.50\",\"sort_order\":7,\"option_type_id\":19,\"option_id\":75,\"image_src\":null}'),('203','20','28',0,'{\"order\":8,\"price_type\":\"fixed\",\"is_selected\":0,\"is_disabled\":0,\"row\":[],\"visibility_action\":\"hidden\",\"visibility\":\"visible\",\"customer_group\":\"\",\"title\":\"7.00\",\"price\":0,\"sku\":\"len7.00\",\"css_class\":\"len7.00\",\"sort_order\":8,\"option_type_id\":20,\"option_id\":75,\"image_src\":null}'),('204','21','28',0,'{\"order\":9,\"price_type\":\"fixed\",\"is_selected\":0,\"is_disabled\":0,\"row\":[],\"visibility_action\":\"hidden\",\"visibility\":\"visible\",\"customer_group\":\"\",\"title\":\"7.50\",\"price\":0,\"sku\":\"len7.50\",\"css_class\":\"len7.50\",\"sort_order\":9,\"option_type_id\":21,\"option_id\":75,\"image_src\":null}'),('205','22','28',0,'{\"order\":10,\"price_type\":\"fixed\",\"is_selected\":0,\"is_disabled\":0,\"row\":[],\"visibility_action\":\"hidden\",\"visibility\":\"visible\",\"customer_group\":\"\",\"title\":\"8.00\",\"price\":0,\"sku\":\"len8.00\",\"css_class\":\"len8.00\",\"sort_order\":10,\"option_type_id\":22,\"option_id\":75,\"image_src\":null}'),('206','23','28',0,'{\"order\":11,\"price_type\":\"fixed\",\"is_selected\":0,\"is_disabled\":0,\"row\":[],\"visibility_action\":\"hidden\",\"visibility\":\"visible\",\"customer_group\":\"\",\"title\":\"8.50\",\"price\":0,\"sku\":\"len8.50\",\"css_class\":\"len8.50\",\"sort_order\":11,\"option_type_id\":23,\"option_id\":75,\"image_src\":null}'),('207','24','28',0,'{\"order\":12,\"price_type\":\"fixed\",\"is_selected\":0,\"is_disabled\":0,\"row\":[],\"visibility_action\":\"hidden\",\"visibility\":\"visible\",\"customer_group\":\"\",\"title\":\"9.00\",\"price\":0,\"sku\":\"len9.00\",\"css_class\":\"len9.00\",\"sort_order\":12,\"option_type_id\":24,\"option_id\":75,\"image_src\":null}'),('208','25','28',0,'{\"order\":13,\"price_type\":\"fixed\",\"is_selected\":0,\"is_disabled\":0,\"row\":[],\"visibility_action\":\"hidden\",\"visibility\":\"visible\",\"customer_group\":\"\",\"title\":\"9.50\",\"price\":0,\"sku\":\"len9.50\",\"css_class\":\"len9.50\",\"sort_order\":13,\"option_type_id\":25,\"option_id\":75,\"image_src\":null}'),('209','26','28',0,'{\"order\":14,\"price_type\":\"fixed\",\"is_selected\":0,\"is_disabled\":0,\"row\":[],\"visibility_action\":\"hidden\",\"visibility\":\"visible\",\"customer_group\":\"\",\"title\":\"10.00\",\"price\":0,\"sku\":\"len10.00\",\"css_class\":\"len10.00\",\"sort_order\":14,\"option_type_id\":26,\"option_id\":75,\"image_src\":null}'),('210','27','28',0,'{\"order\":15,\"price_type\":\"fixed\",\"is_selected\":0,\"is_disabled\":0,\"row\":[],\"visibility_action\":\"hidden\",\"visibility\":\"visible\",\"customer_group\":\"\",\"title\":\"10.50\",\"price\":0,\"sku\":\"len10.50\",\"css_class\":\"len10.50\",\"sort_order\":15,\"option_type_id\":27,\"option_id\":75,\"image_src\":null}'),('211','28','28',0,'{\"order\":16,\"price_type\":\"fixed\",\"is_selected\":0,\"is_disabled\":0,\"row\":[],\"visibility_action\":\"hidden\",\"visibility\":\"visible\",\"customer_group\":\"\",\"title\":\"11.00\",\"price\":0,\"sku\":\"len11.00\",\"css_class\":\"len11.00\",\"sort_order\":16,\"option_type_id\":28,\"option_id\":75,\"image_src\":null}'),('212','29','28',0,'{\"order\":17,\"price_type\":\"fixed\",\"is_selected\":0,\"is_disabled\":0,\"row\":[],\"visibility_action\":\"hidden\",\"visibility\":\"visible\",\"customer_group\":\"\",\"title\":\"11.50\",\"price\":0,\"sku\":\"len11.50\",\"css_class\":\"len11.50\",\"sort_order\":17,\"option_type_id\":29,\"option_id\":75,\"image_src\":null}'),('213','30','28',0,'{\"order\":18,\"price_type\":\"fixed\",\"is_selected\":0,\"is_disabled\":0,\"row\":[],\"visibility_action\":\"hidden\",\"visibility\":\"visible\",\"customer_group\":\"\",\"title\":\"12.00\",\"price\":0,\"sku\":\"len12.00\",\"css_class\":\"len12.00\",\"sort_order\":18,\"option_type_id\":30,\"option_id\":75,\"image_src\":null}'),('214','31','28',0,'{\"order\":19,\"price_type\":\"fixed\",\"is_selected\":0,\"is_disabled\":0,\"row\":[],\"visibility_action\":\"hidden\",\"visibility\":\"visible\",\"customer_group\":\"\",\"title\":\"12.50\",\"price\":0,\"sku\":\"len12.50\",\"css_class\":\"len12.50\",\"sort_order\":19,\"option_type_id\":31,\"option_id\":75,\"image_src\":null}'),('215','32','28',0,'{\"order\":20,\"price_type\":\"fixed\",\"is_selected\":0,\"is_disabled\":0,\"row\":[],\"visibility_action\":\"hidden\",\"visibility\":\"visible\",\"customer_group\":\"\",\"title\":\"13.00\",\"price\":0,\"sku\":\"len13.00\",\"css_class\":\"len13.00\",\"sort_order\":20,\"option_type_id\":32,\"option_id\":75,\"image_src\":null}'),('216','33','28',0,'{\"order\":21,\"price_type\":\"fixed\",\"is_selected\":0,\"is_disabled\":0,\"row\":[],\"visibility_action\":\"hidden\",\"visibility\":\"visible\",\"customer_group\":\"\",\"title\":\"13.50\",\"price\":0,\"sku\":\"len13.50\",\"css_class\":\"len13.50\",\"sort_order\":21,\"option_type_id\":33,\"option_id\":75,\"image_src\":null}');
/*!40000 ALTER TABLE `itoris_dynamicproductoptions_option_value` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `itoris_dynamicproductoptions_option_value_customergroup`
--

DROP TABLE IF EXISTS `itoris_dynamicproductoptions_option_value_customergroup`;
CREATE TABLE `itoris_dynamicproductoptions_option_value_customergroup` (
  `value_id` int(10) unsigned NOT NULL,
  `group_id` smallint(5) unsigned NOT NULL,
  KEY `FK_ITORIS_DOPTIONS_VALUE_CUSTOMERGROUP_VALUE_ID` (`value_id`),
  KEY `FK_ITORIS_DOPTIONS_VALUE_CUSTOMERGROUP_GROUP_ID` (`group_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Table structure for table `itoris_dynamicproductoptions_options`
--

DROP TABLE IF EXISTS `itoris_dynamicproductoptions_options`;
CREATE TABLE `itoris_dynamicproductoptions_options` (
  `config_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `product_id` int(10) unsigned NOT NULL,
  `store_id` smallint(5) unsigned NOT NULL,
  `configuration` mediumtext NOT NULL,
  `form_style` varchar(30) DEFAULT NULL,
  `appearance` varchar(30) DEFAULT NULL,
  `css_adjustments` text,
  `extra_js` text,
  PRIMARY KEY (`config_id`),
  KEY `FK_ITORIS_DOPTIONS_OPTIONS_PRODUCT_ID` (`product_id`),
  KEY `FK_ITORIS_DOPTIONS_OPTIONS_STORE_ID` (`store_id`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `itoris_dynamicproductoptions_options`
--

LOCK TABLES `itoris_dynamicproductoptions_options` WRITE;
/*!40000 ALTER TABLE `itoris_dynamicproductoptions_options` DISABLE KEYS */;
INSERT INTO `itoris_dynamicproductoptions_options` VALUES ('15','29',0,'[null,{\"order\":1,\"cols\":1,\"rows\":2,\"removable\":1,\"title\":\"\",\"fields\":[null,{\"order\":1,\"removable\":true,\"option_id\":56,\"id\":56,\"is_require\":0,\"hide_on_focus\":1,\"section_order\":1,\"type\":\"field\",\"internal_id\":1001,\"visibility_action\":\"hidden\",\"visibility\":\"visible\",\"customer_group\":\"\",\"title\":\"Votre prix [CHF\\/m.v.p]\",\"sku\":\"unitprice\",\"css_class\":\"unitprice\",\"sort_order\":1,\"itoris_option_id\":0,\"img_src\":null},{\"order\":2,\"removable\":true,\"option_id\":57,\"id\":57,\"is_require\":0,\"hide_on_focus\":1,\"section_order\":1,\"type\":\"field\",\"internal_id\":1002,\"visibility_action\":\"hidden\",\"visibility\":\"visible\",\"customer_group\":\"\",\"title\":\"Quantit\\u00e9 [m.v.p]\",\"sku\":\"actualqty\",\"css_class\":\"actualqty\",\"sort_order\":2,\"itoris_option_id\":0,\"img_src\":null}],\"delimiter\":[],\"visibility_action\":\"hidden\",\"visibility\":\"visible\"},{\"order\":2,\"cols\":1,\"rows\":3,\"removable\":1,\"title\":\"\",\"fields\":[null,{\"order\":1,\"removable\":true,\"option_id\":58,\"id\":58,\"is_require\":1,\"hide_on_focus\":1,\"section_order\":2,\"type\":\"drop_down\",\"internal_id\":1003,\"visibility_action\":\"hidden\",\"visibility\":\"visible\",\"customer_group\":\"\",\"title\":\"\\u00c9paisseur [mm]\",\"items\":[null,{\"order\":1,\"price_type\":\"fixed\",\"is_selected\":0,\"is_disabled\":0,\"row\":[],\"visibility_action\":\"hidden\",\"visibility\":\"visible\",\"customer_group\":\"\",\"title\":\"75.0\",\"price\":0,\"sku\":\"dep75.0\",\"css_class\":\"dep75.0\",\"sort_order\":1,\"option_type_id\":64,\"option_id\":58,\"image_src\":null}],\"default_select_title\":\"Choisissez svp\",\"css_class\":\"dep\",\"sort_order\":3,\"itoris_option_id\":0,\"img_src\":null},{\"order\":2,\"removable\":true,\"option_id\":59,\"id\":59,\"is_require\":1,\"hide_on_focus\":1,\"section_order\":2,\"type\":\"drop_down\",\"internal_id\":1004,\"visibility_action\":\"hidden\",\"visibility\":\"visible\",\"customer_group\":\"\",\"title\":\"Largeur [mm]\",\"items\":[null,{\"order\":1,\"price_type\":\"fixed\",\"is_selected\":0,\"is_disabled\":0,\"row\":[],\"visibility_action\":\"hidden\",\"visibility\":\"visible\",\"customer_group\":\"\",\"title\":\"110.0\",\"price\":0,\"sku\":\"wid110.0\",\"css_class\":\"wid110.0\",\"sort_order\":1,\"option_type_id\":65,\"option_id\":59,\"image_src\":null}],\"default_select_title\":\"Choisissez svp\",\"css_class\":\"wid\",\"sort_order\":4,\"itoris_option_id\":0,\"img_src\":null},{\"order\":3,\"removable\":true,\"option_id\":60,\"id\":60,\"is_require\":1,\"hide_on_focus\":1,\"section_order\":2,\"type\":\"drop_down\",\"internal_id\":1005,\"visibility_action\":\"hidden\",\"visibility\":\"visible\",\"customer_group\":\"\",\"title\":\"Longueur [m]\",\"items\":[null,{\"order\":1,\"price_type\":\"fixed\",\"is_selected\":0,\"is_disabled\":0,\"row\":[],\"visibility_action\":\"hidden\",\"visibility\":\"visible\",\"customer_group\":\"\",\"title\":\"4.00\",\"price\":0,\"sku\":\"len4.00\",\"css_class\":\"len4.00\",\"sort_order\":1,\"option_type_id\":66,\"option_id\":60,\"image_src\":null},{\"order\":2,\"price_type\":\"fixed\",\"is_selected\":0,\"is_disabled\":0,\"row\":[],\"visibility_action\":\"hidden\",\"visibility\":\"visible\",\"customer_group\":\"\",\"title\":\"4.50\",\"price\":0,\"sku\":\"len4.50\",\"css_class\":\"len4.50\",\"sort_order\":2,\"option_type_id\":67,\"option_id\":60,\"image_src\":null},{\"order\":3,\"price_type\":\"fixed\",\"is_selected\":0,\"is_disabled\":0,\"row\":[],\"visibility_action\":\"hidden\",\"visibility\":\"visible\",\"customer_group\":\"\",\"title\":\"5.00\",\"price\":0,\"sku\":\"len5.00\",\"css_class\":\"len5.00\",\"sort_order\":3,\"option_type_id\":68,\"option_id\":60,\"image_src\":null}],\"default_select_title\":\"Choisissez svp\",\"css_class\":\"len\",\"sort_order\":5,\"itoris_option_id\":0,\"img_src\":null}],\"delimiter\":[],\"visibility_action\":\"hidden\",\"visibility\":\"visible\"},{\"order\":3,\"cols\":1,\"rows\":2,\"removable\":1,\"title\":\"\",\"fields\":[null,{\"order\":1,\"removable\":true,\"option_id\":61,\"id\":61,\"is_require\":0,\"hide_on_focus\":1,\"section_order\":3,\"type\":\"field\",\"internal_id\":1006,\"visibility_action\":\"hidden\",\"visibility\":\"visible\",\"customer_group\":\"\",\"title\":\"Quantit\\u00e9 desir\\u00e9e [m.v.p]\",\"sku\":\"tgvalue\",\"css_class\":\"tgvalue\",\"sort_order\":6,\"itoris_option_id\":0,\"img_src\":null},{\"order\":2,\"removable\":true,\"option_id\":62,\"id\":62,\"is_require\":0,\"hide_on_focus\":1,\"section_order\":3,\"type\":\"field\",\"internal_id\":1007,\"visibility_action\":\"hidden\",\"visibility\":\"visible\",\"customer_group\":\"\",\"title\":\"Nombre n\\u00e9cessaire [pce]\",\"sku\":\"qtyreq\",\"css_class\":\"qtyreq\",\"sort_order\":7,\"itoris_option_id\":0,\"img_src\":null}],\"delimiter\":[],\"visibility_action\":\"hidden\",\"visibility\":\"visible\"}]','table_sections','on_product_view','#price-breakdown {border-bottom: 1px solid #c1c1c1; padding-bottom:15px; font-size:18px;}\r\n\r\n#price-label {padding-bottom:0px; font-size:18px;}\r\n\r\n.unitprice input, .actualqty input, .actualdisc input, .nextdisclevel input, .surcharge input, .qtyreq input {border:none; background:none; pointer-events:none;}\r\n\r\n.unitprice div.control, .actualqty div.control, .actualdisc div.control, .nextdisclevel div.control, .surcharge div.control, .qtyreq div.control {display:inline !important}\r\n\r\n.unitprice div.control input, .actualqty div.control input, .actualdisc div.control input, .nextdisclevel div.control input, .surcharge div.control input, .qtyreq div.control input {width:auto !important}\r\n\r\n.unitprice label:after, .actualqty label:after, .actualdisc label:after, .nextdisclevel label:after, .surcharge label:after, .qtyreq label:after {content: \':\'}\r\n\r\n.unitprice label, .actualqty label, .actualdisc label, .nextdisclevel label, .surcharge label, .len label, .wid label, .dep label, .tgvalue label, .qtyreq label {font-weight: bold;}\r\n\r\n.product-info-main .product-add-form {padding-top: 0px !important};\r\n\r\n#itoris_dynamicproductoptions .fieldset {background: none};','// Total Warenwert\r\njQuery(\'.product-info-price\').before(jQuery(\'<div id=\"price-label\"></div>\').append(\'<b>Valeur marchandise</b><br />\'));\r\n\r\n// Function\r\nwindow.updatePriceBreakdown = function() {\r\n\r\n  // Variablen\r\n  var dep = parseFloat(jQuery(\'.dep\').find(\':selected\').text());\r\n  var len = parseFloat(jQuery(\'.len\').find(\':selected\').text());\r\n  var wid = parseFloat(jQuery(\'.wid\').find(\':selected\').text());\r\n  var qty = jQuery(\'#qty\').val();\r\n  var initial_price = parseFloat(jQuery(\'.product-info-main [data-price-type=\"finalPrice\"]\').attr(\'data-price-amount\'));\r\n  var total = parseFloat(jQuery(\'.product-info-main [data-price-type=\"finalPrice\"] .price\').text().replace(/\\s/g, \'\').replace(\'CHF\', \'\'));\r\n  var tgvalue = jQuery(\'.tgvalue input\').val();\r\n\r\n  // Formel: Preislistenpreis\r\n  jQuery(\'.unitprice input\').val(initial_price.toFixed(2));\r\n\r\n  // Formel: aktuell bestellte Menge\r\n  var qty_art = \'1.00\';\r\n  if (dep && len && wid) qty_art = (1 * len * 1 * qty * 1).toFixed(2);\r\n  jQuery(\'.actualqty input\').val( qty_art );\r\n\r\n  // Bezeichnung des Qty-Feldes\r\n  jQuery(\'.field.qty span\').replaceWith( \"<span>Nombre (pce)</span>\");\r\n\r\n  // benoetigte Stueckzahl\r\n  var qty_req;\r\n  if (dep && len && wid && tgvalue) qty_req = (Math.ceil(Math.round (tgvalue / (1 * len * 1 * 1) + 0.499) / 1) * 1).toFixed(0);\r\n  jQuery(\'.qtyreq input\').val( qty_req );\r\n\r\n}\r\n// Ausfuehrung der Function\r\nwindow.updatePriceBreakdown();\r\njQuery(\'#product_addtocart_form select, #product_addtocart_form input\').on(\'change\', function(){\r\n  jQuery(\'#product-addtocart-button\')[0].disabled = true;\r\n  setTimeout(function(){\r\n    window.updatePriceBreakdown();\r\n    jQuery(\'#product-addtocart-button\')[0].disabled = false;\r\n    }, 300);\r\n  });\r\n'),('16','30',0,'[null,{\"order\":1,\"cols\":1,\"rows\":1,\"removable\":1,\"title\":\"\",\"fields\":[null,{\"order\":1,\"removable\":true,\"option_id\":63,\"id\":63,\"is_require\":0,\"hide_on_focus\":1,\"section_order\":1,\"type\":\"field\",\"internal_id\":1001,\"visibility_action\":\"hidden\",\"visibility\":\"visible\",\"customer_group\":\"\",\"title\":\"Votre prix [CHF\\/pce]\",\"sku\":\"unitprice\",\"css_class\":\"unitprice\",\"sort_order\":1,\"itoris_option_id\":0,\"img_src\":null}],\"delimiter\":[],\"visibility_action\":\"hidden\",\"visibility\":\"visible\"}]','table_sections','on_product_view','#price-breakdown {border-bottom: 1px solid #c1c1c1; padding-bottom:15px; font-size:18px;}\r\n\r\n#price-label {padding-bottom:0px; font-size:18px;}\r\n\r\n.unitprice input, .actualqty input, .actualdisc input, .nextdisclevel input, .surcharge input, .qtyreq input {border:none; background:none; pointer-events:none;}\r\n\r\n.unitprice div.control, .actualqty div.control, .actualdisc div.control, .nextdisclevel div.control, .surcharge div.control, .qtyreq div.control {display:inline !important}\r\n\r\n.unitprice div.control input, .actualqty div.control input, .actualdisc div.control input, .nextdisclevel div.control input, .surcharge div.control input, .qtyreq div.control input {width:auto !important}\r\n\r\n.unitprice label:after, .actualqty label:after, .actualdisc label:after, .nextdisclevel label:after, .surcharge label:after, .qtyreq label:after {content: \':\'}\r\n\r\n.unitprice label, .actualqty label, .actualdisc label, .nextdisclevel label, .surcharge label, .len label, .wid label, .dep label, .tgvalue label, .qtyreq label {font-weight: bold;}\r\n\r\n.product-info-main .product-add-form {padding-top: 0px !important};\r\n\r\n#itoris_dynamicproductoptions .fieldset {background: none};','// Total Warenwert\r\njQuery(\'.product-info-price\').before(jQuery(\'<div id=\"price-label\"></div>\').append(\'<b>Valeur marchandise</b><br />\'));\r\n\r\n// Function\r\nwindow.updatePriceBreakdown = function() {\r\n\r\n  // Variablen\r\n  var dep = jQuery(\'.dep input\').val();\r\n  var len = jQuery(\'.len input\').val();\r\n  var wid = jQuery(\'.wid input\').val();\r\n  var qty = jQuery(\'#qty\').val();\r\n  var initial_price = parseFloat(jQuery(\'.product-info-main [data-price-type=\"finalPrice\"]\').attr(\'data-price-amount\'));\r\n  var total = parseFloat(jQuery(\'.product-info-main [data-price-type=\"finalPrice\"] .price\').text().replace(/\\s/g, \'\').replace(\'CHF\', \'\'));\r\n  var tgvalue = jQuery(\'.tgvalue input\').val();\r\n\r\n  // Formel: Preislistenpreis\r\n  jQuery(\'.unitprice input\').val(initial_price.toFixed(2));\r\n\r\n  // Formel: aktuell bestellte Menge\r\n  var qty_art = \'1\';\r\n  if (dep && len && wid) qty_art = (dep * len * wid * qty * 1).toFixed(0);\r\n  jQuery(\'.actualqty input\').val( qty_art );\r\n\r\n  // Bezeichnung des Qty-Feldes\r\n  jQuery(\'.field.qty span\').replaceWith( \"<span>Nombre (pce)</span>\");\r\n\r\n  // benoetigte Stueckzahl\r\n  var qty_req;\r\n  if (dep && len && wid && tgvalue) qty_req = (Math.ceil(Math.round (tgvalue / (dep * len * wid * 1) + 0.499) / 1) * 1).toFixed(0);\r\n  jQuery(\'.qtyreq input\').val( qty_req );\r\n\r\n}\r\n// Ausfuehrung der Function\r\nwindow.updatePriceBreakdown();\r\njQuery(\'#product_addtocart_form select, #product_addtocart_form input\').on(\'change\', function(){\r\n  jQuery(\'#product-addtocart-button\')[0].disabled = true;\r\n  setTimeout(function(){\r\n    window.updatePriceBreakdown();\r\n    jQuery(\'#product-addtocart-button\')[0].disabled = false;\r\n    }, 300);\r\n  });\r\n'),('17','27',0,'[null,{\"order\":1,\"cols\":1,\"rows\":2,\"removable\":1,\"title\":\"\",\"fields\":[null,{\"order\":1,\"removable\":true,\"option_id\":1,\"id\":1,\"is_require\":0,\"hide_on_focus\":1,\"section_order\":1,\"type\":\"field\",\"internal_id\":1001,\"visibility_action\":\"hidden\",\"visibility\":\"visible\",\"customer_group\":\"\",\"title\":\"Votre prix [CHF\\/m2]\",\"sku\":\"unitprice\",\"css_class\":\"unitprice\",\"sort_order\":1,\"itoris_option_id\":0,\"img_src\":null},{\"order\":2,\"removable\":true,\"option_id\":2,\"id\":2,\"is_require\":0,\"hide_on_focus\":1,\"section_order\":1,\"type\":\"field\",\"internal_id\":1002,\"visibility_action\":\"hidden\",\"visibility\":\"visible\",\"customer_group\":\"\",\"title\":\"Quantit\\u00e9 [m2]\",\"sku\":\"actualqty\",\"css_class\":\"actualqty\",\"sort_order\":2,\"itoris_option_id\":0,\"img_src\":null}],\"delimiter\":[],\"visibility_action\":\"hidden\",\"visibility\":\"visible\"},{\"order\":2,\"cols\":1,\"rows\":3,\"removable\":1,\"title\":\"\",\"fields\":[null,{\"order\":1,\"removable\":true,\"option_id\":3,\"id\":3,\"is_require\":1,\"hide_on_focus\":1,\"section_order\":2,\"type\":\"drop_down\",\"internal_id\":1003,\"visibility_action\":\"hidden\",\"visibility\":\"visible\",\"customer_group\":\"\",\"title\":\"\\u00c9paisseur [mm]\",\"items\":[null,{\"order\":1,\"price_type\":\"fixed\",\"is_selected\":0,\"is_disabled\":0,\"row\":[],\"visibility_action\":\"hidden\",\"visibility\":\"visible\",\"customer_group\":\"\",\"title\":\"11.0\",\"price\":0,\"sku\":\"dep11.0\",\"css_class\":\"dep11.0\",\"sort_order\":1,\"option_type_id\":1,\"option_id\":3,\"image_src\":null}],\"default_select_title\":\"Choisissez svp\",\"css_class\":\"dep\",\"sort_order\":3,\"itoris_option_id\":0,\"img_src\":null},{\"order\":2,\"removable\":true,\"option_id\":4,\"id\":4,\"is_require\":1,\"hide_on_focus\":1,\"section_order\":2,\"type\":\"drop_down\",\"internal_id\":1004,\"visibility_action\":\"hidden\",\"visibility\":\"visible\",\"customer_group\":\"\",\"title\":\"Largeur [mm]\",\"items\":[null,{\"order\":1,\"price_type\":\"fixed\",\"is_selected\":0,\"is_disabled\":0,\"row\":[],\"visibility_action\":\"hidden\",\"visibility\":\"visible\",\"customer_group\":\"\",\"title\":\"1100.0\",\"price\":0,\"sku\":\"wid1100.0\",\"css_class\":\"wid1100.0\",\"sort_order\":1,\"option_type_id\":2,\"option_id\":4,\"image_src\":null}],\"default_select_title\":\"Choisissez svp\",\"css_class\":\"wid\",\"sort_order\":4,\"itoris_option_id\":0,\"img_src\":null},{\"order\":3,\"removable\":true,\"option_id\":5,\"id\":5,\"is_require\":1,\"hide_on_focus\":1,\"section_order\":2,\"type\":\"drop_down\",\"internal_id\":1005,\"visibility_action\":\"hidden\",\"visibility\":\"visible\",\"customer_group\":\"\",\"title\":\"Longueur [m]\",\"items\":[null,{\"order\":1,\"price_type\":\"fixed\",\"is_selected\":0,\"is_disabled\":0,\"row\":[],\"visibility_action\":\"hidden\",\"visibility\":\"visible\",\"customer_group\":\"\",\"title\":\"25.00\",\"price\":0,\"sku\":\"len25.00\",\"css_class\":\"len25.00\",\"sort_order\":1,\"option_type_id\":3,\"option_id\":5,\"image_src\":null}],\"default_select_title\":\"Choisissez svp\",\"css_class\":\"len\",\"sort_order\":5,\"itoris_option_id\":0,\"img_src\":null}],\"delimiter\":[],\"visibility_action\":\"hidden\",\"visibility\":\"visible\"},{\"order\":3,\"cols\":1,\"rows\":2,\"removable\":1,\"title\":\"\",\"fields\":[null,{\"order\":1,\"removable\":true,\"option_id\":6,\"id\":6,\"is_require\":0,\"hide_on_focus\":1,\"section_order\":3,\"type\":\"field\",\"internal_id\":1006,\"visibility_action\":\"hidden\",\"visibility\":\"visible\",\"customer_group\":\"\",\"title\":\"Quantit\\u00e9 desir\\u00e9e [m2]\",\"sku\":\"tgvalue\",\"css_class\":\"tgvalue\",\"sort_order\":6,\"itoris_option_id\":0,\"img_src\":null},{\"order\":2,\"removable\":true,\"option_id\":7,\"id\":7,\"is_require\":0,\"hide_on_focus\":1,\"section_order\":3,\"type\":\"field\",\"internal_id\":1007,\"visibility_action\":\"hidden\",\"visibility\":\"visible\",\"customer_group\":\"\",\"title\":\"Nombre n\\u00e9cessaire [pce]\",\"sku\":\"qtyreq\",\"css_class\":\"qtyreq\",\"sort_order\":7,\"itoris_option_id\":0,\"img_src\":null}],\"delimiter\":[],\"visibility_action\":\"hidden\",\"visibility\":\"visible\"}]','table_sections','on_product_view','#price-breakdown {border-bottom: 1px solid #c1c1c1; padding-bottom:15px; font-size:18px;}\r\n\r\n#price-label {padding-bottom:0px; font-size:18px;}\r\n\r\n.unitprice input, .actualqty input, .actualdisc input, .nextdisclevel input, .surcharge input, .qtyreq input {border:none; background:none; pointer-events:none;}\r\n\r\n.unitprice div.control, .actualqty div.control, .actualdisc div.control, .nextdisclevel div.control, .surcharge div.control, .qtyreq div.control {display:inline !important}\r\n\r\n.unitprice div.control input, .actualqty div.control input, .actualdisc div.control input, .nextdisclevel div.control input, .surcharge div.control input, .qtyreq div.control input {width:auto !important}\r\n\r\n.unitprice label:after, .actualqty label:after, .actualdisc label:after, .nextdisclevel label:after, .surcharge label:after, .qtyreq label:after {content: \':\'}\r\n\r\n.unitprice label, .actualqty label, .actualdisc label, .nextdisclevel label, .surcharge label, .len label, .wid label, .dep label, .tgvalue label, .qtyreq label {font-weight: bold;}\r\n\r\n.product-info-main .product-add-form {padding-top: 0px !important};\r\n\r\n#itoris_dynamicproductoptions .fieldset {background: none};','// Total Warenwert\r\njQuery(\'.product-info-price\').before(jQuery(\'<div id=\"price-label\"></div>\').append(\'<b>Valeur marchandise</b><br />\'));\r\n\r\n// Function\r\nwindow.updatePriceBreakdown = function() {\r\n\r\n  // Variablen\r\n  var dep = parseFloat(jQuery(\'.dep\').find(\':selected\').text());\r\n  var len = parseFloat(jQuery(\'.len\').find(\':selected\').text());\r\n  var wid = parseFloat(jQuery(\'.wid\').find(\':selected\').text());\r\n  var qty = jQuery(\'#qty\').val();\r\n  var initial_price = parseFloat(jQuery(\'.product-info-main [data-price-type=\"finalPrice\"]\').attr(\'data-price-amount\'));\r\n  var total = parseFloat(jQuery(\'.product-info-main [data-price-type=\"finalPrice\"] .price\').text().replace(/\\s/g, \'\').replace(\'CHF\', \'\'));\r\n  var tgvalue = jQuery(\'.tgvalue input\').val();\r\n\r\n  // Formel: Preislistenpreis\r\n  jQuery(\'.unitprice input\').val(initial_price.toFixed(2));\r\n\r\n  // Formel: aktuell bestellte Menge\r\n  var qty_art = \'1.00\';\r\n  if (dep && len && wid) qty_art = (1 * len * wid * qty * 0.001).toFixed(2);\r\n  jQuery(\'.actualqty input\').val( qty_art );\r\n\r\n  // Bezeichnung des Qty-Feldes\r\n  jQuery(\'.field.qty span\').replaceWith( \"<span>Nombre (pce)</span>\");\r\n\r\n  // benoetigte Stueckzahl\r\n  var qty_req;\r\n  if (dep && len && wid && tgvalue) qty_req = (Math.ceil(Math.round (tgvalue / (1 * len * wid * 0.001) + 0.499) / 1) * 1).toFixed(0);\r\n  jQuery(\'.qtyreq input\').val( qty_req );\r\n\r\n}\r\n// Ausfuehrung der Function\r\nwindow.updatePriceBreakdown();\r\njQuery(\'#product_addtocart_form select, #product_addtocart_form input\').on(\'change\', function(){\r\n  jQuery(\'#product-addtocart-button\')[0].disabled = true;\r\n  setTimeout(function(){\r\n    window.updatePriceBreakdown();\r\n    jQuery(\'#product-addtocart-button\')[0].disabled = false;\r\n    }, 300);\r\n  });\r\n'),('18','31',0,'[null,{\"order\":1,\"cols\":1,\"rows\":2,\"removable\":1,\"title\":\"\",\"fields\":[null,{\"order\":1,\"removable\":true,\"option_id\":64,\"id\":64,\"is_require\":0,\"hide_on_focus\":1,\"section_order\":1,\"type\":\"field\",\"internal_id\":1001,\"visibility_action\":\"hidden\",\"visibility\":\"visible\",\"customer_group\":\"\",\"title\":\"Votre prix [CHF\\/m2]\",\"sku\":\"unitprice\",\"css_class\":\"unitprice\",\"sort_order\":1,\"itoris_option_id\":0,\"img_src\":null},{\"order\":2,\"removable\":true,\"option_id\":65,\"id\":65,\"is_require\":0,\"hide_on_focus\":1,\"section_order\":1,\"type\":\"field\",\"internal_id\":1002,\"visibility_action\":\"hidden\",\"visibility\":\"visible\",\"customer_group\":\"\",\"title\":\"Quantit\\u00e9 [m2]\",\"sku\":\"actualqty\",\"css_class\":\"actualqty\",\"sort_order\":2,\"itoris_option_id\":0,\"img_src\":null}],\"delimiter\":[],\"visibility_action\":\"hidden\",\"visibility\":\"visible\"},{\"order\":2,\"cols\":1,\"rows\":2,\"removable\":1,\"title\":\"\",\"fields\":[null,{\"order\":1,\"removable\":true,\"option_id\":66,\"id\":66,\"is_require\":0,\"hide_on_focus\":1,\"section_order\":2,\"type\":\"field\",\"internal_id\":1003,\"visibility_action\":\"hidden\",\"visibility\":\"visible\",\"customer_group\":\"\",\"title\":\"Rabais [CHF]\",\"sku\":\"actualdisc\",\"css_class\":\"actualdisc\",\"sort_order\":3,\"itoris_option_id\":0,\"img_src\":null},{\"order\":2,\"removable\":true,\"option_id\":67,\"id\":67,\"is_require\":0,\"hide_on_focus\":1,\"section_order\":2,\"type\":\"field\",\"internal_id\":1004,\"visibility_action\":\"hidden\",\"visibility\":\"visible\",\"customer_group\":\"\",\"title\":\"\\u00c9chelle suivante [m2]\",\"sku\":\"nextdisclevel\",\"css_class\":\"nextdisclevel\",\"sort_order\":4,\"itoris_option_id\":0,\"img_src\":null}],\"delimiter\":[],\"visibility_action\":\"hidden\",\"visibility\":\"visible\"},{\"order\":3,\"cols\":1,\"rows\":3,\"removable\":1,\"title\":\"\",\"fields\":[null,{\"order\":1,\"removable\":true,\"option_id\":68,\"id\":68,\"is_require\":1,\"hide_on_focus\":1,\"section_order\":3,\"type\":\"drop_down\",\"internal_id\":1005,\"visibility_action\":\"hidden\",\"visibility\":\"visible\",\"customer_group\":\"\",\"title\":\"\\u00c9paisseur [mm]\",\"items\":[null,{\"order\":1,\"price_type\":\"fixed\",\"is_selected\":0,\"is_disabled\":0,\"row\":[],\"visibility_action\":\"hidden\",\"visibility\":\"visible\",\"customer_group\":\"\",\"title\":\"20.0\",\"price\":0,\"sku\":\"dep20.0\",\"css_class\":\"dep20.0\",\"sort_order\":1,\"option_type_id\":69,\"option_id\":68,\"image_src\":null}],\"default_select_title\":\"Choisissez svp\",\"css_class\":\"dep\",\"sort_order\":5,\"itoris_option_id\":0,\"img_src\":null},{\"order\":2,\"removable\":true,\"option_id\":69,\"id\":69,\"is_require\":1,\"hide_on_focus\":1,\"section_order\":3,\"type\":\"drop_down\",\"internal_id\":1006,\"visibility_action\":\"hidden\",\"visibility\":\"visible\",\"customer_group\":\"\",\"title\":\"Largeur [mm]\",\"items\":[null,{\"order\":1,\"price_type\":\"fixed\",\"is_selected\":0,\"is_disabled\":0,\"row\":[],\"visibility_action\":\"hidden\",\"visibility\":\"visible\",\"customer_group\":\"\",\"title\":\"107.0\",\"price\":0,\"sku\":\"wid107.0\",\"css_class\":\"wid107.0\",\"sort_order\":1,\"option_type_id\":70,\"option_id\":69,\"image_src\":null},{\"order\":2,\"price_type\":\"fixed\",\"is_selected\":0,\"is_disabled\":0,\"row\":[],\"visibility_action\":\"hidden\",\"visibility\":\"visible\",\"customer_group\":\"\",\"title\":\"135.0\",\"price\":0,\"sku\":\"wid135.0\",\"css_class\":\"wid135.0\",\"sort_order\":2,\"option_type_id\":71,\"option_id\":69,\"image_src\":null},{\"order\":3,\"price_type\":\"fixed\",\"is_selected\":0,\"is_disabled\":0,\"row\":[],\"visibility_action\":\"hidden\",\"visibility\":\"visible\",\"customer_group\":\"\",\"title\":\"160.0\",\"price\":0,\"sku\":\"wid160.0\",\"css_class\":\"wid160.0\",\"sort_order\":3,\"option_type_id\":72,\"option_id\":69,\"image_src\":null}],\"default_select_title\":\"Choisissez svp\",\"css_class\":\"wid\",\"sort_order\":6,\"itoris_option_id\":0,\"img_src\":null},{\"order\":3,\"removable\":true,\"option_id\":70,\"id\":70,\"is_require\":1,\"hide_on_focus\":1,\"section_order\":3,\"type\":\"drop_down\",\"internal_id\":1007,\"visibility_action\":\"hidden\",\"visibility\":\"visible\",\"customer_group\":\"\",\"title\":\"Longueur [m]\",\"items\":[null,{\"order\":1,\"price_type\":\"fixed\",\"is_selected\":0,\"is_disabled\":0,\"row\":[],\"visibility_action\":\"hidden\",\"visibility\":\"visible\",\"customer_group\":\"\",\"title\":\"3.00\",\"price\":0,\"sku\":\"len3.00\",\"css_class\":\"len3.00\",\"sort_order\":1,\"option_type_id\":73,\"option_id\":70,\"image_src\":null},{\"order\":2,\"price_type\":\"fixed\",\"is_selected\":0,\"is_disabled\":0,\"row\":[],\"visibility_action\":\"hidden\",\"visibility\":\"visible\",\"customer_group\":\"\",\"title\":\"4.00\",\"price\":0,\"sku\":\"len4.00\",\"css_class\":\"len4.00\",\"sort_order\":2,\"option_type_id\":74,\"option_id\":70,\"image_src\":null},{\"order\":3,\"price_type\":\"fixed\",\"is_selected\":0,\"is_disabled\":0,\"row\":[],\"visibility_action\":\"hidden\",\"visibility\":\"visible\",\"customer_group\":\"\",\"title\":\"5.00\",\"price\":0,\"sku\":\"len5.00\",\"css_class\":\"len5.00\",\"sort_order\":3,\"option_type_id\":75,\"option_id\":70,\"image_src\":null}],\"default_select_title\":\"Choisissez svp\",\"css_class\":\"len\",\"sort_order\":7,\"itoris_option_id\":0,\"img_src\":null}],\"delimiter\":[],\"visibility_action\":\"hidden\",\"visibility\":\"visible\"},{\"order\":4,\"cols\":1,\"rows\":2,\"removable\":1,\"title\":\"\",\"fields\":[null,{\"order\":1,\"removable\":true,\"option_id\":8,\"id\":8,\"is_require\":0,\"hide_on_focus\":1,\"section_order\":4,\"type\":\"field\",\"internal_id\":1008,\"visibility_action\":\"hidden\",\"visibility\":\"visible\",\"customer_group\":\"\",\"title\":\"Quantit\\u00e9 desir\\u00e9e [m2]\",\"sku\":\"tgvalue\",\"css_class\":\"tgvalue\",\"sort_order\":8,\"itoris_option_id\":0,\"img_src\":null},{\"order\":2,\"removable\":true,\"option_id\":9,\"id\":9,\"is_require\":0,\"hide_on_focus\":1,\"section_order\":4,\"type\":\"field\",\"internal_id\":1009,\"visibility_action\":\"hidden\",\"visibility\":\"visible\",\"customer_group\":\"\",\"title\":\"Nombre n\\u00e9cessaire [pce]\",\"sku\":\"qtyreq\",\"css_class\":\"qtyreq\",\"sort_order\":9,\"itoris_option_id\":0,\"img_src\":null}],\"delimiter\":[],\"visibility_action\":\"hidden\",\"visibility\":\"visible\"}]','table_sections','on_product_view','#price-breakdown {border-bottom: 1px solid #c1c1c1; padding-bottom:15px; font-size:18px;}\r\n\r\n#price-label {padding-bottom:0px; font-size:18px;}\r\n\r\n.unitprice input, .actualqty input, .actualdisc input, .nextdisclevel input, .surcharge input, .qtyreq input {border:none; background:none; pointer-events:none;}\r\n\r\n.unitprice div.control, .actualqty div.control, .actualdisc div.control, .nextdisclevel div.control, .surcharge div.control, .qtyreq div.control {display:inline !important}\r\n\r\n.unitprice div.control input, .actualqty div.control input, .actualdisc div.control input, .nextdisclevel div.control input, .surcharge div.control input, .qtyreq div.control input {width:auto !important}\r\n\r\n.unitprice label:after, .actualqty label:after, .actualdisc label:after, .nextdisclevel label:after, .surcharge label:after, .qtyreq label:after {content: \':\'}\r\n\r\n.unitprice label, .actualqty label, .actualdisc label, .nextdisclevel label, .surcharge label, .len label, .wid label, .dep label, .tgvalue label, .qtyreq label {font-weight: bold;}\r\n\r\n.product-info-main .product-add-form {padding-top: 0px !important};\r\n\r\n#itoris_dynamicproductoptions .fieldset {background: none};','// Total Warenwert\r\njQuery(\'.product-info-price\').before(jQuery(\'<div id=\"price-label\"></div>\').append(\'<b>Valeur marchandise</b><br />\'));\r\n\r\n// Function\r\nwindow.updatePriceBreakdown = function() {\r\n\r\n  // Variablen\r\n  var dep = parseFloat(jQuery(\'.dep\').find(\':selected\').text());\r\n  var len = parseFloat(jQuery(\'.len\').find(\':selected\').text());\r\n  var wid = parseFloat(jQuery(\'.wid\').find(\':selected\').text());\r\n  var qty = jQuery(\'#qty\').val();\r\n  var initial_price = parseFloat(jQuery(\'.product-info-main [data-price-type=\"finalPrice\"]\').attr(\'data-price-amount\'));\r\n  var total = parseFloat(jQuery(\'.product-info-main [data-price-type=\"finalPrice\"] .price\').text().replace(/\\s/g, \'\').replace(\'CHF\', \'\'));\r\n  var tgvalue = jQuery(\'.tgvalue input\').val();\r\n\r\n  // Formel: Preislistenpreis\r\n  jQuery(\'.unitprice input\').val(initial_price.toFixed(2));\r\n\r\n  // Formel: aktuell bestellte Menge\r\n  var qty_art = \'1.00\';\r\n  if (dep && len && wid) qty_art = (1 * len * wid * qty * 0.001).toFixed(2);\r\n  jQuery(\'.actualqty input\').val( qty_art );\r\n\r\n  // Formel: aktueller Mengenrabatt\r\n  var m1 = 30 , m2 = \'\';\r\n  var r1 = 5 , r2 = \'\';\r\n  var bulk_disc = 0;\r\n  if (m1 && (qty_art >= m1)) bulk_disc = qty_art * initial_price / 100 * r1;\r\n  if (m2 && (qty_art >= m2)) bulk_disc = qty_art * initial_price / 100 * r2;\r\n  jQuery(\'.actualdisc input\').val( bulk_disc.toFixed(2) );\r\n\r\n  // Formel: Naechste Rabattstufe\r\n  var next_disc_level = 0;\r\n  if ((m1 && (qty_art < m1)) || ( m1 && ! m2)) next_disc_level = m1;\r\n  if (m2 && (total >= (m1 * initial_price))) next_disc_level = r2;\r\n  jQuery(\'.nextdisclevel input\').val( next_disc_level.toFixed(2) );\r\n\r\n  // Bezeichnung des Qty-Feldes\r\n  jQuery(\'.field.qty span\').replaceWith( \"<span>Nombre (pce)</span>\");\r\n\r\n  // Formel: automatische Mengenanpassung\r\n  jQuery(\'#qty\').change(function(){\r\n    jQuery(\'#qty\').val(function(n, c){\r\n      return Math.ceil(c / 5) * 5;\r\n    })\r\n  })\r\n\r\n  // benoetigte Stueckzahl\r\n  var qty_req;\r\n  if (dep && len && wid && tgvalue) qty_req = (Math.ceil(Math.round (tgvalue / (1 * len * wid * 0.001) + 0.499) / 5) * 5).toFixed(0);\r\n  jQuery(\'.qtyreq input\').val( qty_req );\r\n\r\n}\r\n// Ausfuehrung der Function\r\nwindow.updatePriceBreakdown();\r\njQuery(\'#product_addtocart_form select, #product_addtocart_form input\').on(\'change\', function(){\r\n  jQuery(\'#product-addtocart-button\')[0].disabled = true;\r\n  setTimeout(function(){\r\n    window.updatePriceBreakdown();\r\n    jQuery(\'#product-addtocart-button\')[0].disabled = false;\r\n    }, 300);\r\n  });\r\n'),('19','28',0,'[null,{\"order\":1,\"cols\":1,\"rows\":2,\"removable\":1,\"title\":\"\",\"fields\":[null,{\"order\":1,\"removable\":true,\"option_id\":71,\"id\":71,\"is_require\":0,\"hide_on_focus\":1,\"section_order\":1,\"type\":\"field\",\"internal_id\":1001,\"visibility_action\":\"hidden\",\"visibility\":\"visible\",\"customer_group\":\"\",\"title\":\"Votre prix [CHF\\/m3]\",\"sku\":\"unitprice\",\"css_class\":\"unitprice\",\"sort_order\":1,\"itoris_option_id\":0,\"img_src\":null},{\"order\":2,\"removable\":true,\"option_id\":72,\"id\":72,\"is_require\":0,\"hide_on_focus\":1,\"section_order\":1,\"type\":\"field\",\"internal_id\":1002,\"visibility_action\":\"hidden\",\"visibility\":\"visible\",\"customer_group\":\"\",\"title\":\"Quantit\\u00e9 [m3]\",\"sku\":\"actualqty\",\"css_class\":\"actualqty\",\"sort_order\":2,\"itoris_option_id\":0,\"img_src\":null}],\"delimiter\":[],\"visibility_action\":\"hidden\",\"visibility\":\"visible\"},{\"order\":2,\"cols\":1,\"rows\":3,\"removable\":1,\"title\":\"\",\"fields\":[null,{\"order\":1,\"removable\":true,\"option_id\":73,\"id\":73,\"is_require\":1,\"hide_on_focus\":1,\"section_order\":2,\"type\":\"drop_down\",\"internal_id\":1003,\"visibility_action\":\"hidden\",\"visibility\":\"visible\",\"customer_group\":\"\",\"title\":\"\\u00c9paisseur [mm]\",\"items\":[null,{\"order\":1,\"price_type\":\"fixed\",\"is_selected\":0,\"is_disabled\":0,\"row\":[],\"visibility_action\":\"hidden\",\"visibility\":\"visible\",\"customer_group\":\"\",\"title\":\"80.0\",\"price\":0,\"sku\":\"dep80.0\",\"css_class\":\"dep80.0\",\"sort_order\":1,\"option_type_id\":76,\"option_id\":73,\"image_src\":null},{\"order\":2,\"price_type\":\"fixed\",\"is_selected\":0,\"is_disabled\":0,\"row\":[],\"visibility_action\":\"hidden\",\"visibility\":\"visible\",\"customer_group\":\"\",\"title\":\"90.0\",\"price\":0,\"sku\":\"dep90.0\",\"css_class\":\"dep90.0\",\"sort_order\":2,\"option_type_id\":77,\"option_id\":73,\"image_src\":null},{\"order\":3,\"price_type\":\"fixed\",\"is_selected\":0,\"is_disabled\":0,\"row\":[],\"visibility_action\":\"hidden\",\"visibility\":\"visible\",\"customer_group\":\"\",\"title\":\"100.0\",\"price\":0,\"sku\":\"dep100.0\",\"css_class\":\"dep100.0\",\"sort_order\":3,\"option_type_id\":78,\"option_id\":73,\"image_src\":null}],\"default_select_title\":\"Choisissez svp\",\"css_class\":\"dep\",\"sort_order\":3,\"itoris_option_id\":0,\"img_src\":null},{\"order\":2,\"removable\":true,\"option_id\":74,\"id\":74,\"is_require\":1,\"hide_on_focus\":1,\"section_order\":2,\"type\":\"drop_down\",\"internal_id\":1004,\"visibility_action\":\"hidden\",\"visibility\":\"visible\",\"customer_group\":\"\",\"title\":\"Largeur [mm]\",\"items\":[null,{\"order\":1,\"price_type\":\"fixed\",\"is_selected\":0,\"is_disabled\":0,\"row\":[],\"visibility_action\":\"hidden\",\"visibility\":\"visible\",\"customer_group\":\"\",\"title\":\"120.0\",\"price\":0,\"sku\":\"wid120.0\",\"css_class\":\"wid120.0\",\"sort_order\":1,\"option_type_id\":4,\"option_id\":74,\"image_src\":null},{\"order\":2,\"price_type\":\"fixed\",\"is_selected\":0,\"is_disabled\":0,\"row\":[],\"visibility_action\":\"hidden\",\"visibility\":\"visible\",\"customer_group\":\"\",\"title\":\"160.0\",\"price\":0,\"sku\":\"wid160.0\",\"css_class\":\"wid160.0\",\"sort_order\":2,\"option_type_id\":5,\"option_id\":74,\"image_src\":null},{\"order\":3,\"price_type\":\"fixed\",\"is_selected\":0,\"is_disabled\":0,\"row\":[],\"visibility_action\":\"hidden\",\"visibility\":\"visible\",\"customer_group\":\"\",\"title\":\"200.0\",\"price\":0,\"sku\":\"wid200.0\",\"css_class\":\"wid200.0\",\"sort_order\":3,\"option_type_id\":6,\"option_id\":74,\"image_src\":null},{\"order\":4,\"price_type\":\"fixed\",\"is_selected\":0,\"is_disabled\":0,\"row\":[],\"visibility_action\":\"hidden\",\"visibility\":\"visible\",\"customer_group\":\"\",\"title\":\"240.0\",\"price\":0,\"sku\":\"wid240.0\",\"css_class\":\"wid240.0\",\"sort_order\":4,\"option_type_id\":7,\"option_id\":74,\"image_src\":null},{\"order\":5,\"price_type\":\"fixed\",\"is_selected\":0,\"is_disabled\":0,\"row\":[],\"visibility_action\":\"hidden\",\"visibility\":\"visible\",\"customer_group\":\"\",\"title\":\"280.0\",\"price\":0,\"sku\":\"wid280.0\",\"css_class\":\"wid280.0\",\"sort_order\":5,\"option_type_id\":8,\"option_id\":74,\"image_src\":null},{\"order\":6,\"price_type\":\"fixed\",\"is_selected\":0,\"is_disabled\":0,\"row\":[],\"visibility_action\":\"hidden\",\"visibility\":\"visible\",\"customer_group\":\"\",\"title\":\"320.0\",\"price\":0,\"sku\":\"wid320.0\",\"css_class\":\"wid320.0\",\"sort_order\":6,\"option_type_id\":9,\"option_id\":74,\"image_src\":null},{\"order\":7,\"price_type\":\"fixed\",\"is_selected\":0,\"is_disabled\":0,\"row\":[],\"visibility_action\":\"hidden\",\"visibility\":\"visible\",\"customer_group\":\"\",\"title\":\"360.0\",\"price\":0,\"sku\":\"wid360.0\",\"css_class\":\"wid360.0\",\"sort_order\":7,\"option_type_id\":10,\"option_id\":74,\"image_src\":null},{\"order\":8,\"price_type\":\"fixed\",\"is_selected\":0,\"is_disabled\":0,\"row\":[],\"visibility_action\":\"hidden\",\"visibility\":\"visible\",\"customer_group\":\"\",\"title\":\"400.0\",\"price\":0,\"sku\":\"wid400.0\",\"css_class\":\"wid400.0\",\"sort_order\":8,\"option_type_id\":11,\"option_id\":74,\"image_src\":null},{\"order\":9,\"price_type\":\"fixed\",\"is_selected\":0,\"is_disabled\":0,\"row\":[],\"visibility_action\":\"hidden\",\"visibility\":\"visible\",\"customer_group\":\"\",\"title\":\"440.0\",\"price\":0,\"sku\":\"wid440.0\",\"css_class\":\"wid440.0\",\"sort_order\":9,\"option_type_id\":12,\"option_id\":74,\"image_src\":null}],\"default_select_title\":\"Choisissez svp\",\"css_class\":\"wid\",\"sort_order\":4,\"itoris_option_id\":0,\"img_src\":null},{\"order\":3,\"removable\":true,\"option_id\":75,\"id\":75,\"is_require\":1,\"hide_on_focus\":1,\"section_order\":2,\"type\":\"drop_down\",\"internal_id\":1005,\"visibility_action\":\"hidden\",\"visibility\":\"visible\",\"customer_group\":\"\",\"title\":\"Longueur [m]\",\"items\":[null,{\"order\":1,\"price_type\":\"fixed\",\"is_selected\":0,\"is_disabled\":0,\"row\":[],\"visibility_action\":\"hidden\",\"visibility\":\"visible\",\"customer_group\":\"\",\"title\":\"3.50\",\"price\":0,\"sku\":\"len3.50\",\"css_class\":\"len3.50\",\"sort_order\":1,\"option_type_id\":13,\"option_id\":75,\"image_src\":null},{\"order\":2,\"price_type\":\"fixed\",\"is_selected\":0,\"is_disabled\":0,\"row\":[],\"visibility_action\":\"hidden\",\"visibility\":\"visible\",\"customer_group\":\"\",\"title\":\"4.00\",\"price\":0,\"sku\":\"len4.00\",\"css_class\":\"len4.00\",\"sort_order\":2,\"option_type_id\":14,\"option_id\":75,\"image_src\":null},{\"order\":3,\"price_type\":\"fixed\",\"is_selected\":0,\"is_disabled\":0,\"row\":[],\"visibility_action\":\"hidden\",\"visibility\":\"visible\",\"customer_group\":\"\",\"title\":\"4.50\",\"price\":0,\"sku\":\"len4.50\",\"css_class\":\"len4.50\",\"sort_order\":3,\"option_type_id\":15,\"option_id\":75,\"image_src\":null},{\"order\":4,\"price_type\":\"fixed\",\"is_selected\":0,\"is_disabled\":0,\"row\":[],\"visibility_action\":\"hidden\",\"visibility\":\"visible\",\"customer_group\":\"\",\"title\":\"5.00\",\"price\":0,\"sku\":\"len5.00\",\"css_class\":\"len5.00\",\"sort_order\":4,\"option_type_id\":16,\"option_id\":75,\"image_src\":null},{\"order\":5,\"price_type\":\"fixed\",\"is_selected\":0,\"is_disabled\":0,\"row\":[],\"visibility_action\":\"hidden\",\"visibility\":\"visible\",\"customer_group\":\"\",\"title\":\"5.50\",\"price\":0,\"sku\":\"len5.50\",\"css_class\":\"len5.50\",\"sort_order\":5,\"option_type_id\":17,\"option_id\":75,\"image_src\":null},{\"order\":6,\"price_type\":\"fixed\",\"is_selected\":0,\"is_disabled\":0,\"row\":[],\"visibility_action\":\"hidden\",\"visibility\":\"visible\",\"customer_group\":\"\",\"title\":\"6.00\",\"price\":0,\"sku\":\"len6.00\",\"css_class\":\"len6.00\",\"sort_order\":6,\"option_type_id\":18,\"option_id\":75,\"image_src\":null},{\"order\":7,\"price_type\":\"fixed\",\"is_selected\":0,\"is_disabled\":0,\"row\":[],\"visibility_action\":\"hidden\",\"visibility\":\"visible\",\"customer_group\":\"\",\"title\":\"6.50\",\"price\":0,\"sku\":\"len6.50\",\"css_class\":\"len6.50\",\"sort_order\":7,\"option_type_id\":19,\"option_id\":75,\"image_src\":null},{\"order\":8,\"price_type\":\"fixed\",\"is_selected\":0,\"is_disabled\":0,\"row\":[],\"visibility_action\":\"hidden\",\"visibility\":\"visible\",\"customer_group\":\"\",\"title\":\"7.00\",\"price\":0,\"sku\":\"len7.00\",\"css_class\":\"len7.00\",\"sort_order\":8,\"option_type_id\":20,\"option_id\":75,\"image_src\":null},{\"order\":9,\"price_type\":\"fixed\",\"is_selected\":0,\"is_disabled\":0,\"row\":[],\"visibility_action\":\"hidden\",\"visibility\":\"visible\",\"customer_group\":\"\",\"title\":\"7.50\",\"price\":0,\"sku\":\"len7.50\",\"css_class\":\"len7.50\",\"sort_order\":9,\"option_type_id\":21,\"option_id\":75,\"image_src\":null},{\"order\":10,\"price_type\":\"fixed\",\"is_selected\":0,\"is_disabled\":0,\"row\":[],\"visibility_action\":\"hidden\",\"visibility\":\"visible\",\"customer_group\":\"\",\"title\":\"8.00\",\"price\":0,\"sku\":\"len8.00\",\"css_class\":\"len8.00\",\"sort_order\":10,\"option_type_id\":22,\"option_id\":75,\"image_src\":null},{\"order\":11,\"price_type\":\"fixed\",\"is_selected\":0,\"is_disabled\":0,\"row\":[],\"visibility_action\":\"hidden\",\"visibility\":\"visible\",\"customer_group\":\"\",\"title\":\"8.50\",\"price\":0,\"sku\":\"len8.50\",\"css_class\":\"len8.50\",\"sort_order\":11,\"option_type_id\":23,\"option_id\":75,\"image_src\":null},{\"order\":12,\"price_type\":\"fixed\",\"is_selected\":0,\"is_disabled\":0,\"row\":[],\"visibility_action\":\"hidden\",\"visibility\":\"visible\",\"customer_group\":\"\",\"title\":\"9.00\",\"price\":0,\"sku\":\"len9.00\",\"css_class\":\"len9.00\",\"sort_order\":12,\"option_type_id\":24,\"option_id\":75,\"image_src\":null},{\"order\":13,\"price_type\":\"fixed\",\"is_selected\":0,\"is_disabled\":0,\"row\":[],\"visibility_action\":\"hidden\",\"visibility\":\"visible\",\"customer_group\":\"\",\"title\":\"9.50\",\"price\":0,\"sku\":\"len9.50\",\"css_class\":\"len9.50\",\"sort_order\":13,\"option_type_id\":25,\"option_id\":75,\"image_src\":null},{\"order\":14,\"price_type\":\"fixed\",\"is_selected\":0,\"is_disabled\":0,\"row\":[],\"visibility_action\":\"hidden\",\"visibility\":\"visible\",\"customer_group\":\"\",\"title\":\"10.00\",\"price\":0,\"sku\":\"len10.00\",\"css_class\":\"len10.00\",\"sort_order\":14,\"option_type_id\":26,\"option_id\":75,\"image_src\":null},{\"order\":15,\"price_type\":\"fixed\",\"is_selected\":0,\"is_disabled\":0,\"row\":[],\"visibility_action\":\"hidden\",\"visibility\":\"visible\",\"customer_group\":\"\",\"title\":\"10.50\",\"price\":0,\"sku\":\"len10.50\",\"css_class\":\"len10.50\",\"sort_order\":15,\"option_type_id\":27,\"option_id\":75,\"image_src\":null},{\"order\":16,\"price_type\":\"fixed\",\"is_selected\":0,\"is_disabled\":0,\"row\":[],\"visibility_action\":\"hidden\",\"visibility\":\"visible\",\"customer_group\":\"\",\"title\":\"11.00\",\"price\":0,\"sku\":\"len11.00\",\"css_class\":\"len11.00\",\"sort_order\":16,\"option_type_id\":28,\"option_id\":75,\"image_src\":null},{\"order\":17,\"price_type\":\"fixed\",\"is_selected\":0,\"is_disabled\":0,\"row\":[],\"visibility_action\":\"hidden\",\"visibility\":\"visible\",\"customer_group\":\"\",\"title\":\"11.50\",\"price\":0,\"sku\":\"len11.50\",\"css_class\":\"len11.50\",\"sort_order\":17,\"option_type_id\":29,\"option_id\":75,\"image_src\":null},{\"order\":18,\"price_type\":\"fixed\",\"is_selected\":0,\"is_disabled\":0,\"row\":[],\"visibility_action\":\"hidden\",\"visibility\":\"visible\",\"customer_group\":\"\",\"title\":\"12.00\",\"price\":0,\"sku\":\"len12.00\",\"css_class\":\"len12.00\",\"sort_order\":18,\"option_type_id\":30,\"option_id\":75,\"image_src\":null},{\"order\":19,\"price_type\":\"fixed\",\"is_selected\":0,\"is_disabled\":0,\"row\":[],\"visibility_action\":\"hidden\",\"visibility\":\"visible\",\"customer_group\":\"\",\"title\":\"12.50\",\"price\":0,\"sku\":\"len12.50\",\"css_class\":\"len12.50\",\"sort_order\":19,\"option_type_id\":31,\"option_id\":75,\"image_src\":null},{\"order\":20,\"price_type\":\"fixed\",\"is_selected\":0,\"is_disabled\":0,\"row\":[],\"visibility_action\":\"hidden\",\"visibility\":\"visible\",\"customer_group\":\"\",\"title\":\"13.00\",\"price\":0,\"sku\":\"len13.00\",\"css_class\":\"len13.00\",\"sort_order\":20,\"option_type_id\":32,\"option_id\":75,\"image_src\":null},{\"order\":21,\"price_type\":\"fixed\",\"is_selected\":0,\"is_disabled\":0,\"row\":[],\"visibility_action\":\"hidden\",\"visibility\":\"visible\",\"customer_group\":\"\",\"title\":\"13.50\",\"price\":0,\"sku\":\"len13.50\",\"css_class\":\"len13.50\",\"sort_order\":21,\"option_type_id\":33,\"option_id\":75,\"image_src\":null}],\"default_select_title\":\"Choisissez svp\",\"css_class\":\"len\",\"sort_order\":5,\"itoris_option_id\":0,\"img_src\":null}],\"delimiter\":[],\"visibility_action\":\"hidden\",\"visibility\":\"visible\"},{\"order\":3,\"cols\":1,\"rows\":2,\"removable\":1,\"title\":\"\",\"fields\":[null,{\"order\":1,\"removable\":true,\"option_id\":76,\"id\":76,\"is_require\":0,\"hide_on_focus\":1,\"section_order\":3,\"type\":\"field\",\"internal_id\":1006,\"visibility_action\":\"hidden\",\"visibility\":\"visible\",\"customer_group\":\"\",\"title\":\"Quantit\\u00e9 desir\\u00e9e [m3]\",\"sku\":\"tgvalue\",\"css_class\":\"tgvalue\",\"sort_order\":6,\"itoris_option_id\":0,\"img_src\":null},{\"order\":2,\"removable\":true,\"option_id\":77,\"id\":77,\"is_require\":0,\"hide_on_focus\":1,\"section_order\":3,\"type\":\"field\",\"internal_id\":1007,\"visibility_action\":\"hidden\",\"visibility\":\"visible\",\"customer_group\":\"\",\"title\":\"Nombre n\\u00e9cessaire [pce]\",\"sku\":\"qtyreq\",\"css_class\":\"qtyreq\",\"sort_order\":7,\"itoris_option_id\":0,\"img_src\":null}],\"delimiter\":[],\"visibility_action\":\"hidden\",\"visibility\":\"visible\"}]','table_sections','on_product_view','#price-breakdown {border-bottom: 1px solid #c1c1c1; padding-bottom:15px; font-size:18px;}\r\n\r\n#price-label {padding-bottom:0px; font-size:18px;}\r\n\r\n.unitprice input, .actualqty input, .actualdisc input, .nextdisclevel input, .surcharge input, .qtyreq input {border:none; background:none; pointer-events:none;}\r\n\r\n.unitprice div.control, .actualqty div.control, .actualdisc div.control, .nextdisclevel div.control, .surcharge div.control, .qtyreq div.control {display:inline !important}\r\n\r\n.unitprice div.control input, .actualqty div.control input, .actualdisc div.control input, .nextdisclevel div.control input, .surcharge div.control input, .qtyreq div.control input {width:auto !important}\r\n\r\n.unitprice label:after, .actualqty label:after, .actualdisc label:after, .nextdisclevel label:after, .surcharge label:after, .qtyreq label:after {content: \':\'}\r\n\r\n.unitprice label, .actualqty label, .actualdisc label, .nextdisclevel label, .surcharge label, .len label, .wid label, .dep label, .tgvalue label, .qtyreq label {font-weight: bold;}\r\n\r\n.product-info-main .product-add-form {padding-top: 0px !important};\r\n\r\n#itoris_dynamicproductoptions .fieldset {background: none};','// Total Warenwert\r\njQuery(\'.product-info-price\').before(jQuery(\'<div id=\"price-label\"></div>\').append(\'<b>Valeur marchandise</b><br />\'));\r\n\r\n// Function\r\nwindow.updatePriceBreakdown = function() {\r\n\r\n  // Variablen\r\n  var dep = parseFloat(jQuery(\'.dep\').find(\':selected\').text());\r\n  var len = parseFloat(jQuery(\'.len\').find(\':selected\').text());\r\n  var wid = parseFloat(jQuery(\'.wid\').find(\':selected\').text());\r\n  var qty = jQuery(\'#qty\').val();\r\n  var initial_price = parseFloat(jQuery(\'.product-info-main [data-price-type=\"finalPrice\"]\').attr(\'data-price-amount\'));\r\n  var total = parseFloat(jQuery(\'.product-info-main [data-price-type=\"finalPrice\"] .price\').text().replace(/\\s/g, \'\').replace(\'CHF\', \'\'));\r\n  var tgvalue = jQuery(\'.tgvalue input\').val();\r\n\r\n  // Formel: Preislistenpreis\r\n  jQuery(\'.unitprice input\').val(initial_price.toFixed(2));\r\n\r\n  // Formel: aktuell bestellte Menge\r\n  var qty_art = \'1.000\';\r\n  if (dep && len && wid) qty_art = (dep * len * wid * qty * 1e-06).toFixed(3);\r\n  jQuery(\'.actualqty input\').val( qty_art );\r\n\r\n  // Bezeichnung des Qty-Feldes\r\n  jQuery(\'.field.qty span\').replaceWith( \"<span>Nombre (pce)</span>\");\r\n\r\n  // benoetigte Stueckzahl\r\n  var qty_req;\r\n  if (dep && len && wid && tgvalue) qty_req = (Math.ceil(Math.round (tgvalue / (dep * len * wid * 1e-06) + 0.499) / 1) * 1).toFixed(0);\r\n  jQuery(\'.qtyreq input\').val( qty_req );\r\n\r\n}\r\n// Ausfuehrung der Function\r\nwindow.updatePriceBreakdown();\r\njQuery(\'#product_addtocart_form select, #product_addtocart_form input\').on(\'change\', function(){\r\n  jQuery(\'#product-addtocart-button\')[0].disabled = true;\r\n  setTimeout(function(){\r\n    window.updatePriceBreakdown();\r\n    jQuery(\'#product-addtocart-button\')[0].disabled = false;\r\n    }, 300);\r\n  });\r\n'),('20','35',0,'[null,{\"order\":1,\"cols\":1,\"rows\":1,\"removable\":1,\"title\":\"\",\"fields\":[null,{\"order\":1,\"removable\":true,\"option_id\":78,\"id\":78,\"is_require\":\"1\",\"hide_on_focus\":1,\"section_order\":1,\"type\":\"field\",\"internal_id\":2,\"visibility_action\":\"hidden\",\"visibility\":\"visible\",\"customer_group\":\"\",\"title\":\"\\u00c9paisseur [mm]\",\"sku\":\"dep\",\"default_value\":\"11\",\"css_class\":\"dep\",\"sort_order\":1,\"price\":0,\"price_type\":\"fixed\",\"itoris_option_id\":0,\"img_src\":null}],\"moveUp\":{\"_prototypeUID\":4},\"delimiter\":[],\"moveDown\":{\"_prototypeUID\":5},\"visibility_action\":\"hidden\",\"visibility\":\"visible\"}]','table_sections','on_product_view','#price-breakdown {border-bottom: 1px solid #c1c1c1; padding-bottom:15px; font-size:18px;}\r\n\r\n#price-label {padding-bottom:0px; font-size:18px;}\r\n\r\n.dep input {pointer-events:none;}\r\n\r\n.unitprice input, .actualqty input, .actualdisc input, .nextdisclevel input, .surcharge input, .qtyreq input {border:none; background:none; pointer-events:none;}\r\n\r\n.unitprice div.control, .actualqty div.control, .actualdisc div.control, .nextdisclevel div.control, .surcharge div.control, .qtyreq div.control {display:inline !important;}\r\n\r\n.unitprice div.control input, .actualqty div.control input, .actualdisc div.control input, .nextdisclevel div.control input, .surcharge div.control input, .qtyreq div.control input {width:auto !important;}\r\n\r\n.unitprice label:after, .actualqty label:after, .actualdisc label:after, .nextdisclevel label:after, .surcharge label:after, .qtyreq label:after {content: \':\';}\r\n\r\n.unitprice label, .actualqty label, .actualdisc label, .nextdisclevel label, .surcharge label, .len label, .wid label, .dep label, .tgvalue label, .qtyreq label {font-weight: bold;}\r\n\r\n.product-info-main .product-add-form {padding-top: 0px !important;}\r\n\r\n#itoris_dynamicproductoptions .fieldset {background: none;}','');
/*!40000 ALTER TABLE `itoris_dynamicproductoptions_options` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `itoris_dynamicproductoptions_template`
--

DROP TABLE IF EXISTS `itoris_dynamicproductoptions_template`;
CREATE TABLE `itoris_dynamicproductoptions_template` (
  `template_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `store_id` int(10) unsigned NOT NULL,
  `parent_id` int(10) unsigned NOT NULL,
  `name` varchar(255) NOT NULL,
  `configuration` mediumtext NOT NULL,
  `form_style` varchar(30) DEFAULT NULL,
  `appearance` varchar(30) DEFAULT NULL,
  `css_adjustments` text,
  `extra_js` text,
  PRIMARY KEY (`template_id`),
  KEY `store_id` (`store_id`),
  KEY `parent_id` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Table structure for table `itoris_dynamicproductoptions_template_product`
--

DROP TABLE IF EXISTS `itoris_dynamicproductoptions_template_product`;
CREATE TABLE `itoris_dynamicproductoptions_template_product` (
  `template_id` int(10) unsigned NOT NULL,
  `config_id` int(10) unsigned NOT NULL,
  KEY `FK_ITORIS_DOPTIONS_TEMPLATE_PRODUCT_ID` (`template_id`),
  KEY `FK_ITORIS_DOPTIONS_TEMPLATE_CONFIG_ID` (`config_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Table structure for table `itoris_productpriceformula_conditions`
--

DROP TABLE IF EXISTS `itoris_productpriceformula_conditions`;
CREATE TABLE `itoris_productpriceformula_conditions` (
  `condition_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `formula_id` int(10) unsigned NOT NULL,
  `condition` text,
  `price` text NOT NULL,
  `override_weight` tinyint(3) unsigned NOT NULL,
  `weight` text NOT NULL,
  `position` int(10) unsigned NOT NULL,
  PRIMARY KEY (`condition_id`),
  KEY `formula_id` (`formula_id`)
) ENGINE=InnoDB AUTO_INCREMENT=45 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `itoris_productpriceformula_conditions`
--

LOCK TABLES `itoris_productpriceformula_conditions` WRITE;
/*!40000 ALTER TABLE `itoris_productpriceformula_conditions` DISABLE KEYS */;
INSERT INTO `itoris_productpriceformula_conditions` VALUES ('38','33','{dep75.0} && ({len4.00} || {len4.50} || {len5.00}) && {wid110.0}','(1 * 1 * ({len4.00} + {len4.50} + {len5.00}) * 1 * {qty} * {price})',0,'','1'),('39','34',NULL,'{qty} * {price}',0,'','1'),('40','35','{dep11.0} && {len25.00} && {wid1100.0}','(0.001 * 1 * {len25.00} * {wid1100.0} * {qty} * {price})',0,'','1'),('41','36','{dep20.0} && ({len3.00} || {len4.00} || {len5.00}) && ({wid107.0} || {wid135.0} || {wid160.0}) && ((0.001 * 1 * ({len3.00} + {len4.00} + {len5.00}) * ({wid107.0} + {wid135.0} + {wid160.0}) *  {qty}) >= 30)','(0.001 * 1 * ({len3.00} + {len4.00} + {len5.00}) * ({wid107.0} + {wid135.0} + {wid160.0}) * {qty} * {price} * (100-5) / 100)',0,'','1'),('42','36','{dep20.0} && ({len3.00} || {len4.00} || {len5.00}) && ({wid107.0} || {wid135.0} || {wid160.0}) && ((0.001 * 1 * ({len3.00} + {len4.00} + {len5.00}) * ({wid107.0} + {wid135.0} + {wid160.0}) *  {qty}) < 30)','(0.001 * 1 * ({len3.00} + {len4.00} + {len5.00}) * ({wid107.0} + {wid135.0} + {wid160.0}) * {qty} * {price} * (100-0) / 100)',0,'','2'),('43','37','({dep80.0} || {dep90.0} || {dep100.0}) && ({len3.50} || {len4.00} || {len4.50} || {len5.00} || {len5.50} || {len6.00} || {len6.50} || {len7.00} || {len7.50} || {len8.00} || {len8.50} || {len9.00} || {len9.50} || {len10.00} || {len10.50} || {len11.00} || {len11.50} || {len12.00} || {len12.50} || {len13.00} || {len13.50}) && ({wid120.0} || {wid160.0} || {wid200.0} || {wid240.0} || {wid280.0} || {wid320.0} || {wid360.0} || {wid400.0} || {wid440.0})','(0.000001 * ({dep80.0} + {dep90.0} + {dep100.0}) * ({len3.50} + {len4.00} + {len4.50} + {len5.00} + {len5.50} + {len6.00} + {len6.50} + {len7.00} + {len7.50} + {len8.00} + {len8.50} + {len9.00} + {len9.50} + {len10.00} + {len10.50} + {len11.00} + {len11.50} + {len12.00} + {len12.50} + {len13.00} + {len13.50}) * ({wid120.0} + {wid160.0} + {wid200.0} + {wid240.0} + {wid280.0} + {wid320.0} + {wid360.0} + {wid400.0} + {wid440.0}) * {qty} * {price})',0,'','1'),('44','38',NULL,'{dep} * {qty} * {price}',0,'','1');
/*!40000 ALTER TABLE `itoris_productpriceformula_conditions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `itoris_productpriceformula_formula`
--

DROP TABLE IF EXISTS `itoris_productpriceformula_formula`;
CREATE TABLE `itoris_productpriceformula_formula` (
  `formula_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `product_id` int(10) unsigned DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `position` int(10) unsigned DEFAULT NULL,
  `status` int(10) unsigned NOT NULL,
  `active_from` date DEFAULT NULL,
  `active_to` date DEFAULT NULL,
  `run_always` int(10) unsigned NOT NULL,
  `apply_to_total` smallint(5) unsigned NOT NULL,
  `frontend_total` smallint(5) unsigned NOT NULL,
  `disallow_criteria` text NOT NULL,
  PRIMARY KEY (`formula_id`),
  KEY `product_id` (`product_id`)
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `itoris_productpriceformula_formula`
--

LOCK TABLES `itoris_productpriceformula_formula` WRITE;
/*!40000 ALTER TABLE `itoris_productpriceformula_formula` DISABLE KEYS */;
INSERT INTO `itoris_productpriceformula_formula` VALUES ('33','29','cdgé.75.110.ml.site','0','1',NULL,NULL,'0',1,1,'[]'),('34','30','vdfv.3.9.30.site','0','1',NULL,NULL,'1',1,1,'[]'),('35','27','a251.1.25.00.site','0','1',NULL,NULL,'0',1,1,'[]'),('36','31','lmpc.20.107.4.00.site','0','1',NULL,NULL,'0',1,1,'[]'),('37','28','blcév.100 à 120.site','0','1',NULL,NULL,'0',1,1,'[]'),('38','35','Testproduct','0','1',NULL,NULL,'1',1,1,'[]');
/*!40000 ALTER TABLE `itoris_productpriceformula_formula` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `itoris_productpriceformula_group`
--

DROP TABLE IF EXISTS `itoris_productpriceformula_group`;
CREATE TABLE `itoris_productpriceformula_group` (
  `formula_id` int(10) unsigned NOT NULL,
  `group_id` smallint(5) unsigned NOT NULL,
  KEY `formula_id` (`formula_id`),
  KEY `group_id` (`group_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Table structure for table `layout_link`
--

DROP TABLE IF EXISTS `layout_link`;
CREATE TABLE `layout_link` (
  `layout_link_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Link Id',
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Store Id',
  `theme_id` int(10) unsigned NOT NULL COMMENT 'Theme id',
  `layout_update_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Layout Update Id',
  `is_temporary` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'Defines whether Layout Update is Temporary',
  PRIMARY KEY (`layout_link_id`),
  KEY `LAYOUT_LINK_LAYOUT_UPDATE_ID` (`layout_update_id`),
  KEY `LAYOUT_LINK_STORE_ID_THEME_ID_LAYOUT_UPDATE_ID_IS_TEMPORARY` (`store_id`,`theme_id`,`layout_update_id`,`is_temporary`),
  KEY `LAYOUT_LINK_THEME_ID_THEME_THEME_ID` (`theme_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Layout Link';

--
-- Table structure for table `layout_update`
--

DROP TABLE IF EXISTS `layout_update`;
CREATE TABLE `layout_update` (
  `layout_update_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Layout Update Id',
  `handle` varchar(255) DEFAULT NULL COMMENT 'Handle',
  `xml` text COMMENT 'Xml',
  `sort_order` smallint(6) NOT NULL DEFAULT '0' COMMENT 'Sort Order',
  `updated_at` timestamp NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP COMMENT 'Last Update Timestamp',
  PRIMARY KEY (`layout_update_id`),
  KEY `LAYOUT_UPDATE_HANDLE` (`handle`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Layout Updates';

--
-- Table structure for table `mview_state`
--

DROP TABLE IF EXISTS `mview_state`;
CREATE TABLE `mview_state` (
  `state_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'View State Id',
  `view_id` varchar(255) DEFAULT NULL COMMENT 'View Id',
  `mode` varchar(16) DEFAULT 'disabled' COMMENT 'View Mode',
  `status` varchar(16) DEFAULT 'idle' COMMENT 'View Status',
  `updated` datetime DEFAULT NULL COMMENT 'View updated time',
  `version_id` int(10) unsigned DEFAULT NULL COMMENT 'View Version Id',
  PRIMARY KEY (`state_id`),
  KEY `MVIEW_STATE_VIEW_ID` (`view_id`),
  KEY `MVIEW_STATE_MODE` (`mode`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='View State';

--
-- Table structure for table `newsletter_problem`
--

DROP TABLE IF EXISTS `newsletter_problem`;
CREATE TABLE `newsletter_problem` (
  `problem_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Problem Id',
  `subscriber_id` int(10) unsigned DEFAULT NULL COMMENT 'Subscriber Id',
  `queue_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Queue Id',
  `problem_error_code` int(10) unsigned DEFAULT '0' COMMENT 'Problem Error Code',
  `problem_error_text` varchar(200) DEFAULT NULL COMMENT 'Problem Error Text',
  PRIMARY KEY (`problem_id`),
  KEY `NEWSLETTER_PROBLEM_SUBSCRIBER_ID` (`subscriber_id`),
  KEY `NEWSLETTER_PROBLEM_QUEUE_ID` (`queue_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Newsletter Problems';

--
-- Table structure for table `newsletter_queue`
--

DROP TABLE IF EXISTS `newsletter_queue`;
CREATE TABLE `newsletter_queue` (
  `queue_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Queue Id',
  `template_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Template ID',
  `newsletter_type` int(11) DEFAULT NULL COMMENT 'Newsletter Type',
  `newsletter_text` text COMMENT 'Newsletter Text',
  `newsletter_styles` text COMMENT 'Newsletter Styles',
  `newsletter_subject` varchar(200) DEFAULT NULL COMMENT 'Newsletter Subject',
  `newsletter_sender_name` varchar(200) DEFAULT NULL COMMENT 'Newsletter Sender Name',
  `newsletter_sender_email` varchar(200) DEFAULT NULL COMMENT 'Newsletter Sender Email',
  `queue_status` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Queue Status',
  `queue_start_at` timestamp NULL DEFAULT NULL COMMENT 'Queue Start At',
  `queue_finish_at` timestamp NULL DEFAULT NULL COMMENT 'Queue Finish At',
  PRIMARY KEY (`queue_id`),
  KEY `NEWSLETTER_QUEUE_TEMPLATE_ID` (`template_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Newsletter Queue';

--
-- Table structure for table `newsletter_queue_link`
--

DROP TABLE IF EXISTS `newsletter_queue_link`;
CREATE TABLE `newsletter_queue_link` (
  `queue_link_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Queue Link Id',
  `queue_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Queue Id',
  `subscriber_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Subscriber Id',
  `letter_sent_at` timestamp NULL DEFAULT NULL COMMENT 'Letter Sent At',
  PRIMARY KEY (`queue_link_id`),
  KEY `NEWSLETTER_QUEUE_LINK_SUBSCRIBER_ID` (`subscriber_id`),
  KEY `NEWSLETTER_QUEUE_LINK_QUEUE_ID_LETTER_SENT_AT` (`queue_id`,`letter_sent_at`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Newsletter Queue Link';

--
-- Table structure for table `newsletter_queue_store_link`
--

DROP TABLE IF EXISTS `newsletter_queue_store_link`;
CREATE TABLE `newsletter_queue_store_link` (
  `queue_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Queue Id',
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Store Id',
  PRIMARY KEY (`queue_id`,`store_id`),
  KEY `NEWSLETTER_QUEUE_STORE_LINK_STORE_ID` (`store_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Newsletter Queue Store Link';

--
-- Table structure for table `newsletter_subscriber`
--

DROP TABLE IF EXISTS `newsletter_subscriber`;
CREATE TABLE `newsletter_subscriber` (
  `subscriber_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Subscriber Id',
  `store_id` smallint(5) unsigned DEFAULT '0' COMMENT 'Store Id',
  `change_status_at` timestamp NULL DEFAULT NULL COMMENT 'Change Status At',
  `customer_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Customer Id',
  `subscriber_email` varchar(150) DEFAULT NULL COMMENT 'Subscriber Email',
  `subscriber_status` int(11) NOT NULL DEFAULT '0' COMMENT 'Subscriber Status',
  `subscriber_confirm_code` varchar(32) DEFAULT 'NULL' COMMENT 'Subscriber Confirm Code',
  PRIMARY KEY (`subscriber_id`),
  KEY `NEWSLETTER_SUBSCRIBER_CUSTOMER_ID` (`customer_id`),
  KEY `NEWSLETTER_SUBSCRIBER_STORE_ID` (`store_id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8 COMMENT='Newsletter Subscriber';

--
-- Dumping data for table `newsletter_subscriber`
--

LOCK TABLES `newsletter_subscriber` WRITE;
/*!40000 ALTER TABLE `newsletter_subscriber` DISABLE KEYS */;
INSERT INTO `newsletter_subscriber` VALUES ('2',2,NULL,'3','pergamesemsales@bluemail.ch','3','NULL'),('3',2,NULL,'4','mrfenetre@netplus.ch','3','NULL'),('4',2,NULL,'5','momect@bluewin.ch','3','NULL'),('5',2,NULL,'6','zaugg@syscon.ch','3','NULL'),('17',3,NULL,'19','egil.ruefli@gmail.com','3','NULL');
/*!40000 ALTER TABLE `newsletter_subscriber` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `newsletter_template`
--

DROP TABLE IF EXISTS `newsletter_template`;
CREATE TABLE `newsletter_template` (
  `template_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Template ID',
  `template_code` varchar(150) DEFAULT NULL COMMENT 'Template Code',
  `template_text` text COMMENT 'Template Text',
  `template_styles` text COMMENT 'Template Styles',
  `template_type` int(10) unsigned DEFAULT NULL COMMENT 'Template Type',
  `template_subject` varchar(200) DEFAULT NULL COMMENT 'Template Subject',
  `template_sender_name` varchar(200) DEFAULT NULL COMMENT 'Template Sender Name',
  `template_sender_email` varchar(200) DEFAULT NULL COMMENT 'Template Sender Email',
  `template_actual` smallint(5) unsigned DEFAULT '1' COMMENT 'Template Actual',
  `added_at` timestamp NULL DEFAULT NULL COMMENT 'Added At',
  `modified_at` timestamp NULL DEFAULT NULL COMMENT 'Modified At',
  PRIMARY KEY (`template_id`),
  KEY `NEWSLETTER_TEMPLATE_TEMPLATE_ACTUAL` (`template_actual`),
  KEY `NEWSLETTER_TEMPLATE_ADDED_AT` (`added_at`),
  KEY `NEWSLETTER_TEMPLATE_MODIFIED_AT` (`modified_at`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Newsletter Template';

--
-- Table structure for table `oauth_consumer`
--

DROP TABLE IF EXISTS `oauth_consumer`;
CREATE TABLE `oauth_consumer` (
  `entity_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Entity Id',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Created At',
  `updated_at` timestamp NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP COMMENT 'Updated At',
  `name` varchar(255) NOT NULL COMMENT 'Name of consumer',
  `key` varchar(32) NOT NULL COMMENT 'Key code',
  `secret` varchar(32) NOT NULL COMMENT 'Secret code',
  `callback_url` text COMMENT 'Callback URL',
  `rejected_callback_url` text NOT NULL COMMENT 'Rejected callback URL',
  PRIMARY KEY (`entity_id`),
  UNIQUE KEY `OAUTH_CONSUMER_KEY` (`key`),
  UNIQUE KEY `OAUTH_CONSUMER_SECRET` (`secret`),
  KEY `OAUTH_CONSUMER_CREATED_AT` (`created_at`),
  KEY `OAUTH_CONSUMER_UPDATED_AT` (`updated_at`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='OAuth Consumers';

--
-- Table structure for table `oauth_nonce`
--

DROP TABLE IF EXISTS `oauth_nonce`;
CREATE TABLE `oauth_nonce` (
  `nonce` varchar(32) NOT NULL COMMENT 'Nonce String',
  `timestamp` int(10) unsigned NOT NULL COMMENT 'Nonce Timestamp',
  `consumer_id` int(10) unsigned NOT NULL COMMENT 'Consumer ID',
  UNIQUE KEY `OAUTH_NONCE_NONCE_CONSUMER_ID` (`nonce`,`consumer_id`),
  KEY `OAUTH_NONCE_CONSUMER_ID_OAUTH_CONSUMER_ENTITY_ID` (`consumer_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='OAuth Nonce';

--
-- Table structure for table `oauth_token`
--

DROP TABLE IF EXISTS `oauth_token`;
CREATE TABLE `oauth_token` (
  `entity_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Entity ID',
  `consumer_id` int(10) unsigned DEFAULT NULL COMMENT 'Oauth Consumer ID',
  `admin_id` int(10) unsigned DEFAULT NULL COMMENT 'Admin user ID',
  `customer_id` int(10) unsigned DEFAULT NULL COMMENT 'Customer user ID',
  `type` varchar(16) NOT NULL COMMENT 'Token Type',
  `token` varchar(32) NOT NULL COMMENT 'Token',
  `secret` varchar(32) NOT NULL COMMENT 'Token Secret',
  `verifier` varchar(32) DEFAULT NULL COMMENT 'Token Verifier',
  `callback_url` text NOT NULL COMMENT 'Token Callback URL',
  `revoked` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Is Token revoked',
  `authorized` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Is Token authorized',
  `user_type` int(11) DEFAULT NULL COMMENT 'User type',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Token creation timestamp',
  PRIMARY KEY (`entity_id`),
  UNIQUE KEY `OAUTH_TOKEN_TOKEN` (`token`),
  KEY `OAUTH_TOKEN_CONSUMER_ID` (`consumer_id`),
  KEY `OAUTH_TOKEN_ADMIN_ID_ADMIN_USER_USER_ID` (`admin_id`),
  KEY `OAUTH_TOKEN_CUSTOMER_ID_CUSTOMER_ENTITY_ENTITY_ID` (`customer_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='OAuth Tokens';

--
-- Table structure for table `oauth_token_request_log`
--

DROP TABLE IF EXISTS `oauth_token_request_log`;
CREATE TABLE `oauth_token_request_log` (
  `log_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Log Id',
  `user_name` varchar(255) NOT NULL COMMENT 'Customer email or admin login',
  `user_type` smallint(5) unsigned NOT NULL COMMENT 'User type (admin or customer)',
  `failures_count` smallint(5) unsigned DEFAULT '0' COMMENT 'Number of failed authentication attempts in a row',
  `lock_expires_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Lock expiration time',
  PRIMARY KEY (`log_id`),
  UNIQUE KEY `OAUTH_TOKEN_REQUEST_LOG_USER_NAME_USER_TYPE` (`user_name`,`user_type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Log of token request authentication failures.';

--
-- Table structure for table `password_reset_request_event`
--

DROP TABLE IF EXISTS `password_reset_request_event`;
CREATE TABLE `password_reset_request_event` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Entity ID',
  `request_type` smallint(5) unsigned NOT NULL COMMENT 'Type of the event under a security control',
  `account_reference` varchar(255) DEFAULT NULL COMMENT 'An identifier for existing account or another target',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Timestamp when the event occurs',
  `ip` varchar(15) NOT NULL COMMENT 'Remote user IP',
  PRIMARY KEY (`id`),
  KEY `PASSWORD_RESET_REQUEST_EVENT_ACCOUNT_REFERENCE` (`account_reference`),
  KEY `PASSWORD_RESET_REQUEST_EVENT_CREATED_AT` (`created_at`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='Password Reset Request Event under a security control';

--
-- Dumping data for table `password_reset_request_event`
--

LOCK TABLES `password_reset_request_event` WRITE;
/*!40000 ALTER TABLE `password_reset_request_event` DISABLE KEYS */;
INSERT INTO `password_reset_request_event` VALUES ('1',0,'zaugg@syscon.ch','2017-09-23 16:37:55','46.140.0.246'),('2',0,'zaugg@syscon.ch','2017-09-25 11:24:54','77.56.210.23'),('3',1,'egil.ruefli@gmail.com','2017-10-10 08:23:53','213.160.52.133'),('4',0,'egil.ruefli@gmail.com','2017-10-10 08:45:18','213.160.52.133'),('5',0,'egil.ruefli@gmail.com','2017-10-10 08:57:52','213.160.52.133'),('6',0,'egil.ruefli@gmail.com','2017-10-10 09:14:28','213.160.52.133');
/*!40000 ALTER TABLE `password_reset_request_event` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `paypal_billing_agreement`
--

DROP TABLE IF EXISTS `paypal_billing_agreement`;
CREATE TABLE `paypal_billing_agreement` (
  `agreement_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Agreement Id',
  `customer_id` int(10) unsigned NOT NULL COMMENT 'Customer Id',
  `method_code` varchar(32) NOT NULL COMMENT 'Method Code',
  `reference_id` varchar(32) NOT NULL COMMENT 'Reference Id',
  `status` varchar(20) NOT NULL COMMENT 'Status',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Created At',
  `updated_at` timestamp NULL DEFAULT NULL COMMENT 'Updated At',
  `store_id` smallint(5) unsigned DEFAULT NULL COMMENT 'Store Id',
  `agreement_label` varchar(255) DEFAULT NULL COMMENT 'Agreement Label',
  PRIMARY KEY (`agreement_id`),
  KEY `PAYPAL_BILLING_AGREEMENT_CUSTOMER_ID` (`customer_id`),
  KEY `PAYPAL_BILLING_AGREEMENT_STORE_ID` (`store_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Sales Billing Agreement';

--
-- Table structure for table `paypal_billing_agreement_order`
--

DROP TABLE IF EXISTS `paypal_billing_agreement_order`;
CREATE TABLE `paypal_billing_agreement_order` (
  `agreement_id` int(10) unsigned NOT NULL COMMENT 'Agreement Id',
  `order_id` int(10) unsigned NOT NULL COMMENT 'Order Id',
  PRIMARY KEY (`agreement_id`,`order_id`),
  KEY `PAYPAL_BILLING_AGREEMENT_ORDER_ORDER_ID` (`order_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Sales Billing Agreement Order';

--
-- Table structure for table `paypal_cert`
--

DROP TABLE IF EXISTS `paypal_cert`;
CREATE TABLE `paypal_cert` (
  `cert_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Cert Id',
  `website_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Website Id',
  `content` text COMMENT 'Content',
  `updated_at` timestamp NULL DEFAULT NULL COMMENT 'Updated At',
  PRIMARY KEY (`cert_id`),
  KEY `PAYPAL_CERT_WEBSITE_ID` (`website_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Paypal Certificate Table';

--
-- Table structure for table `paypal_payment_transaction`
--

DROP TABLE IF EXISTS `paypal_payment_transaction`;
CREATE TABLE `paypal_payment_transaction` (
  `transaction_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Entity Id',
  `txn_id` varchar(100) DEFAULT NULL COMMENT 'Txn Id',
  `additional_information` blob COMMENT 'Additional Information',
  `created_at` timestamp NULL DEFAULT NULL COMMENT 'Created At',
  PRIMARY KEY (`transaction_id`),
  UNIQUE KEY `PAYPAL_PAYMENT_TRANSACTION_TXN_ID` (`txn_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='PayPal Payflow Link Payment Transaction';

--
-- Table structure for table `paypal_settlement_report`
--

DROP TABLE IF EXISTS `paypal_settlement_report`;
CREATE TABLE `paypal_settlement_report` (
  `report_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Report Id',
  `report_date` timestamp NULL DEFAULT NULL COMMENT 'Report Date',
  `account_id` varchar(64) DEFAULT NULL COMMENT 'Account Id',
  `filename` varchar(24) DEFAULT NULL COMMENT 'Filename',
  `last_modified` timestamp NULL DEFAULT NULL COMMENT 'Last Modified',
  PRIMARY KEY (`report_id`),
  UNIQUE KEY `PAYPAL_SETTLEMENT_REPORT_REPORT_DATE_ACCOUNT_ID` (`report_date`,`account_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Paypal Settlement Report Table';

--
-- Table structure for table `paypal_settlement_report_row`
--

DROP TABLE IF EXISTS `paypal_settlement_report_row`;
CREATE TABLE `paypal_settlement_report_row` (
  `row_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Row Id',
  `report_id` int(10) unsigned NOT NULL COMMENT 'Report Id',
  `transaction_id` varchar(19) DEFAULT NULL COMMENT 'Transaction Id',
  `invoice_id` varchar(127) DEFAULT NULL COMMENT 'Invoice Id',
  `paypal_reference_id` varchar(19) DEFAULT NULL COMMENT 'Paypal Reference Id',
  `paypal_reference_id_type` varchar(3) DEFAULT NULL COMMENT 'Paypal Reference Id Type',
  `transaction_event_code` varchar(5) DEFAULT NULL COMMENT 'Transaction Event Code',
  `transaction_initiation_date` timestamp NULL DEFAULT NULL COMMENT 'Transaction Initiation Date',
  `transaction_completion_date` timestamp NULL DEFAULT NULL COMMENT 'Transaction Completion Date',
  `transaction_debit_or_credit` varchar(2) NOT NULL DEFAULT 'CR' COMMENT 'Transaction Debit Or Credit',
  `gross_transaction_amount` decimal(20,6) NOT NULL DEFAULT '0.000000' COMMENT 'Gross Transaction Amount',
  `gross_transaction_currency` varchar(3) DEFAULT NULL COMMENT 'Gross Transaction Currency',
  `fee_debit_or_credit` varchar(2) DEFAULT NULL COMMENT 'Fee Debit Or Credit',
  `fee_amount` decimal(20,6) NOT NULL DEFAULT '0.000000' COMMENT 'Fee Amount',
  `fee_currency` varchar(3) DEFAULT NULL COMMENT 'Fee Currency',
  `custom_field` varchar(255) DEFAULT NULL COMMENT 'Custom Field',
  `consumer_id` varchar(127) DEFAULT NULL COMMENT 'Consumer Id',
  `payment_tracking_id` varchar(255) DEFAULT NULL COMMENT 'Payment Tracking ID',
  `store_id` varchar(50) DEFAULT NULL COMMENT 'Store ID',
  PRIMARY KEY (`row_id`),
  KEY `PAYPAL_SETTLEMENT_REPORT_ROW_REPORT_ID` (`report_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Paypal Settlement Report Row Table';

--
-- Table structure for table `persistent_session`
--

DROP TABLE IF EXISTS `persistent_session`;
CREATE TABLE `persistent_session` (
  `persistent_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Session id',
  `key` varchar(50) NOT NULL COMMENT 'Unique cookie key',
  `customer_id` int(10) unsigned DEFAULT NULL COMMENT 'Customer id',
  `website_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Website ID',
  `info` text COMMENT 'Session Data',
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Updated At',
  PRIMARY KEY (`persistent_id`),
  UNIQUE KEY `PERSISTENT_SESSION_KEY` (`key`),
  UNIQUE KEY `PERSISTENT_SESSION_CUSTOMER_ID` (`customer_id`),
  KEY `PERSISTENT_SESSION_UPDATED_AT` (`updated_at`),
  KEY `PERSISTENT_SESSION_WEBSITE_ID_STORE_WEBSITE_WEBSITE_ID` (`website_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Persistent Session';

--
-- Table structure for table `product_alert_price`
--

DROP TABLE IF EXISTS `product_alert_price`;
CREATE TABLE `product_alert_price` (
  `alert_price_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Product alert price id',
  `customer_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Customer id',
  `product_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Product id',
  `price` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Price amount',
  `website_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Website id',
  `add_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Product alert add date',
  `last_send_date` timestamp NULL DEFAULT NULL COMMENT 'Product alert last send date',
  `send_count` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Product alert send count',
  `status` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Product alert status',
  PRIMARY KEY (`alert_price_id`),
  KEY `PRODUCT_ALERT_PRICE_CUSTOMER_ID` (`customer_id`),
  KEY `PRODUCT_ALERT_PRICE_PRODUCT_ID` (`product_id`),
  KEY `PRODUCT_ALERT_PRICE_WEBSITE_ID` (`website_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Product Alert Price';

--
-- Table structure for table `product_alert_stock`
--

DROP TABLE IF EXISTS `product_alert_stock`;
CREATE TABLE `product_alert_stock` (
  `alert_stock_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Product alert stock id',
  `customer_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Customer id',
  `product_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Product id',
  `website_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Website id',
  `add_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Product alert add date',
  `send_date` timestamp NULL DEFAULT NULL COMMENT 'Product alert send date',
  `send_count` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Send Count',
  `status` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Product alert status',
  PRIMARY KEY (`alert_stock_id`),
  KEY `PRODUCT_ALERT_STOCK_CUSTOMER_ID` (`customer_id`),
  KEY `PRODUCT_ALERT_STOCK_PRODUCT_ID` (`product_id`),
  KEY `PRODUCT_ALERT_STOCK_WEBSITE_ID` (`website_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Product Alert Stock';

--
-- Table structure for table `quote`
--

DROP TABLE IF EXISTS `quote`;
CREATE TABLE `quote` (
  `entity_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Entity Id',
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Store Id',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Created At',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP COMMENT 'Updated At',
  `converted_at` timestamp NULL DEFAULT NULL COMMENT 'Converted At',
  `is_active` smallint(5) unsigned DEFAULT '1' COMMENT 'Is Active',
  `is_virtual` smallint(5) unsigned DEFAULT '0' COMMENT 'Is Virtual',
  `is_multi_shipping` smallint(5) unsigned DEFAULT '0' COMMENT 'Is Multi Shipping',
  `items_count` int(10) unsigned DEFAULT '0' COMMENT 'Items Count',
  `items_qty` decimal(12,4) DEFAULT '0.0000' COMMENT 'Items Qty',
  `orig_order_id` int(10) unsigned DEFAULT '0' COMMENT 'Orig Order Id',
  `store_to_base_rate` decimal(12,4) DEFAULT '0.0000' COMMENT 'Store To Base Rate',
  `store_to_quote_rate` decimal(12,4) DEFAULT '0.0000' COMMENT 'Store To Quote Rate',
  `base_currency_code` varchar(255) DEFAULT NULL COMMENT 'Base Currency Code',
  `store_currency_code` varchar(255) DEFAULT NULL COMMENT 'Store Currency Code',
  `quote_currency_code` varchar(255) DEFAULT NULL COMMENT 'Quote Currency Code',
  `grand_total` decimal(12,4) DEFAULT '0.0000' COMMENT 'Grand Total',
  `base_grand_total` decimal(12,4) DEFAULT '0.0000' COMMENT 'Base Grand Total',
  `checkout_method` varchar(255) DEFAULT NULL COMMENT 'Checkout Method',
  `customer_id` int(10) unsigned DEFAULT NULL COMMENT 'Customer Id',
  `customer_tax_class_id` int(10) unsigned DEFAULT NULL COMMENT 'Customer Tax Class Id',
  `customer_group_id` int(10) unsigned DEFAULT '0' COMMENT 'Customer Group Id',
  `customer_email` varchar(255) DEFAULT NULL COMMENT 'Customer Email',
  `customer_prefix` varchar(40) DEFAULT NULL COMMENT 'Customer Prefix',
  `customer_firstname` varchar(255) DEFAULT NULL COMMENT 'Customer Firstname',
  `customer_middlename` varchar(40) DEFAULT NULL COMMENT 'Customer Middlename',
  `customer_lastname` varchar(255) DEFAULT NULL COMMENT 'Customer Lastname',
  `customer_suffix` varchar(40) DEFAULT NULL COMMENT 'Customer Suffix',
  `customer_dob` datetime DEFAULT NULL COMMENT 'Customer Dob',
  `customer_note` varchar(255) DEFAULT NULL COMMENT 'Customer Note',
  `customer_note_notify` smallint(5) unsigned DEFAULT '1' COMMENT 'Customer Note Notify',
  `customer_is_guest` smallint(5) unsigned DEFAULT '0' COMMENT 'Customer Is Guest',
  `remote_ip` varchar(32) DEFAULT NULL COMMENT 'Remote Ip',
  `applied_rule_ids` varchar(255) DEFAULT NULL COMMENT 'Applied Rule Ids',
  `reserved_order_id` varchar(64) DEFAULT NULL COMMENT 'Reserved Order Id',
  `password_hash` varchar(255) DEFAULT NULL COMMENT 'Password Hash',
  `coupon_code` varchar(255) DEFAULT NULL COMMENT 'Coupon Code',
  `global_currency_code` varchar(255) DEFAULT NULL COMMENT 'Global Currency Code',
  `base_to_global_rate` decimal(12,4) DEFAULT NULL COMMENT 'Base To Global Rate',
  `base_to_quote_rate` decimal(12,4) DEFAULT NULL COMMENT 'Base To Quote Rate',
  `customer_taxvat` varchar(255) DEFAULT NULL COMMENT 'Customer Taxvat',
  `customer_gender` varchar(255) DEFAULT NULL COMMENT 'Customer Gender',
  `subtotal` decimal(12,4) DEFAULT NULL COMMENT 'Subtotal',
  `base_subtotal` decimal(12,4) DEFAULT NULL COMMENT 'Base Subtotal',
  `subtotal_with_discount` decimal(12,4) DEFAULT NULL COMMENT 'Subtotal With Discount',
  `base_subtotal_with_discount` decimal(12,4) DEFAULT NULL COMMENT 'Base Subtotal With Discount',
  `is_changed` int(10) unsigned DEFAULT NULL COMMENT 'Is Changed',
  `trigger_recollect` smallint(6) NOT NULL DEFAULT '0' COMMENT 'Trigger Recollect',
  `ext_shipping_info` text COMMENT 'Ext Shipping Info',
  `is_persistent` smallint(5) unsigned DEFAULT '0' COMMENT 'Is Quote Persistent',
  `gift_message_id` int(11) DEFAULT NULL COMMENT 'Gift Message Id',
  PRIMARY KEY (`entity_id`),
  KEY `QUOTE_CUSTOMER_ID_STORE_ID_IS_ACTIVE` (`customer_id`,`store_id`,`is_active`),
  KEY `QUOTE_STORE_ID` (`store_id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8 COMMENT='Sales Flat Quote';

--
-- Dumping data for table `quote`
--

LOCK TABLES `quote` WRITE;
/*!40000 ALTER TABLE `quote` DISABLE KEYS */;
INSERT INTO `quote` VALUES ('1',2,'2017-09-25 08:23:32','2017-09-25 18:55:44',NULL,0,0,0,'0','0.0000','0','0.0000','0.0000','CHF','CHF','CHF','200.0000','200.0000',NULL,'7','3','2','egil.ruefli@gmail.com',NULL,'Egil',NULL,'Ruefli',NULL,NULL,NULL,1,0,'213.160.52.133',NULL,'2000000001',NULL,NULL,'CHF','1.0000','1.0000',NULL,'1','175.0000','175.0000','175.0000','175.0000','1',0,NULL,0,NULL),('2',2,'2017-09-25 11:27:39','2017-09-26 16:23:58',NULL,0,0,0,'0','0.0000','0','0.0000','0.0000','CHF','CHF','CHF','2957.5000','2957.5000',NULL,'6','3','8','zaugg@syscon.ch',NULL,'29999',NULL,'Syscon Systemberatung AG',NULL,NULL,NULL,1,0,'77.56.210.23',NULL,'2000000002',NULL,NULL,'CHF','1.0000','1.0000',NULL,'1','2362.5000','2362.5000','2362.5000','2362.5000','1',0,NULL,0,NULL),('3',2,'2017-09-25 19:30:37','2017-10-04 14:33:19',NULL,0,0,0,'0','0.0000','0','0.0000','0.0000','CHF','CHF','CHF','1364.0000','1364.0000',NULL,'6','3','8','zaugg@syscon.ch',NULL,'29999',NULL,'Syscon Systemberatung AG',NULL,NULL,NULL,1,0,'77.56.210.23',NULL,'2000000003',NULL,NULL,'CHF','1.0000','1.0000',NULL,'3','1364.0000','1364.0000','1364.0000','1364.0000','1',1,NULL,0,NULL),('5',2,'2017-09-27 08:41:56','2017-09-28 09:15:07',NULL,1,0,0,'0','0.0000','0','0.0000','0.0000','CHF','CHF','CHF','0.0000','0.0000',NULL,'7',NULL,'8','egil.ruefli@gmail.com',NULL,'Egil',NULL,'Ruefli',NULL,NULL,NULL,1,0,'213.160.52.133',NULL,NULL,NULL,NULL,'CHF','1.0000','1.0000',NULL,'1','0.0000','0.0000','0.0000','0.0000','1',0,NULL,0,NULL),('6',2,'2017-09-27 18:15:37','2017-10-04 14:33:19',NULL,0,0,0,'0','0.0000','0','0.0000','0.0000','CHF','CHF','CHF','1336.5000','1336.5000',NULL,'6','3','8','zaugg@syscon.ch',NULL,'29999',NULL,'Syscon Systemberatung AG',NULL,NULL,NULL,1,0,'46.140.0.208',NULL,'2000000004',NULL,NULL,'CHF','1.0000','1.0000',NULL,'3','1336.5000','1336.5000','1336.5000','1336.5000','1',1,NULL,0,NULL),('7',2,'2017-10-01 10:16:16','2017-10-04 14:33:20',NULL,0,0,0,'0','0.0000','0','0.0000','0.0000','CHF','CHF','CHF','307.0000','307.0000',NULL,'6','3','8','zaugg@syscon.ch',NULL,'29999',NULL,'Syscon Systemberatung AG',NULL,NULL,NULL,1,0,'77.56.210.23',NULL,'2000000005',NULL,NULL,'CHF','1.0000','1.0000',NULL,'3','307.0000','307.0000','307.0000','307.0000','1',0,NULL,0,NULL),('8',2,'2017-10-01 11:55:20','2017-10-04 14:33:20',NULL,0,0,0,'0','0.0000','0','0.0000','0.0000','CHF','CHF','CHF','1950.5000','1950.5000',NULL,'6','3','8','zaugg@syscon.ch',NULL,'29999',NULL,'Syscon Systemberatung AG',NULL,NULL,NULL,1,0,'77.56.210.23',NULL,'2000000006',NULL,NULL,'CHF','1.0000','1.0000',NULL,'3','1950.5000','1950.5000','1950.5000','1950.5000','1',1,NULL,0,NULL),('9',2,'2017-10-02 07:51:53','2017-10-04 14:33:20',NULL,0,0,0,'0','0.0000','0','0.0000','0.0000','CHF','CHF','CHF','926.2900','926.2900',NULL,'6','3','8','zaugg@syscon.ch',NULL,'29999',NULL,'Syscon Systemberatung AG',NULL,NULL,NULL,1,0,'77.56.210.23',NULL,'2000000007',NULL,NULL,'CHF','1.0000','1.0000',NULL,'3','926.2900','926.2900','926.2900','926.2900','1',0,NULL,0,NULL),('10',2,'2017-10-02 07:55:41','2017-10-04 14:33:21',NULL,0,0,0,'0','0.0000','0','0.0000','0.0000','CHF','CHF','CHF','1749.0000','1749.0000',NULL,'6','3','8','zaugg@syscon.ch',NULL,'29999',NULL,'Syscon Systemberatung AG',NULL,NULL,NULL,1,0,'77.56.210.23',NULL,'2000000008',NULL,NULL,'CHF','1.0000','1.0000',NULL,'3','1749.0000','1749.0000','1749.0000','1749.0000','1',1,NULL,0,NULL),('11',2,'2017-10-02 16:35:56','2017-10-04 14:33:21',NULL,0,0,0,'0','0.0000','0','0.0000','0.0000','CHF','CHF','CHF','2918.4000','2918.4000',NULL,'6','3','8','zaugg@syscon.ch',NULL,'29999',NULL,'Syscon Systemberatung AG',NULL,NULL,NULL,1,0,'77.56.210.23',NULL,'2000000009',NULL,NULL,'CHF','1.0000','1.0000',NULL,'3','2918.4000','2918.4000','2918.4000','2918.4000','1',1,NULL,0,NULL),('12',2,'2017-10-03 10:10:17','2017-10-04 15:59:10',NULL,0,0,0,'2','52.0000','0','0.0000','0.0000','CHF','CHF','CHF','2916.9100','2916.9100',NULL,'6','3','8','zaugg@syscon.ch',NULL,'29999',NULL,'Syscon Systemberatung AG',NULL,NULL,NULL,1,0,'77.56.210.23',NULL,'2000000010',NULL,NULL,'CHF','1.0000','1.0000',NULL,'3','2916.9100','2916.9100','2916.9100','2916.9100','1',0,NULL,0,NULL),('13',2,'2017-10-05 09:18:30','2017-10-05 09:21:58',NULL,0,0,0,'1','135.0000','0','0.0000','0.0000','CHF','CHF','CHF','2103.6200','2103.6200',NULL,'6','3','8','zaugg@syscon.ch',NULL,'29999',NULL,'Syscon Systemberatung AG',NULL,NULL,NULL,1,0,'77.56.210.23',NULL,'2000000011',NULL,NULL,'CHF','1.0000','1.0000',NULL,'3','2103.6200','2103.6200','2103.6200','2103.6200','1',0,NULL,0,NULL),('14',2,'2017-10-05 09:26:27','2017-10-05 09:27:01',NULL,0,0,0,'1','6.0000','0','0.0000','0.0000','CHF','CHF','CHF','722.7000','722.7000',NULL,'6','3','8','zaugg@syscon.ch',NULL,'29999',NULL,'Syscon Systemberatung AG',NULL,NULL,NULL,1,0,'77.56.210.23',NULL,'2000000012',NULL,NULL,'CHF','1.0000','1.0000',NULL,'3','722.7000','722.7000','722.7000','722.7000','1',0,NULL,0,NULL),('15',2,'2017-10-05 20:44:40','2017-10-05 20:53:37',NULL,1,0,0,'1','1.0000','0','0.0000','0.0000','CHF','CHF','CHF','34.0000','34.0000',NULL,NULL,'3','0',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,'46.140.2.101',NULL,NULL,NULL,NULL,'CHF','1.0000','1.0000',NULL,NULL,'34.0000','34.0000','34.0000','34.0000','1',0,NULL,0,NULL),('16',2,'2017-10-08 19:30:30','2017-10-08 19:31:28',NULL,1,0,0,'0','0.0000','0','0.0000','0.0000','CHF','CHF','CHF','0.0000','0.0000',NULL,NULL,'3','0',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,'213.160.52.133',NULL,NULL,NULL,NULL,'CHF','1.0000','1.0000',NULL,NULL,'0.0000','0.0000','0.0000','0.0000','1',0,NULL,0,NULL),('17',2,'2017-10-09 07:20:28','2017-10-09 07:42:11',NULL,1,0,0,'0','0.0000','0','0.0000','0.0000','CHF','CHF','CHF','0.0000','0.0000',NULL,NULL,'3','0',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,'213.160.52.133',NULL,NULL,NULL,NULL,'CHF','1.0000','1.0000',NULL,NULL,'0.0000','0.0000','0.0000','0.0000','1',0,NULL,0,NULL),('18',2,'2017-10-09 13:41:21','2017-10-09 13:42:43',NULL,1,0,0,'2','2.0000','0','0.0000','0.0000','CHF','CHF','CHF','61.4000','61.4000',NULL,'6','3','8','zaugg@syscon.ch',NULL,'29999',NULL,'Syscon Systemberatung AG',NULL,NULL,NULL,1,0,'213.160.52.133',NULL,NULL,NULL,NULL,'CHF','1.0000','1.0000',NULL,'3','61.4000','61.4000','61.4000','61.4000','1',0,NULL,0,NULL),('19',2,'2017-10-10 08:24:48','0000-00-00 00:00:00',NULL,1,0,0,'0','0.0000','0','0.0000','0.0000','CHF','CHF','CHF','0.0000','0.0000',NULL,'19',NULL,'5','egil.ruefli@gmail.com',NULL,'Egil',NULL,'Ruefli',NULL,NULL,NULL,1,0,'213.160.52.133',NULL,NULL,NULL,NULL,'CHF','1.0000','1.0000',NULL,'3','0.0000','0.0000','0.0000','0.0000','1',0,NULL,0,NULL);
/*!40000 ALTER TABLE `quote` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `quote_address`
--

DROP TABLE IF EXISTS `quote_address`;
CREATE TABLE `quote_address` (
  `address_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Address Id',
  `quote_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Quote Id',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Created At',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP COMMENT 'Updated At',
  `customer_id` int(10) unsigned DEFAULT NULL COMMENT 'Customer Id',
  `save_in_address_book` smallint(6) DEFAULT '0' COMMENT 'Save In Address Book',
  `customer_address_id` int(10) unsigned DEFAULT NULL COMMENT 'Customer Address Id',
  `address_type` varchar(10) DEFAULT NULL COMMENT 'Address Type',
  `email` varchar(255) DEFAULT NULL COMMENT 'Email',
  `prefix` varchar(40) DEFAULT NULL COMMENT 'Prefix',
  `firstname` varchar(255) DEFAULT NULL COMMENT 'Firstname',
  `middlename` varchar(40) DEFAULT NULL COMMENT 'Middlename',
  `lastname` varchar(255) DEFAULT NULL COMMENT 'Lastname',
  `suffix` varchar(40) DEFAULT NULL COMMENT 'Suffix',
  `company` varchar(255) DEFAULT NULL COMMENT 'Company',
  `street` varchar(255) DEFAULT NULL COMMENT 'Street',
  `city` varchar(40) DEFAULT NULL COMMENT 'City',
  `region` varchar(40) DEFAULT NULL COMMENT 'Region',
  `region_id` int(10) unsigned DEFAULT NULL COMMENT 'Region Id',
  `postcode` varchar(20) DEFAULT NULL COMMENT 'Postcode',
  `country_id` varchar(30) DEFAULT NULL COMMENT 'Country Id',
  `telephone` varchar(20) DEFAULT NULL COMMENT 'Phone Number',
  `fax` varchar(20) DEFAULT NULL COMMENT 'Fax',
  `same_as_billing` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Same As Billing',
  `collect_shipping_rates` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Collect Shipping Rates',
  `shipping_method` varchar(40) DEFAULT NULL COMMENT 'Shipping Method',
  `shipping_description` varchar(255) DEFAULT NULL COMMENT 'Shipping Description',
  `weight` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Weight',
  `subtotal` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Subtotal',
  `base_subtotal` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Base Subtotal',
  `subtotal_with_discount` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Subtotal With Discount',
  `base_subtotal_with_discount` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Base Subtotal With Discount',
  `tax_amount` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Tax Amount',
  `base_tax_amount` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Base Tax Amount',
  `shipping_amount` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Shipping Amount',
  `base_shipping_amount` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Base Shipping Amount',
  `shipping_tax_amount` decimal(12,4) DEFAULT NULL COMMENT 'Shipping Tax Amount',
  `base_shipping_tax_amount` decimal(12,4) DEFAULT NULL COMMENT 'Base Shipping Tax Amount',
  `discount_amount` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Discount Amount',
  `base_discount_amount` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Base Discount Amount',
  `grand_total` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Grand Total',
  `base_grand_total` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Base Grand Total',
  `customer_notes` text COMMENT 'Customer Notes',
  `applied_taxes` text COMMENT 'Applied Taxes',
  `discount_description` varchar(255) DEFAULT NULL COMMENT 'Discount Description',
  `shipping_discount_amount` decimal(12,4) DEFAULT NULL COMMENT 'Shipping Discount Amount',
  `base_shipping_discount_amount` decimal(12,4) DEFAULT NULL COMMENT 'Base Shipping Discount Amount',
  `subtotal_incl_tax` decimal(12,4) DEFAULT NULL COMMENT 'Subtotal Incl Tax',
  `base_subtotal_total_incl_tax` decimal(12,4) DEFAULT NULL COMMENT 'Base Subtotal Total Incl Tax',
  `discount_tax_compensation_amount` decimal(12,4) DEFAULT NULL COMMENT 'Discount Tax Compensation Amount',
  `base_discount_tax_compensation_amount` decimal(12,4) DEFAULT NULL COMMENT 'Base Discount Tax Compensation Amount',
  `shipping_discount_tax_compensation_amount` decimal(12,4) DEFAULT NULL COMMENT 'Shipping Discount Tax Compensation Amount',
  `base_shipping_discount_tax_compensation_amnt` decimal(12,4) DEFAULT NULL COMMENT 'Base Shipping Discount Tax Compensation Amount',
  `shipping_incl_tax` decimal(12,4) DEFAULT NULL COMMENT 'Shipping Incl Tax',
  `base_shipping_incl_tax` decimal(12,4) DEFAULT NULL COMMENT 'Base Shipping Incl Tax',
  `free_shipping` smallint(6) DEFAULT NULL,
  `vat_id` text COMMENT 'Vat Id',
  `vat_is_valid` smallint(6) DEFAULT NULL COMMENT 'Vat Is Valid',
  `vat_request_id` text COMMENT 'Vat Request Id',
  `vat_request_date` text COMMENT 'Vat Request Date',
  `vat_request_success` smallint(6) DEFAULT NULL COMMENT 'Vat Request Success',
  `gift_message_id` int(11) DEFAULT NULL COMMENT 'Gift Message Id',
  PRIMARY KEY (`address_id`),
  KEY `QUOTE_ADDRESS_QUOTE_ID` (`quote_id`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8 COMMENT='Sales Flat Quote Address';

--
-- Dumping data for table `quote_address`
--

LOCK TABLES `quote_address` WRITE;
/*!40000 ALTER TABLE `quote_address` DISABLE KEYS */;
INSERT INTO `quote_address` VALUES ('2','1','2017-09-25 08:23:32','2017-09-25 14:50:57','7',0,'11','shipping','egil.ruefli@gmail.com',NULL,'Egil',NULL,'Ruefli',NULL,'Syscon Systemberatungs AG','Hardturmstrasse 269','Zürich',NULL,NULL,'8005','CH','044 454 20 16',NULL,0,0,'flatrate_flatrate','Flat Rate - Fixed','0.0000','175.0000','175.0000','175.0000','175.0000','0.0000','0.0000','25.0000','25.0000','0.0000','0.0000','0.0000','0.0000','200.0000','200.0000',NULL,'a:0:{}',NULL,'0.0000','0.0000','175.0000','175.0000','0.0000','0.0000','0.0000',NULL,'25.0000','25.0000',0,NULL,NULL,NULL,NULL,NULL,NULL),('4','2','2017-09-25 11:27:40','2017-09-25 19:27:34','6',0,'10','shipping','zaugg@syscon.ch',NULL,'29999',NULL,'Syscon Systemberatung AG',NULL,NULL,'Zweierstrasse 129','Zürich','Zürich','129','8036','CH','44 454 20 10','44 715 26 90',0,0,'flatrate_flatrate','Flat Rate - Fixed','0.0000','2362.5000','2362.5000','2362.5000','2362.5000','0.0000','0.0000','595.0000','595.0000','0.0000','0.0000','0.0000','0.0000','2957.5000','2957.5000',NULL,'a:0:{}',NULL,'0.0000','0.0000','2362.5000','2362.5000','0.0000','0.0000','0.0000',NULL,'595.0000','595.0000',0,NULL,NULL,NULL,NULL,NULL,NULL),('5','1','2017-09-25 14:50:57','0000-00-00 00:00:00','7',0,'11','billing','egil.ruefli@gmail.com',NULL,'Egil',NULL,'Ruefli',NULL,'Syscon Systemberatungs AG','Hardturmstrasse 269','Zürich',NULL,NULL,'8005','CH','044 454 20 16',NULL,0,0,NULL,NULL,'0.0000','0.0000','0.0000','0.0000','0.0000','0.0000','0.0000','0.0000','0.0000',NULL,NULL,'0.0000','0.0000','0.0000','0.0000',NULL,'N;',NULL,NULL,NULL,'0.0000',NULL,'0.0000','0.0000','0.0000',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('6','2','2017-09-25 19:27:34','0000-00-00 00:00:00','6',0,'10','billing','zaugg@syscon.ch',NULL,'29999',NULL,'Syscon Systemberatung AG',NULL,NULL,'Zweierstrasse 129','Zürich','ZH','0','8036','CH','44 454 20 10','44 715 26 90',0,0,NULL,NULL,'0.0000','0.0000','0.0000','0.0000','0.0000','0.0000','0.0000','0.0000','0.0000',NULL,NULL,'0.0000','0.0000','0.0000','0.0000',NULL,'N;',NULL,NULL,NULL,'0.0000',NULL,'0.0000','0.0000','0.0000',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('8','3','2017-09-25 19:30:37','2017-09-27 16:24:08','6',0,'10','shipping','zaugg@syscon.ch',NULL,'29999',NULL,'Syscon Systemberatung AG',NULL,NULL,'Zweierstrasse 129','Zürich','Zürich','129','8036','CH','44 454 20 10','44 715 26 90',0,0,'freeshipping_freeshipping','Livraison gratuite - Gratuite','0.0000','1364.0000','1364.0000','1364.0000','1364.0000','0.0000','0.0000','0.0000','0.0000','0.0000','0.0000','0.0000','0.0000','1364.0000','1364.0000',NULL,'a:0:{}',NULL,'0.0000','0.0000','1364.0000','1364.0000','0.0000','0.0000','0.0000',NULL,'0.0000','0.0000',0,NULL,NULL,NULL,NULL,NULL,NULL),('11','5','2017-09-27 08:41:56','0000-00-00 00:00:00','7',0,'11','billing','egil.ruefli@gmail.com',NULL,'Egil',NULL,'Ruefli',NULL,'Syscon Systemberatungs AG','Hardturmstrasse 269','Zürich',NULL,NULL,'8005','CH','044 454 20 16',NULL,0,0,NULL,NULL,'0.0000','0.0000','0.0000','0.0000','0.0000','0.0000','0.0000','0.0000','0.0000',NULL,NULL,'0.0000','0.0000','0.0000','0.0000',NULL,'N;',NULL,NULL,NULL,'0.0000',NULL,'0.0000','0.0000','0.0000',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('12','5','2017-09-27 08:41:56','2017-09-27 09:46:33','7',0,'11','shipping','egil.ruefli@gmail.com',NULL,'Egil',NULL,'Ruefli',NULL,'Syscon Systemberatungs AG','Hardturmstrasse 269','Zürich',NULL,'0','8005','CH','044 454 20 16',NULL,0,1,NULL,NULL,'0.0000','0.0000','0.0000','44.0000','44.0000','0.0000','0.0000','0.0000','0.0000','0.0000','0.0000','0.0000','0.0000','0.0000','0.0000',NULL,'N;',NULL,'0.0000','0.0000','0.0000','44.0000','0.0000','0.0000','0.0000',NULL,'0.0000','0.0000',0,NULL,NULL,NULL,NULL,NULL,NULL),('13','3','2017-09-27 16:24:08','0000-00-00 00:00:00','6',0,'10','billing','zaugg@syscon.ch',NULL,'29999',NULL,'Syscon Systemberatung AG',NULL,NULL,'Zweierstrasse 129','Zürich','ZH','0','8036','CH','44 454 20 10','44 715 26 90',0,0,NULL,NULL,'0.0000','0.0000','0.0000','0.0000','0.0000','0.0000','0.0000','0.0000','0.0000',NULL,NULL,'0.0000','0.0000','0.0000','0.0000',NULL,'N;',NULL,NULL,NULL,'0.0000',NULL,'0.0000','0.0000','0.0000',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('15','6','2017-09-27 18:15:37','2017-09-29 17:03:37','6',0,'10','shipping','zaugg@syscon.ch',NULL,'29999',NULL,'Syscon Systemberatung AG',NULL,NULL,'Zweierstrasse 129','Zürich','Zürich','129','8036','CH','44 454 20 10','44 715 26 90',0,0,'freeshipping_freeshipping','Livraison gratuite - Gratuite','0.0000','1336.5000','1336.5000','1336.5000','1336.5000','0.0000','0.0000','0.0000','0.0000','0.0000','0.0000','0.0000','0.0000','1336.5000','1336.5000',NULL,'a:0:{}',NULL,'0.0000','0.0000','1336.5000','1336.5000','0.0000','0.0000','0.0000',NULL,'0.0000','0.0000',0,NULL,NULL,NULL,NULL,NULL,NULL),('16','6','2017-09-29 17:03:37','0000-00-00 00:00:00','6',0,'10','billing','zaugg@syscon.ch',NULL,'29999',NULL,'Syscon Systemberatung AG',NULL,NULL,'Zweierstrasse 129','Zürich','ZH','0','8036','CH','44 454 20 10','44 715 26 90',0,0,NULL,NULL,'0.0000','0.0000','0.0000','0.0000','0.0000','0.0000','0.0000','0.0000','0.0000',NULL,NULL,'0.0000','0.0000','0.0000','0.0000',NULL,'N;',NULL,NULL,NULL,'0.0000',NULL,'0.0000','0.0000','0.0000',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('18','7','2017-10-01 10:16:16','2017-10-01 10:22:57','6',0,'10','shipping','zaugg@syscon.ch',NULL,'29999',NULL,'Syscon Systemberatung AG',NULL,NULL,'Zweierstrasse 129','Zürich','Zürich','129','8036','CH','44 454 20 10','44 715 26 90',0,0,'freeshipping_freeshipping','Livraison gratuite - Gratuite','0.0000','307.0000','307.0000','307.0000','307.0000','0.0000','0.0000','0.0000','0.0000','0.0000','0.0000','0.0000','0.0000','307.0000','307.0000',NULL,'a:0:{}',NULL,'0.0000','0.0000','307.0000','307.0000','0.0000','0.0000','0.0000',NULL,'0.0000','0.0000',0,NULL,NULL,NULL,NULL,NULL,NULL),('19','7','2017-10-01 10:22:57','0000-00-00 00:00:00','6',0,'10','billing','zaugg@syscon.ch',NULL,'29999',NULL,'Syscon Systemberatung AG',NULL,NULL,'Zweierstrasse 129','Zürich','ZH','0','8036','CH','44 454 20 10','44 715 26 90',0,0,NULL,NULL,'0.0000','0.0000','0.0000','0.0000','0.0000','0.0000','0.0000','0.0000','0.0000',NULL,NULL,'0.0000','0.0000','0.0000','0.0000',NULL,'N;',NULL,NULL,NULL,'0.0000',NULL,'0.0000','0.0000','0.0000',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('21','8','2017-10-01 11:55:20','2017-10-02 07:48:33','6',0,'10','shipping','zaugg@syscon.ch',NULL,'29999',NULL,'Syscon Systemberatung AG',NULL,NULL,'Zweierstrasse 129','Zürich','Zürich','129','8036','CH','44 454 20 10','44 715 26 90',0,0,'freeshipping_freeshipping','Livraison gratuite - Gratuite','0.0000','1950.5000','1950.5000','1950.5000','1950.5000','0.0000','0.0000','0.0000','0.0000','0.0000','0.0000','0.0000','0.0000','1950.5000','1950.5000',NULL,'a:0:{}',NULL,'0.0000','0.0000','1950.5000','1950.5000','0.0000','0.0000','0.0000',NULL,'0.0000','0.0000',0,NULL,NULL,NULL,NULL,NULL,NULL),('22','8','2017-10-02 07:48:33','0000-00-00 00:00:00','6',0,'10','billing','zaugg@syscon.ch',NULL,'29999',NULL,'Syscon Systemberatung AG',NULL,NULL,'Zweierstrasse 129','Zürich','ZH','0','8036','CH','44 454 20 10','44 715 26 90',0,0,NULL,NULL,'0.0000','0.0000','0.0000','0.0000','0.0000','0.0000','0.0000','0.0000','0.0000',NULL,NULL,'0.0000','0.0000','0.0000','0.0000',NULL,'N;',NULL,NULL,NULL,'0.0000',NULL,'0.0000','0.0000','0.0000',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('24','9','2017-10-02 07:51:53','2017-10-02 07:53:32','6',0,'10','shipping','zaugg@syscon.ch',NULL,'29999',NULL,'Syscon Systemberatung AG',NULL,NULL,'Zweierstrasse 129','Zürich','Zürich','129','8036','CH','44 454 20 10','44 715 26 90',0,0,'freeshipping_freeshipping','Livraison gratuite - Gratuite','0.0000','926.2900','926.2900','926.2900','926.2900','0.0000','0.0000','0.0000','0.0000','0.0000','0.0000','0.0000','0.0000','926.2900','926.2900',NULL,'a:0:{}',NULL,'0.0000','0.0000','926.2900','926.2900','0.0000','0.0000','0.0000',NULL,'0.0000','0.0000',0,NULL,NULL,NULL,NULL,NULL,NULL),('25','9','2017-10-02 07:53:32','0000-00-00 00:00:00','6',0,'10','billing','zaugg@syscon.ch',NULL,'29999',NULL,'Syscon Systemberatung AG',NULL,NULL,'Zweierstrasse 129','Zürich','ZH','0','8036','CH','44 454 20 10','44 715 26 90',0,0,NULL,NULL,'0.0000','0.0000','0.0000','0.0000','0.0000','0.0000','0.0000','0.0000','0.0000',NULL,NULL,'0.0000','0.0000','0.0000','0.0000',NULL,'N;',NULL,NULL,NULL,'0.0000',NULL,'0.0000','0.0000','0.0000',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('27','10','2017-10-02 07:55:41','2017-10-02 15:58:05','6',0,'10','shipping','zaugg@syscon.ch',NULL,'29999',NULL,'Syscon Systemberatung AG',NULL,NULL,'Zweierstrasse 129','Zürich','Zürich','129','8036','CH','44 454 20 10','44 715 26 90',0,0,'freeshipping_freeshipping','Livraison gratuite - Gratuite','0.0000','1749.0000','1749.0000','1749.0000','1749.0000','0.0000','0.0000','0.0000','0.0000','0.0000','0.0000','0.0000','0.0000','1749.0000','1749.0000',NULL,'a:0:{}',NULL,'0.0000','0.0000','1749.0000','1749.0000','0.0000','0.0000','0.0000',NULL,'0.0000','0.0000',0,NULL,NULL,NULL,NULL,NULL,NULL),('28','10','2017-10-02 15:58:05','0000-00-00 00:00:00','6',0,'10','billing','zaugg@syscon.ch',NULL,'29999',NULL,'Syscon Systemberatung AG',NULL,NULL,'Zweierstrasse 129','Zürich','ZH','0','8036','CH','44 454 20 10','44 715 26 90',0,0,NULL,NULL,'0.0000','0.0000','0.0000','0.0000','0.0000','0.0000','0.0000','0.0000','0.0000',NULL,NULL,'0.0000','0.0000','0.0000','0.0000',NULL,'N;',NULL,NULL,NULL,'0.0000',NULL,'0.0000','0.0000','0.0000',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('30','11','2017-10-02 16:35:56','2017-10-02 16:40:43','6',0,'10','shipping','zaugg@syscon.ch',NULL,'29999',NULL,'Syscon Systemberatung AG',NULL,NULL,'Zweierstrasse 129','Zürich','Zürich','129','8036','CH','44 454 20 10','44 715 26 90',0,0,'freeshipping_freeshipping','Livraison gratuite - Gratuite','0.0000','2918.4000','2918.4000','2918.4000','2918.4000','0.0000','0.0000','0.0000','0.0000','0.0000','0.0000','0.0000','0.0000','2918.4000','2918.4000',NULL,'a:0:{}',NULL,'0.0000','0.0000','2918.4000','2918.4000','0.0000','0.0000','0.0000',NULL,'0.0000','0.0000',0,NULL,NULL,NULL,NULL,NULL,NULL),('31','11','2017-10-02 16:40:43','0000-00-00 00:00:00','6',0,'10','billing','zaugg@syscon.ch',NULL,'29999',NULL,'Syscon Systemberatung AG',NULL,NULL,'Zweierstrasse 129','Zürich','ZH','0','8036','CH','44 454 20 10','44 715 26 90',0,0,NULL,NULL,'0.0000','0.0000','0.0000','0.0000','0.0000','0.0000','0.0000','0.0000','0.0000',NULL,NULL,'0.0000','0.0000','0.0000','0.0000',NULL,'N;',NULL,NULL,NULL,'0.0000',NULL,'0.0000','0.0000','0.0000',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('33','12','2017-10-03 10:10:17','2017-10-04 15:59:05','6',0,'10','shipping','zaugg@syscon.ch',NULL,'29999',NULL,'Syscon Systemberatung AG',NULL,NULL,'Zweierstrasse 129','Zürich','Zürich','129','8036','CH','44 454 20 10','44 715 26 90',0,0,'freeshipping_freeshipping','Livraison gratuite - Gratuite','0.0000','2916.9100','2916.9100','2916.9100','2916.9100','0.0000','0.0000','0.0000','0.0000','0.0000','0.0000','0.0000','0.0000','2916.9100','2916.9100',NULL,'a:0:{}',NULL,'0.0000','0.0000','2916.9100','2916.9100','0.0000','0.0000','0.0000',NULL,'0.0000','0.0000',0,NULL,NULL,NULL,NULL,NULL,NULL),('34','12','2017-10-04 15:59:05','0000-00-00 00:00:00','6',0,'10','billing','zaugg@syscon.ch',NULL,'29999',NULL,'Syscon Systemberatung AG',NULL,NULL,'Zweierstrasse 129','Zürich','ZH','0','8036','CH','44 454 20 10','44 715 26 90',0,0,NULL,NULL,'0.0000','0.0000','0.0000','0.0000','0.0000','0.0000','0.0000','0.0000','0.0000',NULL,NULL,'0.0000','0.0000','0.0000','0.0000',NULL,'N;',NULL,NULL,NULL,'0.0000',NULL,'0.0000','0.0000','0.0000',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('36','13','2017-10-05 09:18:30','2017-10-05 09:21:54','6',0,'10','shipping','zaugg@syscon.ch',NULL,'29999',NULL,'Syscon Systemberatung AG',NULL,NULL,'Zweierstrasse 129','Zürich','Zürich','129','8036','CH','44 454 20 10','44 715 26 90',0,0,'freeshipping_freeshipping','Livraison gratuite - Gratuite','0.0000','2103.6200','2103.6200','2103.6200','2103.6200','0.0000','0.0000','0.0000','0.0000','0.0000','0.0000','0.0000','0.0000','2103.6200','2103.6200',NULL,'a:0:{}',NULL,'0.0000','0.0000','2103.6200','2103.6200','0.0000','0.0000','0.0000',NULL,'0.0000','0.0000',0,NULL,NULL,NULL,NULL,NULL,NULL),('37','13','2017-10-05 09:21:54','0000-00-00 00:00:00','6',0,'10','billing','zaugg@syscon.ch',NULL,'29999',NULL,'Syscon Systemberatung AG',NULL,NULL,'Zweierstrasse 129','Zürich','ZH','0','8036','CH','44 454 20 10','44 715 26 90',0,0,NULL,NULL,'0.0000','0.0000','0.0000','0.0000','0.0000','0.0000','0.0000','0.0000','0.0000',NULL,NULL,'0.0000','0.0000','0.0000','0.0000',NULL,'N;',NULL,NULL,NULL,'0.0000',NULL,'0.0000','0.0000','0.0000',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('39','14','2017-10-05 09:26:27','2017-10-05 09:26:57','6',0,'10','shipping','zaugg@syscon.ch',NULL,'29999',NULL,'Syscon Systemberatung AG',NULL,NULL,'Zweierstrasse 129','Zürich','Zürich','129','8036','CH','44 454 20 10','44 715 26 90',0,0,'freeshipping_freeshipping','Livraison gratuite - Gratuite','0.0000','722.7000','722.7000','722.7000','722.7000','0.0000','0.0000','0.0000','0.0000','0.0000','0.0000','0.0000','0.0000','722.7000','722.7000',NULL,'a:0:{}',NULL,'0.0000','0.0000','722.7000','722.7000','0.0000','0.0000','0.0000',NULL,'0.0000','0.0000',0,NULL,NULL,NULL,NULL,NULL,NULL),('40','14','2017-10-05 09:26:57','0000-00-00 00:00:00','6',0,'10','billing','zaugg@syscon.ch',NULL,'29999',NULL,'Syscon Systemberatung AG',NULL,NULL,'Zweierstrasse 129','Zürich','ZH','0','8036','CH','44 454 20 10','44 715 26 90',0,0,NULL,NULL,'0.0000','0.0000','0.0000','0.0000','0.0000','0.0000','0.0000','0.0000','0.0000',NULL,NULL,'0.0000','0.0000','0.0000','0.0000',NULL,'N;',NULL,NULL,NULL,'0.0000',NULL,'0.0000','0.0000','0.0000',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('41','15','2017-10-05 20:44:40','0000-00-00 00:00:00',NULL,0,NULL,'billing',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL,'0.0000','0.0000','0.0000','0.0000','0.0000','0.0000','0.0000','0.0000','0.0000',NULL,NULL,'0.0000','0.0000','0.0000','0.0000',NULL,'N;',NULL,NULL,NULL,'0.0000',NULL,'0.0000','0.0000','0.0000',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('42','15','2017-10-05 20:44:40','0000-00-00 00:00:00',NULL,0,NULL,'shipping',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,1,NULL,NULL,'0.0000','34.0000','34.0000','34.0000','34.0000','0.0000','0.0000','0.0000','0.0000','0.0000','0.0000','0.0000','0.0000','34.0000','34.0000',NULL,'a:0:{}',NULL,'0.0000','0.0000','34.0000','34.0000','0.0000','0.0000','0.0000',NULL,'0.0000','0.0000',0,NULL,NULL,NULL,NULL,NULL,NULL),('43','16','2017-10-08 19:30:30','0000-00-00 00:00:00',NULL,0,NULL,'billing',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL,'0.0000','0.0000','0.0000','0.0000','0.0000','0.0000','0.0000','0.0000','0.0000',NULL,NULL,'0.0000','0.0000','0.0000','0.0000',NULL,'N;',NULL,NULL,NULL,'0.0000',NULL,'0.0000','0.0000','0.0000',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('44','16','2017-10-08 19:30:30','0000-00-00 00:00:00',NULL,0,NULL,'shipping',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,1,NULL,NULL,'0.0000','0.0000','0.0000','34.0000','34.0000','0.0000','0.0000','0.0000','0.0000','0.0000','0.0000','0.0000','0.0000','0.0000','0.0000',NULL,'N;',NULL,'0.0000','0.0000','0.0000','34.0000','0.0000','0.0000','0.0000',NULL,'0.0000','0.0000',0,NULL,NULL,NULL,NULL,NULL,NULL),('45','17','2017-10-09 07:20:28','0000-00-00 00:00:00',NULL,0,NULL,'billing',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL,'0.0000','0.0000','0.0000','0.0000','0.0000','0.0000','0.0000','0.0000','0.0000',NULL,NULL,'0.0000','0.0000','0.0000','0.0000',NULL,'N;',NULL,NULL,NULL,'0.0000',NULL,'0.0000','0.0000','0.0000',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('46','17','2017-10-09 07:20:28','0000-00-00 00:00:00',NULL,0,NULL,'shipping',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,1,NULL,NULL,'0.0000','0.0000','0.0000','1100.0000','1100.0000','0.0000','0.0000','0.0000','0.0000','0.0000','0.0000','0.0000','0.0000','0.0000','0.0000',NULL,'N;',NULL,'0.0000','0.0000','0.0000','1100.0000','0.0000','0.0000','0.0000',NULL,'0.0000','0.0000',0,NULL,NULL,NULL,NULL,NULL,NULL),('47','18','2017-10-09 13:41:21','0000-00-00 00:00:00','6',0,'10','billing','zaugg@syscon.ch',NULL,'29999',NULL,'Syscon Systemberatung AG',NULL,NULL,'Zweierstrasse 129','Zürich','Zürich','129','8036','CH','44 454 20 10','44 715 26 90',0,0,NULL,NULL,'0.0000','0.0000','0.0000','0.0000','0.0000','0.0000','0.0000','0.0000','0.0000',NULL,NULL,'0.0000','0.0000','0.0000','0.0000',NULL,'N;',NULL,NULL,NULL,'0.0000',NULL,'0.0000','0.0000','0.0000',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('48','18','2017-10-09 13:41:21','2017-10-09 13:43:07','6',0,'10','shipping','zaugg@syscon.ch',NULL,'29999',NULL,'Syscon Systemberatung AG',NULL,NULL,'Zweierstrasse 129','Zürich','Zürich','129','8036','CH','44 454 20 10','44 715 26 90',0,0,'freeshipping_freeshipping','Livraison gratuite - Gratuite','0.0000','61.4000','61.4000','61.4000','61.4000','0.0000','0.0000','0.0000','0.0000','0.0000','0.0000','0.0000','0.0000','61.4000','61.4000',NULL,'a:0:{}',NULL,'0.0000','0.0000','61.4000','61.4000','0.0000','0.0000','0.0000',NULL,'0.0000','0.0000',0,NULL,NULL,NULL,NULL,NULL,NULL),('49','19','2017-10-10 08:24:48','0000-00-00 00:00:00','19',0,NULL,'billing','egil.ruefli@gmail.com',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL,'0.0000','0.0000','0.0000','0.0000','0.0000','0.0000','0.0000','0.0000','0.0000',NULL,NULL,'0.0000','0.0000','0.0000','0.0000',NULL,'N;',NULL,NULL,NULL,'0.0000',NULL,'0.0000','0.0000','0.0000',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('50','19','2017-10-10 08:24:48','0000-00-00 00:00:00','19',0,NULL,'shipping','egil.ruefli@gmail.com',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,NULL,NULL,'0.0000','0.0000','0.0000','0.0000','0.0000','0.0000','0.0000','0.0000','0.0000',NULL,NULL,'0.0000','0.0000','0.0000','0.0000',NULL,'N;',NULL,NULL,NULL,'0.0000',NULL,'0.0000','0.0000','0.0000',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `quote_address` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `quote_address_item`
--

DROP TABLE IF EXISTS `quote_address_item`;
CREATE TABLE `quote_address_item` (
  `address_item_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Address Item Id',
  `parent_item_id` int(10) unsigned DEFAULT NULL COMMENT 'Parent Item Id',
  `quote_address_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Quote Address Id',
  `quote_item_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Quote Item Id',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Created At',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP COMMENT 'Updated At',
  `applied_rule_ids` text COMMENT 'Applied Rule Ids',
  `additional_data` text COMMENT 'Additional Data',
  `weight` decimal(12,4) DEFAULT '0.0000' COMMENT 'Weight',
  `qty` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Qty',
  `discount_amount` decimal(12,4) DEFAULT '0.0000' COMMENT 'Discount Amount',
  `tax_amount` decimal(12,4) DEFAULT '0.0000' COMMENT 'Tax Amount',
  `row_total` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Row Total',
  `base_row_total` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Base Row Total',
  `row_total_with_discount` decimal(12,4) DEFAULT '0.0000' COMMENT 'Row Total With Discount',
  `base_discount_amount` decimal(12,4) DEFAULT '0.0000' COMMENT 'Base Discount Amount',
  `base_tax_amount` decimal(12,4) DEFAULT '0.0000' COMMENT 'Base Tax Amount',
  `row_weight` decimal(12,4) DEFAULT '0.0000' COMMENT 'Row Weight',
  `product_id` int(10) unsigned DEFAULT NULL COMMENT 'Product Id',
  `super_product_id` int(10) unsigned DEFAULT NULL COMMENT 'Super Product Id',
  `parent_product_id` int(10) unsigned DEFAULT NULL COMMENT 'Parent Product Id',
  `sku` varchar(255) DEFAULT NULL COMMENT 'Sku',
  `image` varchar(255) DEFAULT NULL COMMENT 'Image',
  `name` varchar(255) DEFAULT NULL COMMENT 'Name',
  `description` text COMMENT 'Description',
  `is_qty_decimal` int(10) unsigned DEFAULT NULL COMMENT 'Is Qty Decimal',
  `price` decimal(12,4) DEFAULT NULL COMMENT 'Price',
  `discount_percent` decimal(12,4) DEFAULT NULL COMMENT 'Discount Percent',
  `no_discount` int(10) unsigned DEFAULT NULL COMMENT 'No Discount',
  `tax_percent` decimal(12,4) DEFAULT NULL COMMENT 'Tax Percent',
  `base_price` decimal(12,4) DEFAULT NULL COMMENT 'Base Price',
  `base_cost` decimal(12,4) DEFAULT NULL COMMENT 'Base Cost',
  `price_incl_tax` decimal(12,4) DEFAULT NULL COMMENT 'Price Incl Tax',
  `base_price_incl_tax` decimal(12,4) DEFAULT NULL COMMENT 'Base Price Incl Tax',
  `row_total_incl_tax` decimal(12,4) DEFAULT NULL COMMENT 'Row Total Incl Tax',
  `base_row_total_incl_tax` decimal(12,4) DEFAULT NULL COMMENT 'Base Row Total Incl Tax',
  `discount_tax_compensation_amount` decimal(12,4) DEFAULT NULL COMMENT 'Discount Tax Compensation Amount',
  `base_discount_tax_compensation_amount` decimal(12,4) DEFAULT NULL COMMENT 'Base Discount Tax Compensation Amount',
  `free_shipping` int(11) DEFAULT NULL,
  `gift_message_id` int(11) DEFAULT NULL COMMENT 'Gift Message Id',
  PRIMARY KEY (`address_item_id`),
  KEY `QUOTE_ADDRESS_ITEM_QUOTE_ADDRESS_ID` (`quote_address_id`),
  KEY `QUOTE_ADDRESS_ITEM_PARENT_ITEM_ID` (`parent_item_id`),
  KEY `QUOTE_ADDRESS_ITEM_QUOTE_ITEM_ID` (`quote_item_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Sales Flat Quote Address Item';

--
-- Table structure for table `quote_id_mask`
--

DROP TABLE IF EXISTS `quote_id_mask`;
CREATE TABLE `quote_id_mask` (
  `entity_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Entity Id',
  `quote_id` int(10) unsigned NOT NULL COMMENT 'Quote ID',
  `masked_id` varchar(32) DEFAULT NULL COMMENT 'Masked ID',
  PRIMARY KEY (`entity_id`,`quote_id`),
  KEY `QUOTE_ID_MASK_QUOTE_ID` (`quote_id`),
  KEY `QUOTE_ID_MASK_MASKED_ID` (`masked_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='Quote ID and masked ID mapping';

--
-- Dumping data for table `quote_id_mask`
--

LOCK TABLES `quote_id_mask` WRITE;
/*!40000 ALTER TABLE `quote_id_mask` DISABLE KEYS */;
INSERT INTO `quote_id_mask` VALUES ('3','17','10f0b345986e89b42a2b7e01722ebec9'),('4','18','684608d7f161d086fce3137d941f0d4b'),('2','16','9efb2c2fe4d767d960e6f8206324fc60'),('1','15','f845ab15a75a32e0c3378e3e07a23a35');
/*!40000 ALTER TABLE `quote_id_mask` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `quote_item`
--

DROP TABLE IF EXISTS `quote_item`;
CREATE TABLE `quote_item` (
  `item_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Item Id',
  `quote_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Quote Id',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Created At',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP COMMENT 'Updated At',
  `product_id` int(10) unsigned DEFAULT NULL COMMENT 'Product Id',
  `store_id` smallint(5) unsigned DEFAULT NULL COMMENT 'Store Id',
  `parent_item_id` int(10) unsigned DEFAULT NULL COMMENT 'Parent Item Id',
  `is_virtual` smallint(5) unsigned DEFAULT NULL COMMENT 'Is Virtual',
  `sku` varchar(255) DEFAULT NULL COMMENT 'Sku',
  `name` varchar(255) DEFAULT NULL COMMENT 'Name',
  `description` text COMMENT 'Description',
  `applied_rule_ids` text COMMENT 'Applied Rule Ids',
  `additional_data` text COMMENT 'Additional Data',
  `is_qty_decimal` smallint(5) unsigned DEFAULT NULL COMMENT 'Is Qty Decimal',
  `no_discount` smallint(5) unsigned DEFAULT '0' COMMENT 'No Discount',
  `weight` decimal(12,4) DEFAULT '0.0000' COMMENT 'Weight',
  `qty` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Qty',
  `price` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Price',
  `base_price` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Base Price',
  `custom_price` decimal(12,4) DEFAULT NULL COMMENT 'Custom Price',
  `discount_percent` decimal(12,4) DEFAULT '0.0000' COMMENT 'Discount Percent',
  `discount_amount` decimal(12,4) DEFAULT '0.0000' COMMENT 'Discount Amount',
  `base_discount_amount` decimal(12,4) DEFAULT '0.0000' COMMENT 'Base Discount Amount',
  `tax_percent` decimal(12,4) DEFAULT '0.0000' COMMENT 'Tax Percent',
  `tax_amount` decimal(12,4) DEFAULT '0.0000' COMMENT 'Tax Amount',
  `base_tax_amount` decimal(12,4) DEFAULT '0.0000' COMMENT 'Base Tax Amount',
  `row_total` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Row Total',
  `base_row_total` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Base Row Total',
  `row_total_with_discount` decimal(12,4) DEFAULT '0.0000' COMMENT 'Row Total With Discount',
  `row_weight` decimal(12,4) DEFAULT '0.0000' COMMENT 'Row Weight',
  `product_type` varchar(255) DEFAULT NULL COMMENT 'Product Type',
  `base_tax_before_discount` decimal(12,4) DEFAULT NULL COMMENT 'Base Tax Before Discount',
  `tax_before_discount` decimal(12,4) DEFAULT NULL COMMENT 'Tax Before Discount',
  `original_custom_price` decimal(12,4) DEFAULT NULL COMMENT 'Original Custom Price',
  `redirect_url` varchar(255) DEFAULT NULL COMMENT 'Redirect Url',
  `base_cost` decimal(12,4) DEFAULT NULL COMMENT 'Base Cost',
  `price_incl_tax` decimal(12,4) DEFAULT NULL COMMENT 'Price Incl Tax',
  `base_price_incl_tax` decimal(12,4) DEFAULT NULL COMMENT 'Base Price Incl Tax',
  `row_total_incl_tax` decimal(12,4) DEFAULT NULL COMMENT 'Row Total Incl Tax',
  `base_row_total_incl_tax` decimal(12,4) DEFAULT NULL COMMENT 'Base Row Total Incl Tax',
  `discount_tax_compensation_amount` decimal(12,4) DEFAULT NULL COMMENT 'Discount Tax Compensation Amount',
  `base_discount_tax_compensation_amount` decimal(12,4) DEFAULT NULL COMMENT 'Base Discount Tax Compensation Amount',
  `free_shipping` smallint(6) DEFAULT NULL,
  `gift_message_id` int(11) DEFAULT NULL COMMENT 'Gift Message Id',
  `weee_tax_applied` text COMMENT 'Weee Tax Applied',
  `weee_tax_applied_amount` decimal(12,4) DEFAULT NULL COMMENT 'Weee Tax Applied Amount',
  `weee_tax_applied_row_amount` decimal(12,4) DEFAULT NULL COMMENT 'Weee Tax Applied Row Amount',
  `weee_tax_disposition` decimal(12,4) DEFAULT NULL COMMENT 'Weee Tax Disposition',
  `weee_tax_row_disposition` decimal(12,4) DEFAULT NULL COMMENT 'Weee Tax Row Disposition',
  `base_weee_tax_applied_amount` decimal(12,4) DEFAULT NULL COMMENT 'Base Weee Tax Applied Amount',
  `base_weee_tax_applied_row_amnt` decimal(12,4) DEFAULT NULL COMMENT 'Base Weee Tax Applied Row Amnt',
  `base_weee_tax_disposition` decimal(12,4) DEFAULT NULL COMMENT 'Base Weee Tax Disposition',
  `base_weee_tax_row_disposition` decimal(12,4) DEFAULT NULL COMMENT 'Base Weee Tax Row Disposition',
  PRIMARY KEY (`item_id`),
  KEY `QUOTE_ITEM_PARENT_ITEM_ID` (`parent_item_id`),
  KEY `QUOTE_ITEM_PRODUCT_ID` (`product_id`),
  KEY `QUOTE_ITEM_QUOTE_ID` (`quote_id`),
  KEY `QUOTE_ITEM_STORE_ID` (`store_id`)
) ENGINE=InnoDB AUTO_INCREMENT=49 DEFAULT CHARSET=utf8 COMMENT='Sales Flat Quote Item';

--
-- Dumping data for table `quote_item`
--

LOCK TABLES `quote_item` WRITE;
/*!40000 ALTER TABLE `quote_item` DISABLE KEYS */;
INSERT INTO `quote_item` VALUES ('37','12','2017-10-04 15:54:26','0000-00-00 00:00:00','27',2,NULL,0,'3865-unitprice-actualqty-dep11.0-wid1100.0-len25.00-tgvalue-qtyreq','Ampatop 25',NULL,NULL,NULL,1,0,NULL,'5.0000','120.4500','120.4500',NULL,'0.0000','0.0000','0.0000','0.0000','0.0000','0.0000','602.2500','602.2500','0.0000','0.0000','simple',NULL,NULL,NULL,NULL,NULL,'120.4500','120.4500','602.2500','602.2500','0.0000','0.0000',0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('38','12','2017-10-04 15:55:28','0000-00-00 00:00:00','28',2,NULL,0,'4680-unitprice-actualqty-dep90.0-wid160.0-len6.00-tgvalue-qtyreq','Lamellé-collé BS-11 épicéa SI',NULL,NULL,NULL,1,0,NULL,'47.0000','49.2500','49.2500',NULL,'0.0000','0.0000','0.0000','0.0000','0.0000','0.0000','2314.7500','2314.7500','0.0000','0.0000','simple',NULL,NULL,NULL,NULL,NULL,'49.2500','49.2500','2314.7500','2314.7500','0.0000','0.0000',0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('39','13','2017-10-05 09:20:53','0000-00-00 00:00:00','31',2,NULL,0,'4308-unitprice-actualqty-actualdisc-nextdisclevel-dep20.0-wid135.0-len5.00-tgvalue-qtyreq','Lames mélèze IIB-IIIA',NULL,NULL,NULL,1,0,NULL,'135.0000','15.5800','15.5800',NULL,'0.0000','0.0000','0.0000','0.0000','0.0000','0.0000','2103.3000','2103.3000','0.0000','0.0000','simple',NULL,NULL,NULL,NULL,NULL,'15.5800','15.5800','2103.3000','2103.3000','0.0000','0.0000',0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('40','14','2017-10-05 09:26:27','0000-00-00 00:00:00','27',2,NULL,0,'3865-unitprice-actualqty-dep11.0-wid1100.0-len25.00-tgvalue-qtyreq','Ampatop 25',NULL,NULL,NULL,1,0,NULL,'6.0000','120.4500','120.4500',NULL,'0.0000','0.0000','0.0000','0.0000','0.0000','0.0000','722.7000','722.7000','0.0000','0.0000','simple',NULL,NULL,NULL,NULL,NULL,'120.4500','120.4500','722.7000','722.7000','0.0000','0.0000',0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('42','15','2017-10-05 20:46:23','0000-00-00 00:00:00','30',2,NULL,0,'3814-unitprice','Vis de fixation Vidiwall',NULL,NULL,NULL,0,0,NULL,'1.0000','34.0000','34.0000',NULL,'0.0000','0.0000','0.0000','0.0000','0.0000','0.0000','34.0000','34.0000','0.0000','0.0000','simple',NULL,NULL,NULL,NULL,NULL,'34.0000','34.0000','34.0000','34.0000','0.0000','0.0000',0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('47','18','2017-10-09 13:41:21','2017-10-09 13:42:43','30',2,NULL,0,'3814','Vis de fixation Vidiwall',NULL,NULL,NULL,0,0,NULL,'1.0000','30.7000','30.7000',NULL,'0.0000','0.0000','0.0000','0.0000','0.0000','0.0000','30.7000','30.7000','0.0000','0.0000','simple',NULL,NULL,NULL,NULL,NULL,'30.7000','30.7000','30.7000','30.7000','0.0000','0.0000',0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('48','18','2017-10-09 13:41:59','2017-10-09 13:42:43','30',2,NULL,0,'3814-unitprice','Vis de fixation Vidiwall',NULL,NULL,NULL,0,0,NULL,'1.0000','30.7000','30.7000',NULL,'0.0000','0.0000','0.0000','0.0000','0.0000','0.0000','30.7000','30.7000','0.0000','0.0000','simple',NULL,NULL,NULL,NULL,NULL,'30.7000','30.7000','30.7000','30.7000','0.0000','0.0000',0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `quote_item` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `quote_item_option`
--

DROP TABLE IF EXISTS `quote_item_option`;
CREATE TABLE `quote_item_option` (
  `option_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Option Id',
  `item_id` int(10) unsigned NOT NULL COMMENT 'Item Id',
  `product_id` int(10) unsigned NOT NULL COMMENT 'Product Id',
  `code` varchar(255) NOT NULL COMMENT 'Code',
  `value` text COMMENT 'Value',
  PRIMARY KEY (`option_id`),
  KEY `QUOTE_ITEM_OPTION_ITEM_ID` (`item_id`)
) ENGINE=InnoDB AUTO_INCREMENT=307 DEFAULT CHARSET=utf8 COMMENT='Sales Flat Quote Item Option';

--
-- Dumping data for table `quote_item_option`
--

LOCK TABLES `quote_item_option` WRITE;
/*!40000 ALTER TABLE `quote_item_option` DISABLE KEYS */;
INSERT INTO `quote_item_option` VALUES ('237','37','27','info_buyRequest','a:6:{s:4:\"uenc\";s:76:\"aHR0cDovL2RldjMuZm91cm5pZXJib2lzLmNoL3Byb2Zfdmlld19mci9hbXBhdG9wLTI1Lmh0bWw,\";s:7:\"product\";s:2:\"27\";s:28:\"selected_configurable_option\";s:0:\"\";s:15:\"related_product\";s:0:\"\";s:7:\"options\";a:7:{i:1;s:4:\"4.38\";i:2;s:6:\"137.50\";i:3;s:1:\"1\";i:4;s:1:\"2\";i:5;s:1:\"3\";i:6;s:3:\"125\";i:7;s:1:\"5\";}s:3:\"qty\";s:1:\"5\";}'),('238','37','27','option_ids','1,2,3,4,5,6,7'),('239','37','27','option_1','4.38'),('240','37','27','option_2','137.50'),('241','37','27','option_3','1'),('242','37','27','option_4','2'),('243','37','27','option_5','3'),('244','37','27','option_6','125'),('245','37','27','option_7','5'),('246','38','28','info_buyRequest','a:6:{s:4:\"uenc\";s:100:\"aHR0cDovL2RldjMuZm91cm5pZXJib2lzLmNoL3Byb2Zfdmlld19mci9sYW1lbGxlLWNvbGxlLWJzLTExLWVwaWNlYS1zaS5odG1s\";s:7:\"product\";s:2:\"28\";s:28:\"selected_configurable_option\";s:0:\"\";s:15:\"related_product\";s:0:\"\";s:7:\"options\";a:7:{i:8;s:6:\"570.00\";i:9;s:5:\"4.061\";i:10;s:1:\"5\";i:11;s:1:\"8\";i:12;s:2:\"21\";i:13;s:1:\"4\";i:14;s:2:\"47\";}s:3:\"qty\";s:2:\"47\";}'),('247','38','28','option_ids','8,9,10,11,12,13,14'),('248','38','28','option_8','570.00'),('249','38','28','option_9','4.061'),('250','38','28','option_10','5'),('251','38','28','option_11','8'),('252','38','28','option_12','21'),('253','38','28','option_13','4'),('254','38','28','option_14','47'),('255','39','31','info_buyRequest','a:6:{s:4:\"uenc\";s:108:\"aHR0cDovL2RldjMuZm91cm5pZXJib2lzLmNoL3Byb2Zfdmlld19mci9sYW1lcy1tZWxlemUtaWliLWlpaWEuaHRtbD9vcHRpb25zPWNhcnQ,\";s:7:\"product\";s:2:\"31\";s:28:\"selected_configurable_option\";s:0:\"\";s:15:\"related_product\";s:0:\"\";s:7:\"options\";a:9:{i:64;s:5:\"24.30\";i:65;s:5:\"91.13\";i:66;s:6:\"110.72\";i:67;s:5:\"30.00\";i:68;s:2:\"69\";i:69;s:2:\"71\";i:70;s:2:\"75\";i:8;s:2:\"90\";i:9;s:3:\"135\";}s:3:\"qty\";s:3:\"135\";}'),('256','39','31','option_ids','64,65,66,67,68,69,70,8,9'),('257','39','31','option_64','24.30'),('258','39','31','option_65','91.13'),('259','39','31','option_66','110.72'),('260','39','31','option_67','30.00'),('261','39','31','option_68','69'),('262','39','31','option_69','71'),('263','39','31','option_70','75'),('264','39','31','option_8','90'),('265','39','31','option_9','135'),('266','40','27','info_buyRequest','a:6:{s:4:\"uenc\";s:76:\"aHR0cDovL2RldjMuZm91cm5pZXJib2lzLmNoL3Byb2Zfdmlld19mci9hbXBhdG9wLTI1Lmh0bWw,\";s:7:\"product\";s:2:\"27\";s:28:\"selected_configurable_option\";s:0:\"\";s:15:\"related_product\";s:0:\"\";s:7:\"options\";a:7:{i:1;s:4:\"4.38\";i:2;s:6:\"165.00\";i:3;s:1:\"1\";i:4;s:1:\"2\";i:5;s:1:\"3\";i:6;s:3:\"165\";i:7;s:1:\"6\";}s:3:\"qty\";s:1:\"6\";}'),('267','40','27','option_ids','1,2,3,4,5,6,7'),('268','40','27','option_1','4.38'),('269','40','27','option_2','165.00'),('270','40','27','option_3','1'),('271','40','27','option_4','2'),('272','40','27','option_5','3'),('273','40','27','option_6','165'),('274','40','27','option_7','6'),('284','42','30','info_buyRequest','a:6:{s:4:\"uenc\";s:96:\"aHR0cDovL2RldjMuZm91cm5pZXJib2lzLmNoL3Byb2Zfdmlld19mci92aXMtZGUtZml4YXRpb24tdmlkaXdhbGwuaHRtbA,,\";s:7:\"product\";s:2:\"30\";s:28:\"selected_configurable_option\";s:0:\"\";s:15:\"related_product\";s:0:\"\";s:7:\"options\";a:1:{i:63;s:5:\"34.00\";}s:3:\"qty\";s:1:\"1\";}'),('285','42','30','option_ids','63'),('286','42','30','option_63','34.00'),('303','47','30','info_buyRequest','a:3:{s:4:\"uenc\";s:56:\"aHR0cDovL2RldjMuZm91cm5pZXJib2lzLmNoL3Byb2Zfdmlld19mci8,\";s:7:\"product\";s:2:\"30\";s:3:\"qty\";d:1;}'),('304','48','30','info_buyRequest','a:6:{s:4:\"uenc\";s:96:\"aHR0cDovL2RldjMuZm91cm5pZXJib2lzLmNoL3Byb2Zfdmlld19mci92aXMtZGUtZml4YXRpb24tdmlkaXdhbGwuaHRtbA,,\";s:7:\"product\";s:2:\"30\";s:28:\"selected_configurable_option\";s:0:\"\";s:15:\"related_product\";s:0:\"\";s:7:\"options\";a:1:{i:63;s:5:\"34.00\";}s:3:\"qty\";s:1:\"1\";}'),('305','48','30','option_ids','63'),('306','48','30','option_63','34.00');
/*!40000 ALTER TABLE `quote_item_option` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `quote_payment`
--

DROP TABLE IF EXISTS `quote_payment`;
CREATE TABLE `quote_payment` (
  `payment_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Payment Id',
  `quote_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Quote Id',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Created At',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP COMMENT 'Updated At',
  `method` varchar(255) DEFAULT NULL COMMENT 'Method',
  `cc_type` varchar(255) DEFAULT NULL COMMENT 'Cc Type',
  `cc_number_enc` varchar(255) DEFAULT NULL COMMENT 'Cc Number Enc',
  `cc_last_4` varchar(255) DEFAULT NULL COMMENT 'Cc Last 4',
  `cc_cid_enc` varchar(255) DEFAULT NULL COMMENT 'Cc Cid Enc',
  `cc_owner` varchar(255) DEFAULT NULL COMMENT 'Cc Owner',
  `cc_exp_month` varchar(255) DEFAULT NULL COMMENT 'Cc Exp Month',
  `cc_exp_year` smallint(5) unsigned DEFAULT '0' COMMENT 'Cc Exp Year',
  `cc_ss_owner` varchar(255) DEFAULT NULL COMMENT 'Cc Ss Owner',
  `cc_ss_start_month` smallint(5) unsigned DEFAULT '0' COMMENT 'Cc Ss Start Month',
  `cc_ss_start_year` smallint(5) unsigned DEFAULT '0' COMMENT 'Cc Ss Start Year',
  `po_number` varchar(255) DEFAULT NULL COMMENT 'Po Number',
  `additional_data` text COMMENT 'Additional Data',
  `cc_ss_issue` varchar(255) DEFAULT NULL COMMENT 'Cc Ss Issue',
  `additional_information` text COMMENT 'Additional Information',
  `paypal_payer_id` varchar(255) DEFAULT NULL COMMENT 'Paypal Payer Id',
  `paypal_payer_status` varchar(255) DEFAULT NULL COMMENT 'Paypal Payer Status',
  `paypal_correlation_id` varchar(255) DEFAULT NULL COMMENT 'Paypal Correlation Id',
  PRIMARY KEY (`payment_id`),
  KEY `QUOTE_PAYMENT_QUOTE_ID` (`quote_id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8 COMMENT='Sales Flat Quote Payment';

--
-- Dumping data for table `quote_payment`
--

LOCK TABLES `quote_payment` WRITE;
/*!40000 ALTER TABLE `quote_payment` DISABLE KEYS */;
INSERT INTO `quote_payment` VALUES ('1','1','2017-09-25 14:50:58','0000-00-00 00:00:00','checkmo',NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,0,0,NULL,NULL,NULL,'N;',NULL,NULL,NULL),('2','2','2017-09-25 19:27:36','0000-00-00 00:00:00','checkmo',NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,0,0,NULL,NULL,NULL,'N;',NULL,NULL,NULL),('3','3','2017-09-27 16:24:08','0000-00-00 00:00:00','purchaseorder',NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,0,0,'124',NULL,NULL,'N;',NULL,NULL,NULL),('4','6','2017-09-29 17:03:37','0000-00-00 00:00:00','purchaseorder',NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,0,0,'Abc',NULL,NULL,'N;',NULL,NULL,NULL),('5','7','2017-10-01 10:22:58','0000-00-00 00:00:00','purchaseorder',NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,0,0,'444',NULL,NULL,'N;',NULL,NULL,NULL),('6','8','2017-10-02 07:48:34','0000-00-00 00:00:00','purchaseorder',NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,0,0,'56565',NULL,NULL,'N;',NULL,NULL,NULL),('7','9','2017-10-02 07:53:33','0000-00-00 00:00:00','purchaseorder',NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,0,0,'5656',NULL,NULL,'N;',NULL,NULL,NULL),('8','10','2017-10-02 15:58:06','0000-00-00 00:00:00','purchaseorder',NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,0,0,'2323',NULL,NULL,'N;',NULL,NULL,NULL),('9','11','2017-10-02 16:40:44','0000-00-00 00:00:00','purchaseorder',NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,0,0,'56565',NULL,NULL,'N;',NULL,NULL,NULL),('10','12','2017-10-04 15:59:06','0000-00-00 00:00:00','purchaseorder',NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,0,0,'9898',NULL,NULL,'N;',NULL,NULL,NULL),('11','13','2017-10-05 09:21:55','0000-00-00 00:00:00','purchaseorder',NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,0,0,'4545',NULL,NULL,'N;',NULL,NULL,NULL),('12','14','2017-10-05 09:26:58','0000-00-00 00:00:00','purchaseorder',NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,0,0,'56565',NULL,NULL,'N;',NULL,NULL,NULL);
/*!40000 ALTER TABLE `quote_payment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `quote_shipping_rate`
--

DROP TABLE IF EXISTS `quote_shipping_rate`;
CREATE TABLE `quote_shipping_rate` (
  `rate_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Rate Id',
  `address_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Address Id',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Created At',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP COMMENT 'Updated At',
  `carrier` varchar(255) DEFAULT NULL COMMENT 'Carrier',
  `carrier_title` varchar(255) DEFAULT NULL COMMENT 'Carrier Title',
  `code` varchar(255) DEFAULT NULL COMMENT 'Code',
  `method` varchar(255) DEFAULT NULL COMMENT 'Method',
  `method_description` text COMMENT 'Method Description',
  `price` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Price',
  `error_message` text COMMENT 'Error Message',
  `method_title` text COMMENT 'Method Title',
  PRIMARY KEY (`rate_id`),
  KEY `QUOTE_SHIPPING_RATE_ADDRESS_ID` (`address_id`)
) ENGINE=InnoDB AUTO_INCREMENT=52 DEFAULT CHARSET=utf8 COMMENT='Sales Flat Quote Shipping Rate';

--
-- Dumping data for table `quote_shipping_rate`
--

LOCK TABLES `quote_shipping_rate` WRITE;
/*!40000 ALTER TABLE `quote_shipping_rate` DISABLE KEYS */;
INSERT INTO `quote_shipping_rate` VALUES ('7','2','2017-09-25 14:50:58','0000-00-00 00:00:00','flatrate','Flat Rate','flatrate_flatrate','flatrate',NULL,'25.0000',NULL,'Fixed'),('10','4','2017-09-25 19:27:36','0000-00-00 00:00:00','flatrate','Flat Rate','flatrate_flatrate','flatrate',NULL,'595.0000',NULL,'Fixed'),('22','8','2017-09-27 16:24:08','0000-00-00 00:00:00','freeshipping','Livraison gratuite','freeshipping_freeshipping','freeshipping',NULL,'0.0000',NULL,'Gratuite'),('23','12','2017-09-28 08:49:37','0000-00-00 00:00:00','freeshipping','Livraison gratuite','freeshipping_freeshipping','freeshipping',NULL,'0.0000',NULL,'Gratuite'),('26','15','2017-09-29 17:03:37','0000-00-00 00:00:00','freeshipping','Livraison gratuite','freeshipping_freeshipping','freeshipping',NULL,'0.0000',NULL,'Gratuite'),('29','18','2017-10-01 10:22:58','0000-00-00 00:00:00','freeshipping','Livraison gratuite','freeshipping_freeshipping','freeshipping',NULL,'0.0000',NULL,'Gratuite'),('32','21','2017-10-02 07:48:34','0000-00-00 00:00:00','freeshipping','Livraison gratuite','freeshipping_freeshipping','freeshipping',NULL,'0.0000',NULL,'Gratuite'),('35','24','2017-10-02 07:53:33','0000-00-00 00:00:00','freeshipping','Livraison gratuite','freeshipping_freeshipping','freeshipping',NULL,'0.0000',NULL,'Gratuite'),('38','27','2017-10-02 15:58:06','0000-00-00 00:00:00','freeshipping','Livraison gratuite','freeshipping_freeshipping','freeshipping',NULL,'0.0000',NULL,'Gratuite'),('41','30','2017-10-02 16:40:44','0000-00-00 00:00:00','freeshipping','Livraison gratuite','freeshipping_freeshipping','freeshipping',NULL,'0.0000',NULL,'Gratuite'),('44','33','2017-10-04 15:59:06','0000-00-00 00:00:00','freeshipping','Livraison gratuite','freeshipping_freeshipping','freeshipping',NULL,'0.0000',NULL,'Gratuite'),('47','36','2017-10-05 09:21:55','0000-00-00 00:00:00','freeshipping','Livraison gratuite','freeshipping_freeshipping','freeshipping',NULL,'0.0000',NULL,'Gratuite'),('50','39','2017-10-05 09:26:58','0000-00-00 00:00:00','freeshipping','Livraison gratuite','freeshipping_freeshipping','freeshipping',NULL,'0.0000',NULL,'Gratuite'),('51','48','2017-10-09 13:43:07','0000-00-00 00:00:00','freeshipping','Livraison gratuite','freeshipping_freeshipping','freeshipping',NULL,'0.0000',NULL,'Gratuite');
/*!40000 ALTER TABLE `quote_shipping_rate` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rating`
--

DROP TABLE IF EXISTS `rating`;
CREATE TABLE `rating` (
  `rating_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Rating Id',
  `entity_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity Id',
  `rating_code` varchar(64) NOT NULL COMMENT 'Rating Code',
  `position` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Rating Position On Storefront',
  `is_active` smallint(6) NOT NULL DEFAULT '1' COMMENT 'Rating is active.',
  PRIMARY KEY (`rating_id`),
  UNIQUE KEY `RATING_RATING_CODE` (`rating_code`),
  KEY `RATING_ENTITY_ID` (`entity_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='Ratings';

--
-- Dumping data for table `rating`
--

LOCK TABLES `rating` WRITE;
/*!40000 ALTER TABLE `rating` DISABLE KEYS */;
INSERT INTO `rating` VALUES (1,1,'Quality',0,1),(2,1,'Value',0,1),(3,1,'Price',0,1);
/*!40000 ALTER TABLE `rating` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rating_entity`
--

DROP TABLE IF EXISTS `rating_entity`;
CREATE TABLE `rating_entity` (
  `entity_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Entity Id',
  `entity_code` varchar(64) NOT NULL COMMENT 'Entity Code',
  PRIMARY KEY (`entity_id`),
  UNIQUE KEY `RATING_ENTITY_ENTITY_CODE` (`entity_code`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='Rating entities';

--
-- Dumping data for table `rating_entity`
--

LOCK TABLES `rating_entity` WRITE;
/*!40000 ALTER TABLE `rating_entity` DISABLE KEYS */;
INSERT INTO `rating_entity` VALUES (1,'product'),(2,'product_review'),(3,'review');
/*!40000 ALTER TABLE `rating_entity` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rating_option`
--

DROP TABLE IF EXISTS `rating_option`;
CREATE TABLE `rating_option` (
  `option_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Rating Option Id',
  `rating_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Rating Id',
  `code` varchar(32) NOT NULL COMMENT 'Rating Option Code',
  `value` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Rating Option Value',
  `position` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Ration option position on Storefront',
  PRIMARY KEY (`option_id`),
  KEY `RATING_OPTION_RATING_ID` (`rating_id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8 COMMENT='Rating options';

--
-- Dumping data for table `rating_option`
--

LOCK TABLES `rating_option` WRITE;
/*!40000 ALTER TABLE `rating_option` DISABLE KEYS */;
INSERT INTO `rating_option` VALUES ('1',1,'1',1,1),('2',1,'2',2,2),('3',1,'3',3,3),('4',1,'4',4,4),('5',1,'5',5,5),('6',2,'1',1,1),('7',2,'2',2,2),('8',2,'3',3,3),('9',2,'4',4,4),('10',2,'5',5,5),('11',3,'1',1,1),('12',3,'2',2,2),('13',3,'3',3,3),('14',3,'4',4,4),('15',3,'5',5,5);
/*!40000 ALTER TABLE `rating_option` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rating_option_vote`
--

DROP TABLE IF EXISTS `rating_option_vote`;
CREATE TABLE `rating_option_vote` (
  `vote_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Vote id',
  `option_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Vote option id',
  `remote_ip` varchar(16) NOT NULL COMMENT 'Customer IP',
  `remote_ip_long` bigint(20) NOT NULL DEFAULT '0' COMMENT 'Customer IP converted to long integer format',
  `customer_id` int(10) unsigned DEFAULT '0' COMMENT 'Customer Id',
  `entity_pk_value` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT 'Product id',
  `rating_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Rating id',
  `review_id` bigint(20) unsigned DEFAULT NULL COMMENT 'Review id',
  `percent` smallint(6) NOT NULL DEFAULT '0' COMMENT 'Percent amount',
  `value` smallint(6) NOT NULL DEFAULT '0' COMMENT 'Vote option value',
  PRIMARY KEY (`vote_id`),
  KEY `RATING_OPTION_VOTE_OPTION_ID` (`option_id`),
  KEY `RATING_OPTION_VOTE_REVIEW_ID_REVIEW_REVIEW_ID` (`review_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Rating option values';

--
-- Table structure for table `rating_option_vote_aggregated`
--

DROP TABLE IF EXISTS `rating_option_vote_aggregated`;
CREATE TABLE `rating_option_vote_aggregated` (
  `primary_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Vote aggregation id',
  `rating_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Rating id',
  `entity_pk_value` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT 'Product id',
  `vote_count` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Vote dty',
  `vote_value_sum` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'General vote sum',
  `percent` smallint(6) NOT NULL DEFAULT '0' COMMENT 'Vote percent',
  `percent_approved` smallint(6) DEFAULT '0' COMMENT 'Vote percent approved by admin',
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Store Id',
  PRIMARY KEY (`primary_id`),
  KEY `RATING_OPTION_VOTE_AGGREGATED_RATING_ID` (`rating_id`),
  KEY `RATING_OPTION_VOTE_AGGREGATED_STORE_ID` (`store_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Rating vote aggregated';

--
-- Table structure for table `rating_store`
--

DROP TABLE IF EXISTS `rating_store`;
CREATE TABLE `rating_store` (
  `rating_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Rating id',
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Store id',
  PRIMARY KEY (`rating_id`,`store_id`),
  KEY `RATING_STORE_STORE_ID` (`store_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Rating Store';

--
-- Table structure for table `rating_title`
--

DROP TABLE IF EXISTS `rating_title`;
CREATE TABLE `rating_title` (
  `rating_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Rating Id',
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Store Id',
  `value` varchar(255) NOT NULL COMMENT 'Rating Label',
  PRIMARY KEY (`rating_id`,`store_id`),
  KEY `RATING_TITLE_STORE_ID` (`store_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Rating Title';

--
-- Table structure for table `report_compared_product_index`
--

DROP TABLE IF EXISTS `report_compared_product_index`;
CREATE TABLE `report_compared_product_index` (
  `index_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Index Id',
  `visitor_id` int(10) unsigned DEFAULT NULL COMMENT 'Visitor Id',
  `customer_id` int(10) unsigned DEFAULT NULL COMMENT 'Customer Id',
  `product_id` int(10) unsigned NOT NULL COMMENT 'Product Id',
  `store_id` smallint(5) unsigned DEFAULT NULL COMMENT 'Store Id',
  `added_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Added At',
  PRIMARY KEY (`index_id`),
  UNIQUE KEY `REPORT_COMPARED_PRODUCT_INDEX_VISITOR_ID_PRODUCT_ID` (`visitor_id`,`product_id`),
  UNIQUE KEY `REPORT_COMPARED_PRODUCT_INDEX_CUSTOMER_ID_PRODUCT_ID` (`customer_id`,`product_id`),
  KEY `REPORT_COMPARED_PRODUCT_INDEX_STORE_ID` (`store_id`),
  KEY `REPORT_COMPARED_PRODUCT_INDEX_ADDED_AT` (`added_at`),
  KEY `REPORT_COMPARED_PRODUCT_INDEX_PRODUCT_ID` (`product_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='Reports Compared Product Index Table';

--
-- Table structure for table `report_event`
--

DROP TABLE IF EXISTS `report_event`;
CREATE TABLE `report_event` (
  `event_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Event Id',
  `logged_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Logged At',
  `event_type_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Event Type Id',
  `object_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Object Id',
  `subject_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Subject Id',
  `subtype` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Subtype',
  `store_id` smallint(5) unsigned NOT NULL COMMENT 'Store Id',
  PRIMARY KEY (`event_id`),
  KEY `REPORT_EVENT_EVENT_TYPE_ID` (`event_type_id`),
  KEY `REPORT_EVENT_SUBJECT_ID` (`subject_id`),
  KEY `REPORT_EVENT_OBJECT_ID` (`object_id`),
  KEY `REPORT_EVENT_SUBTYPE` (`subtype`),
  KEY `REPORT_EVENT_STORE_ID` (`store_id`)
) ENGINE=InnoDB AUTO_INCREMENT=273 DEFAULT CHARSET=utf8 COMMENT='Reports Event Table';

--
-- Dumping data for table `report_event`
--

LOCK TABLES `report_event` WRITE;
/*!40000 ALTER TABLE `report_event` DISABLE KEYS */;
INSERT INTO `report_event` VALUES (1,'2017-09-21 13:36:06',1,'3','10',1,2),(2,'2017-09-21 13:46:06',1,'1','10',1,2),(3,'2017-09-21 14:03:13',1,'4','10',1,2),(4,'2017-09-21 15:15:47',1,'1','11',1,2),(5,'2017-09-22 07:58:25',1,'4','13',1,2),(6,'2017-09-22 08:55:03',1,'4','14',1,2),(7,'2017-09-22 16:01:08',1,'1','19',1,2),(8,'2017-09-23 06:46:11',1,'1','23',1,2),(9,'2017-09-23 06:48:10',1,'2','23',1,2),(10,'2017-09-23 06:48:36',1,'1','23',1,2),(11,'2017-09-23 06:48:55',1,'4','23',1,2),(12,'2017-09-23 06:52:14',1,'4','23',1,2),(13,'2017-09-23 16:33:25',1,'4','27',1,2),(14,'2017-09-25 08:36:43',1,'4','7',0,2),(15,'2017-09-25 08:43:13',4,'4','7',0,2),(16,'2017-09-25 08:43:14',1,'4','7',0,2),(17,'2017-09-25 11:28:49',1,'4','6',0,2),(18,'2017-09-25 13:04:00',1,'6','61',1,2),(19,'2017-09-25 13:16:22',1,'6','61',1,2),(20,'2017-09-25 13:29:43',1,'7','61',1,2),(21,'2017-09-25 13:51:46',1,'8','61',1,2),(22,'2017-09-25 14:06:35',1,'1','63',1,2),(23,'2017-09-25 14:31:08',1,'4','68',1,2),(24,'2017-09-25 14:33:41',1,'8','68',1,2),(25,'2017-09-25 14:49:42',1,'1','7',0,2),(26,'2017-09-25 14:50:04',4,'1','7',0,2),(27,'2017-09-25 14:50:05',1,'1','7',0,2),(28,'2017-09-25 18:32:54',1,'8','6',0,2),(29,'2017-09-25 18:37:56',1,'8','6',0,2),(30,'2017-09-25 18:43:37',1,'8','6',0,2),(31,'2017-09-25 18:46:39',1,'4','6',0,2),(32,'2017-09-25 18:47:45',1,'4','6',0,2),(33,'2017-09-25 18:48:03',1,'4','6',0,2),(34,'2017-09-25 19:15:21',1,'9','6',0,2),(35,'2017-09-25 19:17:57',1,'8','6',0,2),(36,'2017-09-25 19:19:34',4,'8','6',0,2),(37,'2017-09-25 19:19:34',1,'8','6',0,2),(38,'2017-09-25 19:21:47',1,'9','6',0,2),(39,'2017-09-25 19:22:31',4,'9','6',0,2),(40,'2017-09-25 19:22:32',1,'9','6',0,2),(41,'2017-09-25 19:30:37',4,'8','6',0,2),(42,'2017-09-25 19:30:37',4,'9','6',0,2),(43,'2017-09-26 08:17:06',1,'8','79',1,2),(44,'2017-09-26 08:24:07',1,'8','79',1,2),(45,'2017-09-26 08:28:29',1,'8','79',1,2),(46,'2017-09-26 09:33:58',1,'8','81',1,2),(47,'2017-09-26 16:21:43',1,'8','6',0,2),(48,'2017-09-26 17:33:33',1,'2','88',1,2),(49,'2017-09-26 17:33:46',1,'12','88',1,2),(50,'2017-09-26 17:35:04',4,'12','88',1,2),(51,'2017-09-26 17:35:05',1,'12','88',1,2),(52,'2017-09-26 17:35:18',1,'11','88',1,2),(53,'2017-09-26 17:36:24',4,'11','88',1,2),(54,'2017-09-26 17:36:25',1,'11','88',1,2),(55,'2017-09-26 17:42:37',4,'12','6',0,2),(56,'2017-09-26 17:42:37',4,'11','6',0,2),(57,'2017-09-26 17:44:45',1,'12','6',0,2),(58,'2017-09-26 17:56:47',1,'12','6',0,2),(59,'2017-09-26 18:00:34',4,'12','6',0,2),(60,'2017-09-26 18:00:35',1,'12','6',0,2),(61,'2017-09-26 18:02:50',4,'12','6',0,2),(62,'2017-09-26 18:02:51',1,'12','6',0,2),(63,'2017-09-26 18:03:56',1,'11','6',0,2),(64,'2017-09-26 18:24:46',4,'11','6',0,2),(65,'2017-09-26 18:24:47',1,'11','6',0,2),(66,'2017-09-26 18:36:09',1,'2','6',0,2),(67,'2017-09-26 18:36:37',1,'1','6',0,2),(68,'2017-09-26 18:37:10',1,'11','6',0,2),(69,'2017-09-27 07:04:27',1,'11','6',0,2),(70,'2017-09-27 07:05:10',1,'12','6',0,2),(71,'2017-09-27 07:18:22',1,'11','6',0,2),(72,'2017-09-27 07:39:26',1,'11','6',0,2),(73,'2017-09-27 07:59:52',1,'11','94',1,2),(74,'2017-09-27 08:00:24',1,'12','94',1,2),(75,'2017-09-27 08:02:15',1,'2','94',1,2),(76,'2017-09-27 08:02:57',1,'1','94',1,2),(77,'2017-09-27 08:03:27',1,'3','94',1,2),(78,'2017-09-27 08:27:05',1,'1','95',1,2),(79,'2017-09-27 08:42:50',1,'1','7',0,2),(80,'2017-09-27 08:45:06',1,'1','7',0,2),(81,'2017-09-27 08:56:10',1,'1','7',0,2),(82,'2017-09-27 09:00:01',1,'1','7',0,2),(83,'2017-09-27 09:01:21',1,'1','7',0,2),(84,'2017-09-27 09:03:12',1,'1','7',0,2),(85,'2017-09-27 09:04:27',1,'1','7',0,2),(86,'2017-09-27 09:33:49',4,'1','7',0,2),(87,'2017-09-27 09:33:50',1,'1','7',0,2),(88,'2017-09-27 10:18:49',1,'16','7',0,2),(89,'2017-09-27 11:29:53',1,'18','6',0,2),(90,'2017-09-27 11:58:01',1,'17','7',0,2),(91,'2017-09-27 11:59:06',1,'17','7',0,2),(92,'2017-09-27 12:09:12',1,'17','7',0,2),(93,'2017-09-27 12:11:03',1,'2','7',0,2),(94,'2017-09-27 12:12:40',1,'2','7',0,2),(95,'2017-09-27 12:18:09',1,'19','7',0,2),(96,'2017-09-27 12:19:15',1,'19','7',0,2),(97,'2017-09-27 12:19:38',4,'19','7',0,2),(98,'2017-09-27 12:19:39',1,'19','7',0,2),(99,'2017-09-27 12:20:14',4,'19','7',0,2),(100,'2017-09-27 12:20:14',1,'19','7',0,2),(101,'2017-09-27 12:22:00',1,'19','7',0,2),(102,'2017-09-27 12:22:45',4,'19','7',0,2),(103,'2017-09-27 12:22:45',1,'19','7',0,2),(104,'2017-09-27 12:23:36',1,'19','7',0,2),(105,'2017-09-27 12:25:16',1,'2','7',0,2),(106,'2017-09-27 12:25:22',1,'19','7',0,2),(107,'2017-09-27 12:46:40',1,'19','7',0,2),(108,'2017-09-27 12:47:06',4,'19','7',0,2),(109,'2017-09-27 12:47:07',1,'19','7',0,2),(110,'2017-09-27 12:47:58',1,'19','7',0,2),(111,'2017-09-27 12:48:15',4,'19','7',0,2),(112,'2017-09-27 12:48:16',1,'19','7',0,2),(113,'2017-09-27 12:49:01',4,'19','7',0,2),(114,'2017-09-27 12:49:02',1,'19','7',0,2),(115,'2017-09-27 13:42:52',1,'19','103',1,2),(116,'2017-09-27 13:43:18',1,'19','7',0,2),(117,'2017-09-27 13:45:08',4,'19','7',0,2),(118,'2017-09-27 13:45:13',1,'19','7',0,2),(119,'2017-09-27 13:47:53',1,'19','7',0,2),(120,'2017-09-27 13:49:03',1,'19','7',0,2),(121,'2017-09-27 13:56:45',1,'19','7',0,2),(122,'2017-09-27 13:58:38',1,'19','7',0,2),(123,'2017-09-27 13:59:33',4,'19','7',0,2),(124,'2017-09-27 13:59:33',1,'19','7',0,2),(125,'2017-09-27 13:59:57',1,'18','7',0,2),(126,'2017-09-27 14:01:09',1,'17','7',0,2),(127,'2017-09-27 14:20:57',1,'17','7',0,2),(128,'2017-09-27 14:28:36',1,'17','6',0,2),(129,'2017-09-27 16:19:46',1,'20','6',0,2),(130,'2017-09-27 16:22:03',4,'20','6',0,2),(131,'2017-09-27 16:22:04',1,'20','6',0,2),(132,'2017-09-27 16:34:33',1,'3','106',1,2),(133,'2017-09-27 18:14:42',1,'21','107',1,2),(134,'2017-09-27 18:15:54',1,'21','6',0,2),(135,'2017-09-27 18:18:02',1,'2','108',1,2),(136,'2017-09-27 18:18:24',1,'1','108',1,2),(137,'2017-09-27 18:19:18',1,'21','108',1,2),(138,'2017-09-27 19:53:48',1,'19','110',1,2),(139,'2017-09-27 20:11:18',1,'19','110',1,2),(140,'2017-09-27 21:29:31',1,'1','111',1,2),(141,'2017-09-28 08:48:12',3,'2','7',0,2),(142,'2017-09-28 08:48:38',1,'2','7',0,2),(143,'2017-09-28 08:49:19',1,'20','7',0,2),(144,'2017-09-28 08:49:37',4,'20','7',0,2),(145,'2017-09-28 08:49:38',1,'20','7',0,2),(146,'2017-09-29 16:41:29',1,'21','122',1,2),(147,'2017-09-29 16:42:00',1,'20','122',1,2),(148,'2017-09-29 17:01:17',1,'20','6',0,2),(149,'2017-09-29 17:02:41',4,'20','6',0,2),(150,'2017-09-29 17:02:42',1,'20','6',0,2),(151,'2017-10-01 10:17:02',1,'23','6',0,2),(152,'2017-10-01 10:21:03',4,'23','6',0,2),(153,'2017-10-01 10:21:03',1,'23','6',0,2),(154,'2017-10-01 11:55:29',4,'20','6',0,2),(155,'2017-10-01 11:57:47',1,'20','129',1,2),(156,'2017-10-01 12:47:54',1,'23','6',0,2),(157,'2017-10-01 12:49:00',4,'23','6',0,2),(158,'2017-10-01 12:49:01',1,'23','6',0,2),(159,'2017-10-01 12:49:26',1,'20','6',0,2),(160,'2017-10-01 12:50:00',1,'23','6',0,2),(161,'2017-10-01 12:50:38',1,'23','6',0,2),(162,'2017-10-01 12:51:18',1,'23','6',0,2),(163,'2017-10-02 07:44:50',4,'23','6',0,2),(164,'2017-10-02 07:44:58',1,'23','6',0,2),(165,'2017-10-02 07:45:24',1,'23','6',0,2),(166,'2017-10-02 07:49:14',1,'23','6',0,2),(167,'2017-10-02 07:49:50',1,'21','6',0,2),(168,'2017-10-02 07:51:53',4,'21','6',0,2),(169,'2017-10-02 07:51:55',1,'21','6',0,2),(170,'2017-10-02 07:55:11',1,'23','6',0,2),(171,'2017-10-02 07:55:41',4,'23','6',0,2),(172,'2017-10-02 07:55:42',1,'23','6',0,2),(173,'2017-10-02 07:58:11',1,'2','139',1,2),(174,'2017-10-02 09:25:57',1,'23','141',1,2),(175,'2017-10-02 09:31:48',1,'23','142',1,2),(176,'2017-10-02 12:56:52',1,'1','6',0,2),(177,'2017-10-02 13:00:22',1,'2','6',0,2),(178,'2017-10-02 14:06:34',1,'25','6',0,2),(179,'2017-10-02 14:06:48',1,'25','145',1,2),(180,'2017-10-02 14:08:07',1,'24','6',0,2),(181,'2017-10-02 14:11:26',1,'25','6',0,2),(182,'2017-10-02 14:47:28',1,'26','6',0,2),(183,'2017-10-02 14:54:02',1,'26','6',0,2),(184,'2017-10-02 14:57:57',1,'26','6',0,2),(185,'2017-10-02 14:58:35',1,'26','6',0,2),(186,'2017-10-02 14:58:37',1,'26','150',1,2),(187,'2017-10-02 14:58:53',1,'23','6',0,2),(188,'2017-10-02 14:59:00',4,'23','6',0,2),(189,'2017-10-02 14:59:05',1,'23','6',0,2),(190,'2017-10-02 15:00:32',1,'26','6',0,2),(191,'2017-10-02 15:01:17',1,'26','6',0,2),(192,'2017-10-02 15:01:37',1,'20','6',0,2),(193,'2017-10-02 15:01:51',4,'20','6',0,2),(194,'2017-10-02 15:01:52',1,'20','6',0,2),(195,'2017-10-02 15:02:25',1,'26','6',0,2),(196,'2017-10-02 15:15:17',1,'21','6',0,2),(197,'2017-10-02 15:15:46',4,'21','6',0,2),(198,'2017-10-02 15:15:46',1,'21','6',0,2),(199,'2017-10-02 15:16:13',1,'21','6',0,2),(200,'2017-10-02 15:50:14',1,'26','6',0,2),(201,'2017-10-02 15:51:29',1,'26','6',0,2),(202,'2017-10-02 15:56:23',4,'26','6',0,2),(203,'2017-10-02 15:56:23',1,'26','6',0,2),(204,'2017-10-02 15:56:52',1,'26','6',0,2),(205,'2017-10-02 16:36:10',1,'26','6',0,2),(206,'2017-10-02 16:37:36',4,'26','6',0,2),(207,'2017-10-02 16:37:36',1,'26','6',0,2),(208,'2017-10-03 10:10:36',1,'26','6',0,2),(209,'2017-10-03 10:14:08',1,'26','160',1,2),(210,'2017-10-04 14:20:19',1,'26','6',0,2),(211,'2017-10-04 14:24:33',1,'26','6',0,2),(212,'2017-10-04 14:25:43',1,'24','6',0,2),(213,'2017-10-04 14:25:45',1,'24','172',1,2),(214,'2017-10-04 14:25:52',1,'26','172',1,2),(215,'2017-10-04 14:26:01',1,'21','6',0,2),(216,'2017-10-04 14:26:15',1,'20','172',1,2),(217,'2017-10-04 14:26:19',1,'23','6',0,2),(218,'2017-10-04 14:26:21',1,'23','172',1,2),(219,'2017-10-04 14:26:28',1,'20','6',0,2),(220,'2017-10-04 14:26:40',1,'26','6',0,2),(221,'2017-10-04 14:26:41',1,'26','172',1,2),(222,'2017-10-04 14:27:54',1,'20','6',0,2),(223,'2017-10-04 15:36:26',1,'28','6',0,2),(224,'2017-10-04 15:38:03',1,'27','6',0,2),(225,'2017-10-04 15:53:01',1,'27','6',0,2),(226,'2017-10-04 15:54:26',4,'27','6',0,2),(227,'2017-10-04 15:54:27',1,'27','6',0,2),(228,'2017-10-04 15:54:41',1,'28','6',0,2),(229,'2017-10-04 15:55:28',4,'28','6',0,2),(230,'2017-10-04 15:55:29',1,'28','6',0,2),(231,'2017-10-05 09:19:18',1,'31','6',0,2),(232,'2017-10-05 09:20:53',4,'31','6',0,2),(233,'2017-10-05 09:20:54',1,'31','6',0,2),(234,'2017-10-05 09:23:48',1,'30','6',0,2),(235,'2017-10-05 09:24:23',1,'27','6',0,2),(236,'2017-10-05 09:26:27',4,'27','6',0,2),(237,'2017-10-05 09:26:28',1,'27','6',0,2),(238,'2017-10-05 20:43:40',1,'28','184',1,2),(239,'2017-10-05 20:44:40',4,'28','184',1,2),(240,'2017-10-05 20:44:41',1,'28','184',1,2),(241,'2017-10-05 20:45:35',1,'30','184',1,2),(242,'2017-10-05 20:46:23',4,'30','184',1,2),(243,'2017-10-05 20:46:24',1,'30','184',1,2),(244,'2017-10-05 20:47:05',1,'27','184',1,2),(245,'2017-10-05 20:48:21',4,'27','184',1,2),(246,'2017-10-05 20:48:22',1,'27','184',1,2),(247,'2017-10-05 20:48:33',1,'27','184',1,2),(248,'2017-10-05 20:49:42',1,'27','184',1,2),(249,'2017-10-05 20:55:11',1,'31','184',1,2),(250,'2017-10-08 19:30:30',4,'30','200',1,2),(251,'2017-10-09 07:03:03',1,'27','204',1,2),(252,'2017-10-09 07:06:26',1,'30','204',1,2),(253,'2017-10-09 07:06:40',1,'28','204',1,2),(254,'2017-10-09 07:06:49',1,'29','204',1,2),(255,'2017-10-09 07:06:55',1,'31','204',1,2),(256,'2017-10-09 07:07:09',1,'27','204',1,2),(257,'2017-10-09 07:14:43',1,'35','204',1,2),(258,'2017-10-09 07:19:57',1,'35','204',1,2),(259,'2017-10-09 07:20:28',4,'35','204',1,2),(260,'2017-10-09 07:20:29',1,'35','204',1,2),(261,'2017-10-09 07:23:37',1,'35','204',1,2),(262,'2017-10-09 07:41:43',4,'35','204',1,2),(263,'2017-10-09 07:41:44',1,'35','204',1,2),(264,'2017-10-09 07:43:45',1,'35','204',1,2),(265,'2017-10-09 12:26:46',1,'35','207',1,2),(266,'2017-10-09 12:44:07',1,'31','207',1,2),(267,'2017-10-09 12:44:38',1,'28','207',1,2),(268,'2017-10-09 13:41:21',4,'30','212',1,2),(269,'2017-10-09 13:41:51',1,'30','212',1,2),(270,'2017-10-09 13:41:59',4,'30','212',1,2),(271,'2017-10-09 13:41:59',1,'30','212',1,2),(272,'2017-10-09 13:55:53',1,'30','6',0,2);
/*!40000 ALTER TABLE `report_event` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `report_event_types`
--

DROP TABLE IF EXISTS `report_event_types`;
CREATE TABLE `report_event_types` (
  `event_type_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Event Type Id',
  `event_name` varchar(64) NOT NULL COMMENT 'Event Name',
  `customer_login` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Customer Login',
  PRIMARY KEY (`event_type_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='Reports Event Type Table';

--
-- Dumping data for table `report_event_types`
--

LOCK TABLES `report_event_types` WRITE;
/*!40000 ALTER TABLE `report_event_types` DISABLE KEYS */;
INSERT INTO `report_event_types` VALUES (1,'catalog_product_view',0),(2,'sendfriend_product',0),(3,'catalog_product_compare_add_product',0),(4,'checkout_cart_add_product',0),(5,'wishlist_add_product',0),(6,'wishlist_share',0);
/*!40000 ALTER TABLE `report_event_types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `report_viewed_product_aggregated_daily`
--

DROP TABLE IF EXISTS `report_viewed_product_aggregated_daily`;
CREATE TABLE `report_viewed_product_aggregated_daily` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Id',
  `period` date DEFAULT NULL COMMENT 'Period',
  `store_id` smallint(5) unsigned DEFAULT NULL COMMENT 'Store Id',
  `product_id` int(10) unsigned DEFAULT NULL COMMENT 'Product Id',
  `product_name` varchar(255) DEFAULT NULL COMMENT 'Product Name',
  `product_price` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Product Price',
  `views_num` int(11) NOT NULL DEFAULT '0' COMMENT 'Number of Views',
  `rating_pos` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Rating Pos',
  PRIMARY KEY (`id`),
  UNIQUE KEY `REPORT_VIEWED_PRD_AGGRED_DAILY_PERIOD_STORE_ID_PRD_ID` (`period`,`store_id`,`product_id`),
  KEY `REPORT_VIEWED_PRODUCT_AGGREGATED_DAILY_STORE_ID` (`store_id`),
  KEY `REPORT_VIEWED_PRODUCT_AGGREGATED_DAILY_PRODUCT_ID` (`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Most Viewed Products Aggregated Daily';

--
-- Table structure for table `report_viewed_product_aggregated_monthly`
--

DROP TABLE IF EXISTS `report_viewed_product_aggregated_monthly`;
CREATE TABLE `report_viewed_product_aggregated_monthly` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Id',
  `period` date DEFAULT NULL COMMENT 'Period',
  `store_id` smallint(5) unsigned DEFAULT NULL COMMENT 'Store Id',
  `product_id` int(10) unsigned DEFAULT NULL COMMENT 'Product Id',
  `product_name` varchar(255) DEFAULT NULL COMMENT 'Product Name',
  `product_price` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Product Price',
  `views_num` int(11) NOT NULL DEFAULT '0' COMMENT 'Number of Views',
  `rating_pos` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Rating Pos',
  PRIMARY KEY (`id`),
  UNIQUE KEY `REPORT_VIEWED_PRD_AGGRED_MONTHLY_PERIOD_STORE_ID_PRD_ID` (`period`,`store_id`,`product_id`),
  KEY `REPORT_VIEWED_PRODUCT_AGGREGATED_MONTHLY_STORE_ID` (`store_id`),
  KEY `REPORT_VIEWED_PRODUCT_AGGREGATED_MONTHLY_PRODUCT_ID` (`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Most Viewed Products Aggregated Monthly';

--
-- Table structure for table `report_viewed_product_aggregated_yearly`
--

DROP TABLE IF EXISTS `report_viewed_product_aggregated_yearly`;
CREATE TABLE `report_viewed_product_aggregated_yearly` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Id',
  `period` date DEFAULT NULL COMMENT 'Period',
  `store_id` smallint(5) unsigned DEFAULT NULL COMMENT 'Store Id',
  `product_id` int(10) unsigned DEFAULT NULL COMMENT 'Product Id',
  `product_name` varchar(255) DEFAULT NULL COMMENT 'Product Name',
  `product_price` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Product Price',
  `views_num` int(11) NOT NULL DEFAULT '0' COMMENT 'Number of Views',
  `rating_pos` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Rating Pos',
  PRIMARY KEY (`id`),
  UNIQUE KEY `REPORT_VIEWED_PRD_AGGRED_YEARLY_PERIOD_STORE_ID_PRD_ID` (`period`,`store_id`,`product_id`),
  KEY `REPORT_VIEWED_PRODUCT_AGGREGATED_YEARLY_STORE_ID` (`store_id`),
  KEY `REPORT_VIEWED_PRODUCT_AGGREGATED_YEARLY_PRODUCT_ID` (`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Most Viewed Products Aggregated Yearly';

--
-- Table structure for table `report_viewed_product_index`
--

DROP TABLE IF EXISTS `report_viewed_product_index`;
CREATE TABLE `report_viewed_product_index` (
  `index_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Index Id',
  `visitor_id` int(10) unsigned DEFAULT NULL COMMENT 'Visitor Id',
  `customer_id` int(10) unsigned DEFAULT NULL COMMENT 'Customer Id',
  `product_id` int(10) unsigned NOT NULL COMMENT 'Product Id',
  `store_id` smallint(5) unsigned DEFAULT NULL COMMENT 'Store Id',
  `added_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Added At',
  PRIMARY KEY (`index_id`),
  UNIQUE KEY `REPORT_VIEWED_PRODUCT_INDEX_VISITOR_ID_PRODUCT_ID` (`visitor_id`,`product_id`),
  UNIQUE KEY `REPORT_VIEWED_PRODUCT_INDEX_CUSTOMER_ID_PRODUCT_ID` (`customer_id`,`product_id`),
  KEY `REPORT_VIEWED_PRODUCT_INDEX_STORE_ID` (`store_id`),
  KEY `REPORT_VIEWED_PRODUCT_INDEX_ADDED_AT` (`added_at`),
  KEY `REPORT_VIEWED_PRODUCT_INDEX_PRODUCT_ID` (`product_id`)
) ENGINE=InnoDB AUTO_INCREMENT=222 DEFAULT CHARSET=utf8 COMMENT='Reports Viewed Product Index Table';

--
-- Dumping data for table `report_viewed_product_index`
--

LOCK TABLES `report_viewed_product_index` WRITE;
/*!40000 ALTER TABLE `report_viewed_product_index` DISABLE KEYS */;
INSERT INTO `report_viewed_product_index` VALUES (184,NULL,'6','28',2,'2017-10-04 15:36:26'),(185,NULL,'6','27',2,'2017-10-04 15:38:03'),(190,NULL,'6','31',2,'2017-10-05 09:19:18'),(192,NULL,'6','30',2,'2017-10-05 09:23:48'),(195,'184',NULL,'28',2,'2017-10-05 20:43:40'),(197,'184',NULL,'30',2,'2017-10-05 20:45:35'),(199,'184',NULL,'27',2,'2017-10-05 20:47:05'),(203,'184',NULL,'31',2,'2017-10-05 20:55:11'),(204,'204',NULL,'27',2,'2017-10-09 07:03:03'),(205,'204',NULL,'30',2,'2017-10-09 07:06:26'),(206,'204',NULL,'28',2,'2017-10-09 07:06:40'),(207,'204',NULL,'29',2,'2017-10-09 07:06:49'),(208,'204',NULL,'31',2,'2017-10-09 07:06:55'),(210,'204',NULL,'35',2,'2017-10-09 07:14:43'),(216,'207',NULL,'35',2,'2017-10-09 12:26:46'),(217,'207',NULL,'31',2,'2017-10-09 12:44:07'),(218,'207',NULL,'28',2,'2017-10-09 12:44:38');
/*!40000 ALTER TABLE `report_viewed_product_index` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reporting_counts`
--

DROP TABLE IF EXISTS `reporting_counts`;
CREATE TABLE `reporting_counts` (
  `entity_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Entity Id',
  `type` varchar(255) DEFAULT NULL COMMENT 'Item Reported',
  `count` int(10) unsigned DEFAULT NULL COMMENT 'Count Value',
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Updated At',
  PRIMARY KEY (`entity_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Reporting for all count related events generated via the cron job';

--
-- Table structure for table `reporting_module_status`
--

DROP TABLE IF EXISTS `reporting_module_status`;
CREATE TABLE `reporting_module_status` (
  `entity_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Module Id',
  `name` varchar(255) DEFAULT NULL COMMENT 'Module Name',
  `active` varchar(255) DEFAULT NULL COMMENT 'Module Active Status',
  `setup_version` varchar(255) DEFAULT NULL COMMENT 'Module Version',
  `state` varchar(255) DEFAULT NULL COMMENT 'Module State',
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Updated At',
  PRIMARY KEY (`entity_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Module Status Table';

--
-- Table structure for table `reporting_orders`
--

DROP TABLE IF EXISTS `reporting_orders`;
CREATE TABLE `reporting_orders` (
  `entity_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Entity Id',
  `customer_id` int(10) unsigned DEFAULT NULL COMMENT 'Customer Id',
  `total` decimal(20,2) DEFAULT NULL COMMENT 'Total From Store',
  `total_base` decimal(20,2) DEFAULT NULL COMMENT 'Total From Base Currency',
  `item_count` int(10) unsigned NOT NULL COMMENT 'Line Item Count',
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Updated At',
  PRIMARY KEY (`entity_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Reporting for all orders';

--
-- Table structure for table `reporting_system_updates`
--

DROP TABLE IF EXISTS `reporting_system_updates`;
CREATE TABLE `reporting_system_updates` (
  `entity_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Entity Id',
  `type` varchar(255) DEFAULT NULL COMMENT 'Update Type',
  `action` varchar(255) DEFAULT NULL COMMENT 'Action Performed',
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Updated At',
  PRIMARY KEY (`entity_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Reporting for system updates';

--
-- Table structure for table `reporting_users`
--

DROP TABLE IF EXISTS `reporting_users`;
CREATE TABLE `reporting_users` (
  `entity_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Entity Id',
  `type` varchar(255) DEFAULT NULL COMMENT 'User Type',
  `action` varchar(255) DEFAULT NULL COMMENT 'Action Performed',
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Updated At',
  PRIMARY KEY (`entity_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Reporting for user actions';

--
-- Table structure for table `review`
--

DROP TABLE IF EXISTS `review`;
CREATE TABLE `review` (
  `review_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Review id',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Review create date',
  `entity_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity id',
  `entity_pk_value` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Product id',
  `status_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Status code',
  PRIMARY KEY (`review_id`),
  KEY `REVIEW_ENTITY_ID` (`entity_id`),
  KEY `REVIEW_STATUS_ID` (`status_id`),
  KEY `REVIEW_ENTITY_PK_VALUE` (`entity_pk_value`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Review base information';

--
-- Table structure for table `review_detail`
--

DROP TABLE IF EXISTS `review_detail`;
CREATE TABLE `review_detail` (
  `detail_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Review detail id',
  `review_id` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT 'Review id',
  `store_id` smallint(5) unsigned DEFAULT '0' COMMENT 'Store id',
  `title` varchar(255) NOT NULL COMMENT 'Title',
  `detail` text NOT NULL COMMENT 'Detail description',
  `nickname` varchar(128) NOT NULL COMMENT 'User nickname',
  `customer_id` int(10) unsigned DEFAULT NULL COMMENT 'Customer Id',
  PRIMARY KEY (`detail_id`),
  KEY `REVIEW_DETAIL_REVIEW_ID` (`review_id`),
  KEY `REVIEW_DETAIL_STORE_ID` (`store_id`),
  KEY `REVIEW_DETAIL_CUSTOMER_ID` (`customer_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Review detail information';

--
-- Table structure for table `review_entity`
--

DROP TABLE IF EXISTS `review_entity`;
CREATE TABLE `review_entity` (
  `entity_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Review entity id',
  `entity_code` varchar(32) NOT NULL COMMENT 'Review entity code',
  PRIMARY KEY (`entity_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='Review entities';

--
-- Dumping data for table `review_entity`
--

LOCK TABLES `review_entity` WRITE;
/*!40000 ALTER TABLE `review_entity` DISABLE KEYS */;
INSERT INTO `review_entity` VALUES (1,'product'),(2,'customer'),(3,'category');
/*!40000 ALTER TABLE `review_entity` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `review_entity_summary`
--

DROP TABLE IF EXISTS `review_entity_summary`;
CREATE TABLE `review_entity_summary` (
  `primary_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'Summary review entity id',
  `entity_pk_value` bigint(20) NOT NULL DEFAULT '0' COMMENT 'Product id',
  `entity_type` smallint(6) NOT NULL DEFAULT '0' COMMENT 'Entity type id',
  `reviews_count` smallint(6) NOT NULL DEFAULT '0' COMMENT 'Qty of reviews',
  `rating_summary` smallint(6) NOT NULL DEFAULT '0' COMMENT 'Summarized rating',
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Store id',
  PRIMARY KEY (`primary_id`),
  KEY `REVIEW_ENTITY_SUMMARY_STORE_ID` (`store_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Review aggregates';

--
-- Table structure for table `review_status`
--

DROP TABLE IF EXISTS `review_status`;
CREATE TABLE `review_status` (
  `status_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Status id',
  `status_code` varchar(32) NOT NULL COMMENT 'Status code',
  PRIMARY KEY (`status_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='Review statuses';

--
-- Dumping data for table `review_status`
--

LOCK TABLES `review_status` WRITE;
/*!40000 ALTER TABLE `review_status` DISABLE KEYS */;
INSERT INTO `review_status` VALUES (1,'Approved'),(2,'Pending'),(3,'Not Approved');
/*!40000 ALTER TABLE `review_status` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `review_store`
--

DROP TABLE IF EXISTS `review_store`;
CREATE TABLE `review_store` (
  `review_id` bigint(20) unsigned NOT NULL COMMENT 'Review Id',
  `store_id` smallint(5) unsigned NOT NULL COMMENT 'Store Id',
  PRIMARY KEY (`review_id`,`store_id`),
  KEY `REVIEW_STORE_STORE_ID` (`store_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Review Store';

--
-- Table structure for table `sales_bestsellers_aggregated_daily`
--

DROP TABLE IF EXISTS `sales_bestsellers_aggregated_daily`;
CREATE TABLE `sales_bestsellers_aggregated_daily` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Id',
  `period` date DEFAULT NULL COMMENT 'Period',
  `store_id` smallint(5) unsigned DEFAULT NULL COMMENT 'Store Id',
  `product_id` int(10) unsigned DEFAULT NULL COMMENT 'Product Id',
  `product_name` varchar(255) DEFAULT NULL COMMENT 'Product Name',
  `product_price` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Product Price',
  `qty_ordered` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Qty Ordered',
  `rating_pos` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Rating Pos',
  PRIMARY KEY (`id`),
  UNIQUE KEY `SALES_BESTSELLERS_AGGREGATED_DAILY_PERIOD_STORE_ID_PRODUCT_ID` (`period`,`store_id`,`product_id`),
  KEY `SALES_BESTSELLERS_AGGREGATED_DAILY_STORE_ID` (`store_id`),
  KEY `SALES_BESTSELLERS_AGGREGATED_DAILY_PRODUCT_ID` (`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Sales Bestsellers Aggregated Daily';

--
-- Table structure for table `sales_bestsellers_aggregated_monthly`
--

DROP TABLE IF EXISTS `sales_bestsellers_aggregated_monthly`;
CREATE TABLE `sales_bestsellers_aggregated_monthly` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Id',
  `period` date DEFAULT NULL COMMENT 'Period',
  `store_id` smallint(5) unsigned DEFAULT NULL COMMENT 'Store Id',
  `product_id` int(10) unsigned DEFAULT NULL COMMENT 'Product Id',
  `product_name` varchar(255) DEFAULT NULL COMMENT 'Product Name',
  `product_price` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Product Price',
  `qty_ordered` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Qty Ordered',
  `rating_pos` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Rating Pos',
  PRIMARY KEY (`id`),
  UNIQUE KEY `SALES_BESTSELLERS_AGGREGATED_MONTHLY_PERIOD_STORE_ID_PRODUCT_ID` (`period`,`store_id`,`product_id`),
  KEY `SALES_BESTSELLERS_AGGREGATED_MONTHLY_STORE_ID` (`store_id`),
  KEY `SALES_BESTSELLERS_AGGREGATED_MONTHLY_PRODUCT_ID` (`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Sales Bestsellers Aggregated Monthly';

--
-- Table structure for table `sales_bestsellers_aggregated_yearly`
--

DROP TABLE IF EXISTS `sales_bestsellers_aggregated_yearly`;
CREATE TABLE `sales_bestsellers_aggregated_yearly` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Id',
  `period` date DEFAULT NULL COMMENT 'Period',
  `store_id` smallint(5) unsigned DEFAULT NULL COMMENT 'Store Id',
  `product_id` int(10) unsigned DEFAULT NULL COMMENT 'Product Id',
  `product_name` varchar(255) DEFAULT NULL COMMENT 'Product Name',
  `product_price` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Product Price',
  `qty_ordered` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Qty Ordered',
  `rating_pos` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Rating Pos',
  PRIMARY KEY (`id`),
  UNIQUE KEY `SALES_BESTSELLERS_AGGREGATED_YEARLY_PERIOD_STORE_ID_PRODUCT_ID` (`period`,`store_id`,`product_id`),
  KEY `SALES_BESTSELLERS_AGGREGATED_YEARLY_STORE_ID` (`store_id`),
  KEY `SALES_BESTSELLERS_AGGREGATED_YEARLY_PRODUCT_ID` (`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Sales Bestsellers Aggregated Yearly';

--
-- Table structure for table `sales_creditmemo`
--

DROP TABLE IF EXISTS `sales_creditmemo`;
CREATE TABLE `sales_creditmemo` (
  `entity_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Entity Id',
  `store_id` smallint(5) unsigned DEFAULT NULL COMMENT 'Store Id',
  `adjustment_positive` decimal(12,4) DEFAULT NULL COMMENT 'Adjustment Positive',
  `base_shipping_tax_amount` decimal(12,4) DEFAULT NULL COMMENT 'Base Shipping Tax Amount',
  `store_to_order_rate` decimal(12,4) DEFAULT NULL COMMENT 'Store To Order Rate',
  `base_discount_amount` decimal(12,4) DEFAULT NULL COMMENT 'Base Discount Amount',
  `base_to_order_rate` decimal(12,4) DEFAULT NULL COMMENT 'Base To Order Rate',
  `grand_total` decimal(12,4) DEFAULT NULL COMMENT 'Grand Total',
  `base_adjustment_negative` decimal(12,4) DEFAULT NULL COMMENT 'Base Adjustment Negative',
  `base_subtotal_incl_tax` decimal(12,4) DEFAULT NULL COMMENT 'Base Subtotal Incl Tax',
  `shipping_amount` decimal(12,4) DEFAULT NULL COMMENT 'Shipping Amount',
  `subtotal_incl_tax` decimal(12,4) DEFAULT NULL COMMENT 'Subtotal Incl Tax',
  `adjustment_negative` decimal(12,4) DEFAULT NULL COMMENT 'Adjustment Negative',
  `base_shipping_amount` decimal(12,4) DEFAULT NULL COMMENT 'Base Shipping Amount',
  `store_to_base_rate` decimal(12,4) DEFAULT NULL COMMENT 'Store To Base Rate',
  `base_to_global_rate` decimal(12,4) DEFAULT NULL COMMENT 'Base To Global Rate',
  `base_adjustment` decimal(12,4) DEFAULT NULL COMMENT 'Base Adjustment',
  `base_subtotal` decimal(12,4) DEFAULT NULL COMMENT 'Base Subtotal',
  `discount_amount` decimal(12,4) DEFAULT NULL COMMENT 'Discount Amount',
  `subtotal` decimal(12,4) DEFAULT NULL COMMENT 'Subtotal',
  `adjustment` decimal(12,4) DEFAULT NULL COMMENT 'Adjustment',
  `base_grand_total` decimal(12,4) DEFAULT NULL COMMENT 'Base Grand Total',
  `base_adjustment_positive` decimal(12,4) DEFAULT NULL COMMENT 'Base Adjustment Positive',
  `base_tax_amount` decimal(12,4) DEFAULT NULL COMMENT 'Base Tax Amount',
  `shipping_tax_amount` decimal(12,4) DEFAULT NULL COMMENT 'Shipping Tax Amount',
  `tax_amount` decimal(12,4) DEFAULT NULL COMMENT 'Tax Amount',
  `order_id` int(10) unsigned NOT NULL COMMENT 'Order Id',
  `email_sent` smallint(5) unsigned DEFAULT NULL COMMENT 'Email Sent',
  `send_email` smallint(5) unsigned DEFAULT NULL COMMENT 'Send Email',
  `creditmemo_status` int(11) DEFAULT NULL COMMENT 'Creditmemo Status',
  `state` int(11) DEFAULT NULL COMMENT 'State',
  `shipping_address_id` int(11) DEFAULT NULL COMMENT 'Shipping Address Id',
  `billing_address_id` int(11) DEFAULT NULL COMMENT 'Billing Address Id',
  `invoice_id` int(11) DEFAULT NULL COMMENT 'Invoice Id',
  `store_currency_code` varchar(3) DEFAULT NULL COMMENT 'Store Currency Code',
  `order_currency_code` varchar(3) DEFAULT NULL COMMENT 'Order Currency Code',
  `base_currency_code` varchar(3) DEFAULT NULL COMMENT 'Base Currency Code',
  `global_currency_code` varchar(3) DEFAULT NULL COMMENT 'Global Currency Code',
  `transaction_id` varchar(255) DEFAULT NULL COMMENT 'Transaction Id',
  `increment_id` varchar(50) DEFAULT NULL COMMENT 'Increment Id',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Created At',
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Updated At',
  `discount_tax_compensation_amount` decimal(12,4) DEFAULT NULL COMMENT 'Discount Tax Compensation Amount',
  `base_discount_tax_compensation_amount` decimal(12,4) DEFAULT NULL COMMENT 'Base Discount Tax Compensation Amount',
  `shipping_discount_tax_compensation_amount` decimal(12,4) DEFAULT NULL COMMENT 'Shipping Discount Tax Compensation Amount',
  `base_shipping_discount_tax_compensation_amnt` decimal(12,4) DEFAULT NULL COMMENT 'Base Shipping Discount Tax Compensation Amount',
  `shipping_incl_tax` decimal(12,4) DEFAULT NULL COMMENT 'Shipping Incl Tax',
  `base_shipping_incl_tax` decimal(12,4) DEFAULT NULL COMMENT 'Base Shipping Incl Tax',
  `discount_description` varchar(255) DEFAULT NULL COMMENT 'Discount Description',
  `customer_note` text COMMENT 'Customer Note',
  `customer_note_notify` smallint(5) unsigned DEFAULT NULL COMMENT 'Customer Note Notify',
  PRIMARY KEY (`entity_id`),
  UNIQUE KEY `SALES_CREDITMEMO_INCREMENT_ID_STORE_ID` (`increment_id`,`store_id`),
  KEY `SALES_CREDITMEMO_STORE_ID` (`store_id`),
  KEY `SALES_CREDITMEMO_ORDER_ID` (`order_id`),
  KEY `SALES_CREDITMEMO_CREDITMEMO_STATUS` (`creditmemo_status`),
  KEY `SALES_CREDITMEMO_STATE` (`state`),
  KEY `SALES_CREDITMEMO_CREATED_AT` (`created_at`),
  KEY `SALES_CREDITMEMO_UPDATED_AT` (`updated_at`),
  KEY `SALES_CREDITMEMO_SEND_EMAIL` (`send_email`),
  KEY `SALES_CREDITMEMO_EMAIL_SENT` (`email_sent`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Sales Flat Creditmemo';

--
-- Table structure for table `sales_creditmemo_comment`
--

DROP TABLE IF EXISTS `sales_creditmemo_comment`;
CREATE TABLE `sales_creditmemo_comment` (
  `entity_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Entity Id',
  `parent_id` int(10) unsigned NOT NULL COMMENT 'Parent Id',
  `is_customer_notified` int(11) DEFAULT NULL COMMENT 'Is Customer Notified',
  `is_visible_on_front` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Is Visible On Front',
  `comment` text COMMENT 'Comment',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Created At',
  PRIMARY KEY (`entity_id`),
  KEY `SALES_CREDITMEMO_COMMENT_CREATED_AT` (`created_at`),
  KEY `SALES_CREDITMEMO_COMMENT_PARENT_ID` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Sales Flat Creditmemo Comment';

--
-- Table structure for table `sales_creditmemo_grid`
--

DROP TABLE IF EXISTS `sales_creditmemo_grid`;
CREATE TABLE `sales_creditmemo_grid` (
  `entity_id` int(10) unsigned NOT NULL COMMENT 'Entity Id',
  `increment_id` varchar(50) DEFAULT NULL COMMENT 'Increment Id',
  `created_at` timestamp NULL DEFAULT NULL COMMENT 'Created At',
  `updated_at` timestamp NULL DEFAULT NULL COMMENT 'Updated At',
  `order_id` int(10) unsigned NOT NULL COMMENT 'Order Id',
  `order_increment_id` varchar(50) DEFAULT NULL COMMENT 'Order Increment Id',
  `order_created_at` timestamp NULL DEFAULT NULL COMMENT 'Order Created At',
  `billing_name` varchar(255) DEFAULT NULL COMMENT 'Billing Name',
  `state` int(11) DEFAULT NULL COMMENT 'Status',
  `base_grand_total` decimal(12,4) DEFAULT NULL COMMENT 'Base Grand Total',
  `order_status` varchar(32) DEFAULT NULL COMMENT 'Order Status',
  `store_id` smallint(5) unsigned DEFAULT NULL COMMENT 'Store Id',
  `billing_address` varchar(255) DEFAULT NULL COMMENT 'Billing Address',
  `shipping_address` varchar(255) DEFAULT NULL COMMENT 'Shipping Address',
  `customer_name` varchar(128) NOT NULL COMMENT 'Customer Name',
  `customer_email` varchar(128) DEFAULT NULL COMMENT 'Customer Email',
  `customer_group_id` smallint(6) DEFAULT NULL COMMENT 'Customer Group Id',
  `payment_method` varchar(32) DEFAULT NULL COMMENT 'Payment Method',
  `shipping_information` varchar(255) DEFAULT NULL COMMENT 'Shipping Method Name',
  `subtotal` decimal(12,4) DEFAULT NULL COMMENT 'Subtotal',
  `shipping_and_handling` decimal(12,4) DEFAULT NULL COMMENT 'Shipping and handling amount',
  `adjustment_positive` decimal(12,4) DEFAULT NULL COMMENT 'Adjustment Positive',
  `adjustment_negative` decimal(12,4) DEFAULT NULL COMMENT 'Adjustment Negative',
  `order_base_grand_total` decimal(12,4) DEFAULT NULL COMMENT 'Order Grand Total',
  PRIMARY KEY (`entity_id`),
  UNIQUE KEY `SALES_CREDITMEMO_GRID_INCREMENT_ID_STORE_ID` (`increment_id`,`store_id`),
  KEY `SALES_CREDITMEMO_GRID_ORDER_INCREMENT_ID` (`order_increment_id`),
  KEY `SALES_CREDITMEMO_GRID_CREATED_AT` (`created_at`),
  KEY `SALES_CREDITMEMO_GRID_UPDATED_AT` (`updated_at`),
  KEY `SALES_CREDITMEMO_GRID_ORDER_CREATED_AT` (`order_created_at`),
  KEY `SALES_CREDITMEMO_GRID_STATE` (`state`),
  KEY `SALES_CREDITMEMO_GRID_BILLING_NAME` (`billing_name`),
  KEY `SALES_CREDITMEMO_GRID_ORDER_STATUS` (`order_status`),
  KEY `SALES_CREDITMEMO_GRID_BASE_GRAND_TOTAL` (`base_grand_total`),
  KEY `SALES_CREDITMEMO_GRID_STORE_ID` (`store_id`),
  KEY `SALES_CREDITMEMO_GRID_ORDER_BASE_GRAND_TOTAL` (`order_base_grand_total`),
  KEY `SALES_CREDITMEMO_GRID_ORDER_ID` (`order_id`),
  FULLTEXT KEY `FTI_32B7BA885941A8254EE84AE650ABDC86` (`increment_id`,`order_increment_id`,`billing_name`,`billing_address`,`shipping_address`,`customer_name`,`customer_email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Sales Flat Creditmemo Grid';

--
-- Table structure for table `sales_creditmemo_item`
--

DROP TABLE IF EXISTS `sales_creditmemo_item`;
CREATE TABLE `sales_creditmemo_item` (
  `entity_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Entity Id',
  `parent_id` int(10) unsigned NOT NULL COMMENT 'Parent Id',
  `base_price` decimal(12,4) DEFAULT NULL COMMENT 'Base Price',
  `tax_amount` decimal(12,4) DEFAULT NULL COMMENT 'Tax Amount',
  `base_row_total` decimal(12,4) DEFAULT NULL COMMENT 'Base Row Total',
  `discount_amount` decimal(12,4) DEFAULT NULL COMMENT 'Discount Amount',
  `row_total` decimal(12,4) DEFAULT NULL COMMENT 'Row Total',
  `base_discount_amount` decimal(12,4) DEFAULT NULL COMMENT 'Base Discount Amount',
  `price_incl_tax` decimal(12,4) DEFAULT NULL COMMENT 'Price Incl Tax',
  `base_tax_amount` decimal(12,4) DEFAULT NULL COMMENT 'Base Tax Amount',
  `base_price_incl_tax` decimal(12,4) DEFAULT NULL COMMENT 'Base Price Incl Tax',
  `qty` decimal(12,4) DEFAULT NULL COMMENT 'Qty',
  `base_cost` decimal(12,4) DEFAULT NULL COMMENT 'Base Cost',
  `price` decimal(12,4) DEFAULT NULL COMMENT 'Price',
  `base_row_total_incl_tax` decimal(12,4) DEFAULT NULL COMMENT 'Base Row Total Incl Tax',
  `row_total_incl_tax` decimal(12,4) DEFAULT NULL COMMENT 'Row Total Incl Tax',
  `product_id` int(11) DEFAULT NULL COMMENT 'Product Id',
  `order_item_id` int(11) DEFAULT NULL COMMENT 'Order Item Id',
  `additional_data` text COMMENT 'Additional Data',
  `description` text COMMENT 'Description',
  `sku` varchar(255) DEFAULT NULL COMMENT 'Sku',
  `name` varchar(255) DEFAULT NULL COMMENT 'Name',
  `discount_tax_compensation_amount` decimal(12,4) DEFAULT NULL COMMENT 'Discount Tax Compensation Amount',
  `base_discount_tax_compensation_amount` decimal(12,4) DEFAULT NULL COMMENT 'Base Discount Tax Compensation Amount',
  `tax_ratio` text COMMENT 'Ratio of tax in the creditmemo item over tax of the order item',
  `weee_tax_applied` text COMMENT 'Weee Tax Applied',
  `weee_tax_applied_amount` decimal(12,4) DEFAULT NULL COMMENT 'Weee Tax Applied Amount',
  `weee_tax_applied_row_amount` decimal(12,4) DEFAULT NULL COMMENT 'Weee Tax Applied Row Amount',
  `weee_tax_disposition` decimal(12,4) DEFAULT NULL COMMENT 'Weee Tax Disposition',
  `weee_tax_row_disposition` decimal(12,4) DEFAULT NULL COMMENT 'Weee Tax Row Disposition',
  `base_weee_tax_applied_amount` decimal(12,4) DEFAULT NULL COMMENT 'Base Weee Tax Applied Amount',
  `base_weee_tax_applied_row_amnt` decimal(12,4) DEFAULT NULL COMMENT 'Base Weee Tax Applied Row Amnt',
  `base_weee_tax_disposition` decimal(12,4) DEFAULT NULL COMMENT 'Base Weee Tax Disposition',
  `base_weee_tax_row_disposition` decimal(12,4) DEFAULT NULL COMMENT 'Base Weee Tax Row Disposition',
  PRIMARY KEY (`entity_id`),
  KEY `SALES_CREDITMEMO_ITEM_PARENT_ID` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Sales Flat Creditmemo Item';

--
-- Table structure for table `sales_invoice`
--

DROP TABLE IF EXISTS `sales_invoice`;
CREATE TABLE `sales_invoice` (
  `entity_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Entity Id',
  `store_id` smallint(5) unsigned DEFAULT NULL COMMENT 'Store Id',
  `base_grand_total` decimal(12,4) DEFAULT NULL COMMENT 'Base Grand Total',
  `shipping_tax_amount` decimal(12,4) DEFAULT NULL COMMENT 'Shipping Tax Amount',
  `tax_amount` decimal(12,4) DEFAULT NULL COMMENT 'Tax Amount',
  `base_tax_amount` decimal(12,4) DEFAULT NULL COMMENT 'Base Tax Amount',
  `store_to_order_rate` decimal(12,4) DEFAULT NULL COMMENT 'Store To Order Rate',
  `base_shipping_tax_amount` decimal(12,4) DEFAULT NULL COMMENT 'Base Shipping Tax Amount',
  `base_discount_amount` decimal(12,4) DEFAULT NULL COMMENT 'Base Discount Amount',
  `base_to_order_rate` decimal(12,4) DEFAULT NULL COMMENT 'Base To Order Rate',
  `grand_total` decimal(12,4) DEFAULT NULL COMMENT 'Grand Total',
  `shipping_amount` decimal(12,4) DEFAULT NULL COMMENT 'Shipping Amount',
  `subtotal_incl_tax` decimal(12,4) DEFAULT NULL COMMENT 'Subtotal Incl Tax',
  `base_subtotal_incl_tax` decimal(12,4) DEFAULT NULL COMMENT 'Base Subtotal Incl Tax',
  `store_to_base_rate` decimal(12,4) DEFAULT NULL COMMENT 'Store To Base Rate',
  `base_shipping_amount` decimal(12,4) DEFAULT NULL COMMENT 'Base Shipping Amount',
  `total_qty` decimal(12,4) DEFAULT NULL COMMENT 'Total Qty',
  `base_to_global_rate` decimal(12,4) DEFAULT NULL COMMENT 'Base To Global Rate',
  `subtotal` decimal(12,4) DEFAULT NULL COMMENT 'Subtotal',
  `base_subtotal` decimal(12,4) DEFAULT NULL COMMENT 'Base Subtotal',
  `discount_amount` decimal(12,4) DEFAULT NULL COMMENT 'Discount Amount',
  `billing_address_id` int(11) DEFAULT NULL COMMENT 'Billing Address Id',
  `is_used_for_refund` smallint(5) unsigned DEFAULT NULL COMMENT 'Is Used For Refund',
  `order_id` int(10) unsigned NOT NULL COMMENT 'Order Id',
  `email_sent` smallint(5) unsigned DEFAULT NULL COMMENT 'Email Sent',
  `send_email` smallint(5) unsigned DEFAULT NULL COMMENT 'Send Email',
  `can_void_flag` smallint(5) unsigned DEFAULT NULL COMMENT 'Can Void Flag',
  `state` int(11) DEFAULT NULL COMMENT 'State',
  `shipping_address_id` int(11) DEFAULT NULL COMMENT 'Shipping Address Id',
  `store_currency_code` varchar(3) DEFAULT NULL COMMENT 'Store Currency Code',
  `transaction_id` varchar(255) DEFAULT NULL COMMENT 'Transaction Id',
  `order_currency_code` varchar(3) DEFAULT NULL COMMENT 'Order Currency Code',
  `base_currency_code` varchar(3) DEFAULT NULL COMMENT 'Base Currency Code',
  `global_currency_code` varchar(3) DEFAULT NULL COMMENT 'Global Currency Code',
  `increment_id` varchar(50) DEFAULT NULL COMMENT 'Increment Id',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Created At',
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Updated At',
  `discount_tax_compensation_amount` decimal(12,4) DEFAULT NULL COMMENT 'Discount Tax Compensation Amount',
  `base_discount_tax_compensation_amount` decimal(12,4) DEFAULT NULL COMMENT 'Base Discount Tax Compensation Amount',
  `shipping_discount_tax_compensation_amount` decimal(12,4) DEFAULT NULL COMMENT 'Shipping Discount Tax Compensation Amount',
  `base_shipping_discount_tax_compensation_amnt` decimal(12,4) DEFAULT NULL COMMENT 'Base Shipping Discount Tax Compensation Amount',
  `shipping_incl_tax` decimal(12,4) DEFAULT NULL COMMENT 'Shipping Incl Tax',
  `base_shipping_incl_tax` decimal(12,4) DEFAULT NULL COMMENT 'Base Shipping Incl Tax',
  `base_total_refunded` decimal(12,4) DEFAULT NULL COMMENT 'Base Total Refunded',
  `discount_description` varchar(255) DEFAULT NULL COMMENT 'Discount Description',
  `customer_note` text COMMENT 'Customer Note',
  `customer_note_notify` smallint(5) unsigned DEFAULT NULL COMMENT 'Customer Note Notify',
  PRIMARY KEY (`entity_id`),
  UNIQUE KEY `SALES_INVOICE_INCREMENT_ID_STORE_ID` (`increment_id`,`store_id`),
  KEY `SALES_INVOICE_STORE_ID` (`store_id`),
  KEY `SALES_INVOICE_GRAND_TOTAL` (`grand_total`),
  KEY `SALES_INVOICE_ORDER_ID` (`order_id`),
  KEY `SALES_INVOICE_STATE` (`state`),
  KEY `SALES_INVOICE_CREATED_AT` (`created_at`),
  KEY `SALES_INVOICE_UPDATED_AT` (`updated_at`),
  KEY `SALES_INVOICE_SEND_EMAIL` (`send_email`),
  KEY `SALES_INVOICE_EMAIL_SENT` (`email_sent`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Sales Flat Invoice';

--
-- Table structure for table `sales_invoice_comment`
--

DROP TABLE IF EXISTS `sales_invoice_comment`;
CREATE TABLE `sales_invoice_comment` (
  `entity_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Entity Id',
  `parent_id` int(10) unsigned NOT NULL COMMENT 'Parent Id',
  `is_customer_notified` smallint(5) unsigned DEFAULT NULL COMMENT 'Is Customer Notified',
  `is_visible_on_front` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Is Visible On Front',
  `comment` text COMMENT 'Comment',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Created At',
  PRIMARY KEY (`entity_id`),
  KEY `SALES_INVOICE_COMMENT_CREATED_AT` (`created_at`),
  KEY `SALES_INVOICE_COMMENT_PARENT_ID` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Sales Flat Invoice Comment';

--
-- Table structure for table `sales_invoice_grid`
--

DROP TABLE IF EXISTS `sales_invoice_grid`;
CREATE TABLE `sales_invoice_grid` (
  `entity_id` int(10) unsigned NOT NULL COMMENT 'Entity Id',
  `increment_id` varchar(50) DEFAULT NULL COMMENT 'Increment Id',
  `state` int(11) DEFAULT NULL COMMENT 'State',
  `store_id` smallint(5) unsigned DEFAULT NULL COMMENT 'Store Id',
  `store_name` varchar(255) DEFAULT NULL COMMENT 'Store Name',
  `order_id` int(10) unsigned NOT NULL COMMENT 'Order Id',
  `order_increment_id` varchar(50) DEFAULT NULL COMMENT 'Order Increment Id',
  `order_created_at` timestamp NULL DEFAULT NULL COMMENT 'Order Created At',
  `customer_name` varchar(255) DEFAULT NULL COMMENT 'Customer Name',
  `customer_email` varchar(255) DEFAULT NULL COMMENT 'Customer Email',
  `customer_group_id` smallint(6) DEFAULT NULL COMMENT 'Customer Group Id',
  `payment_method` varchar(128) DEFAULT NULL COMMENT 'Payment Method',
  `store_currency_code` varchar(3) DEFAULT NULL COMMENT 'Store Currency Code',
  `order_currency_code` varchar(3) DEFAULT NULL COMMENT 'Order Currency Code',
  `base_currency_code` varchar(3) DEFAULT NULL COMMENT 'Base Currency Code',
  `global_currency_code` varchar(3) DEFAULT NULL COMMENT 'Global Currency Code',
  `billing_name` varchar(255) DEFAULT NULL COMMENT 'Billing Name',
  `billing_address` varchar(255) DEFAULT NULL COMMENT 'Billing Address',
  `shipping_address` varchar(255) DEFAULT NULL COMMENT 'Shipping Address',
  `shipping_information` varchar(255) DEFAULT NULL COMMENT 'Shipping Method Name',
  `subtotal` decimal(12,4) DEFAULT NULL COMMENT 'Subtotal',
  `shipping_and_handling` decimal(12,4) DEFAULT NULL COMMENT 'Shipping and handling amount',
  `grand_total` decimal(12,4) DEFAULT NULL COMMENT 'Grand Total',
  `base_grand_total` decimal(12,4) DEFAULT NULL COMMENT 'Base Grand Total',
  `created_at` timestamp NULL DEFAULT NULL COMMENT 'Created At',
  `updated_at` timestamp NULL DEFAULT NULL COMMENT 'Updated At',
  PRIMARY KEY (`entity_id`),
  UNIQUE KEY `SALES_INVOICE_GRID_INCREMENT_ID_STORE_ID` (`increment_id`,`store_id`),
  KEY `SALES_INVOICE_GRID_STORE_ID` (`store_id`),
  KEY `SALES_INVOICE_GRID_GRAND_TOTAL` (`grand_total`),
  KEY `SALES_INVOICE_GRID_ORDER_ID` (`order_id`),
  KEY `SALES_INVOICE_GRID_STATE` (`state`),
  KEY `SALES_INVOICE_GRID_ORDER_INCREMENT_ID` (`order_increment_id`),
  KEY `SALES_INVOICE_GRID_CREATED_AT` (`created_at`),
  KEY `SALES_INVOICE_GRID_UPDATED_AT` (`updated_at`),
  KEY `SALES_INVOICE_GRID_ORDER_CREATED_AT` (`order_created_at`),
  KEY `SALES_INVOICE_GRID_BILLING_NAME` (`billing_name`),
  KEY `SALES_INVOICE_GRID_BASE_GRAND_TOTAL` (`base_grand_total`),
  FULLTEXT KEY `FTI_95D9C924DD6A8734EB8B5D01D60F90DE` (`increment_id`,`order_increment_id`,`billing_name`,`billing_address`,`shipping_address`,`customer_name`,`customer_email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Sales Flat Invoice Grid';

--
-- Table structure for table `sales_invoice_item`
--

DROP TABLE IF EXISTS `sales_invoice_item`;
CREATE TABLE `sales_invoice_item` (
  `entity_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Entity Id',
  `parent_id` int(10) unsigned NOT NULL COMMENT 'Parent Id',
  `base_price` decimal(12,4) DEFAULT NULL COMMENT 'Base Price',
  `tax_amount` decimal(12,4) DEFAULT NULL COMMENT 'Tax Amount',
  `base_row_total` decimal(12,4) DEFAULT NULL COMMENT 'Base Row Total',
  `discount_amount` decimal(12,4) DEFAULT NULL COMMENT 'Discount Amount',
  `row_total` decimal(12,4) DEFAULT NULL COMMENT 'Row Total',
  `base_discount_amount` decimal(12,4) DEFAULT NULL COMMENT 'Base Discount Amount',
  `price_incl_tax` decimal(12,4) DEFAULT NULL COMMENT 'Price Incl Tax',
  `base_tax_amount` decimal(12,4) DEFAULT NULL COMMENT 'Base Tax Amount',
  `base_price_incl_tax` decimal(12,4) DEFAULT NULL COMMENT 'Base Price Incl Tax',
  `qty` decimal(12,4) DEFAULT NULL COMMENT 'Qty',
  `base_cost` decimal(12,4) DEFAULT NULL COMMENT 'Base Cost',
  `price` decimal(12,4) DEFAULT NULL COMMENT 'Price',
  `base_row_total_incl_tax` decimal(12,4) DEFAULT NULL COMMENT 'Base Row Total Incl Tax',
  `row_total_incl_tax` decimal(12,4) DEFAULT NULL COMMENT 'Row Total Incl Tax',
  `product_id` int(11) DEFAULT NULL COMMENT 'Product Id',
  `order_item_id` int(11) DEFAULT NULL COMMENT 'Order Item Id',
  `additional_data` text COMMENT 'Additional Data',
  `description` text COMMENT 'Description',
  `sku` varchar(255) DEFAULT NULL COMMENT 'Sku',
  `name` varchar(255) DEFAULT NULL COMMENT 'Name',
  `discount_tax_compensation_amount` decimal(12,4) DEFAULT NULL COMMENT 'Discount Tax Compensation Amount',
  `base_discount_tax_compensation_amount` decimal(12,4) DEFAULT NULL COMMENT 'Base Discount Tax Compensation Amount',
  `tax_ratio` text COMMENT 'Ratio of tax invoiced over tax of the order item',
  `weee_tax_applied` text COMMENT 'Weee Tax Applied',
  `weee_tax_applied_amount` decimal(12,4) DEFAULT NULL COMMENT 'Weee Tax Applied Amount',
  `weee_tax_applied_row_amount` decimal(12,4) DEFAULT NULL COMMENT 'Weee Tax Applied Row Amount',
  `weee_tax_disposition` decimal(12,4) DEFAULT NULL COMMENT 'Weee Tax Disposition',
  `weee_tax_row_disposition` decimal(12,4) DEFAULT NULL COMMENT 'Weee Tax Row Disposition',
  `base_weee_tax_applied_amount` decimal(12,4) DEFAULT NULL COMMENT 'Base Weee Tax Applied Amount',
  `base_weee_tax_applied_row_amnt` decimal(12,4) DEFAULT NULL COMMENT 'Base Weee Tax Applied Row Amnt',
  `base_weee_tax_disposition` decimal(12,4) DEFAULT NULL COMMENT 'Base Weee Tax Disposition',
  `base_weee_tax_row_disposition` decimal(12,4) DEFAULT NULL COMMENT 'Base Weee Tax Row Disposition',
  PRIMARY KEY (`entity_id`),
  KEY `SALES_INVOICE_ITEM_PARENT_ID` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Sales Flat Invoice Item';

--
-- Table structure for table `sales_invoiced_aggregated`
--

DROP TABLE IF EXISTS `sales_invoiced_aggregated`;
CREATE TABLE `sales_invoiced_aggregated` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Id',
  `period` date DEFAULT NULL COMMENT 'Period',
  `store_id` smallint(5) unsigned DEFAULT NULL COMMENT 'Store Id',
  `order_status` varchar(50) DEFAULT NULL COMMENT 'Order Status',
  `orders_count` int(11) NOT NULL DEFAULT '0' COMMENT 'Orders Count',
  `orders_invoiced` decimal(12,4) DEFAULT NULL COMMENT 'Orders Invoiced',
  `invoiced` decimal(12,4) DEFAULT NULL COMMENT 'Invoiced',
  `invoiced_captured` decimal(12,4) DEFAULT NULL COMMENT 'Invoiced Captured',
  `invoiced_not_captured` decimal(12,4) DEFAULT NULL COMMENT 'Invoiced Not Captured',
  PRIMARY KEY (`id`),
  UNIQUE KEY `SALES_INVOICED_AGGREGATED_PERIOD_STORE_ID_ORDER_STATUS` (`period`,`store_id`,`order_status`),
  KEY `SALES_INVOICED_AGGREGATED_STORE_ID` (`store_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Sales Invoiced Aggregated';

--
-- Table structure for table `sales_invoiced_aggregated_order`
--

DROP TABLE IF EXISTS `sales_invoiced_aggregated_order`;
CREATE TABLE `sales_invoiced_aggregated_order` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Id',
  `period` date DEFAULT NULL COMMENT 'Period',
  `store_id` smallint(5) unsigned DEFAULT NULL COMMENT 'Store Id',
  `order_status` varchar(50) NOT NULL COMMENT 'Order Status',
  `orders_count` int(11) NOT NULL DEFAULT '0' COMMENT 'Orders Count',
  `orders_invoiced` decimal(12,4) DEFAULT NULL COMMENT 'Orders Invoiced',
  `invoiced` decimal(12,4) DEFAULT NULL COMMENT 'Invoiced',
  `invoiced_captured` decimal(12,4) DEFAULT NULL COMMENT 'Invoiced Captured',
  `invoiced_not_captured` decimal(12,4) DEFAULT NULL COMMENT 'Invoiced Not Captured',
  PRIMARY KEY (`id`),
  UNIQUE KEY `SALES_INVOICED_AGGREGATED_ORDER_PERIOD_STORE_ID_ORDER_STATUS` (`period`,`store_id`,`order_status`),
  KEY `SALES_INVOICED_AGGREGATED_ORDER_STORE_ID` (`store_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Sales Invoiced Aggregated Order';

--
-- Table structure for table `sales_order`
--

DROP TABLE IF EXISTS `sales_order`;
CREATE TABLE `sales_order` (
  `entity_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Entity Id',
  `state` varchar(32) DEFAULT NULL COMMENT 'State',
  `status` varchar(32) DEFAULT NULL COMMENT 'Status',
  `coupon_code` varchar(255) DEFAULT NULL COMMENT 'Coupon Code',
  `protect_code` varchar(255) DEFAULT NULL COMMENT 'Protect Code',
  `shipping_description` varchar(255) DEFAULT NULL COMMENT 'Shipping Description',
  `is_virtual` smallint(5) unsigned DEFAULT NULL COMMENT 'Is Virtual',
  `store_id` smallint(5) unsigned DEFAULT NULL COMMENT 'Store Id',
  `customer_id` int(10) unsigned DEFAULT NULL COMMENT 'Customer Id',
  `base_discount_amount` decimal(12,4) DEFAULT NULL COMMENT 'Base Discount Amount',
  `base_discount_canceled` decimal(12,4) DEFAULT NULL COMMENT 'Base Discount Canceled',
  `base_discount_invoiced` decimal(12,4) DEFAULT NULL COMMENT 'Base Discount Invoiced',
  `base_discount_refunded` decimal(12,4) DEFAULT NULL COMMENT 'Base Discount Refunded',
  `base_grand_total` decimal(12,4) DEFAULT NULL COMMENT 'Base Grand Total',
  `base_shipping_amount` decimal(12,4) DEFAULT NULL COMMENT 'Base Shipping Amount',
  `base_shipping_canceled` decimal(12,4) DEFAULT NULL COMMENT 'Base Shipping Canceled',
  `base_shipping_invoiced` decimal(12,4) DEFAULT NULL COMMENT 'Base Shipping Invoiced',
  `base_shipping_refunded` decimal(12,4) DEFAULT NULL COMMENT 'Base Shipping Refunded',
  `base_shipping_tax_amount` decimal(12,4) DEFAULT NULL COMMENT 'Base Shipping Tax Amount',
  `base_shipping_tax_refunded` decimal(12,4) DEFAULT NULL COMMENT 'Base Shipping Tax Refunded',
  `base_subtotal` decimal(12,4) DEFAULT NULL COMMENT 'Base Subtotal',
  `base_subtotal_canceled` decimal(12,4) DEFAULT NULL COMMENT 'Base Subtotal Canceled',
  `base_subtotal_invoiced` decimal(12,4) DEFAULT NULL COMMENT 'Base Subtotal Invoiced',
  `base_subtotal_refunded` decimal(12,4) DEFAULT NULL COMMENT 'Base Subtotal Refunded',
  `base_tax_amount` decimal(12,4) DEFAULT NULL COMMENT 'Base Tax Amount',
  `base_tax_canceled` decimal(12,4) DEFAULT NULL COMMENT 'Base Tax Canceled',
  `base_tax_invoiced` decimal(12,4) DEFAULT NULL COMMENT 'Base Tax Invoiced',
  `base_tax_refunded` decimal(12,4) DEFAULT NULL COMMENT 'Base Tax Refunded',
  `base_to_global_rate` decimal(12,4) DEFAULT NULL COMMENT 'Base To Global Rate',
  `base_to_order_rate` decimal(12,4) DEFAULT NULL COMMENT 'Base To Order Rate',
  `base_total_canceled` decimal(12,4) DEFAULT NULL COMMENT 'Base Total Canceled',
  `base_total_invoiced` decimal(12,4) DEFAULT NULL COMMENT 'Base Total Invoiced',
  `base_total_invoiced_cost` decimal(12,4) DEFAULT NULL COMMENT 'Base Total Invoiced Cost',
  `base_total_offline_refunded` decimal(12,4) DEFAULT NULL COMMENT 'Base Total Offline Refunded',
  `base_total_online_refunded` decimal(12,4) DEFAULT NULL COMMENT 'Base Total Online Refunded',
  `base_total_paid` decimal(12,4) DEFAULT NULL COMMENT 'Base Total Paid',
  `base_total_qty_ordered` decimal(12,4) DEFAULT NULL COMMENT 'Base Total Qty Ordered',
  `base_total_refunded` decimal(12,4) DEFAULT NULL COMMENT 'Base Total Refunded',
  `discount_amount` decimal(12,4) DEFAULT NULL COMMENT 'Discount Amount',
  `discount_canceled` decimal(12,4) DEFAULT NULL COMMENT 'Discount Canceled',
  `discount_invoiced` decimal(12,4) DEFAULT NULL COMMENT 'Discount Invoiced',
  `discount_refunded` decimal(12,4) DEFAULT NULL COMMENT 'Discount Refunded',
  `grand_total` decimal(12,4) DEFAULT NULL COMMENT 'Grand Total',
  `shipping_amount` decimal(12,4) DEFAULT NULL COMMENT 'Shipping Amount',
  `shipping_canceled` decimal(12,4) DEFAULT NULL COMMENT 'Shipping Canceled',
  `shipping_invoiced` decimal(12,4) DEFAULT NULL COMMENT 'Shipping Invoiced',
  `shipping_refunded` decimal(12,4) DEFAULT NULL COMMENT 'Shipping Refunded',
  `shipping_tax_amount` decimal(12,4) DEFAULT NULL COMMENT 'Shipping Tax Amount',
  `shipping_tax_refunded` decimal(12,4) DEFAULT NULL COMMENT 'Shipping Tax Refunded',
  `store_to_base_rate` decimal(12,4) DEFAULT NULL COMMENT 'Store To Base Rate',
  `store_to_order_rate` decimal(12,4) DEFAULT NULL COMMENT 'Store To Order Rate',
  `subtotal` decimal(12,4) DEFAULT NULL COMMENT 'Subtotal',
  `subtotal_canceled` decimal(12,4) DEFAULT NULL COMMENT 'Subtotal Canceled',
  `subtotal_invoiced` decimal(12,4) DEFAULT NULL COMMENT 'Subtotal Invoiced',
  `subtotal_refunded` decimal(12,4) DEFAULT NULL COMMENT 'Subtotal Refunded',
  `tax_amount` decimal(12,4) DEFAULT NULL COMMENT 'Tax Amount',
  `tax_canceled` decimal(12,4) DEFAULT NULL COMMENT 'Tax Canceled',
  `tax_invoiced` decimal(12,4) DEFAULT NULL COMMENT 'Tax Invoiced',
  `tax_refunded` decimal(12,4) DEFAULT NULL COMMENT 'Tax Refunded',
  `total_canceled` decimal(12,4) DEFAULT NULL COMMENT 'Total Canceled',
  `total_invoiced` decimal(12,4) DEFAULT NULL COMMENT 'Total Invoiced',
  `total_offline_refunded` decimal(12,4) DEFAULT NULL COMMENT 'Total Offline Refunded',
  `total_online_refunded` decimal(12,4) DEFAULT NULL COMMENT 'Total Online Refunded',
  `total_paid` decimal(12,4) DEFAULT NULL COMMENT 'Total Paid',
  `total_qty_ordered` decimal(12,4) DEFAULT NULL COMMENT 'Total Qty Ordered',
  `total_refunded` decimal(12,4) DEFAULT NULL COMMENT 'Total Refunded',
  `can_ship_partially` smallint(5) unsigned DEFAULT NULL COMMENT 'Can Ship Partially',
  `can_ship_partially_item` smallint(5) unsigned DEFAULT NULL COMMENT 'Can Ship Partially Item',
  `customer_is_guest` smallint(5) unsigned DEFAULT NULL COMMENT 'Customer Is Guest',
  `customer_note_notify` smallint(5) unsigned DEFAULT NULL COMMENT 'Customer Note Notify',
  `billing_address_id` int(11) DEFAULT NULL COMMENT 'Billing Address Id',
  `customer_group_id` smallint(6) DEFAULT NULL COMMENT 'Customer Group Id',
  `edit_increment` int(11) DEFAULT NULL COMMENT 'Edit Increment',
  `email_sent` smallint(5) unsigned DEFAULT NULL COMMENT 'Email Sent',
  `send_email` smallint(5) unsigned DEFAULT NULL COMMENT 'Send Email',
  `forced_shipment_with_invoice` smallint(5) unsigned DEFAULT NULL COMMENT 'Forced Do Shipment With Invoice',
  `payment_auth_expiration` int(11) DEFAULT NULL COMMENT 'Payment Authorization Expiration',
  `quote_address_id` int(11) DEFAULT NULL COMMENT 'Quote Address Id',
  `quote_id` int(11) DEFAULT NULL COMMENT 'Quote Id',
  `shipping_address_id` int(11) DEFAULT NULL COMMENT 'Shipping Address Id',
  `adjustment_negative` decimal(12,4) DEFAULT NULL COMMENT 'Adjustment Negative',
  `adjustment_positive` decimal(12,4) DEFAULT NULL COMMENT 'Adjustment Positive',
  `base_adjustment_negative` decimal(12,4) DEFAULT NULL COMMENT 'Base Adjustment Negative',
  `base_adjustment_positive` decimal(12,4) DEFAULT NULL COMMENT 'Base Adjustment Positive',
  `base_shipping_discount_amount` decimal(12,4) DEFAULT NULL COMMENT 'Base Shipping Discount Amount',
  `base_subtotal_incl_tax` decimal(12,4) DEFAULT NULL COMMENT 'Base Subtotal Incl Tax',
  `base_total_due` decimal(12,4) DEFAULT NULL COMMENT 'Base Total Due',
  `payment_authorization_amount` decimal(12,4) DEFAULT NULL COMMENT 'Payment Authorization Amount',
  `shipping_discount_amount` decimal(12,4) DEFAULT NULL COMMENT 'Shipping Discount Amount',
  `subtotal_incl_tax` decimal(12,4) DEFAULT NULL COMMENT 'Subtotal Incl Tax',
  `total_due` decimal(12,4) DEFAULT NULL COMMENT 'Total Due',
  `weight` decimal(12,4) DEFAULT NULL COMMENT 'Weight',
  `customer_dob` datetime DEFAULT NULL COMMENT 'Customer Dob',
  `increment_id` varchar(32) DEFAULT NULL COMMENT 'Increment Id',
  `applied_rule_ids` varchar(128) DEFAULT NULL COMMENT 'Applied Rule Ids',
  `base_currency_code` varchar(3) DEFAULT NULL COMMENT 'Base Currency Code',
  `customer_email` varchar(128) DEFAULT NULL COMMENT 'Customer Email',
  `customer_firstname` varchar(128) DEFAULT NULL COMMENT 'Customer Firstname',
  `customer_lastname` varchar(128) DEFAULT NULL COMMENT 'Customer Lastname',
  `customer_middlename` varchar(128) DEFAULT NULL COMMENT 'Customer Middlename',
  `customer_prefix` varchar(32) DEFAULT NULL COMMENT 'Customer Prefix',
  `customer_suffix` varchar(32) DEFAULT NULL COMMENT 'Customer Suffix',
  `customer_taxvat` varchar(32) DEFAULT NULL COMMENT 'Customer Taxvat',
  `discount_description` varchar(255) DEFAULT NULL COMMENT 'Discount Description',
  `ext_customer_id` varchar(32) DEFAULT NULL COMMENT 'Ext Customer Id',
  `ext_order_id` varchar(32) DEFAULT NULL COMMENT 'Ext Order Id',
  `global_currency_code` varchar(3) DEFAULT NULL COMMENT 'Global Currency Code',
  `hold_before_state` varchar(32) DEFAULT NULL COMMENT 'Hold Before State',
  `hold_before_status` varchar(32) DEFAULT NULL COMMENT 'Hold Before Status',
  `order_currency_code` varchar(3) DEFAULT NULL COMMENT 'Order Currency Code',
  `original_increment_id` varchar(32) DEFAULT NULL COMMENT 'Original Increment Id',
  `relation_child_id` varchar(32) DEFAULT NULL COMMENT 'Relation Child Id',
  `relation_child_real_id` varchar(32) DEFAULT NULL COMMENT 'Relation Child Real Id',
  `relation_parent_id` varchar(32) DEFAULT NULL COMMENT 'Relation Parent Id',
  `relation_parent_real_id` varchar(32) DEFAULT NULL COMMENT 'Relation Parent Real Id',
  `remote_ip` varchar(32) DEFAULT NULL COMMENT 'Remote Ip',
  `shipping_method` varchar(32) DEFAULT NULL COMMENT 'Shipping Method',
  `store_currency_code` varchar(3) DEFAULT NULL COMMENT 'Store Currency Code',
  `store_name` varchar(32) DEFAULT NULL COMMENT 'Store Name',
  `x_forwarded_for` varchar(32) DEFAULT NULL COMMENT 'X Forwarded For',
  `customer_note` text COMMENT 'Customer Note',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Created At',
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Updated At',
  `total_item_count` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Total Item Count',
  `customer_gender` int(11) DEFAULT NULL COMMENT 'Customer Gender',
  `discount_tax_compensation_amount` decimal(12,4) DEFAULT NULL COMMENT 'Discount Tax Compensation Amount',
  `base_discount_tax_compensation_amount` decimal(12,4) DEFAULT NULL COMMENT 'Base Discount Tax Compensation Amount',
  `shipping_discount_tax_compensation_amount` decimal(12,4) DEFAULT NULL COMMENT 'Shipping Discount Tax Compensation Amount',
  `base_shipping_discount_tax_compensation_amnt` decimal(12,4) DEFAULT NULL COMMENT 'Base Shipping Discount Tax Compensation Amount',
  `discount_tax_compensation_invoiced` decimal(12,4) DEFAULT NULL COMMENT 'Discount Tax Compensation Invoiced',
  `base_discount_tax_compensation_invoiced` decimal(12,4) DEFAULT NULL COMMENT 'Base Discount Tax Compensation Invoiced',
  `discount_tax_compensation_refunded` decimal(12,4) DEFAULT NULL COMMENT 'Discount Tax Compensation Refunded',
  `base_discount_tax_compensation_refunded` decimal(12,4) DEFAULT NULL COMMENT 'Base Discount Tax Compensation Refunded',
  `shipping_incl_tax` decimal(12,4) DEFAULT NULL COMMENT 'Shipping Incl Tax',
  `base_shipping_incl_tax` decimal(12,4) DEFAULT NULL COMMENT 'Base Shipping Incl Tax',
  `coupon_rule_name` varchar(255) DEFAULT NULL COMMENT 'Coupon Sales Rule Name',
  `paypal_ipn_customer_notified` int(11) DEFAULT '0' COMMENT 'Paypal Ipn Customer Notified',
  `gift_message_id` int(11) DEFAULT NULL COMMENT 'Gift Message Id',
  PRIMARY KEY (`entity_id`),
  UNIQUE KEY `SALES_ORDER_INCREMENT_ID_STORE_ID` (`increment_id`,`store_id`),
  KEY `SALES_ORDER_STATUS` (`status`),
  KEY `SALES_ORDER_STATE` (`state`),
  KEY `SALES_ORDER_STORE_ID` (`store_id`),
  KEY `SALES_ORDER_CREATED_AT` (`created_at`),
  KEY `SALES_ORDER_CUSTOMER_ID` (`customer_id`),
  KEY `SALES_ORDER_EXT_ORDER_ID` (`ext_order_id`),
  KEY `SALES_ORDER_QUOTE_ID` (`quote_id`),
  KEY `SALES_ORDER_UPDATED_AT` (`updated_at`),
  KEY `SALES_ORDER_SEND_EMAIL` (`send_email`),
  KEY `SALES_ORDER_EMAIL_SENT` (`email_sent`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8 COMMENT='Sales Flat Order';

--
-- Dumping data for table `sales_order`
--

LOCK TABLES `sales_order` WRITE;
/*!40000 ALTER TABLE `sales_order` DISABLE KEYS */;
INSERT INTO `sales_order` VALUES ('1','new','pending',NULL,'2de369f30f0702d453567712da170190','Flat Rate - Fixed',0,2,NULL,'0.0000',NULL,NULL,NULL,'200.0000','25.0000',NULL,NULL,NULL,'0.0000',NULL,'175.0000',NULL,NULL,NULL,'0.0000',NULL,NULL,NULL,'1.0000','1.0000',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'0.0000',NULL,NULL,NULL,'200.0000','25.0000',NULL,NULL,NULL,'0.0000',NULL,'0.0000','0.0000','175.0000',NULL,NULL,NULL,'0.0000',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'5.0000',NULL,NULL,NULL,0,1,'2',2,NULL,1,1,NULL,NULL,NULL,'1','1',NULL,NULL,NULL,NULL,'0.0000','175.0000','200.0000',NULL,'0.0000','175.0000','200.0000','0.0000',NULL,'2000000001',NULL,'CHF','egil.ruefli@gmail.com','Egil','Ruefli',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'CHF',NULL,NULL,'CHF',NULL,NULL,NULL,NULL,NULL,'213.160.52.133','flatrate_flatrate','CHF','professionals\nprof_store\nfr',NULL,NULL,'2017-09-25 14:50:59','2017-09-25 14:51:02',1,'1','0.0000','0.0000','0.0000',NULL,NULL,NULL,NULL,NULL,'25.0000','25.0000',NULL,'0',NULL),('2','new','pending',NULL,'53e9b072a0e7777880eedc076e578466','Flat Rate - Fixed',0,2,'6','0.0000',NULL,NULL,NULL,'2957.5000','595.0000',NULL,NULL,NULL,'0.0000',NULL,'2362.5000',NULL,NULL,NULL,'0.0000',NULL,NULL,NULL,'1.0000','1.0000',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'0.0000',NULL,NULL,NULL,'2957.5000','595.0000',NULL,NULL,NULL,'0.0000',NULL,'0.0000','0.0000','2362.5000',NULL,NULL,NULL,'0.0000',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'119.0000',NULL,NULL,NULL,0,1,'4',8,NULL,1,1,NULL,NULL,NULL,'2','3',NULL,NULL,NULL,NULL,'0.0000','2362.5000','2957.5000',NULL,'0.0000','2362.5000','2957.5000','0.0000',NULL,'2000000002',NULL,'CHF','zaugg@syscon.ch','29999','Syscon Systemberatung AG',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'CHF',NULL,NULL,'CHF',NULL,NULL,NULL,NULL,NULL,'77.56.210.23','flatrate_flatrate','CHF','professionals\nprof_store\nfr',NULL,NULL,'2017-09-25 19:27:37','2017-09-25 19:27:39',2,'1','0.0000','0.0000','0.0000',NULL,NULL,NULL,NULL,NULL,'595.0000','595.0000',NULL,'0',NULL),('3','new','pending',NULL,'1add4620298463886f9838a37c2695f5','Livraison gratuite - Gratuite',0,2,'6','0.0000',NULL,NULL,NULL,'1364.0000','0.0000',NULL,NULL,NULL,'0.0000',NULL,'1364.0000',NULL,NULL,NULL,'0.0000',NULL,NULL,NULL,'1.0000','1.0000',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'0.0000',NULL,NULL,NULL,'1364.0000','0.0000',NULL,NULL,NULL,'0.0000',NULL,'0.0000','0.0000','1364.0000',NULL,NULL,NULL,'0.0000',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'31.0000',NULL,NULL,NULL,0,1,'6',8,NULL,1,1,NULL,NULL,NULL,'3','5',NULL,NULL,NULL,NULL,'0.0000','1364.0000','1364.0000',NULL,'0.0000','1364.0000','1364.0000','0.0000',NULL,'2000000003',NULL,'CHF','zaugg@syscon.ch','29999','Syscon Systemberatung AG',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'CHF',NULL,NULL,'CHF',NULL,NULL,NULL,NULL,NULL,'77.56.210.23','freeshipping_freeshipping','CHF','professionals\nprof_store\nfr',NULL,NULL,'2017-09-27 16:24:10','2017-09-27 16:24:13',1,'3','0.0000','0.0000','0.0000',NULL,NULL,NULL,NULL,NULL,'0.0000','0.0000',NULL,'0',NULL),('4','new','pending',NULL,'51eee0faffdedac382e2b7522ff9d619','Livraison gratuite - Gratuite',0,2,'6','0.0000',NULL,NULL,NULL,'1336.5000','0.0000',NULL,NULL,NULL,'0.0000',NULL,'1336.5000',NULL,NULL,NULL,'0.0000',NULL,NULL,NULL,'1.0000','1.0000',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'0.0000',NULL,NULL,NULL,'1336.5000','0.0000',NULL,NULL,NULL,'0.0000',NULL,'0.0000','0.0000','1336.5000',NULL,NULL,NULL,'0.0000',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'27.0000',NULL,NULL,NULL,0,1,'8',8,NULL,1,1,NULL,NULL,NULL,'6','7',NULL,NULL,NULL,NULL,'0.0000','1336.5000','1336.5000',NULL,'0.0000','1336.5000','1336.5000','0.0000',NULL,'2000000004',NULL,'CHF','zaugg@syscon.ch','29999','Syscon Systemberatung AG',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'CHF',NULL,NULL,'CHF',NULL,NULL,NULL,NULL,NULL,'46.140.0.208','freeshipping_freeshipping','CHF','professionals\nprof_store\nfr',NULL,NULL,'2017-09-29 17:03:38','2017-09-29 17:03:41',1,'3','0.0000','0.0000','0.0000',NULL,NULL,NULL,NULL,NULL,'0.0000','0.0000',NULL,'0',NULL),('5','new','pending',NULL,'5ef9a7d674eaee073faf35747c1941e6','Livraison gratuite - Gratuite',0,2,'6','0.0000',NULL,NULL,NULL,'307.0000','0.0000',NULL,NULL,NULL,'0.0000',NULL,'307.0000',NULL,NULL,NULL,'0.0000',NULL,NULL,NULL,'1.0000','1.0000',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'0.0000',NULL,NULL,NULL,'307.0000','0.0000',NULL,NULL,NULL,'0.0000',NULL,'0.0000','0.0000','307.0000',NULL,NULL,NULL,'0.0000',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'10.0000',NULL,NULL,NULL,0,1,'10',8,NULL,1,1,NULL,NULL,NULL,'7','9',NULL,NULL,NULL,NULL,'0.0000','307.0000','307.0000',NULL,'0.0000','307.0000','307.0000','0.0000',NULL,'2000000005',NULL,'CHF','zaugg@syscon.ch','29999','Syscon Systemberatung AG',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'CHF',NULL,NULL,'CHF',NULL,NULL,NULL,NULL,NULL,'77.56.210.23','freeshipping_freeshipping','CHF','professionals\nprof_store\nfr',NULL,NULL,'2017-10-01 10:22:59','2017-10-01 10:23:01',1,'3','0.0000','0.0000','0.0000',NULL,NULL,NULL,NULL,NULL,'0.0000','0.0000',NULL,'0',NULL),('6','new','pending',NULL,'26ba49f7f9508e963e31557cd7134313','Livraison gratuite - Gratuite',0,2,'6','0.0000',NULL,NULL,NULL,'1950.5000','0.0000',NULL,NULL,NULL,'0.0000',NULL,'1950.5000',NULL,NULL,NULL,'0.0000',NULL,NULL,NULL,'1.0000','1.0000',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'0.0000',NULL,NULL,NULL,'1950.5000','0.0000',NULL,NULL,NULL,'0.0000',NULL,'0.0000','0.0000','1950.5000',NULL,NULL,NULL,'0.0000',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'47.0000',NULL,NULL,NULL,0,1,'12',8,NULL,1,1,NULL,NULL,NULL,'8','11',NULL,NULL,NULL,NULL,'0.0000','1950.5000','1950.5000',NULL,'0.0000','1950.5000','1950.5000','0.0000',NULL,'2000000006',NULL,'CHF','zaugg@syscon.ch','29999','Syscon Systemberatung AG',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'CHF',NULL,NULL,'CHF',NULL,NULL,NULL,NULL,NULL,'77.56.210.23','freeshipping_freeshipping','CHF','professionals\nprof_store\nfr',NULL,NULL,'2017-10-02 07:48:35','2017-10-02 07:48:37',2,'3','0.0000','0.0000','0.0000',NULL,NULL,NULL,NULL,NULL,'0.0000','0.0000',NULL,'0',NULL),('7','new','pending',NULL,'9c5df1391987b5fc910393a0af09772f','Livraison gratuite - Gratuite',0,2,'6','0.0000',NULL,NULL,NULL,'926.2900','0.0000',NULL,NULL,NULL,'0.0000',NULL,'926.2900',NULL,NULL,NULL,'0.0000',NULL,NULL,NULL,'1.0000','1.0000',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'0.0000',NULL,NULL,NULL,'926.2900','0.0000',NULL,NULL,NULL,'0.0000',NULL,'0.0000','0.0000','926.2900',NULL,NULL,NULL,'0.0000',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'125.0000',NULL,NULL,NULL,0,1,'14',8,NULL,1,1,NULL,NULL,NULL,'9','13',NULL,NULL,NULL,NULL,'0.0000','926.2900','926.2900',NULL,'0.0000','926.2900','926.2900','0.0000',NULL,'2000000007',NULL,'CHF','zaugg@syscon.ch','29999','Syscon Systemberatung AG',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'CHF',NULL,NULL,'CHF',NULL,NULL,NULL,NULL,NULL,'77.56.210.23','freeshipping_freeshipping','CHF','professionals\nprof_store\nfr',NULL,NULL,'2017-10-02 07:53:33','2017-10-02 07:53:35',1,'3','0.0000','0.0000','0.0000',NULL,NULL,NULL,NULL,NULL,'0.0000','0.0000',NULL,'0',NULL),('8','new','pending',NULL,'3833e5befc80b9c0441cfefdc802b57a','Livraison gratuite - Gratuite',0,2,'6','0.0000',NULL,NULL,NULL,'1749.0000','0.0000',NULL,NULL,NULL,'0.0000',NULL,'1749.0000',NULL,NULL,NULL,'0.0000',NULL,NULL,NULL,'1.0000','1.0000',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'0.0000',NULL,NULL,NULL,'1749.0000','0.0000',NULL,NULL,NULL,'0.0000',NULL,'0.0000','0.0000','1749.0000',NULL,NULL,NULL,'0.0000',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'20.0000',NULL,NULL,NULL,0,1,'16',8,NULL,1,1,NULL,NULL,NULL,'10','15',NULL,NULL,NULL,NULL,'0.0000','1749.0000','1749.0000',NULL,'0.0000','1749.0000','1749.0000','0.0000',NULL,'2000000008',NULL,'CHF','zaugg@syscon.ch','29999','Syscon Systemberatung AG',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'CHF',NULL,NULL,'CHF',NULL,NULL,NULL,NULL,NULL,'77.56.210.23','freeshipping_freeshipping','CHF','professionals\nprof_store\nfr',NULL,NULL,'2017-10-02 15:58:07','2017-10-02 15:58:10',2,'3','0.0000','0.0000','0.0000',NULL,NULL,NULL,NULL,NULL,'0.0000','0.0000',NULL,'0',NULL),('9','new','pending',NULL,'9b6139a22b0a6119d118213d4aaf21ba','Livraison gratuite - Gratuite',0,2,'6','0.0000',NULL,NULL,NULL,'2918.4000','0.0000',NULL,NULL,NULL,'0.0000',NULL,'2918.4000',NULL,NULL,NULL,'0.0000',NULL,NULL,NULL,'1.0000','1.0000',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'0.0000',NULL,NULL,NULL,'2918.4000','0.0000',NULL,NULL,NULL,'0.0000',NULL,'0.0000','0.0000','2918.4000',NULL,NULL,NULL,'0.0000',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'32.0000',NULL,NULL,NULL,0,1,'18',8,NULL,1,1,NULL,NULL,NULL,'11','17',NULL,NULL,NULL,NULL,'0.0000','2918.4000','2918.4000',NULL,'0.0000','2918.4000','2918.4000','0.0000',NULL,'2000000009',NULL,'CHF','zaugg@syscon.ch','29999','Syscon Systemberatung AG',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'CHF',NULL,NULL,'CHF',NULL,NULL,NULL,NULL,NULL,'77.56.210.23','freeshipping_freeshipping','CHF','professionals\nprof_store\nfr',NULL,NULL,'2017-10-02 16:40:45','2017-10-02 16:40:47',1,'3','0.0000','0.0000','0.0000',NULL,NULL,NULL,NULL,NULL,'0.0000','0.0000',NULL,'0',NULL),('10','new','pending',NULL,'d64f4b69e66c0f5c246cae0fcea783af','Livraison gratuite - Gratuite',0,2,'6','0.0000',NULL,NULL,NULL,'2916.9100','0.0000',NULL,NULL,NULL,'0.0000',NULL,'2916.9100',NULL,NULL,NULL,'0.0000',NULL,NULL,NULL,'1.0000','1.0000',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'0.0000',NULL,NULL,NULL,'2916.9100','0.0000',NULL,NULL,NULL,'0.0000',NULL,'0.0000','0.0000','2916.9100',NULL,NULL,NULL,'0.0000',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'52.0000',NULL,NULL,NULL,0,1,'20',8,NULL,1,1,NULL,NULL,NULL,'12','19',NULL,NULL,NULL,NULL,'0.0000','2916.9100','2916.9100',NULL,'0.0000','2916.9100','2916.9100','0.0000',NULL,'2000000010',NULL,'CHF','zaugg@syscon.ch','29999','Syscon Systemberatung AG',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'CHF',NULL,NULL,'CHF',NULL,NULL,NULL,NULL,NULL,'77.56.210.23','freeshipping_freeshipping','CHF','professionals\nprof_store\nfr',NULL,NULL,'2017-10-04 15:59:07','2017-10-04 15:59:09',2,'3','0.0000','0.0000','0.0000',NULL,NULL,NULL,NULL,NULL,'0.0000','0.0000',NULL,'0',NULL),('11','new','pending',NULL,'837a7a91a8183f22d8746a66de63e443','Livraison gratuite - Gratuite',0,2,'6','0.0000',NULL,NULL,NULL,'2103.6200','0.0000',NULL,NULL,NULL,'0.0000',NULL,'2103.6200',NULL,NULL,NULL,'0.0000',NULL,NULL,NULL,'1.0000','1.0000',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'0.0000',NULL,NULL,NULL,'2103.6200','0.0000',NULL,NULL,NULL,'0.0000',NULL,'0.0000','0.0000','2103.6200',NULL,NULL,NULL,'0.0000',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'135.0000',NULL,NULL,NULL,0,1,'22',8,NULL,1,1,NULL,NULL,NULL,'13','21',NULL,NULL,NULL,NULL,'0.0000','2103.6200','2103.6200',NULL,'0.0000','2103.6200','2103.6200','0.0000',NULL,'2000000011',NULL,'CHF','zaugg@syscon.ch','29999','Syscon Systemberatung AG',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'CHF',NULL,NULL,'CHF',NULL,NULL,NULL,NULL,NULL,'77.56.210.23','freeshipping_freeshipping','CHF','professionals\nprof_store\nfr',NULL,NULL,'2017-10-05 09:21:56','2017-10-05 09:21:58',1,'3','0.0000','0.0000','0.0000',NULL,NULL,NULL,NULL,NULL,'0.0000','0.0000',NULL,'0',NULL),('12','new','pending',NULL,'58990f39783c797e45cc683af2871520','Livraison gratuite - Gratuite',0,2,'6','0.0000',NULL,NULL,NULL,'722.7000','0.0000',NULL,NULL,NULL,'0.0000',NULL,'722.7000',NULL,NULL,NULL,'0.0000',NULL,NULL,NULL,'1.0000','1.0000',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'0.0000',NULL,NULL,NULL,'722.7000','0.0000',NULL,NULL,NULL,'0.0000',NULL,'0.0000','0.0000','722.7000',NULL,NULL,NULL,'0.0000',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'6.0000',NULL,NULL,NULL,0,1,'24',8,NULL,1,1,NULL,NULL,NULL,'14','23',NULL,NULL,NULL,NULL,'0.0000','722.7000','722.7000',NULL,'0.0000','722.7000','722.7000','0.0000',NULL,'2000000012',NULL,'CHF','zaugg@syscon.ch','29999','Syscon Systemberatung AG',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'CHF',NULL,NULL,'CHF',NULL,NULL,NULL,NULL,NULL,'77.56.210.23','freeshipping_freeshipping','CHF','professionals\nprof_store\nfr',NULL,NULL,'2017-10-05 09:26:58','2017-10-05 09:27:01',1,'3','0.0000','0.0000','0.0000',NULL,NULL,NULL,NULL,NULL,'0.0000','0.0000',NULL,'0',NULL);
/*!40000 ALTER TABLE `sales_order` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sales_order_address`
--

DROP TABLE IF EXISTS `sales_order_address`;
CREATE TABLE `sales_order_address` (
  `entity_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Entity Id',
  `parent_id` int(10) unsigned DEFAULT NULL COMMENT 'Parent Id',
  `customer_address_id` int(11) DEFAULT NULL COMMENT 'Customer Address Id',
  `quote_address_id` int(11) DEFAULT NULL COMMENT 'Quote Address Id',
  `region_id` int(11) DEFAULT NULL COMMENT 'Region Id',
  `customer_id` int(11) DEFAULT NULL COMMENT 'Customer Id',
  `fax` varchar(255) DEFAULT NULL COMMENT 'Fax',
  `region` varchar(255) DEFAULT NULL COMMENT 'Region',
  `postcode` varchar(255) DEFAULT NULL COMMENT 'Postcode',
  `lastname` varchar(255) DEFAULT NULL COMMENT 'Lastname',
  `street` varchar(255) DEFAULT NULL COMMENT 'Street',
  `city` varchar(255) DEFAULT NULL COMMENT 'City',
  `email` varchar(255) DEFAULT NULL COMMENT 'Email',
  `telephone` varchar(255) DEFAULT NULL COMMENT 'Phone Number',
  `country_id` varchar(2) DEFAULT NULL COMMENT 'Country Id',
  `firstname` varchar(255) DEFAULT NULL COMMENT 'Firstname',
  `address_type` varchar(255) DEFAULT NULL COMMENT 'Address Type',
  `prefix` varchar(255) DEFAULT NULL COMMENT 'Prefix',
  `middlename` varchar(255) DEFAULT NULL COMMENT 'Middlename',
  `suffix` varchar(255) DEFAULT NULL COMMENT 'Suffix',
  `company` varchar(255) DEFAULT NULL COMMENT 'Company',
  `vat_id` text COMMENT 'Vat Id',
  `vat_is_valid` smallint(6) DEFAULT NULL COMMENT 'Vat Is Valid',
  `vat_request_id` text COMMENT 'Vat Request Id',
  `vat_request_date` text COMMENT 'Vat Request Date',
  `vat_request_success` smallint(6) DEFAULT NULL COMMENT 'Vat Request Success',
  PRIMARY KEY (`entity_id`),
  KEY `SALES_ORDER_ADDRESS_PARENT_ID` (`parent_id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8 COMMENT='Sales Flat Order Address';

--
-- Dumping data for table `sales_order_address`
--

LOCK TABLES `sales_order_address` WRITE;
/*!40000 ALTER TABLE `sales_order_address` DISABLE KEYS */;
INSERT INTO `sales_order_address` VALUES ('1','1','11',NULL,NULL,NULL,NULL,NULL,'8005','Ruefli','Hardturmstrasse 269','Zürich','egil.ruefli@gmail.com','044 454 20 16','CH','Egil','shipping',NULL,NULL,NULL,'Syscon Systemberatungs AG',NULL,NULL,NULL,NULL,NULL),('2','1','11',NULL,NULL,NULL,NULL,NULL,'8005','Ruefli','Hardturmstrasse 269','Zürich','egil.ruefli@gmail.com','044 454 20 16','CH','Egil','billing',NULL,NULL,NULL,'Syscon Systemberatungs AG',NULL,NULL,NULL,NULL,NULL),('3','2','10',NULL,'129',NULL,'44 715 26 90','Zürich','8036','Syscon Systemberatung AG','Zweierstrasse 129','Zürich','zaugg@syscon.ch','44 454 20 10','CH','29999','shipping',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('4','2','10',NULL,'129',NULL,'44 715 26 90','Zürich','8036','Syscon Systemberatung AG','Zweierstrasse 129','Zürich','zaugg@syscon.ch','44 454 20 10','CH','29999','billing',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('5','3','10',NULL,'129',NULL,'44 715 26 90','Zürich','8036','Syscon Systemberatung AG','Zweierstrasse 129','Zürich','zaugg@syscon.ch','44 454 20 10','CH','29999','shipping',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('6','3','10',NULL,'129',NULL,'44 715 26 90','Zürich','8036','Syscon Systemberatung AG','Zweierstrasse 129','Zürich','zaugg@syscon.ch','44 454 20 10','CH','29999','billing',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('7','4','10',NULL,'129',NULL,'44 715 26 90','Zürich','8036','Syscon Systemberatung AG','Zweierstrasse 129','Zürich','zaugg@syscon.ch','44 454 20 10','CH','29999','shipping',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('8','4','10',NULL,'129',NULL,'44 715 26 90','Zürich','8036','Syscon Systemberatung AG','Zweierstrasse 129','Zürich','zaugg@syscon.ch','44 454 20 10','CH','29999','billing',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('9','5','10',NULL,'129',NULL,'44 715 26 90','Zürich','8036','Syscon Systemberatung AG','Zweierstrasse 129','Zürich','zaugg@syscon.ch','44 454 20 10','CH','29999','shipping',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('10','5','10',NULL,'129',NULL,'44 715 26 90','Zürich','8036','Syscon Systemberatung AG','Zweierstrasse 129','Zürich','zaugg@syscon.ch','44 454 20 10','CH','29999','billing',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('11','6','10',NULL,'129',NULL,'44 715 26 90','Zürich','8036','Syscon Systemberatung AG','Zweierstrasse 129','Zürich','zaugg@syscon.ch','44 454 20 10','CH','29999','shipping',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('12','6','10',NULL,'129',NULL,'44 715 26 90','Zürich','8036','Syscon Systemberatung AG','Zweierstrasse 129','Zürich','zaugg@syscon.ch','44 454 20 10','CH','29999','billing',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('13','7','10',NULL,'129',NULL,'44 715 26 90','Zürich','8036','Syscon Systemberatung AG','Zweierstrasse 129','Zürich','zaugg@syscon.ch','44 454 20 10','CH','29999','shipping',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('14','7','10',NULL,'129',NULL,'44 715 26 90','Zürich','8036','Syscon Systemberatung AG','Zweierstrasse 129','Zürich','zaugg@syscon.ch','44 454 20 10','CH','29999','billing',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('15','8','10',NULL,'129',NULL,'44 715 26 90','Zürich','8036','Syscon Systemberatung AG','Zweierstrasse 129','Zürich','zaugg@syscon.ch','44 454 20 10','CH','29999','shipping',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('16','8','10',NULL,'129',NULL,'44 715 26 90','Zürich','8036','Syscon Systemberatung AG','Zweierstrasse 129','Zürich','zaugg@syscon.ch','44 454 20 10','CH','29999','billing',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('17','9','10',NULL,'129',NULL,'44 715 26 90','Zürich','8036','Syscon Systemberatung AG','Zweierstrasse 129','Zürich','zaugg@syscon.ch','44 454 20 10','CH','29999','shipping',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('18','9','10',NULL,'129',NULL,'44 715 26 90','Zürich','8036','Syscon Systemberatung AG','Zweierstrasse 129','Zürich','zaugg@syscon.ch','44 454 20 10','CH','29999','billing',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('19','10','10',NULL,'129',NULL,'44 715 26 90','Zürich','8036','Syscon Systemberatung AG','Zweierstrasse 129','Zürich','zaugg@syscon.ch','44 454 20 10','CH','29999','shipping',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('20','10','10',NULL,'129',NULL,'44 715 26 90','Zürich','8036','Syscon Systemberatung AG','Zweierstrasse 129','Zürich','zaugg@syscon.ch','44 454 20 10','CH','29999','billing',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('21','11','10',NULL,'129',NULL,'44 715 26 90','Zürich','8036','Syscon Systemberatung AG','Zweierstrasse 129','Zürich','zaugg@syscon.ch','44 454 20 10','CH','29999','shipping',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('22','11','10',NULL,'129',NULL,'44 715 26 90','Zürich','8036','Syscon Systemberatung AG','Zweierstrasse 129','Zürich','zaugg@syscon.ch','44 454 20 10','CH','29999','billing',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('23','12','10',NULL,'129',NULL,'44 715 26 90','Zürich','8036','Syscon Systemberatung AG','Zweierstrasse 129','Zürich','zaugg@syscon.ch','44 454 20 10','CH','29999','shipping',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('24','12','10',NULL,'129',NULL,'44 715 26 90','Zürich','8036','Syscon Systemberatung AG','Zweierstrasse 129','Zürich','zaugg@syscon.ch','44 454 20 10','CH','29999','billing',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `sales_order_address` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sales_order_aggregated_created`
--

DROP TABLE IF EXISTS `sales_order_aggregated_created`;
CREATE TABLE `sales_order_aggregated_created` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Id',
  `period` date DEFAULT NULL COMMENT 'Period',
  `store_id` smallint(5) unsigned DEFAULT NULL COMMENT 'Store Id',
  `order_status` varchar(50) NOT NULL COMMENT 'Order Status',
  `orders_count` int(11) NOT NULL DEFAULT '0' COMMENT 'Orders Count',
  `total_qty_ordered` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Total Qty Ordered',
  `total_qty_invoiced` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Total Qty Invoiced',
  `total_income_amount` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Total Income Amount',
  `total_revenue_amount` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Total Revenue Amount',
  `total_profit_amount` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Total Profit Amount',
  `total_invoiced_amount` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Total Invoiced Amount',
  `total_canceled_amount` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Total Canceled Amount',
  `total_paid_amount` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Total Paid Amount',
  `total_refunded_amount` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Total Refunded Amount',
  `total_tax_amount` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Total Tax Amount',
  `total_tax_amount_actual` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Total Tax Amount Actual',
  `total_shipping_amount` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Total Shipping Amount',
  `total_shipping_amount_actual` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Total Shipping Amount Actual',
  `total_discount_amount` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Total Discount Amount',
  `total_discount_amount_actual` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Total Discount Amount Actual',
  PRIMARY KEY (`id`),
  UNIQUE KEY `SALES_ORDER_AGGREGATED_CREATED_PERIOD_STORE_ID_ORDER_STATUS` (`period`,`store_id`,`order_status`),
  KEY `SALES_ORDER_AGGREGATED_CREATED_STORE_ID` (`store_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Sales Order Aggregated Created';

--
-- Table structure for table `sales_order_aggregated_updated`
--

DROP TABLE IF EXISTS `sales_order_aggregated_updated`;
CREATE TABLE `sales_order_aggregated_updated` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Id',
  `period` date DEFAULT NULL COMMENT 'Period',
  `store_id` smallint(5) unsigned DEFAULT NULL COMMENT 'Store Id',
  `order_status` varchar(50) NOT NULL COMMENT 'Order Status',
  `orders_count` int(11) NOT NULL DEFAULT '0' COMMENT 'Orders Count',
  `total_qty_ordered` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Total Qty Ordered',
  `total_qty_invoiced` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Total Qty Invoiced',
  `total_income_amount` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Total Income Amount',
  `total_revenue_amount` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Total Revenue Amount',
  `total_profit_amount` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Total Profit Amount',
  `total_invoiced_amount` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Total Invoiced Amount',
  `total_canceled_amount` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Total Canceled Amount',
  `total_paid_amount` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Total Paid Amount',
  `total_refunded_amount` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Total Refunded Amount',
  `total_tax_amount` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Total Tax Amount',
  `total_tax_amount_actual` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Total Tax Amount Actual',
  `total_shipping_amount` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Total Shipping Amount',
  `total_shipping_amount_actual` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Total Shipping Amount Actual',
  `total_discount_amount` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Total Discount Amount',
  `total_discount_amount_actual` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Total Discount Amount Actual',
  PRIMARY KEY (`id`),
  UNIQUE KEY `SALES_ORDER_AGGREGATED_UPDATED_PERIOD_STORE_ID_ORDER_STATUS` (`period`,`store_id`,`order_status`),
  KEY `SALES_ORDER_AGGREGATED_UPDATED_STORE_ID` (`store_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Sales Order Aggregated Updated';

--
-- Table structure for table `sales_order_grid`
--

DROP TABLE IF EXISTS `sales_order_grid`;
CREATE TABLE `sales_order_grid` (
  `entity_id` int(10) unsigned NOT NULL COMMENT 'Entity Id',
  `status` varchar(32) DEFAULT NULL COMMENT 'Status',
  `store_id` smallint(5) unsigned DEFAULT NULL COMMENT 'Store Id',
  `store_name` varchar(255) DEFAULT NULL COMMENT 'Store Name',
  `customer_id` int(10) unsigned DEFAULT NULL COMMENT 'Customer Id',
  `base_grand_total` decimal(12,4) DEFAULT NULL COMMENT 'Base Grand Total',
  `base_total_paid` decimal(12,4) DEFAULT NULL COMMENT 'Base Total Paid',
  `grand_total` decimal(12,4) DEFAULT NULL COMMENT 'Grand Total',
  `total_paid` decimal(12,4) DEFAULT NULL COMMENT 'Total Paid',
  `increment_id` varchar(50) DEFAULT NULL COMMENT 'Increment Id',
  `base_currency_code` varchar(3) DEFAULT NULL COMMENT 'Base Currency Code',
  `order_currency_code` varchar(255) DEFAULT NULL COMMENT 'Order Currency Code',
  `shipping_name` varchar(255) DEFAULT NULL COMMENT 'Shipping Name',
  `billing_name` varchar(255) DEFAULT NULL COMMENT 'Billing Name',
  `created_at` timestamp NULL DEFAULT NULL COMMENT 'Created At',
  `updated_at` timestamp NULL DEFAULT NULL COMMENT 'Updated At',
  `billing_address` varchar(255) DEFAULT NULL COMMENT 'Billing Address',
  `shipping_address` varchar(255) DEFAULT NULL COMMENT 'Shipping Address',
  `shipping_information` varchar(255) DEFAULT NULL COMMENT 'Shipping Method Name',
  `customer_email` varchar(255) DEFAULT NULL COMMENT 'Customer Email',
  `customer_group` varchar(255) DEFAULT NULL COMMENT 'Customer Group',
  `subtotal` decimal(12,4) DEFAULT NULL COMMENT 'Subtotal',
  `shipping_and_handling` decimal(12,4) DEFAULT NULL COMMENT 'Shipping and handling amount',
  `customer_name` varchar(255) DEFAULT NULL COMMENT 'Customer Name',
  `payment_method` varchar(255) DEFAULT NULL COMMENT 'Payment Method',
  `total_refunded` decimal(12,4) DEFAULT NULL COMMENT 'Total Refunded',
  PRIMARY KEY (`entity_id`),
  UNIQUE KEY `SALES_ORDER_GRID_INCREMENT_ID_STORE_ID` (`increment_id`,`store_id`),
  KEY `SALES_ORDER_GRID_STATUS` (`status`),
  KEY `SALES_ORDER_GRID_STORE_ID` (`store_id`),
  KEY `SALES_ORDER_GRID_BASE_GRAND_TOTAL` (`base_grand_total`),
  KEY `SALES_ORDER_GRID_BASE_TOTAL_PAID` (`base_total_paid`),
  KEY `SALES_ORDER_GRID_GRAND_TOTAL` (`grand_total`),
  KEY `SALES_ORDER_GRID_TOTAL_PAID` (`total_paid`),
  KEY `SALES_ORDER_GRID_SHIPPING_NAME` (`shipping_name`),
  KEY `SALES_ORDER_GRID_BILLING_NAME` (`billing_name`),
  KEY `SALES_ORDER_GRID_CREATED_AT` (`created_at`),
  KEY `SALES_ORDER_GRID_CUSTOMER_ID` (`customer_id`),
  KEY `SALES_ORDER_GRID_UPDATED_AT` (`updated_at`),
  FULLTEXT KEY `FTI_65B9E9925EC58F0C7C2E2F6379C233E7` (`increment_id`,`billing_name`,`shipping_name`,`shipping_address`,`billing_address`,`customer_name`,`customer_email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Sales Flat Order Grid';

--
-- Dumping data for table `sales_order_grid`
--

LOCK TABLES `sales_order_grid` WRITE;
/*!40000 ALTER TABLE `sales_order_grid` DISABLE KEYS */;
INSERT INTO `sales_order_grid` VALUES ('1','pending',2,'professionals\nprof_store\nfr','7','200.0000',NULL,'200.0000',NULL,'2000000001','CHF','CHF','Egil Ruefli','Egil Ruefli','2017-09-25 14:50:59','2017-09-25 14:50:59','Hardturmstrasse 269 Zürich 8005','Hardturmstrasse 269 Zürich 8005','Flat Rate - Fixed','egil.ruefli@gmail.com','2','175.0000','25.0000','Egil Ruefli','checkmo',NULL),('2','pending',2,'professionals\nprof_store\nfr','6','2957.5000',NULL,'2957.5000',NULL,'2000000002','CHF','CHF','29999 Syscon Systemberatung AG','29999 Syscon Systemberatung AG','2017-09-25 19:27:37','2017-09-25 19:27:37','Zweierstrasse 129 Zürich Zürich 8036','Zweierstrasse 129 Zürich Zürich 8036','Flat Rate - Fixed','zaugg@syscon.ch','8','2362.5000','595.0000','29999 Syscon Systemberatung AG','checkmo',NULL),('3','pending',2,'professionals\nprof_store\nfr','6','1364.0000',NULL,'1364.0000',NULL,'2000000003','CHF','CHF','29999 Syscon Systemberatung AG','29999 Syscon Systemberatung AG','2017-09-27 16:24:10','2017-09-27 16:24:10','Zweierstrasse 129 Zürich Zürich 8036','Zweierstrasse 129 Zürich Zürich 8036','Livraison gratuite - Gratuite','zaugg@syscon.ch','8','1364.0000','0.0000','29999 Syscon Systemberatung AG','purchaseorder',NULL),('4','pending',2,'professionals\nprof_store\nfr','6','1336.5000',NULL,'1336.5000',NULL,'2000000004','CHF','CHF','29999 Syscon Systemberatung AG','29999 Syscon Systemberatung AG','2017-09-29 17:03:38','2017-09-29 17:03:38','Zweierstrasse 129 Zürich Zürich 8036','Zweierstrasse 129 Zürich Zürich 8036','Livraison gratuite - Gratuite','zaugg@syscon.ch','8','1336.5000','0.0000','29999 Syscon Systemberatung AG','purchaseorder',NULL),('5','pending',2,'professionals\nprof_store\nfr','6','307.0000',NULL,'307.0000',NULL,'2000000005','CHF','CHF','29999 Syscon Systemberatung AG','29999 Syscon Systemberatung AG','2017-10-01 10:22:59','2017-10-01 10:22:59','Zweierstrasse 129 Zürich Zürich 8036','Zweierstrasse 129 Zürich Zürich 8036','Livraison gratuite - Gratuite','zaugg@syscon.ch','8','307.0000','0.0000','29999 Syscon Systemberatung AG','purchaseorder',NULL),('6','pending',2,'professionals\nprof_store\nfr','6','1950.5000',NULL,'1950.5000',NULL,'2000000006','CHF','CHF','29999 Syscon Systemberatung AG','29999 Syscon Systemberatung AG','2017-10-02 07:48:35','2017-10-02 07:48:35','Zweierstrasse 129 Zürich Zürich 8036','Zweierstrasse 129 Zürich Zürich 8036','Livraison gratuite - Gratuite','zaugg@syscon.ch','8','1950.5000','0.0000','29999 Syscon Systemberatung AG','purchaseorder',NULL),('7','pending',2,'professionals\nprof_store\nfr','6','926.2900',NULL,'926.2900',NULL,'2000000007','CHF','CHF','29999 Syscon Systemberatung AG','29999 Syscon Systemberatung AG','2017-10-02 07:53:33','2017-10-02 07:53:33','Zweierstrasse 129 Zürich Zürich 8036','Zweierstrasse 129 Zürich Zürich 8036','Livraison gratuite - Gratuite','zaugg@syscon.ch','8','926.2900','0.0000','29999 Syscon Systemberatung AG','purchaseorder',NULL),('8','pending',2,'professionals\nprof_store\nfr','6','1749.0000',NULL,'1749.0000',NULL,'2000000008','CHF','CHF','29999 Syscon Systemberatung AG','29999 Syscon Systemberatung AG','2017-10-02 15:58:07','2017-10-02 15:58:07','Zweierstrasse 129 Zürich Zürich 8036','Zweierstrasse 129 Zürich Zürich 8036','Livraison gratuite - Gratuite','zaugg@syscon.ch','8','1749.0000','0.0000','29999 Syscon Systemberatung AG','purchaseorder',NULL),('9','pending',2,'professionals\nprof_store\nfr','6','2918.4000',NULL,'2918.4000',NULL,'2000000009','CHF','CHF','29999 Syscon Systemberatung AG','29999 Syscon Systemberatung AG','2017-10-02 16:40:45','2017-10-02 16:40:45','Zweierstrasse 129 Zürich Zürich 8036','Zweierstrasse 129 Zürich Zürich 8036','Livraison gratuite - Gratuite','zaugg@syscon.ch','8','2918.4000','0.0000','29999 Syscon Systemberatung AG','purchaseorder',NULL),('10','pending',2,'professionals\nprof_store\nfr','6','2916.9100',NULL,'2916.9100',NULL,'2000000010','CHF','CHF','29999 Syscon Systemberatung AG','29999 Syscon Systemberatung AG','2017-10-04 15:59:07','2017-10-04 15:59:07','Zweierstrasse 129 Zürich Zürich 8036','Zweierstrasse 129 Zürich Zürich 8036','Livraison gratuite - Gratuite','zaugg@syscon.ch','8','2916.9100','0.0000','29999 Syscon Systemberatung AG','purchaseorder',NULL),('11','pending',2,'professionals\nprof_store\nfr','6','2103.6200',NULL,'2103.6200',NULL,'2000000011','CHF','CHF','29999 Syscon Systemberatung AG','29999 Syscon Systemberatung AG','2017-10-05 09:21:56','2017-10-05 09:21:56','Zweierstrasse 129 Zürich Zürich 8036','Zweierstrasse 129 Zürich Zürich 8036','Livraison gratuite - Gratuite','zaugg@syscon.ch','8','2103.6200','0.0000','29999 Syscon Systemberatung AG','purchaseorder',NULL),('12','pending',2,'professionals\nprof_store\nfr','6','722.7000',NULL,'722.7000',NULL,'2000000012','CHF','CHF','29999 Syscon Systemberatung AG','29999 Syscon Systemberatung AG','2017-10-05 09:26:58','2017-10-05 09:26:58','Zweierstrasse 129 Zürich Zürich 8036','Zweierstrasse 129 Zürich Zürich 8036','Livraison gratuite - Gratuite','zaugg@syscon.ch','8','722.7000','0.0000','29999 Syscon Systemberatung AG','purchaseorder',NULL);
/*!40000 ALTER TABLE `sales_order_grid` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sales_order_item`
--

DROP TABLE IF EXISTS `sales_order_item`;
CREATE TABLE `sales_order_item` (
  `item_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Item Id',
  `order_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Order Id',
  `parent_item_id` int(10) unsigned DEFAULT NULL COMMENT 'Parent Item Id',
  `quote_item_id` int(10) unsigned DEFAULT NULL COMMENT 'Quote Item Id',
  `store_id` smallint(5) unsigned DEFAULT NULL COMMENT 'Store Id',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Created At',
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Updated At',
  `product_id` int(10) unsigned DEFAULT NULL COMMENT 'Product Id',
  `product_type` varchar(255) DEFAULT NULL COMMENT 'Product Type',
  `product_options` text COMMENT 'Product Options',
  `weight` decimal(12,4) DEFAULT '0.0000' COMMENT 'Weight',
  `is_virtual` smallint(5) unsigned DEFAULT NULL COMMENT 'Is Virtual',
  `sku` varchar(255) DEFAULT NULL COMMENT 'Sku',
  `name` varchar(255) DEFAULT NULL COMMENT 'Name',
  `description` text COMMENT 'Description',
  `applied_rule_ids` text COMMENT 'Applied Rule Ids',
  `additional_data` text COMMENT 'Additional Data',
  `is_qty_decimal` smallint(5) unsigned DEFAULT NULL COMMENT 'Is Qty Decimal',
  `no_discount` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'No Discount',
  `qty_backordered` decimal(12,4) DEFAULT '0.0000' COMMENT 'Qty Backordered',
  `qty_canceled` decimal(12,4) DEFAULT '0.0000' COMMENT 'Qty Canceled',
  `qty_invoiced` decimal(12,4) DEFAULT '0.0000' COMMENT 'Qty Invoiced',
  `qty_ordered` decimal(12,4) DEFAULT '0.0000' COMMENT 'Qty Ordered',
  `qty_refunded` decimal(12,4) DEFAULT '0.0000' COMMENT 'Qty Refunded',
  `qty_shipped` decimal(12,4) DEFAULT '0.0000' COMMENT 'Qty Shipped',
  `base_cost` decimal(12,4) DEFAULT '0.0000' COMMENT 'Base Cost',
  `price` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Price',
  `base_price` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Base Price',
  `original_price` decimal(12,4) DEFAULT NULL COMMENT 'Original Price',
  `base_original_price` decimal(12,4) DEFAULT NULL COMMENT 'Base Original Price',
  `tax_percent` decimal(12,4) DEFAULT '0.0000' COMMENT 'Tax Percent',
  `tax_amount` decimal(12,4) DEFAULT '0.0000' COMMENT 'Tax Amount',
  `base_tax_amount` decimal(12,4) DEFAULT '0.0000' COMMENT 'Base Tax Amount',
  `tax_invoiced` decimal(12,4) DEFAULT '0.0000' COMMENT 'Tax Invoiced',
  `base_tax_invoiced` decimal(12,4) DEFAULT '0.0000' COMMENT 'Base Tax Invoiced',
  `discount_percent` decimal(12,4) DEFAULT '0.0000' COMMENT 'Discount Percent',
  `discount_amount` decimal(12,4) DEFAULT '0.0000' COMMENT 'Discount Amount',
  `base_discount_amount` decimal(12,4) DEFAULT '0.0000' COMMENT 'Base Discount Amount',
  `discount_invoiced` decimal(12,4) DEFAULT '0.0000' COMMENT 'Discount Invoiced',
  `base_discount_invoiced` decimal(12,4) DEFAULT '0.0000' COMMENT 'Base Discount Invoiced',
  `amount_refunded` decimal(12,4) DEFAULT '0.0000' COMMENT 'Amount Refunded',
  `base_amount_refunded` decimal(12,4) DEFAULT '0.0000' COMMENT 'Base Amount Refunded',
  `row_total` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Row Total',
  `base_row_total` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Base Row Total',
  `row_invoiced` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Row Invoiced',
  `base_row_invoiced` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Base Row Invoiced',
  `row_weight` decimal(12,4) DEFAULT '0.0000' COMMENT 'Row Weight',
  `base_tax_before_discount` decimal(12,4) DEFAULT NULL COMMENT 'Base Tax Before Discount',
  `tax_before_discount` decimal(12,4) DEFAULT NULL COMMENT 'Tax Before Discount',
  `ext_order_item_id` varchar(255) DEFAULT NULL COMMENT 'Ext Order Item Id',
  `locked_do_invoice` smallint(5) unsigned DEFAULT NULL COMMENT 'Locked Do Invoice',
  `locked_do_ship` smallint(5) unsigned DEFAULT NULL COMMENT 'Locked Do Ship',
  `price_incl_tax` decimal(12,4) DEFAULT NULL COMMENT 'Price Incl Tax',
  `base_price_incl_tax` decimal(12,4) DEFAULT NULL COMMENT 'Base Price Incl Tax',
  `row_total_incl_tax` decimal(12,4) DEFAULT NULL COMMENT 'Row Total Incl Tax',
  `base_row_total_incl_tax` decimal(12,4) DEFAULT NULL COMMENT 'Base Row Total Incl Tax',
  `discount_tax_compensation_amount` decimal(12,4) DEFAULT NULL COMMENT 'Discount Tax Compensation Amount',
  `base_discount_tax_compensation_amount` decimal(12,4) DEFAULT NULL COMMENT 'Base Discount Tax Compensation Amount',
  `discount_tax_compensation_invoiced` decimal(12,4) DEFAULT NULL COMMENT 'Discount Tax Compensation Invoiced',
  `base_discount_tax_compensation_invoiced` decimal(12,4) DEFAULT NULL COMMENT 'Base Discount Tax Compensation Invoiced',
  `discount_tax_compensation_refunded` decimal(12,4) DEFAULT NULL COMMENT 'Discount Tax Compensation Refunded',
  `base_discount_tax_compensation_refunded` decimal(12,4) DEFAULT NULL COMMENT 'Base Discount Tax Compensation Refunded',
  `tax_canceled` decimal(12,4) DEFAULT NULL COMMENT 'Tax Canceled',
  `discount_tax_compensation_canceled` decimal(12,4) DEFAULT NULL COMMENT 'Discount Tax Compensation Canceled',
  `tax_refunded` decimal(12,4) DEFAULT NULL COMMENT 'Tax Refunded',
  `base_tax_refunded` decimal(12,4) DEFAULT NULL COMMENT 'Base Tax Refunded',
  `discount_refunded` decimal(12,4) DEFAULT NULL COMMENT 'Discount Refunded',
  `base_discount_refunded` decimal(12,4) DEFAULT NULL COMMENT 'Base Discount Refunded',
  `free_shipping` smallint(6) DEFAULT NULL,
  `gift_message_id` int(11) DEFAULT NULL COMMENT 'Gift Message Id',
  `gift_message_available` int(11) DEFAULT NULL COMMENT 'Gift Message Available',
  `weee_tax_applied` text COMMENT 'Weee Tax Applied',
  `weee_tax_applied_amount` decimal(12,4) DEFAULT NULL COMMENT 'Weee Tax Applied Amount',
  `weee_tax_applied_row_amount` decimal(12,4) DEFAULT NULL COMMENT 'Weee Tax Applied Row Amount',
  `weee_tax_disposition` decimal(12,4) DEFAULT NULL COMMENT 'Weee Tax Disposition',
  `weee_tax_row_disposition` decimal(12,4) DEFAULT NULL COMMENT 'Weee Tax Row Disposition',
  `base_weee_tax_applied_amount` decimal(12,4) DEFAULT NULL COMMENT 'Base Weee Tax Applied Amount',
  `base_weee_tax_applied_row_amnt` decimal(12,4) DEFAULT NULL COMMENT 'Base Weee Tax Applied Row Amnt',
  `base_weee_tax_disposition` decimal(12,4) DEFAULT NULL COMMENT 'Base Weee Tax Disposition',
  `base_weee_tax_row_disposition` decimal(12,4) DEFAULT NULL COMMENT 'Base Weee Tax Row Disposition',
  PRIMARY KEY (`item_id`),
  KEY `SALES_ORDER_ITEM_ORDER_ID` (`order_id`),
  KEY `SALES_ORDER_ITEM_STORE_ID` (`store_id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COMMENT='Sales Flat Order Item';

--
-- Dumping data for table `sales_order_item`
--

LOCK TABLES `sales_order_item` WRITE;
/*!40000 ALTER TABLE `sales_order_item` DISABLE KEYS */;
INSERT INTO `sales_order_item` VALUES ('1','1',NULL,'1',2,'2017-09-25 14:50:59','2017-09-25 14:50:59','4','simple','a:2:{s:15:\"info_buyRequest\";a:6:{s:4:\"uenc\";s:124:\"aHR0cDovL2RldjMuZm91cm5pZXJib2lzLmNoL3Byb2Zfdmlld19mci9jYXRhbG9nL3Byb2R1Y3Qvdmlldy9pZC80L3MvbGFtZXMtbWVsZXplLWlpYi1paWlhLw,,\";s:7:\"product\";s:1:\"4\";s:28:\"selected_configurable_option\";s:0:\"\";s:15:\"related_product\";s:0:\"\";s:7:\"options\";a:7:{i:1;s:5:\"35.00\";i:12;s:5:\"22.50\";i:13;s:1:\"2\";i:14;s:4:\"25.0\";i:15;s:2:\"17\";i:16;s:0:\"\";i:17;s:0:\"\";}s:3:\"qty\";s:1:\"5\";}s:7:\"options\";a:5:{i:0;a:7:{s:5:\"label\";s:25:\"Einheitspreis [CHF/m.v.p]\";s:5:\"value\";s:5:\"35.00\";s:11:\"print_value\";s:5:\"35.00\";s:9:\"option_id\";s:1:\"1\";s:11:\"option_type\";s:5:\"field\";s:12:\"option_value\";s:5:\"35.00\";s:11:\"custom_view\";b:0;}i:1;a:7:{s:5:\"label\";s:13:\"Menge [m.v.p]\";s:5:\"value\";s:5:\"22.50\";s:11:\"print_value\";s:5:\"22.50\";s:9:\"option_id\";s:2:\"12\";s:11:\"option_type\";s:5:\"field\";s:12:\"option_value\";s:5:\"22.50\";s:11:\"custom_view\";b:0;}i:2;a:7:{s:5:\"label\";s:10:\"Höhe [mm]\";s:5:\"value\";s:4:\"27.0\";s:11:\"print_value\";s:4:\"27.0\";s:9:\"option_id\";s:2:\"13\";s:11:\"option_type\";s:9:\"drop_down\";s:12:\"option_value\";s:1:\"2\";s:11:\"custom_view\";b:1;}i:3;a:7:{s:5:\"label\";s:11:\"Breite [mm]\";s:5:\"value\";s:4:\"25.0\";s:11:\"print_value\";s:4:\"25.0\";s:9:\"option_id\";s:2:\"14\";s:11:\"option_type\";s:5:\"field\";s:12:\"option_value\";s:4:\"25.0\";s:11:\"custom_view\";b:0;}i:4;a:7:{s:5:\"label\";s:10:\"Länge [m]\";s:5:\"value\";s:4:\"4.50\";s:11:\"print_value\";s:4:\"4.50\";s:9:\"option_id\";s:2:\"15\";s:11:\"option_type\";s:9:\"drop_down\";s:12:\"option_value\";s:2:\"17\";s:11:\"custom_view\";b:1;}}}',NULL,0,'4308-unitprice-actualqty-dep27.0-wid-len4.50','Lames mélèze IIB-IIIA',NULL,NULL,NULL,1,0,NULL,'0.0000','0.0000','5.0000','0.0000','0.0000',NULL,'35.0000','35.0000','35.0000','35.0000','0.0000','0.0000','0.0000','0.0000','0.0000','0.0000','0.0000','0.0000','0.0000','0.0000','0.0000','0.0000','175.0000','175.0000','0.0000','0.0000','0.0000',NULL,NULL,NULL,NULL,NULL,'35.0000','35.0000','175.0000','175.0000','0.0000','0.0000',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,'0',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('2','2',NULL,'3',2,'2017-09-25 19:27:37','2017-09-25 19:27:37','8','simple','a:2:{s:15:\"info_buyRequest\";a:6:{s:4:\"uenc\";s:144:\"aHR0cDovL2RldjMuZm91cm5pZXJib2lzLmNoL3Byb2Zfdmlld19mci9jYXRhbG9nL3Byb2R1Y3Qvdmlldy9pZC84L3MvY2FycmVsZXRzLWd1aWNoZXRzLWVwaWNlYS9jYXRlZ29yeS8xOC8,\";s:7:\"product\";s:1:\"8\";s:28:\"selected_configurable_option\";s:0:\"\";s:15:\"related_product\";s:0:\"\";s:7:\"options\";a:7:{i:18;s:5:\"15.75\";i:19;s:6:\"333.00\";i:20;s:2:\"19\";i:21;s:2:\"20\";i:22;s:2:\"22\";i:23;s:3:\"330\";i:24;s:2:\"74\";}s:3:\"qty\";s:2:\"74\";}s:7:\"options\";a:7:{i:0;a:7:{s:5:\"label\";s:25:\"Einheitspreis [CHF/m.v.p]\";s:5:\"value\";s:5:\"15.75\";s:11:\"print_value\";s:5:\"15.75\";s:9:\"option_id\";s:2:\"18\";s:11:\"option_type\";s:5:\"field\";s:12:\"option_value\";s:5:\"15.75\";s:11:\"custom_view\";b:0;}i:1;a:7:{s:5:\"label\";s:13:\"Menge [m.v.p]\";s:5:\"value\";s:6:\"333.00\";s:11:\"print_value\";s:6:\"333.00\";s:9:\"option_id\";s:2:\"19\";s:11:\"option_type\";s:5:\"field\";s:12:\"option_value\";s:6:\"333.00\";s:11:\"custom_view\";b:0;}i:2;a:7:{s:5:\"label\";s:10:\"Höhe [mm]\";s:5:\"value\";s:4:\"75.0\";s:11:\"print_value\";s:4:\"75.0\";s:9:\"option_id\";s:2:\"20\";s:11:\"option_type\";s:9:\"drop_down\";s:12:\"option_value\";s:2:\"19\";s:11:\"custom_view\";b:1;}i:3;a:7:{s:5:\"label\";s:11:\"Breite [mm]\";s:5:\"value\";s:5:\"110.0\";s:11:\"print_value\";s:5:\"110.0\";s:9:\"option_id\";s:2:\"21\";s:11:\"option_type\";s:9:\"drop_down\";s:12:\"option_value\";s:2:\"20\";s:11:\"custom_view\";b:1;}i:4;a:7:{s:5:\"label\";s:10:\"Länge [m]\";s:5:\"value\";s:4:\"4.50\";s:11:\"print_value\";s:4:\"4.50\";s:9:\"option_id\";s:2:\"22\";s:11:\"option_type\";s:9:\"drop_down\";s:12:\"option_value\";s:2:\"22\";s:11:\"custom_view\";b:1;}i:5;a:7:{s:5:\"label\";s:29:\"Gewünschte Zielmenge [m.v.p]\";s:5:\"value\";s:3:\"330\";s:11:\"print_value\";s:3:\"330\";s:9:\"option_id\";s:2:\"23\";s:11:\"option_type\";s:5:\"field\";s:12:\"option_value\";s:3:\"330\";s:11:\"custom_view\";b:0;}i:6;a:7:{s:5:\"label\";s:42:\"Benötigte Anzahl für die Zielmenge [pce]\";s:5:\"value\";s:2:\"74\";s:11:\"print_value\";s:2:\"74\";s:9:\"option_id\";s:2:\"24\";s:11:\"option_type\";s:5:\"field\";s:12:\"option_value\";s:2:\"74\";s:11:\"custom_view\";b:0;}}}',NULL,0,'4942-unitprice-actualqty-dep75.0-wid110.0-len4.50-tgvalue-qtyreq','Carrelets guichets épicéa',NULL,NULL,NULL,1,0,NULL,'0.0000','0.0000','74.0000','0.0000','0.0000',NULL,'15.7500','15.7500','15.7500','15.7500','0.0000','0.0000','0.0000','0.0000','0.0000','0.0000','0.0000','0.0000','0.0000','0.0000','0.0000','0.0000','1165.5000','1165.5000','0.0000','0.0000','0.0000',NULL,NULL,NULL,NULL,NULL,'15.7500','15.7500','1165.5000','1165.5000','0.0000','0.0000',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,'0',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('3','2',NULL,'4',2,'2017-09-25 19:27:37','2017-09-25 19:27:37','9','simple','a:2:{s:15:\"info_buyRequest\";a:6:{s:4:\"uenc\";s:140:\"aHR0cDovL2RldjMuZm91cm5pZXJib2lzLmNoL3Byb2Zfdmlld19mci9jYXRhbG9nL3Byb2R1Y3Qvdmlldy9pZC85L3MvbGFtZXMtbWVsZXplLWlpYi1paWlhL2NhdGVnb3J5LzEyLw,,\";s:7:\"product\";s:1:\"9\";s:28:\"selected_configurable_option\";s:0:\"\";s:15:\"related_product\";s:0:\"\";s:7:\"options\";a:9:{i:1;s:5:\"35.00\";i:25;s:5:\"36.00\";i:26;s:5:\"63.00\";i:27;s:5:\"30.00\";i:28;s:2:\"24\";i:29;s:2:\"26\";i:30;s:2:\"29\";i:31;s:2:\"35\";i:32;s:2:\"45\";}s:3:\"qty\";s:2:\"45\";}s:7:\"options\";a:9:{i:0;a:7:{s:5:\"label\";s:22:\"Einheitspreis [CHF/m2]\";s:5:\"value\";s:5:\"35.00\";s:11:\"print_value\";s:5:\"35.00\";s:9:\"option_id\";s:1:\"1\";s:11:\"option_type\";s:5:\"field\";s:12:\"option_value\";s:5:\"35.00\";s:11:\"custom_view\";b:0;}i:1;a:7:{s:5:\"label\";s:10:\"Menge [m2]\";s:5:\"value\";s:5:\"36.00\";s:11:\"print_value\";s:5:\"36.00\";s:9:\"option_id\";s:2:\"25\";s:11:\"option_type\";s:5:\"field\";s:12:\"option_value\";s:5:\"36.00\";s:11:\"custom_view\";b:0;}i:2;a:7:{s:5:\"label\";s:12:\"Rabatt [CHF]\";s:5:\"value\";s:5:\"63.00\";s:11:\"print_value\";s:5:\"63.00\";s:9:\"option_id\";s:2:\"26\";s:11:\"option_type\";s:5:\"field\";s:12:\"option_value\";s:5:\"63.00\";s:11:\"custom_view\";b:0;}i:3;a:7:{s:5:\"label\";s:32:\"nächst höhere Rabattstufe [m2]\";s:5:\"value\";s:5:\"30.00\";s:11:\"print_value\";s:5:\"30.00\";s:9:\"option_id\";s:2:\"27\";s:11:\"option_type\";s:5:\"field\";s:12:\"option_value\";s:5:\"30.00\";s:11:\"custom_view\";b:0;}i:4;a:7:{s:5:\"label\";s:10:\"Höhe [mm]\";s:5:\"value\";s:4:\"20.0\";s:11:\"print_value\";s:4:\"20.0\";s:9:\"option_id\";s:2:\"28\";s:11:\"option_type\";s:9:\"drop_down\";s:12:\"option_value\";s:2:\"24\";s:11:\"custom_view\";b:1;}i:5;a:7:{s:5:\"label\";s:11:\"Breite [mm]\";s:5:\"value\";s:5:\"160.0\";s:11:\"print_value\";s:5:\"160.0\";s:9:\"option_id\";s:2:\"29\";s:11:\"option_type\";s:9:\"drop_down\";s:12:\"option_value\";s:2:\"26\";s:11:\"custom_view\";b:1;}i:6;a:7:{s:5:\"label\";s:10:\"Länge [m]\";s:5:\"value\";s:4:\"5.00\";s:11:\"print_value\";s:4:\"5.00\";s:9:\"option_id\";s:2:\"30\";s:11:\"option_type\";s:9:\"drop_down\";s:12:\"option_value\";s:2:\"29\";s:11:\"custom_view\";b:1;}i:7;a:7:{s:5:\"label\";s:26:\"Gewünschte Zielmenge [m2]\";s:5:\"value\";s:2:\"35\";s:11:\"print_value\";s:2:\"35\";s:9:\"option_id\";s:2:\"31\";s:11:\"option_type\";s:5:\"field\";s:12:\"option_value\";s:2:\"35\";s:11:\"custom_view\";b:0;}i:8;a:7:{s:5:\"label\";s:42:\"Benötigte Anzahl für die Zielmenge [pce]\";s:5:\"value\";s:2:\"45\";s:11:\"print_value\";s:2:\"45\";s:9:\"option_id\";s:2:\"32\";s:11:\"option_type\";s:5:\"field\";s:12:\"option_value\";s:2:\"45\";s:11:\"custom_view\";b:0;}}}',NULL,0,'4308-unitprice-actualqty-actualdisc-nextdisclevel-dep20.0-wid160.0-len5.00-tgvalue-qtyreq','Lames mélèze IIB-IIIA',NULL,NULL,NULL,1,0,NULL,'0.0000','0.0000','45.0000','0.0000','0.0000',NULL,'26.6000','26.6000','26.6000','26.6000','0.0000','0.0000','0.0000','0.0000','0.0000','0.0000','0.0000','0.0000','0.0000','0.0000','0.0000','0.0000','1197.0000','1197.0000','0.0000','0.0000','0.0000',NULL,NULL,NULL,NULL,NULL,'26.6000','26.6000','1197.0000','1197.0000','0.0000','0.0000',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,'0',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('4','3',NULL,'23',2,'2017-09-27 16:24:10','2017-09-27 16:24:10','20','simple','a:2:{s:15:\"info_buyRequest\";a:6:{s:4:\"uenc\";s:144:\"aHR0cDovL2RldjMuZm91cm5pZXJib2lzLmNoL3Byb2Zfdmlld19mci9jYXRhbG9nL3Byb2R1Y3Qvdmlldy9pZC8yMC9zL2NhcnJlbGV0cy1ndWljaGV0cy1lcGljZWEvY2F0ZWdvcnkvMTgv\";s:7:\"product\";s:2:\"20\";s:28:\"selected_configurable_option\";s:0:\"\";s:15:\"related_product\";s:0:\"\";s:7:\"options\";a:7:{i:1;s:5:\"11.00\";i:12;s:6:\"124.00\";i:13;s:2:\"13\";i:14;s:1:\"2\";i:15;s:2:\"14\";i:16;s:3:\"124\";i:17;s:2:\"31\";}s:3:\"qty\";s:2:\"31\";}s:7:\"options\";a:7:{i:0;a:7:{s:5:\"label\";s:25:\"Einheitspreis [CHF/m.v.p]\";s:5:\"value\";s:5:\"11.00\";s:11:\"print_value\";s:5:\"11.00\";s:9:\"option_id\";s:1:\"1\";s:11:\"option_type\";s:5:\"field\";s:12:\"option_value\";s:5:\"11.00\";s:11:\"custom_view\";b:0;}i:1;a:7:{s:5:\"label\";s:13:\"Menge [m.v.p]\";s:5:\"value\";s:6:\"124.00\";s:11:\"print_value\";s:6:\"124.00\";s:9:\"option_id\";s:2:\"12\";s:11:\"option_type\";s:5:\"field\";s:12:\"option_value\";s:6:\"124.00\";s:11:\"custom_view\";b:0;}i:2;a:7:{s:5:\"label\";s:10:\"Höhe [mm]\";s:5:\"value\";s:4:\"75.0\";s:11:\"print_value\";s:4:\"75.0\";s:9:\"option_id\";s:2:\"13\";s:11:\"option_type\";s:9:\"drop_down\";s:12:\"option_value\";s:2:\"13\";s:11:\"custom_view\";b:1;}i:3;a:7:{s:5:\"label\";s:11:\"Breite [mm]\";s:5:\"value\";s:5:\"110.0\";s:11:\"print_value\";s:5:\"110.0\";s:9:\"option_id\";s:2:\"14\";s:11:\"option_type\";s:9:\"drop_down\";s:12:\"option_value\";s:1:\"2\";s:11:\"custom_view\";b:1;}i:4;a:7:{s:5:\"label\";s:10:\"Länge [m]\";s:5:\"value\";s:4:\"4.00\";s:11:\"print_value\";s:4:\"4.00\";s:9:\"option_id\";s:2:\"15\";s:11:\"option_type\";s:9:\"drop_down\";s:12:\"option_value\";s:2:\"14\";s:11:\"custom_view\";b:1;}i:5;a:7:{s:5:\"label\";s:29:\"Gewünschte Zielmenge [m.v.p]\";s:5:\"value\";s:3:\"124\";s:11:\"print_value\";s:3:\"124\";s:9:\"option_id\";s:2:\"16\";s:11:\"option_type\";s:5:\"field\";s:12:\"option_value\";s:3:\"124\";s:11:\"custom_view\";b:0;}i:6;a:7:{s:5:\"label\";s:42:\"Benötigte Anzahl für die Zielmenge [pce]\";s:5:\"value\";s:2:\"31\";s:11:\"print_value\";s:2:\"31\";s:9:\"option_id\";s:2:\"17\";s:11:\"option_type\";s:5:\"field\";s:12:\"option_value\";s:2:\"31\";s:11:\"custom_view\";b:0;}}}',NULL,0,'4942-unitprice-actualqty-dep75.0-wid110.0-len4.00-tgvalue-qtyreq','Carrelets guichets épicéa',NULL,NULL,NULL,1,0,NULL,'0.0000','0.0000','31.0000','0.0000','0.0000',NULL,'44.0000','44.0000','44.0000','44.0000','0.0000','0.0000','0.0000','0.0000','0.0000','0.0000','0.0000','0.0000','0.0000','0.0000','0.0000','0.0000','1364.0000','1364.0000','0.0000','0.0000','0.0000',NULL,NULL,NULL,NULL,NULL,'44.0000','44.0000','1364.0000','1364.0000','0.0000','0.0000',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,'0',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('5','4',NULL,'25',2,'2017-09-29 17:03:38','2017-09-29 17:03:38','20','simple','a:2:{s:15:\"info_buyRequest\";a:6:{s:4:\"uenc\";s:144:\"aHR0cDovL2RldjMuZm91cm5pZXJib2lzLmNoL3Byb2Zfdmlld19mci9jYXRhbG9nL3Byb2R1Y3Qvdmlldy9pZC8yMC9zL2NhcnJlbGV0cy1ndWljaGV0cy1lcGljZWEvY2F0ZWdvcnkvMTgv\";s:7:\"product\";s:2:\"20\";s:28:\"selected_configurable_option\";s:0:\"\";s:15:\"related_product\";s:0:\"\";s:7:\"options\";a:7:{i:1;s:5:\"11.00\";i:12;s:6:\"121.50\";i:13;s:2:\"13\";i:14;s:1:\"2\";i:15;s:2:\"15\";i:16;s:3:\"120\";i:17;s:2:\"27\";}s:3:\"qty\";s:2:\"27\";}s:7:\"options\";a:7:{i:0;a:7:{s:5:\"label\";s:25:\"Einheitspreis [CHF/m.v.p]\";s:5:\"value\";s:5:\"11.00\";s:11:\"print_value\";s:5:\"11.00\";s:9:\"option_id\";s:1:\"1\";s:11:\"option_type\";s:5:\"field\";s:12:\"option_value\";s:5:\"11.00\";s:11:\"custom_view\";b:0;}i:1;a:7:{s:5:\"label\";s:13:\"Menge [m.v.p]\";s:5:\"value\";s:6:\"121.50\";s:11:\"print_value\";s:6:\"121.50\";s:9:\"option_id\";s:2:\"12\";s:11:\"option_type\";s:5:\"field\";s:12:\"option_value\";s:6:\"121.50\";s:11:\"custom_view\";b:0;}i:2;a:7:{s:5:\"label\";s:10:\"Höhe [mm]\";s:5:\"value\";s:4:\"75.0\";s:11:\"print_value\";s:4:\"75.0\";s:9:\"option_id\";s:2:\"13\";s:11:\"option_type\";s:9:\"drop_down\";s:12:\"option_value\";s:2:\"13\";s:11:\"custom_view\";b:1;}i:3;a:7:{s:5:\"label\";s:11:\"Breite [mm]\";s:5:\"value\";s:5:\"110.0\";s:11:\"print_value\";s:5:\"110.0\";s:9:\"option_id\";s:2:\"14\";s:11:\"option_type\";s:9:\"drop_down\";s:12:\"option_value\";s:1:\"2\";s:11:\"custom_view\";b:1;}i:4;a:7:{s:5:\"label\";s:10:\"Länge [m]\";s:5:\"value\";s:4:\"4.50\";s:11:\"print_value\";s:4:\"4.50\";s:9:\"option_id\";s:2:\"15\";s:11:\"option_type\";s:9:\"drop_down\";s:12:\"option_value\";s:2:\"15\";s:11:\"custom_view\";b:1;}i:5;a:7:{s:5:\"label\";s:29:\"Gewünschte Zielmenge [m.v.p]\";s:5:\"value\";s:3:\"120\";s:11:\"print_value\";s:3:\"120\";s:9:\"option_id\";s:2:\"16\";s:11:\"option_type\";s:5:\"field\";s:12:\"option_value\";s:3:\"120\";s:11:\"custom_view\";b:0;}i:6;a:7:{s:5:\"label\";s:42:\"Benötigte Anzahl für die Zielmenge [pce]\";s:5:\"value\";s:2:\"27\";s:11:\"print_value\";s:2:\"27\";s:9:\"option_id\";s:2:\"17\";s:11:\"option_type\";s:5:\"field\";s:12:\"option_value\";s:2:\"27\";s:11:\"custom_view\";b:0;}}}',NULL,0,'4942-unitprice-actualqty-dep75.0-wid110.0-len4.50-tgvalue-qtyreq','Carrelets guichets épicéa',NULL,NULL,NULL,1,0,NULL,'0.0000','0.0000','27.0000','0.0000','0.0000',NULL,'49.5000','49.5000','49.5000','49.5000','0.0000','0.0000','0.0000','0.0000','0.0000','0.0000','0.0000','0.0000','0.0000','0.0000','0.0000','0.0000','1336.5000','1336.5000','0.0000','0.0000','0.0000',NULL,NULL,NULL,NULL,NULL,'49.5000','49.5000','1336.5000','1336.5000','0.0000','0.0000',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,'0',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('6','5',NULL,'26',2,'2017-10-01 10:22:59','2017-10-01 10:22:59','23','simple','a:2:{s:15:\"info_buyRequest\";a:6:{s:4:\"uenc\";s:144:\"aHR0cDovL2RldjMuZm91cm5pZXJib2lzLmNoL3Byb2Zfdmlld19mci9jYXRhbG9nL3Byb2R1Y3Qvdmlldy9pZC8yMy9zL3Zpcy1kZS1maXhhdGlvbi12aWRpd2FsbC9jYXRlZ29yeS8xNS8,\";s:7:\"product\";s:2:\"23\";s:28:\"selected_configurable_option\";s:0:\"\";s:15:\"related_product\";s:0:\"\";s:7:\"options\";a:1:{i:27;s:5:\"30.70\";}s:3:\"qty\";s:2:\"10\";}s:7:\"options\";a:1:{i:0;a:7:{s:5:\"label\";s:23:\"Einheitspreis [CHF/pce]\";s:5:\"value\";s:5:\"30.70\";s:11:\"print_value\";s:5:\"30.70\";s:9:\"option_id\";s:2:\"27\";s:11:\"option_type\";s:5:\"field\";s:12:\"option_value\";s:5:\"30.70\";s:11:\"custom_view\";b:0;}}}',NULL,0,'3814-unitprice','Vis de fixation Vidiwall',NULL,NULL,NULL,0,0,NULL,'0.0000','0.0000','10.0000','0.0000','0.0000',NULL,'30.7000','30.7000','34.0000','34.0000','0.0000','0.0000','0.0000','0.0000','0.0000','0.0000','0.0000','0.0000','0.0000','0.0000','0.0000','0.0000','307.0000','307.0000','0.0000','0.0000','0.0000',NULL,NULL,NULL,NULL,NULL,'30.7000','30.7000','307.0000','307.0000','0.0000','0.0000',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,'0',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('7','6',NULL,'27',2,'2017-10-02 07:48:35','2017-10-02 07:48:35','20','simple','a:2:{s:15:\"info_buyRequest\";a:6:{s:4:\"uenc\";s:144:\"aHR0cDovL2RldjMuZm91cm5pZXJib2lzLmNoL3Byb2Zfdmlld19mci9jYXRhbG9nL3Byb2R1Y3Qvdmlldy9pZC8yMC9zL2NhcnJlbGV0cy1ndWljaGV0cy1lcGljZWEvY2F0ZWdvcnkvMTgv\";s:7:\"product\";s:2:\"20\";s:28:\"selected_configurable_option\";s:0:\"\";s:15:\"related_product\";s:0:\"\";s:7:\"options\";a:7:{i:1;s:5:\"11.00\";i:12;s:6:\"121.50\";i:13;s:2:\"13\";i:14;s:1:\"2\";i:15;s:2:\"15\";i:16;s:3:\"120\";i:17;s:2:\"27\";}s:3:\"qty\";s:7:\"27.0000\";}s:7:\"options\";a:7:{i:0;a:7:{s:5:\"label\";s:25:\"Einheitspreis [CHF/m.v.p]\";s:5:\"value\";s:5:\"11.00\";s:11:\"print_value\";s:5:\"11.00\";s:9:\"option_id\";s:1:\"1\";s:11:\"option_type\";s:5:\"field\";s:12:\"option_value\";s:5:\"11.00\";s:11:\"custom_view\";b:0;}i:1;a:7:{s:5:\"label\";s:13:\"Menge [m.v.p]\";s:5:\"value\";s:6:\"121.50\";s:11:\"print_value\";s:6:\"121.50\";s:9:\"option_id\";s:2:\"12\";s:11:\"option_type\";s:5:\"field\";s:12:\"option_value\";s:6:\"121.50\";s:11:\"custom_view\";b:0;}i:2;a:7:{s:5:\"label\";s:10:\"Höhe [mm]\";s:5:\"value\";s:4:\"75.0\";s:11:\"print_value\";s:4:\"75.0\";s:9:\"option_id\";s:2:\"13\";s:11:\"option_type\";s:9:\"drop_down\";s:12:\"option_value\";s:2:\"13\";s:11:\"custom_view\";b:1;}i:3;a:7:{s:5:\"label\";s:11:\"Breite [mm]\";s:5:\"value\";s:5:\"110.0\";s:11:\"print_value\";s:5:\"110.0\";s:9:\"option_id\";s:2:\"14\";s:11:\"option_type\";s:9:\"drop_down\";s:12:\"option_value\";s:1:\"2\";s:11:\"custom_view\";b:1;}i:4;a:7:{s:5:\"label\";s:10:\"Länge [m]\";s:5:\"value\";s:4:\"4.50\";s:11:\"print_value\";s:4:\"4.50\";s:9:\"option_id\";s:2:\"15\";s:11:\"option_type\";s:9:\"drop_down\";s:12:\"option_value\";s:2:\"15\";s:11:\"custom_view\";b:1;}i:5;a:7:{s:5:\"label\";s:29:\"Gewünschte Zielmenge [m.v.p]\";s:5:\"value\";s:3:\"120\";s:11:\"print_value\";s:3:\"120\";s:9:\"option_id\";s:2:\"16\";s:11:\"option_type\";s:5:\"field\";s:12:\"option_value\";s:3:\"120\";s:11:\"custom_view\";b:0;}i:6;a:7:{s:5:\"label\";s:42:\"Benötigte Anzahl für die Zielmenge [pce]\";s:5:\"value\";s:2:\"27\";s:11:\"print_value\";s:2:\"27\";s:9:\"option_id\";s:2:\"17\";s:11:\"option_type\";s:5:\"field\";s:12:\"option_value\";s:2:\"27\";s:11:\"custom_view\";b:0;}}}',NULL,0,'4942-unitprice-actualqty-dep75.0-wid110.0-len4.50-tgvalue-qtyreq','Carrelets guichets épicéa',NULL,NULL,NULL,1,0,NULL,'0.0000','0.0000','27.0000','0.0000','0.0000',NULL,'49.5000','49.5000','49.5000','49.5000','0.0000','0.0000','0.0000','0.0000','0.0000','0.0000','0.0000','0.0000','0.0000','0.0000','0.0000','0.0000','1336.5000','1336.5000','0.0000','0.0000','0.0000',NULL,NULL,NULL,NULL,NULL,'49.5000','49.5000','1336.5000','1336.5000','0.0000','0.0000',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,'0',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('8','6',NULL,'28',2,'2017-10-02 07:48:35','2017-10-02 07:48:35','23','simple','a:2:{s:15:\"info_buyRequest\";a:6:{s:4:\"uenc\";s:144:\"aHR0cDovL2RldjMuZm91cm5pZXJib2lzLmNoL3Byb2Zfdmlld19mci9jYXRhbG9nL3Byb2R1Y3Qvdmlldy9pZC8yMy9zL3Zpcy1kZS1maXhhdGlvbi12aWRpd2FsbC9jYXRlZ29yeS8xNS8,\";s:7:\"product\";s:2:\"23\";s:28:\"selected_configurable_option\";s:0:\"\";s:15:\"related_product\";s:0:\"\";s:7:\"options\";a:1:{i:27;s:5:\"30.70\";}s:3:\"qty\";s:2:\"10\";}s:7:\"options\";a:1:{i:0;a:7:{s:5:\"label\";s:23:\"Einheitspreis [CHF/pce]\";s:5:\"value\";s:5:\"30.70\";s:11:\"print_value\";s:5:\"30.70\";s:9:\"option_id\";s:2:\"27\";s:11:\"option_type\";s:5:\"field\";s:12:\"option_value\";s:5:\"30.70\";s:11:\"custom_view\";b:0;}}}',NULL,0,'3814-unitprice','Vis de fixation Vidiwall',NULL,NULL,NULL,0,0,NULL,'0.0000','0.0000','20.0000','0.0000','0.0000',NULL,'30.7000','30.7000','34.0000','34.0000','0.0000','0.0000','0.0000','0.0000','0.0000','0.0000','0.0000','0.0000','0.0000','0.0000','0.0000','0.0000','614.0000','614.0000','0.0000','0.0000','0.0000',NULL,NULL,NULL,NULL,NULL,'30.7000','30.7000','614.0000','614.0000','0.0000','0.0000',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,'0',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('9','7',NULL,'30',2,'2017-10-02 07:53:33','2017-10-02 07:53:33','21','simple','a:2:{s:15:\"info_buyRequest\";a:6:{s:4:\"uenc\";s:140:\"aHR0cDovL2RldjMuZm91cm5pZXJib2lzLmNoL3Byb2Zfdmlld19mci9jYXRhbG9nL3Byb2R1Y3Qvdmlldy9pZC8yMS9zL2xhbWVzLW1lbGV6ZS1paWItaWlpYS9jYXRlZ29yeS8xMi8,\";s:7:\"product\";s:2:\"21\";s:28:\"selected_configurable_option\";s:0:\"\";s:15:\"related_product\";s:0:\"\";s:7:\"options\";a:9:{i:18;s:5:\"24.30\";i:19;s:5:\"40.13\";i:20;s:5:\"48.76\";i:21;s:5:\"30.00\";i:22;s:2:\"17\";i:23;s:2:\"18\";i:24;s:2:\"21\";i:25;s:2:\"40\";i:26;s:3:\"125\";}s:3:\"qty\";s:3:\"125\";}s:7:\"options\";a:9:{i:0;a:7:{s:5:\"label\";s:22:\"Einheitspreis [CHF/m2]\";s:5:\"value\";s:5:\"24.30\";s:11:\"print_value\";s:5:\"24.30\";s:9:\"option_id\";s:2:\"18\";s:11:\"option_type\";s:5:\"field\";s:12:\"option_value\";s:5:\"24.30\";s:11:\"custom_view\";b:0;}i:1;a:7:{s:5:\"label\";s:10:\"Menge [m2]\";s:5:\"value\";s:5:\"40.13\";s:11:\"print_value\";s:5:\"40.13\";s:9:\"option_id\";s:2:\"19\";s:11:\"option_type\";s:5:\"field\";s:12:\"option_value\";s:5:\"40.13\";s:11:\"custom_view\";b:0;}i:2;a:7:{s:5:\"label\";s:12:\"Rabatt [CHF]\";s:5:\"value\";s:5:\"48.76\";s:11:\"print_value\";s:5:\"48.76\";s:9:\"option_id\";s:2:\"20\";s:11:\"option_type\";s:5:\"field\";s:12:\"option_value\";s:5:\"48.76\";s:11:\"custom_view\";b:0;}i:3;a:7:{s:5:\"label\";s:32:\"nächst höhere Rabattstufe [m2]\";s:5:\"value\";s:5:\"30.00\";s:11:\"print_value\";s:5:\"30.00\";s:9:\"option_id\";s:2:\"21\";s:11:\"option_type\";s:5:\"field\";s:12:\"option_value\";s:5:\"30.00\";s:11:\"custom_view\";b:0;}i:4;a:7:{s:5:\"label\";s:10:\"Höhe [mm]\";s:5:\"value\";s:4:\"20.0\";s:11:\"print_value\";s:4:\"20.0\";s:9:\"option_id\";s:2:\"22\";s:11:\"option_type\";s:9:\"drop_down\";s:12:\"option_value\";s:2:\"17\";s:11:\"custom_view\";b:1;}i:5;a:7:{s:5:\"label\";s:11:\"Breite [mm]\";s:5:\"value\";s:5:\"107.0\";s:11:\"print_value\";s:5:\"107.0\";s:9:\"option_id\";s:2:\"23\";s:11:\"option_type\";s:9:\"drop_down\";s:12:\"option_value\";s:2:\"18\";s:11:\"custom_view\";b:1;}i:6;a:7:{s:5:\"label\";s:10:\"Länge [m]\";s:5:\"value\";s:4:\"3.00\";s:11:\"print_value\";s:4:\"3.00\";s:9:\"option_id\";s:2:\"24\";s:11:\"option_type\";s:9:\"drop_down\";s:12:\"option_value\";s:2:\"21\";s:11:\"custom_view\";b:1;}i:7;a:7:{s:5:\"label\";s:26:\"Gewünschte Zielmenge [m2]\";s:5:\"value\";s:2:\"40\";s:11:\"print_value\";s:2:\"40\";s:9:\"option_id\";s:2:\"25\";s:11:\"option_type\";s:5:\"field\";s:12:\"option_value\";s:2:\"40\";s:11:\"custom_view\";b:0;}i:8;a:7:{s:5:\"label\";s:42:\"Benötigte Anzahl für die Zielmenge [pce]\";s:5:\"value\";s:3:\"125\";s:11:\"print_value\";s:3:\"125\";s:9:\"option_id\";s:2:\"26\";s:11:\"option_type\";s:5:\"field\";s:12:\"option_value\";s:3:\"125\";s:11:\"custom_view\";b:0;}}}',NULL,0,'4308-unitprice-actualqty-actualdisc-nextdisclevel-dep20.0-wid107.0-len3.00-tgvalue-qtyreq','Lames mélèze IIB-IIIA',NULL,NULL,NULL,1,0,NULL,'0.0000','0.0000','125.0000','0.0000','0.0000',NULL,'7.4100','7.4100','7.4100','7.4100','0.0000','0.0000','0.0000','0.0000','0.0000','0.0000','0.0000','0.0000','0.0000','0.0000','0.0000','0.0000','926.2900','926.2900','0.0000','0.0000','0.0000',NULL,NULL,NULL,NULL,NULL,'7.4100','7.4100','926.2500','926.2500','0.0000','0.0000',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('10','8',NULL,'34',2,'2017-10-02 15:58:07','2017-10-02 15:58:07','21','simple','a:2:{s:15:\"info_buyRequest\";a:6:{s:4:\"uenc\";s:140:\"aHR0cDovL2RldjMuZm91cm5pZXJib2lzLmNoL3Byb2Zfdmlld19mci9jYXRhbG9nL3Byb2R1Y3Qvdmlldy9pZC8yMS9zL2xhbWVzLW1lbGV6ZS1paWItaWlpYS9jYXRlZ29yeS8xMC8,\";s:7:\"product\";s:2:\"21\";s:28:\"selected_configurable_option\";s:0:\"\";s:15:\"related_product\";s:0:\"\";s:7:\"options\";a:9:{i:18;s:5:\"24.30\";i:19;s:4:\"1.60\";i:20;s:4:\"0.00\";i:21;s:5:\"30.00\";i:22;s:2:\"17\";i:23;s:2:\"18\";i:24;s:2:\"21\";i:25;s:0:\"\";i:26;s:0:\"\";}s:3:\"qty\";s:1:\"5\";}s:7:\"options\";a:7:{i:0;a:7:{s:5:\"label\";s:22:\"Einheitspreis [CHF/m2]\";s:5:\"value\";s:5:\"24.30\";s:11:\"print_value\";s:5:\"24.30\";s:9:\"option_id\";s:2:\"18\";s:11:\"option_type\";s:5:\"field\";s:12:\"option_value\";s:5:\"24.30\";s:11:\"custom_view\";b:0;}i:1;a:7:{s:5:\"label\";s:10:\"Menge [m2]\";s:5:\"value\";s:4:\"1.60\";s:11:\"print_value\";s:4:\"1.60\";s:9:\"option_id\";s:2:\"19\";s:11:\"option_type\";s:5:\"field\";s:12:\"option_value\";s:4:\"1.60\";s:11:\"custom_view\";b:0;}i:2;a:7:{s:5:\"label\";s:12:\"Rabatt [CHF]\";s:5:\"value\";s:4:\"0.00\";s:11:\"print_value\";s:4:\"0.00\";s:9:\"option_id\";s:2:\"20\";s:11:\"option_type\";s:5:\"field\";s:12:\"option_value\";s:4:\"0.00\";s:11:\"custom_view\";b:0;}i:3;a:7:{s:5:\"label\";s:32:\"nächst höhere Rabattstufe [m2]\";s:5:\"value\";s:5:\"30.00\";s:11:\"print_value\";s:5:\"30.00\";s:9:\"option_id\";s:2:\"21\";s:11:\"option_type\";s:5:\"field\";s:12:\"option_value\";s:5:\"30.00\";s:11:\"custom_view\";b:0;}i:4;a:7:{s:5:\"label\";s:10:\"Höhe [mm]\";s:5:\"value\";s:4:\"20.0\";s:11:\"print_value\";s:4:\"20.0\";s:9:\"option_id\";s:2:\"22\";s:11:\"option_type\";s:9:\"drop_down\";s:12:\"option_value\";s:2:\"17\";s:11:\"custom_view\";b:1;}i:5;a:7:{s:5:\"label\";s:11:\"Breite [mm]\";s:5:\"value\";s:5:\"107.0\";s:11:\"print_value\";s:5:\"107.0\";s:9:\"option_id\";s:2:\"23\";s:11:\"option_type\";s:9:\"drop_down\";s:12:\"option_value\";s:2:\"18\";s:11:\"custom_view\";b:1;}i:6;a:7:{s:5:\"label\";s:10:\"Länge [m]\";s:5:\"value\";s:4:\"3.00\";s:11:\"print_value\";s:4:\"3.00\";s:9:\"option_id\";s:2:\"24\";s:11:\"option_type\";s:9:\"drop_down\";s:12:\"option_value\";s:2:\"21\";s:11:\"custom_view\";b:1;}}}',NULL,0,'4308-unitprice-actualqty-actualdisc-nextdisclevel-dep20.0-wid107.0-len3.00','Lames mélèze IIB-IIIA',NULL,NULL,NULL,1,0,NULL,'0.0000','0.0000','5.0000','0.0000','0.0000',NULL,'7.8000','7.8000','7.8000','7.8000','0.0000','0.0000','0.0000','0.0000','0.0000','0.0000','0.0000','0.0000','0.0000','0.0000','0.0000','0.0000','39.0000','39.0000','0.0000','0.0000','0.0000',NULL,NULL,NULL,NULL,NULL,'7.8000','7.8000','39.0000','39.0000','0.0000','0.0000',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('11','8',NULL,'35',2,'2017-10-02 15:58:07','2017-10-02 15:58:07','26','simple','a:2:{s:15:\"info_buyRequest\";a:6:{s:4:\"uenc\";s:148:\"aHR0cDovL2RldjMuZm91cm5pZXJib2lzLmNoL3Byb2Zfdmlld19mci9jYXRhbG9nL3Byb2R1Y3Qvdmlldy9pZC8yNi9zL2xhbWVsbGUtY29sbGUtYnMtMTEtZXBpY2VhLXNpL2NhdGVnb3J5LzYv\";s:7:\"product\";s:2:\"26\";s:28:\"selected_configurable_option\";s:0:\"\";s:15:\"related_product\";s:0:\"\";s:7:\"options\";a:7:{i:29;s:6:\"570.00\";i:30;s:5:\"3.000\";i:31;s:2:\"27\";i:32;s:1:\"6\";i:33;s:2:\"41\";i:34;s:1:\"3\";i:35;s:2:\"15\";}s:3:\"qty\";s:2:\"15\";}s:7:\"options\";a:7:{i:0;a:7:{s:5:\"label\";s:22:\"Einheitspreis [CHF/m3]\";s:5:\"value\";s:6:\"570.00\";s:11:\"print_value\";s:6:\"570.00\";s:9:\"option_id\";s:2:\"29\";s:11:\"option_type\";s:5:\"field\";s:12:\"option_value\";s:6:\"570.00\";s:11:\"custom_view\";b:0;}i:1;a:7:{s:5:\"label\";s:10:\"Menge [m3]\";s:5:\"value\";s:5:\"3.000\";s:11:\"print_value\";s:5:\"3.000\";s:9:\"option_id\";s:2:\"30\";s:11:\"option_type\";s:5:\"field\";s:12:\"option_value\";s:5:\"3.000\";s:11:\"custom_view\";b:0;}i:2;a:7:{s:5:\"label\";s:10:\"Höhe [mm]\";s:5:\"value\";s:5:\"100.0\";s:11:\"print_value\";s:5:\"100.0\";s:9:\"option_id\";s:2:\"31\";s:11:\"option_type\";s:9:\"drop_down\";s:12:\"option_value\";s:2:\"27\";s:11:\"custom_view\";b:1;}i:3;a:7:{s:5:\"label\";s:11:\"Breite [mm]\";s:5:\"value\";s:5:\"200.0\";s:11:\"print_value\";s:5:\"200.0\";s:9:\"option_id\";s:2:\"32\";s:11:\"option_type\";s:9:\"drop_down\";s:12:\"option_value\";s:1:\"6\";s:11:\"custom_view\";b:1;}i:4;a:7:{s:5:\"label\";s:10:\"Länge [m]\";s:5:\"value\";s:5:\"10.00\";s:11:\"print_value\";s:5:\"10.00\";s:9:\"option_id\";s:2:\"33\";s:11:\"option_type\";s:9:\"drop_down\";s:12:\"option_value\";s:2:\"41\";s:11:\"custom_view\";b:1;}i:5;a:7:{s:5:\"label\";s:26:\"Gewünschte Zielmenge [m3]\";s:5:\"value\";s:1:\"3\";s:11:\"print_value\";s:1:\"3\";s:9:\"option_id\";s:2:\"34\";s:11:\"option_type\";s:5:\"field\";s:12:\"option_value\";s:1:\"3\";s:11:\"custom_view\";b:0;}i:6;a:7:{s:5:\"label\";s:42:\"Benötigte Anzahl für die Zielmenge [pce]\";s:5:\"value\";s:2:\"15\";s:11:\"print_value\";s:2:\"15\";s:9:\"option_id\";s:2:\"35\";s:11:\"option_type\";s:5:\"field\";s:12:\"option_value\";s:2:\"15\";s:11:\"custom_view\";b:0;}}}',NULL,0,'4680-unitprice-actualqty-dep100.0-wid200.0-len10.00-tgvalue-qtyreq','Lamellé-collé BS-11 épicéa SI',NULL,NULL,NULL,1,0,NULL,'0.0000','0.0000','15.0000','0.0000','0.0000',NULL,'114.0000','114.0000','114.0000','114.0000','0.0000','0.0000','0.0000','0.0000','0.0000','0.0000','0.0000','0.0000','0.0000','0.0000','0.0000','0.0000','1710.0000','1710.0000','0.0000','0.0000','0.0000',NULL,NULL,NULL,NULL,NULL,'114.0000','114.0000','1710.0000','1710.0000','0.0000','0.0000',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,'0',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('12','9',NULL,'36',2,'2017-10-02 16:40:45','2017-10-02 16:40:45','26','simple','a:2:{s:15:\"info_buyRequest\";a:6:{s:4:\"uenc\";s:148:\"aHR0cDovL2RldjMuZm91cm5pZXJib2lzLmNoL3Byb2Zfdmlld19mci9jYXRhbG9nL3Byb2R1Y3Qvdmlldy9pZC8yNi9zL2xhbWVsbGUtY29sbGUtYnMtMTEtZXBpY2VhLXNpL2NhdGVnb3J5LzYv\";s:7:\"product\";s:2:\"26\";s:28:\"selected_configurable_option\";s:0:\"\";s:15:\"related_product\";s:0:\"\";s:7:\"options\";a:7:{i:29;s:6:\"570.00\";i:30;s:5:\"5.120\";i:31;s:2:\"27\";i:32;s:1:\"6\";i:33;s:2:\"37\";i:34;s:1:\"5\";i:35;s:2:\"32\";}s:3:\"qty\";s:2:\"32\";}s:7:\"options\";a:7:{i:0;a:7:{s:5:\"label\";s:22:\"Einheitspreis [CHF/m3]\";s:5:\"value\";s:6:\"570.00\";s:11:\"print_value\";s:6:\"570.00\";s:9:\"option_id\";s:2:\"29\";s:11:\"option_type\";s:5:\"field\";s:12:\"option_value\";s:6:\"570.00\";s:11:\"custom_view\";b:0;}i:1;a:7:{s:5:\"label\";s:10:\"Menge [m3]\";s:5:\"value\";s:5:\"5.120\";s:11:\"print_value\";s:5:\"5.120\";s:9:\"option_id\";s:2:\"30\";s:11:\"option_type\";s:5:\"field\";s:12:\"option_value\";s:5:\"5.120\";s:11:\"custom_view\";b:0;}i:2;a:7:{s:5:\"label\";s:10:\"Höhe [mm]\";s:5:\"value\";s:5:\"100.0\";s:11:\"print_value\";s:5:\"100.0\";s:9:\"option_id\";s:2:\"31\";s:11:\"option_type\";s:9:\"drop_down\";s:12:\"option_value\";s:2:\"27\";s:11:\"custom_view\";b:1;}i:3;a:7:{s:5:\"label\";s:11:\"Breite [mm]\";s:5:\"value\";s:5:\"200.0\";s:11:\"print_value\";s:5:\"200.0\";s:9:\"option_id\";s:2:\"32\";s:11:\"option_type\";s:9:\"drop_down\";s:12:\"option_value\";s:1:\"6\";s:11:\"custom_view\";b:1;}i:4;a:7:{s:5:\"label\";s:10:\"Länge [m]\";s:5:\"value\";s:4:\"8.00\";s:11:\"print_value\";s:4:\"8.00\";s:9:\"option_id\";s:2:\"33\";s:11:\"option_type\";s:9:\"drop_down\";s:12:\"option_value\";s:2:\"37\";s:11:\"custom_view\";b:1;}i:5;a:7:{s:5:\"label\";s:26:\"Gewünschte Zielmenge [m3]\";s:5:\"value\";s:1:\"5\";s:11:\"print_value\";s:1:\"5\";s:9:\"option_id\";s:2:\"34\";s:11:\"option_type\";s:5:\"field\";s:12:\"option_value\";s:1:\"5\";s:11:\"custom_view\";b:0;}i:6;a:7:{s:5:\"label\";s:42:\"Benötigte Anzahl für die Zielmenge [pce]\";s:5:\"value\";s:2:\"32\";s:11:\"print_value\";s:2:\"32\";s:9:\"option_id\";s:2:\"35\";s:11:\"option_type\";s:5:\"field\";s:12:\"option_value\";s:2:\"32\";s:11:\"custom_view\";b:0;}}}',NULL,0,'4680-unitprice-actualqty-dep100.0-wid200.0-len8.00-tgvalue-qtyreq','Lamellé-collé BS-11 épicéa SI',NULL,NULL,NULL,1,0,NULL,'0.0000','0.0000','32.0000','0.0000','0.0000',NULL,'91.2000','91.2000','91.2000','91.2000','0.0000','0.0000','0.0000','0.0000','0.0000','0.0000','0.0000','0.0000','0.0000','0.0000','0.0000','0.0000','2918.4000','2918.4000','0.0000','0.0000','0.0000',NULL,NULL,NULL,NULL,NULL,'91.2000','91.2000','2918.4000','2918.4000','0.0000','0.0000',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,'0',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('13','10',NULL,'37',2,'2017-10-04 15:59:07','2017-10-04 15:59:07','27','simple','a:2:{s:15:\"info_buyRequest\";a:6:{s:4:\"uenc\";s:76:\"aHR0cDovL2RldjMuZm91cm5pZXJib2lzLmNoL3Byb2Zfdmlld19mci9hbXBhdG9wLTI1Lmh0bWw,\";s:7:\"product\";s:2:\"27\";s:28:\"selected_configurable_option\";s:0:\"\";s:15:\"related_product\";s:0:\"\";s:7:\"options\";a:7:{i:1;s:4:\"4.38\";i:2;s:6:\"137.50\";i:3;s:1:\"1\";i:4;s:1:\"2\";i:5;s:1:\"3\";i:6;s:3:\"125\";i:7;s:1:\"5\";}s:3:\"qty\";s:1:\"5\";}s:7:\"options\";a:7:{i:0;a:7:{s:5:\"label\";s:22:\"Einheitspreis [CHF/m2]\";s:5:\"value\";s:4:\"4.38\";s:11:\"print_value\";s:4:\"4.38\";s:9:\"option_id\";s:1:\"1\";s:11:\"option_type\";s:5:\"field\";s:12:\"option_value\";s:4:\"4.38\";s:11:\"custom_view\";b:0;}i:1;a:7:{s:5:\"label\";s:10:\"Menge [m2]\";s:5:\"value\";s:6:\"137.50\";s:11:\"print_value\";s:6:\"137.50\";s:9:\"option_id\";s:1:\"2\";s:11:\"option_type\";s:5:\"field\";s:12:\"option_value\";s:6:\"137.50\";s:11:\"custom_view\";b:0;}i:2;a:7:{s:5:\"label\";s:10:\"Höhe [mm]\";s:5:\"value\";s:4:\"11.0\";s:11:\"print_value\";s:4:\"11.0\";s:9:\"option_id\";s:1:\"3\";s:11:\"option_type\";s:9:\"drop_down\";s:12:\"option_value\";s:1:\"1\";s:11:\"custom_view\";b:1;}i:3;a:7:{s:5:\"label\";s:11:\"Breite [mm]\";s:5:\"value\";s:6:\"1100.0\";s:11:\"print_value\";s:6:\"1100.0\";s:9:\"option_id\";s:1:\"4\";s:11:\"option_type\";s:9:\"drop_down\";s:12:\"option_value\";s:1:\"2\";s:11:\"custom_view\";b:1;}i:4;a:7:{s:5:\"label\";s:10:\"Länge [m]\";s:5:\"value\";s:5:\"25.00\";s:11:\"print_value\";s:5:\"25.00\";s:9:\"option_id\";s:1:\"5\";s:11:\"option_type\";s:9:\"drop_down\";s:12:\"option_value\";s:1:\"3\";s:11:\"custom_view\";b:1;}i:5;a:7:{s:5:\"label\";s:26:\"Gewünschte Zielmenge [m2]\";s:5:\"value\";s:3:\"125\";s:11:\"print_value\";s:3:\"125\";s:9:\"option_id\";s:1:\"6\";s:11:\"option_type\";s:5:\"field\";s:12:\"option_value\";s:3:\"125\";s:11:\"custom_view\";b:0;}i:6;a:7:{s:5:\"label\";s:42:\"Benötigte Anzahl für die Zielmenge [pce]\";s:5:\"value\";s:1:\"5\";s:11:\"print_value\";s:1:\"5\";s:9:\"option_id\";s:1:\"7\";s:11:\"option_type\";s:5:\"field\";s:12:\"option_value\";s:1:\"5\";s:11:\"custom_view\";b:0;}}}',NULL,0,'3865-unitprice-actualqty-dep11.0-wid1100.0-len25.00-tgvalue-qtyreq','Ampatop 25',NULL,NULL,NULL,1,0,NULL,'0.0000','0.0000','5.0000','0.0000','0.0000',NULL,'120.4500','120.4500','120.4500','120.4500','0.0000','0.0000','0.0000','0.0000','0.0000','0.0000','0.0000','0.0000','0.0000','0.0000','0.0000','0.0000','602.2500','602.2500','0.0000','0.0000','0.0000',NULL,NULL,NULL,NULL,NULL,'120.4500','120.4500','602.2500','602.2500','0.0000','0.0000',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('14','10',NULL,'38',2,'2017-10-04 15:59:07','2017-10-04 15:59:07','28','simple','a:2:{s:15:\"info_buyRequest\";a:6:{s:4:\"uenc\";s:100:\"aHR0cDovL2RldjMuZm91cm5pZXJib2lzLmNoL3Byb2Zfdmlld19mci9sYW1lbGxlLWNvbGxlLWJzLTExLWVwaWNlYS1zaS5odG1s\";s:7:\"product\";s:2:\"28\";s:28:\"selected_configurable_option\";s:0:\"\";s:15:\"related_product\";s:0:\"\";s:7:\"options\";a:7:{i:8;s:6:\"570.00\";i:9;s:5:\"4.061\";i:10;s:1:\"5\";i:11;s:1:\"8\";i:12;s:2:\"21\";i:13;s:1:\"4\";i:14;s:2:\"47\";}s:3:\"qty\";s:2:\"47\";}s:7:\"options\";a:7:{i:0;a:7:{s:5:\"label\";s:22:\"Einheitspreis [CHF/m3]\";s:5:\"value\";s:6:\"570.00\";s:11:\"print_value\";s:6:\"570.00\";s:9:\"option_id\";s:1:\"8\";s:11:\"option_type\";s:5:\"field\";s:12:\"option_value\";s:6:\"570.00\";s:11:\"custom_view\";b:0;}i:1;a:7:{s:5:\"label\";s:10:\"Menge [m3]\";s:5:\"value\";s:5:\"4.061\";s:11:\"print_value\";s:5:\"4.061\";s:9:\"option_id\";s:1:\"9\";s:11:\"option_type\";s:5:\"field\";s:12:\"option_value\";s:5:\"4.061\";s:11:\"custom_view\";b:0;}i:2;a:7:{s:5:\"label\";s:10:\"Höhe [mm]\";s:5:\"value\";s:4:\"90.0\";s:11:\"print_value\";s:4:\"90.0\";s:9:\"option_id\";s:2:\"10\";s:11:\"option_type\";s:9:\"drop_down\";s:12:\"option_value\";s:1:\"5\";s:11:\"custom_view\";b:1;}i:3;a:7:{s:5:\"label\";s:11:\"Breite [mm]\";s:5:\"value\";s:5:\"160.0\";s:11:\"print_value\";s:5:\"160.0\";s:9:\"option_id\";s:2:\"11\";s:11:\"option_type\";s:9:\"drop_down\";s:12:\"option_value\";s:1:\"8\";s:11:\"custom_view\";b:1;}i:4;a:7:{s:5:\"label\";s:10:\"Länge [m]\";s:5:\"value\";s:4:\"6.00\";s:11:\"print_value\";s:4:\"6.00\";s:9:\"option_id\";s:2:\"12\";s:11:\"option_type\";s:9:\"drop_down\";s:12:\"option_value\";s:2:\"21\";s:11:\"custom_view\";b:1;}i:5;a:7:{s:5:\"label\";s:26:\"Gewünschte Zielmenge [m3]\";s:5:\"value\";s:1:\"4\";s:11:\"print_value\";s:1:\"4\";s:9:\"option_id\";s:2:\"13\";s:11:\"option_type\";s:5:\"field\";s:12:\"option_value\";s:1:\"4\";s:11:\"custom_view\";b:0;}i:6;a:7:{s:5:\"label\";s:42:\"Benötigte Anzahl für die Zielmenge [pce]\";s:5:\"value\";s:2:\"47\";s:11:\"print_value\";s:2:\"47\";s:9:\"option_id\";s:2:\"14\";s:11:\"option_type\";s:5:\"field\";s:12:\"option_value\";s:2:\"47\";s:11:\"custom_view\";b:0;}}}',NULL,0,'4680-unitprice-actualqty-dep90.0-wid160.0-len6.00-tgvalue-qtyreq','Lamellé-collé BS-11 épicéa SI',NULL,NULL,NULL,1,0,NULL,'0.0000','0.0000','47.0000','0.0000','0.0000',NULL,'49.2500','49.2500','49.2500','49.2500','0.0000','0.0000','0.0000','0.0000','0.0000','0.0000','0.0000','0.0000','0.0000','0.0000','0.0000','0.0000','2314.6600','2314.6600','0.0000','0.0000','0.0000',NULL,NULL,NULL,NULL,NULL,'49.2500','49.2500','2314.7500','2314.7500','0.0000','0.0000',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('15','11',NULL,'39',2,'2017-10-05 09:21:56','2017-10-05 09:21:56','31','simple','a:2:{s:15:\"info_buyRequest\";a:6:{s:4:\"uenc\";s:108:\"aHR0cDovL2RldjMuZm91cm5pZXJib2lzLmNoL3Byb2Zfdmlld19mci9sYW1lcy1tZWxlemUtaWliLWlpaWEuaHRtbD9vcHRpb25zPWNhcnQ,\";s:7:\"product\";s:2:\"31\";s:28:\"selected_configurable_option\";s:0:\"\";s:15:\"related_product\";s:0:\"\";s:7:\"options\";a:9:{i:64;s:5:\"24.30\";i:65;s:5:\"91.13\";i:66;s:6:\"110.72\";i:67;s:5:\"30.00\";i:68;s:2:\"69\";i:69;s:2:\"71\";i:70;s:2:\"75\";i:8;s:2:\"90\";i:9;s:3:\"135\";}s:3:\"qty\";s:3:\"135\";}s:7:\"options\";a:9:{i:0;a:7:{s:5:\"label\";s:19:\"Votre prix [CHF/m2]\";s:5:\"value\";s:5:\"24.30\";s:11:\"print_value\";s:5:\"24.30\";s:9:\"option_id\";s:2:\"64\";s:11:\"option_type\";s:5:\"field\";s:12:\"option_value\";s:5:\"24.30\";s:11:\"custom_view\";b:0;}i:1;a:7:{s:5:\"label\";s:14:\"Quantité [m2]\";s:5:\"value\";s:5:\"91.13\";s:11:\"print_value\";s:5:\"91.13\";s:9:\"option_id\";s:2:\"65\";s:11:\"option_type\";s:5:\"field\";s:12:\"option_value\";s:5:\"91.13\";s:11:\"custom_view\";b:0;}i:2;a:7:{s:5:\"label\";s:12:\"Rabais [CHF]\";s:5:\"value\";s:6:\"110.72\";s:11:\"print_value\";s:6:\"110.72\";s:9:\"option_id\";s:2:\"66\";s:11:\"option_type\";s:5:\"field\";s:12:\"option_value\";s:6:\"110.72\";s:11:\"custom_view\";b:0;}i:3;a:7:{s:5:\"label\";s:22:\"Échelle suivante [m2]\";s:5:\"value\";s:5:\"30.00\";s:11:\"print_value\";s:5:\"30.00\";s:9:\"option_id\";s:2:\"67\";s:11:\"option_type\";s:5:\"field\";s:12:\"option_value\";s:5:\"30.00\";s:11:\"custom_view\";b:0;}i:4;a:7:{s:5:\"label\";s:15:\"Épaisseur [mm]\";s:5:\"value\";s:4:\"20.0\";s:11:\"print_value\";s:4:\"20.0\";s:9:\"option_id\";s:2:\"68\";s:11:\"option_type\";s:9:\"drop_down\";s:12:\"option_value\";s:2:\"69\";s:11:\"custom_view\";b:1;}i:5;a:7:{s:5:\"label\";s:12:\"Largeur [mm]\";s:5:\"value\";s:5:\"135.0\";s:11:\"print_value\";s:5:\"135.0\";s:9:\"option_id\";s:2:\"69\";s:11:\"option_type\";s:9:\"drop_down\";s:12:\"option_value\";s:2:\"71\";s:11:\"custom_view\";b:1;}i:6;a:7:{s:5:\"label\";s:12:\"Longueur [m]\";s:5:\"value\";s:4:\"5.00\";s:11:\"print_value\";s:4:\"5.00\";s:9:\"option_id\";s:2:\"70\";s:11:\"option_type\";s:9:\"drop_down\";s:12:\"option_value\";s:2:\"75\";s:11:\"custom_view\";b:1;}i:7;a:7:{s:5:\"label\";s:23:\"Quantité desirée [m2]\";s:5:\"value\";s:2:\"90\";s:11:\"print_value\";s:2:\"90\";s:9:\"option_id\";s:1:\"8\";s:11:\"option_type\";s:5:\"field\";s:12:\"option_value\";s:2:\"90\";s:11:\"custom_view\";b:0;}i:8;a:7:{s:5:\"label\";s:24:\"Nombre nécessaire [pce]\";s:5:\"value\";s:3:\"135\";s:11:\"print_value\";s:3:\"135\";s:9:\"option_id\";s:1:\"9\";s:11:\"option_type\";s:5:\"field\";s:12:\"option_value\";s:3:\"135\";s:11:\"custom_view\";b:0;}}}',NULL,0,'4308-unitprice-actualqty-actualdisc-nextdisclevel-dep20.0-wid135.0-len5.00-tgvalue-qtyreq','Lames mélèze IIB-IIIA',NULL,NULL,NULL,1,0,NULL,'0.0000','0.0000','135.0000','0.0000','0.0000',NULL,'15.5800','15.5800','15.5800','15.5800','0.0000','0.0000','0.0000','0.0000','0.0000','0.0000','0.0000','0.0000','0.0000','0.0000','0.0000','0.0000','2103.6200','2103.6200','0.0000','0.0000','0.0000',NULL,NULL,NULL,NULL,NULL,'15.5800','15.5800','2103.3000','2103.3000','0.0000','0.0000',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('16','12',NULL,'40',2,'2017-10-05 09:26:58','2017-10-05 09:26:58','27','simple','a:2:{s:15:\"info_buyRequest\";a:6:{s:4:\"uenc\";s:76:\"aHR0cDovL2RldjMuZm91cm5pZXJib2lzLmNoL3Byb2Zfdmlld19mci9hbXBhdG9wLTI1Lmh0bWw,\";s:7:\"product\";s:2:\"27\";s:28:\"selected_configurable_option\";s:0:\"\";s:15:\"related_product\";s:0:\"\";s:7:\"options\";a:7:{i:1;s:4:\"4.38\";i:2;s:6:\"165.00\";i:3;s:1:\"1\";i:4;s:1:\"2\";i:5;s:1:\"3\";i:6;s:3:\"165\";i:7;s:1:\"6\";}s:3:\"qty\";s:1:\"6\";}s:7:\"options\";a:7:{i:0;a:7:{s:5:\"label\";s:19:\"Votre prix [CHF/m2]\";s:5:\"value\";s:4:\"4.38\";s:11:\"print_value\";s:4:\"4.38\";s:9:\"option_id\";s:1:\"1\";s:11:\"option_type\";s:5:\"field\";s:12:\"option_value\";s:4:\"4.38\";s:11:\"custom_view\";b:0;}i:1;a:7:{s:5:\"label\";s:14:\"Quantité [m2]\";s:5:\"value\";s:6:\"165.00\";s:11:\"print_value\";s:6:\"165.00\";s:9:\"option_id\";s:1:\"2\";s:11:\"option_type\";s:5:\"field\";s:12:\"option_value\";s:6:\"165.00\";s:11:\"custom_view\";b:0;}i:2;a:7:{s:5:\"label\";s:15:\"Épaisseur [mm]\";s:5:\"value\";s:4:\"11.0\";s:11:\"print_value\";s:4:\"11.0\";s:9:\"option_id\";s:1:\"3\";s:11:\"option_type\";s:9:\"drop_down\";s:12:\"option_value\";s:1:\"1\";s:11:\"custom_view\";b:1;}i:3;a:7:{s:5:\"label\";s:12:\"Largeur [mm]\";s:5:\"value\";s:6:\"1100.0\";s:11:\"print_value\";s:6:\"1100.0\";s:9:\"option_id\";s:1:\"4\";s:11:\"option_type\";s:9:\"drop_down\";s:12:\"option_value\";s:1:\"2\";s:11:\"custom_view\";b:1;}i:4;a:7:{s:5:\"label\";s:12:\"Longueur [m]\";s:5:\"value\";s:5:\"25.00\";s:11:\"print_value\";s:5:\"25.00\";s:9:\"option_id\";s:1:\"5\";s:11:\"option_type\";s:9:\"drop_down\";s:12:\"option_value\";s:1:\"3\";s:11:\"custom_view\";b:1;}i:5;a:7:{s:5:\"label\";s:23:\"Quantité desirée [m2]\";s:5:\"value\";s:3:\"165\";s:11:\"print_value\";s:3:\"165\";s:9:\"option_id\";s:1:\"6\";s:11:\"option_type\";s:5:\"field\";s:12:\"option_value\";s:3:\"165\";s:11:\"custom_view\";b:0;}i:6;a:7:{s:5:\"label\";s:24:\"Nombre nécessaire [pce]\";s:5:\"value\";s:1:\"6\";s:11:\"print_value\";s:1:\"6\";s:9:\"option_id\";s:1:\"7\";s:11:\"option_type\";s:5:\"field\";s:12:\"option_value\";s:1:\"6\";s:11:\"custom_view\";b:0;}}}',NULL,0,'3865-unitprice-actualqty-dep11.0-wid1100.0-len25.00-tgvalue-qtyreq','Ampatop 25',NULL,NULL,NULL,1,0,NULL,'0.0000','0.0000','6.0000','0.0000','0.0000',NULL,'120.4500','120.4500','120.4500','120.4500','0.0000','0.0000','0.0000','0.0000','0.0000','0.0000','0.0000','0.0000','0.0000','0.0000','0.0000','0.0000','722.7000','722.7000','0.0000','0.0000','0.0000',NULL,NULL,NULL,NULL,NULL,'120.4500','120.4500','722.7000','722.7000','0.0000','0.0000',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `sales_order_item` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sales_order_payment`
--

DROP TABLE IF EXISTS `sales_order_payment`;
CREATE TABLE `sales_order_payment` (
  `entity_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Entity Id',
  `parent_id` int(10) unsigned NOT NULL COMMENT 'Parent Id',
  `base_shipping_captured` decimal(12,4) DEFAULT NULL COMMENT 'Base Shipping Captured',
  `shipping_captured` decimal(12,4) DEFAULT NULL COMMENT 'Shipping Captured',
  `amount_refunded` decimal(12,4) DEFAULT NULL COMMENT 'Amount Refunded',
  `base_amount_paid` decimal(12,4) DEFAULT NULL COMMENT 'Base Amount Paid',
  `amount_canceled` decimal(12,4) DEFAULT NULL COMMENT 'Amount Canceled',
  `base_amount_authorized` decimal(12,4) DEFAULT NULL COMMENT 'Base Amount Authorized',
  `base_amount_paid_online` decimal(12,4) DEFAULT NULL COMMENT 'Base Amount Paid Online',
  `base_amount_refunded_online` decimal(12,4) DEFAULT NULL COMMENT 'Base Amount Refunded Online',
  `base_shipping_amount` decimal(12,4) DEFAULT NULL COMMENT 'Base Shipping Amount',
  `shipping_amount` decimal(12,4) DEFAULT NULL COMMENT 'Shipping Amount',
  `amount_paid` decimal(12,4) DEFAULT NULL COMMENT 'Amount Paid',
  `amount_authorized` decimal(12,4) DEFAULT NULL COMMENT 'Amount Authorized',
  `base_amount_ordered` decimal(12,4) DEFAULT NULL COMMENT 'Base Amount Ordered',
  `base_shipping_refunded` decimal(12,4) DEFAULT NULL COMMENT 'Base Shipping Refunded',
  `shipping_refunded` decimal(12,4) DEFAULT NULL COMMENT 'Shipping Refunded',
  `base_amount_refunded` decimal(12,4) DEFAULT NULL COMMENT 'Base Amount Refunded',
  `amount_ordered` decimal(12,4) DEFAULT NULL COMMENT 'Amount Ordered',
  `base_amount_canceled` decimal(12,4) DEFAULT NULL COMMENT 'Base Amount Canceled',
  `quote_payment_id` int(11) DEFAULT NULL COMMENT 'Quote Payment Id',
  `additional_data` text COMMENT 'Additional Data',
  `cc_exp_month` varchar(12) DEFAULT NULL COMMENT 'Cc Exp Month',
  `cc_ss_start_year` varchar(12) DEFAULT NULL COMMENT 'Cc Ss Start Year',
  `echeck_bank_name` varchar(128) DEFAULT NULL COMMENT 'Echeck Bank Name',
  `method` varchar(128) DEFAULT NULL COMMENT 'Method',
  `cc_debug_request_body` varchar(32) DEFAULT NULL COMMENT 'Cc Debug Request Body',
  `cc_secure_verify` varchar(32) DEFAULT NULL COMMENT 'Cc Secure Verify',
  `protection_eligibility` varchar(32) DEFAULT NULL COMMENT 'Protection Eligibility',
  `cc_approval` varchar(32) DEFAULT NULL COMMENT 'Cc Approval',
  `cc_last_4` varchar(100) DEFAULT NULL COMMENT 'Cc Last 4',
  `cc_status_description` varchar(32) DEFAULT NULL COMMENT 'Cc Status Description',
  `echeck_type` varchar(32) DEFAULT NULL COMMENT 'Echeck Type',
  `cc_debug_response_serialized` varchar(32) DEFAULT NULL COMMENT 'Cc Debug Response Serialized',
  `cc_ss_start_month` varchar(128) DEFAULT NULL COMMENT 'Cc Ss Start Month',
  `echeck_account_type` varchar(255) DEFAULT NULL COMMENT 'Echeck Account Type',
  `last_trans_id` varchar(32) DEFAULT NULL COMMENT 'Last Trans Id',
  `cc_cid_status` varchar(32) DEFAULT NULL COMMENT 'Cc Cid Status',
  `cc_owner` varchar(128) DEFAULT NULL COMMENT 'Cc Owner',
  `cc_type` varchar(32) DEFAULT NULL COMMENT 'Cc Type',
  `po_number` varchar(32) DEFAULT NULL COMMENT 'Po Number',
  `cc_exp_year` varchar(4) DEFAULT NULL COMMENT 'Cc Exp Year',
  `cc_status` varchar(4) DEFAULT NULL COMMENT 'Cc Status',
  `echeck_routing_number` varchar(32) DEFAULT NULL COMMENT 'Echeck Routing Number',
  `account_status` varchar(32) DEFAULT NULL COMMENT 'Account Status',
  `anet_trans_method` varchar(32) DEFAULT NULL COMMENT 'Anet Trans Method',
  `cc_debug_response_body` varchar(32) DEFAULT NULL COMMENT 'Cc Debug Response Body',
  `cc_ss_issue` varchar(32) DEFAULT NULL COMMENT 'Cc Ss Issue',
  `echeck_account_name` varchar(32) DEFAULT NULL COMMENT 'Echeck Account Name',
  `cc_avs_status` varchar(32) DEFAULT NULL COMMENT 'Cc Avs Status',
  `cc_number_enc` varchar(32) DEFAULT NULL COMMENT 'Cc Number Enc',
  `cc_trans_id` varchar(32) DEFAULT NULL COMMENT 'Cc Trans Id',
  `address_status` varchar(32) DEFAULT NULL COMMENT 'Address Status',
  `additional_information` text COMMENT 'Additional Information',
  PRIMARY KEY (`entity_id`),
  KEY `SALES_ORDER_PAYMENT_PARENT_ID` (`parent_id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8 COMMENT='Sales Flat Order Payment';

--
-- Dumping data for table `sales_order_payment`
--

LOCK TABLES `sales_order_payment` WRITE;
/*!40000 ALTER TABLE `sales_order_payment` DISABLE KEYS */;
INSERT INTO `sales_order_payment` VALUES ('1','1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'25.0000','25.0000',NULL,NULL,'200.0000',NULL,NULL,NULL,'200.0000',NULL,NULL,NULL,NULL,NULL,NULL,'checkmo',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'a:3:{s:12:\"method_title\";s:19:\"Check / Money order\";s:10:\"payable_to\";N;s:15:\"mailing_address\";N;}'),('2','2',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'595.0000','595.0000',NULL,NULL,'2957.5000',NULL,NULL,NULL,'2957.5000',NULL,NULL,NULL,NULL,NULL,NULL,'checkmo',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'a:3:{s:12:\"method_title\";s:19:\"Check / Money order\";s:10:\"payable_to\";N;s:15:\"mailing_address\";N;}'),('3','3',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'0.0000','0.0000',NULL,NULL,'1364.0000',NULL,NULL,NULL,'1364.0000',NULL,NULL,NULL,NULL,NULL,NULL,'purchaseorder',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'124',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'a:1:{s:12:\"method_title\";s:11:\"Sur facture\";}'),('4','4',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'0.0000','0.0000',NULL,NULL,'1336.5000',NULL,NULL,NULL,'1336.5000',NULL,NULL,NULL,NULL,NULL,NULL,'purchaseorder',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Abc',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'a:1:{s:12:\"method_title\";s:11:\"Sur facture\";}'),('5','5',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'0.0000','0.0000',NULL,NULL,'307.0000',NULL,NULL,NULL,'307.0000',NULL,NULL,NULL,NULL,NULL,NULL,'purchaseorder',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'444',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'a:1:{s:12:\"method_title\";s:11:\"Sur facture\";}'),('6','6',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'0.0000','0.0000',NULL,NULL,'1950.5000',NULL,NULL,NULL,'1950.5000',NULL,NULL,NULL,NULL,NULL,NULL,'purchaseorder',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'56565',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'a:1:{s:12:\"method_title\";s:11:\"Sur facture\";}'),('7','7',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'0.0000','0.0000',NULL,NULL,'926.2900',NULL,NULL,NULL,'926.2900',NULL,NULL,NULL,NULL,NULL,NULL,'purchaseorder',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'5656',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'a:1:{s:12:\"method_title\";s:11:\"Sur facture\";}'),('8','8',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'0.0000','0.0000',NULL,NULL,'1749.0000',NULL,NULL,NULL,'1749.0000',NULL,NULL,NULL,NULL,NULL,NULL,'purchaseorder',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2323',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'a:1:{s:12:\"method_title\";s:11:\"Sur facture\";}'),('9','9',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'0.0000','0.0000',NULL,NULL,'2918.4000',NULL,NULL,NULL,'2918.4000',NULL,NULL,NULL,NULL,NULL,NULL,'purchaseorder',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'56565',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'a:1:{s:12:\"method_title\";s:11:\"Sur facture\";}'),('10','10',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'0.0000','0.0000',NULL,NULL,'2916.9100',NULL,NULL,NULL,'2916.9100',NULL,NULL,NULL,NULL,NULL,NULL,'purchaseorder',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'9898',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'a:1:{s:12:\"method_title\";s:11:\"Sur facture\";}'),('11','11',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'0.0000','0.0000',NULL,NULL,'2103.6200',NULL,NULL,NULL,'2103.6200',NULL,NULL,NULL,NULL,NULL,NULL,'purchaseorder',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'4545',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'a:1:{s:12:\"method_title\";s:11:\"Sur facture\";}'),('12','12',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'0.0000','0.0000',NULL,NULL,'722.7000',NULL,NULL,NULL,'722.7000',NULL,NULL,NULL,NULL,NULL,NULL,'purchaseorder',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'56565',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'a:1:{s:12:\"method_title\";s:11:\"Sur facture\";}');
/*!40000 ALTER TABLE `sales_order_payment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sales_order_status`
--

DROP TABLE IF EXISTS `sales_order_status`;
CREATE TABLE `sales_order_status` (
  `status` varchar(32) NOT NULL COMMENT 'Status',
  `label` varchar(128) NOT NULL COMMENT 'Label',
  PRIMARY KEY (`status`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Sales Order Status Table';

--
-- Dumping data for table `sales_order_status`
--

LOCK TABLES `sales_order_status` WRITE;
/*!40000 ALTER TABLE `sales_order_status` DISABLE KEYS */;
INSERT INTO `sales_order_status` VALUES ('canceled','Canceled'),('closed','Closed'),('complete','Complete'),('fraud','Suspected Fraud'),('holded','On Hold'),('payment_review','Payment Review'),('paypal_canceled_reversal','PayPal Canceled Reversal'),('paypal_reversed','PayPal Reversed'),('pending','Pending'),('pending_payment','Pending Payment'),('pending_paypal','Pending PayPal'),('processing','Processing');
/*!40000 ALTER TABLE `sales_order_status` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sales_order_status_history`
--

DROP TABLE IF EXISTS `sales_order_status_history`;
CREATE TABLE `sales_order_status_history` (
  `entity_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Entity Id',
  `parent_id` int(10) unsigned NOT NULL COMMENT 'Parent Id',
  `is_customer_notified` int(11) DEFAULT NULL COMMENT 'Is Customer Notified',
  `is_visible_on_front` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Is Visible On Front',
  `comment` text COMMENT 'Comment',
  `status` varchar(32) DEFAULT NULL COMMENT 'Status',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Created At',
  `entity_name` varchar(32) DEFAULT NULL COMMENT 'Shows what entity history is bind to.',
  PRIMARY KEY (`entity_id`),
  KEY `SALES_ORDER_STATUS_HISTORY_PARENT_ID` (`parent_id`),
  KEY `SALES_ORDER_STATUS_HISTORY_CREATED_AT` (`created_at`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Sales Flat Order Status History';

--
-- Table structure for table `sales_order_status_label`
--

DROP TABLE IF EXISTS `sales_order_status_label`;
CREATE TABLE `sales_order_status_label` (
  `status` varchar(32) NOT NULL COMMENT 'Status',
  `store_id` smallint(5) unsigned NOT NULL COMMENT 'Store Id',
  `label` varchar(128) NOT NULL COMMENT 'Label',
  PRIMARY KEY (`status`,`store_id`),
  KEY `SALES_ORDER_STATUS_LABEL_STORE_ID` (`store_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Sales Order Status Label Table';

--
-- Table structure for table `sales_order_status_state`
--

DROP TABLE IF EXISTS `sales_order_status_state`;
CREATE TABLE `sales_order_status_state` (
  `status` varchar(32) NOT NULL COMMENT 'Status',
  `state` varchar(32) NOT NULL COMMENT 'Label',
  `is_default` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Is Default',
  `visible_on_front` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Visible on front',
  PRIMARY KEY (`status`,`state`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Sales Order Status Table';

--
-- Dumping data for table `sales_order_status_state`
--

LOCK TABLES `sales_order_status_state` WRITE;
/*!40000 ALTER TABLE `sales_order_status_state` DISABLE KEYS */;
INSERT INTO `sales_order_status_state` VALUES ('canceled','canceled',1,1),('closed','closed',1,1),('complete','complete',1,1),('fraud','payment_review',0,1),('fraud','processing',0,1),('holded','holded',1,1),('payment_review','payment_review',1,1),('pending','new',1,1),('pending_payment','pending_payment',1,0),('processing','processing',1,1);
/*!40000 ALTER TABLE `sales_order_status_state` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sales_order_tax`
--

DROP TABLE IF EXISTS `sales_order_tax`;
CREATE TABLE `sales_order_tax` (
  `tax_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Tax Id',
  `order_id` int(10) unsigned NOT NULL COMMENT 'Order Id',
  `code` varchar(255) DEFAULT NULL COMMENT 'Code',
  `title` varchar(255) DEFAULT NULL COMMENT 'Title',
  `percent` decimal(12,4) DEFAULT NULL COMMENT 'Percent',
  `amount` decimal(12,4) DEFAULT NULL COMMENT 'Amount',
  `priority` int(11) NOT NULL COMMENT 'Priority',
  `position` int(11) NOT NULL COMMENT 'Position',
  `base_amount` decimal(12,4) DEFAULT NULL COMMENT 'Base Amount',
  `process` smallint(6) NOT NULL COMMENT 'Process',
  `base_real_amount` decimal(12,4) DEFAULT NULL COMMENT 'Base Real Amount',
  PRIMARY KEY (`tax_id`),
  KEY `SALES_ORDER_TAX_ORDER_ID_PRIORITY_POSITION` (`order_id`,`priority`,`position`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Sales Order Tax Table';

--
-- Table structure for table `sales_order_tax_item`
--

DROP TABLE IF EXISTS `sales_order_tax_item`;
CREATE TABLE `sales_order_tax_item` (
  `tax_item_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Tax Item Id',
  `tax_id` int(10) unsigned NOT NULL COMMENT 'Tax Id',
  `item_id` int(10) unsigned DEFAULT NULL COMMENT 'Item Id',
  `tax_percent` decimal(12,4) NOT NULL COMMENT 'Real Tax Percent For Item',
  `amount` decimal(12,4) NOT NULL COMMENT 'Tax amount for the item and tax rate',
  `base_amount` decimal(12,4) NOT NULL COMMENT 'Base tax amount for the item and tax rate',
  `real_amount` decimal(12,4) NOT NULL COMMENT 'Real tax amount for the item and tax rate',
  `real_base_amount` decimal(12,4) NOT NULL COMMENT 'Real base tax amount for the item and tax rate',
  `associated_item_id` int(10) unsigned DEFAULT NULL COMMENT 'Id of the associated item',
  `taxable_item_type` varchar(32) NOT NULL COMMENT 'Type of the taxable item',
  PRIMARY KEY (`tax_item_id`),
  UNIQUE KEY `SALES_ORDER_TAX_ITEM_TAX_ID_ITEM_ID` (`tax_id`,`item_id`),
  KEY `SALES_ORDER_TAX_ITEM_ITEM_ID` (`item_id`),
  KEY `SALES_ORDER_TAX_ITEM_ASSOCIATED_ITEM_ID_SALES_ORDER_ITEM_ITEM_ID` (`associated_item_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Sales Order Tax Item';

--
-- Table structure for table `sales_payment_transaction`
--

DROP TABLE IF EXISTS `sales_payment_transaction`;
CREATE TABLE `sales_payment_transaction` (
  `transaction_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Transaction Id',
  `parent_id` int(10) unsigned DEFAULT NULL COMMENT 'Parent Id',
  `order_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Order Id',
  `payment_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Payment Id',
  `txn_id` varchar(100) DEFAULT NULL COMMENT 'Txn Id',
  `parent_txn_id` varchar(100) DEFAULT NULL COMMENT 'Parent Txn Id',
  `txn_type` varchar(15) DEFAULT NULL COMMENT 'Txn Type',
  `is_closed` smallint(5) unsigned NOT NULL DEFAULT '1' COMMENT 'Is Closed',
  `additional_information` blob COMMENT 'Additional Information',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Created At',
  PRIMARY KEY (`transaction_id`),
  UNIQUE KEY `SALES_PAYMENT_TRANSACTION_ORDER_ID_PAYMENT_ID_TXN_ID` (`order_id`,`payment_id`,`txn_id`),
  KEY `SALES_PAYMENT_TRANSACTION_PARENT_ID` (`parent_id`),
  KEY `SALES_PAYMENT_TRANSACTION_PAYMENT_ID` (`payment_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Sales Payment Transaction';

--
-- Table structure for table `sales_refunded_aggregated`
--

DROP TABLE IF EXISTS `sales_refunded_aggregated`;
CREATE TABLE `sales_refunded_aggregated` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Id',
  `period` date DEFAULT NULL COMMENT 'Period',
  `store_id` smallint(5) unsigned DEFAULT NULL COMMENT 'Store Id',
  `order_status` varchar(50) NOT NULL COMMENT 'Order Status',
  `orders_count` int(11) NOT NULL DEFAULT '0' COMMENT 'Orders Count',
  `refunded` decimal(12,4) DEFAULT NULL COMMENT 'Refunded',
  `online_refunded` decimal(12,4) DEFAULT NULL COMMENT 'Online Refunded',
  `offline_refunded` decimal(12,4) DEFAULT NULL COMMENT 'Offline Refunded',
  PRIMARY KEY (`id`),
  UNIQUE KEY `SALES_REFUNDED_AGGREGATED_PERIOD_STORE_ID_ORDER_STATUS` (`period`,`store_id`,`order_status`),
  KEY `SALES_REFUNDED_AGGREGATED_STORE_ID` (`store_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Sales Refunded Aggregated';

--
-- Table structure for table `sales_refunded_aggregated_order`
--

DROP TABLE IF EXISTS `sales_refunded_aggregated_order`;
CREATE TABLE `sales_refunded_aggregated_order` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Id',
  `period` date DEFAULT NULL COMMENT 'Period',
  `store_id` smallint(5) unsigned DEFAULT NULL COMMENT 'Store Id',
  `order_status` varchar(50) DEFAULT NULL COMMENT 'Order Status',
  `orders_count` int(11) NOT NULL DEFAULT '0' COMMENT 'Orders Count',
  `refunded` decimal(12,4) DEFAULT NULL COMMENT 'Refunded',
  `online_refunded` decimal(12,4) DEFAULT NULL COMMENT 'Online Refunded',
  `offline_refunded` decimal(12,4) DEFAULT NULL COMMENT 'Offline Refunded',
  PRIMARY KEY (`id`),
  UNIQUE KEY `SALES_REFUNDED_AGGREGATED_ORDER_PERIOD_STORE_ID_ORDER_STATUS` (`period`,`store_id`,`order_status`),
  KEY `SALES_REFUNDED_AGGREGATED_ORDER_STORE_ID` (`store_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Sales Refunded Aggregated Order';

--
-- Table structure for table `sales_sequence_meta`
--

DROP TABLE IF EXISTS `sales_sequence_meta`;
CREATE TABLE `sales_sequence_meta` (
  `meta_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Id',
  `entity_type` varchar(32) NOT NULL COMMENT 'Prefix',
  `store_id` smallint(5) unsigned NOT NULL COMMENT 'Store Id',
  `sequence_table` varchar(32) NOT NULL COMMENT 'table for sequence',
  PRIMARY KEY (`meta_id`),
  UNIQUE KEY `SALES_SEQUENCE_META_ENTITY_TYPE_STORE_ID` (`entity_type`,`store_id`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8 COMMENT='sales_sequence_meta';

--
-- Dumping data for table `sales_sequence_meta`
--

LOCK TABLES `sales_sequence_meta` WRITE;
/*!40000 ALTER TABLE `sales_sequence_meta` DISABLE KEYS */;
INSERT INTO `sales_sequence_meta` VALUES ('1','order',0,'sequence_order_0'),('2','invoice',0,'sequence_invoice_0'),('3','creditmemo',0,'sequence_creditmemo_0'),('4','shipment',0,'sequence_shipment_0'),('5','order',1,'sequence_order_1'),('6','invoice',1,'sequence_invoice_1'),('7','creditmemo',1,'sequence_creditmemo_1'),('8','shipment',1,'sequence_shipment_1'),('9','order',2,'sequence_order_2'),('10','invoice',2,'sequence_invoice_2'),('11','creditmemo',2,'sequence_creditmemo_2'),('12','shipment',2,'sequence_shipment_2'),('13','order',3,'sequence_order_3'),('14','invoice',3,'sequence_invoice_3'),('15','creditmemo',3,'sequence_creditmemo_3'),('16','shipment',3,'sequence_shipment_3'),('17','order',4,'sequence_order_4'),('18','invoice',4,'sequence_invoice_4'),('19','creditmemo',4,'sequence_creditmemo_4'),('20','shipment',4,'sequence_shipment_4'),('21','order',5,'sequence_order_5'),('22','invoice',5,'sequence_invoice_5'),('23','creditmemo',5,'sequence_creditmemo_5'),('24','shipment',5,'sequence_shipment_5'),('25','order',6,'sequence_order_6'),('26','invoice',6,'sequence_invoice_6'),('27','creditmemo',6,'sequence_creditmemo_6'),('28','shipment',6,'sequence_shipment_6');
/*!40000 ALTER TABLE `sales_sequence_meta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sales_sequence_profile`
--

DROP TABLE IF EXISTS `sales_sequence_profile`;
CREATE TABLE `sales_sequence_profile` (
  `profile_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Id',
  `meta_id` int(10) unsigned NOT NULL COMMENT 'Meta_id',
  `prefix` varchar(32) DEFAULT NULL COMMENT 'Prefix',
  `suffix` varchar(32) DEFAULT NULL COMMENT 'Suffix',
  `start_value` int(10) unsigned NOT NULL DEFAULT '1' COMMENT 'Start value for sequence',
  `step` int(10) unsigned NOT NULL DEFAULT '1' COMMENT 'Step for sequence',
  `max_value` int(10) unsigned NOT NULL COMMENT 'MaxValue for sequence',
  `warning_value` int(10) unsigned NOT NULL COMMENT 'WarningValue for sequence',
  `is_active` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'isActive flag',
  PRIMARY KEY (`profile_id`),
  UNIQUE KEY `SALES_SEQUENCE_PROFILE_META_ID_PREFIX_SUFFIX` (`meta_id`,`prefix`,`suffix`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8 COMMENT='sales_sequence_profile';

--
-- Dumping data for table `sales_sequence_profile`
--

LOCK TABLES `sales_sequence_profile` WRITE;
/*!40000 ALTER TABLE `sales_sequence_profile` DISABLE KEYS */;
INSERT INTO `sales_sequence_profile` VALUES ('1','1',NULL,NULL,'1','1','4294967295','4294966295',1),('2','2',NULL,NULL,'1','1','4294967295','4294966295',1),('3','3',NULL,NULL,'1','1','4294967295','4294966295',1),('4','4',NULL,NULL,'1','1','4294967295','4294966295',1),('5','5',NULL,NULL,'1','1','4294967295','4294966295',1),('6','6',NULL,NULL,'1','1','4294967295','4294966295',1),('7','7',NULL,NULL,'1','1','4294967295','4294966295',1),('8','8',NULL,NULL,'1','1','4294967295','4294966295',1),('9','9','2',NULL,'1','1','4294967295','4294966295',1),('10','10','2',NULL,'1','1','4294967295','4294966295',1),('11','11','2',NULL,'1','1','4294967295','4294966295',1),('12','12','2',NULL,'1','1','4294967295','4294966295',1),('13','13','3',NULL,'1','1','4294967295','4294966295',1),('14','14','3',NULL,'1','1','4294967295','4294966295',1),('15','15','3',NULL,'1','1','4294967295','4294966295',1),('16','16','3',NULL,'1','1','4294967295','4294966295',1),('17','17','4',NULL,'1','1','4294967295','4294966295',1),('18','18','4',NULL,'1','1','4294967295','4294966295',1),('19','19','4',NULL,'1','1','4294967295','4294966295',1),('20','20','4',NULL,'1','1','4294967295','4294966295',1),('21','21','5',NULL,'1','1','4294967295','4294966295',1),('22','22','5',NULL,'1','1','4294967295','4294966295',1),('23','23','5',NULL,'1','1','4294967295','4294966295',1),('24','24','5',NULL,'1','1','4294967295','4294966295',1),('25','25','6',NULL,'1','1','4294967295','4294966295',1),('26','26','6',NULL,'1','1','4294967295','4294966295',1),('27','27','6',NULL,'1','1','4294967295','4294966295',1),('28','28','6',NULL,'1','1','4294967295','4294966295',1);
/*!40000 ALTER TABLE `sales_sequence_profile` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sales_shipment`
--

DROP TABLE IF EXISTS `sales_shipment`;
CREATE TABLE `sales_shipment` (
  `entity_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Entity Id',
  `store_id` smallint(5) unsigned DEFAULT NULL COMMENT 'Store Id',
  `total_weight` decimal(12,4) DEFAULT NULL COMMENT 'Total Weight',
  `total_qty` decimal(12,4) DEFAULT NULL COMMENT 'Total Qty',
  `email_sent` smallint(5) unsigned DEFAULT NULL COMMENT 'Email Sent',
  `send_email` smallint(5) unsigned DEFAULT NULL COMMENT 'Send Email',
  `order_id` int(10) unsigned NOT NULL COMMENT 'Order Id',
  `customer_id` int(11) DEFAULT NULL COMMENT 'Customer Id',
  `shipping_address_id` int(11) DEFAULT NULL COMMENT 'Shipping Address Id',
  `billing_address_id` int(11) DEFAULT NULL COMMENT 'Billing Address Id',
  `shipment_status` int(11) DEFAULT NULL COMMENT 'Shipment Status',
  `increment_id` varchar(50) DEFAULT NULL COMMENT 'Increment Id',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Created At',
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Updated At',
  `packages` text COMMENT 'Packed Products in Packages',
  `shipping_label` mediumblob COMMENT 'Shipping Label Content',
  `customer_note` text COMMENT 'Customer Note',
  `customer_note_notify` smallint(5) unsigned DEFAULT NULL COMMENT 'Customer Note Notify',
  PRIMARY KEY (`entity_id`),
  UNIQUE KEY `SALES_SHIPMENT_INCREMENT_ID_STORE_ID` (`increment_id`,`store_id`),
  KEY `SALES_SHIPMENT_STORE_ID` (`store_id`),
  KEY `SALES_SHIPMENT_TOTAL_QTY` (`total_qty`),
  KEY `SALES_SHIPMENT_ORDER_ID` (`order_id`),
  KEY `SALES_SHIPMENT_CREATED_AT` (`created_at`),
  KEY `SALES_SHIPMENT_UPDATED_AT` (`updated_at`),
  KEY `SALES_SHIPMENT_SEND_EMAIL` (`send_email`),
  KEY `SALES_SHIPMENT_EMAIL_SENT` (`email_sent`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Sales Flat Shipment';

--
-- Table structure for table `sales_shipment_comment`
--

DROP TABLE IF EXISTS `sales_shipment_comment`;
CREATE TABLE `sales_shipment_comment` (
  `entity_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Entity Id',
  `parent_id` int(10) unsigned NOT NULL COMMENT 'Parent Id',
  `is_customer_notified` int(11) DEFAULT NULL COMMENT 'Is Customer Notified',
  `is_visible_on_front` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Is Visible On Front',
  `comment` text COMMENT 'Comment',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Created At',
  PRIMARY KEY (`entity_id`),
  KEY `SALES_SHIPMENT_COMMENT_CREATED_AT` (`created_at`),
  KEY `SALES_SHIPMENT_COMMENT_PARENT_ID` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Sales Flat Shipment Comment';

--
-- Table structure for table `sales_shipment_grid`
--

DROP TABLE IF EXISTS `sales_shipment_grid`;
CREATE TABLE `sales_shipment_grid` (
  `entity_id` int(10) unsigned NOT NULL COMMENT 'Entity Id',
  `increment_id` varchar(50) DEFAULT NULL COMMENT 'Increment Id',
  `store_id` smallint(5) unsigned DEFAULT NULL COMMENT 'Store Id',
  `order_increment_id` varchar(32) NOT NULL COMMENT 'Order Increment Id',
  `order_id` int(10) unsigned NOT NULL COMMENT 'Order Id',
  `order_created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Order Increment Id',
  `customer_name` varchar(128) NOT NULL COMMENT 'Customer Name',
  `total_qty` decimal(12,4) DEFAULT NULL COMMENT 'Total Qty',
  `shipment_status` int(11) DEFAULT NULL COMMENT 'Shipment Status',
  `order_status` varchar(32) DEFAULT NULL COMMENT 'Order',
  `billing_address` varchar(255) DEFAULT NULL COMMENT 'Billing Address',
  `shipping_address` varchar(255) DEFAULT NULL COMMENT 'Shipping Address',
  `billing_name` varchar(128) DEFAULT NULL COMMENT 'Billing Name',
  `shipping_name` varchar(128) DEFAULT NULL COMMENT 'Shipping Name',
  `customer_email` varchar(128) DEFAULT NULL COMMENT 'Customer Email',
  `customer_group_id` smallint(6) DEFAULT NULL COMMENT 'Customer Group Id',
  `payment_method` varchar(32) DEFAULT NULL COMMENT 'Payment Method',
  `shipping_information` varchar(255) DEFAULT NULL COMMENT 'Shipping Method Name',
  `created_at` timestamp NULL DEFAULT NULL COMMENT 'Created At',
  `updated_at` timestamp NULL DEFAULT NULL COMMENT 'Updated At',
  PRIMARY KEY (`entity_id`),
  UNIQUE KEY `SALES_SHIPMENT_GRID_INCREMENT_ID_STORE_ID` (`increment_id`,`store_id`),
  KEY `SALES_SHIPMENT_GRID_STORE_ID` (`store_id`),
  KEY `SALES_SHIPMENT_GRID_TOTAL_QTY` (`total_qty`),
  KEY `SALES_SHIPMENT_GRID_ORDER_INCREMENT_ID` (`order_increment_id`),
  KEY `SALES_SHIPMENT_GRID_SHIPMENT_STATUS` (`shipment_status`),
  KEY `SALES_SHIPMENT_GRID_ORDER_STATUS` (`order_status`),
  KEY `SALES_SHIPMENT_GRID_CREATED_AT` (`created_at`),
  KEY `SALES_SHIPMENT_GRID_UPDATED_AT` (`updated_at`),
  KEY `SALES_SHIPMENT_GRID_ORDER_CREATED_AT` (`order_created_at`),
  KEY `SALES_SHIPMENT_GRID_SHIPPING_NAME` (`shipping_name`),
  KEY `SALES_SHIPMENT_GRID_BILLING_NAME` (`billing_name`),
  FULLTEXT KEY `FTI_086B40C8955F167B8EA76653437879B4` (`increment_id`,`order_increment_id`,`shipping_name`,`customer_name`,`customer_email`,`billing_address`,`shipping_address`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Sales Flat Shipment Grid';

--
-- Table structure for table `sales_shipment_item`
--

DROP TABLE IF EXISTS `sales_shipment_item`;
CREATE TABLE `sales_shipment_item` (
  `entity_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Entity Id',
  `parent_id` int(10) unsigned NOT NULL COMMENT 'Parent Id',
  `row_total` decimal(12,4) DEFAULT NULL COMMENT 'Row Total',
  `price` decimal(12,4) DEFAULT NULL COMMENT 'Price',
  `weight` decimal(12,4) DEFAULT NULL COMMENT 'Weight',
  `qty` decimal(12,4) DEFAULT NULL COMMENT 'Qty',
  `product_id` int(11) DEFAULT NULL COMMENT 'Product Id',
  `order_item_id` int(11) DEFAULT NULL COMMENT 'Order Item Id',
  `additional_data` text COMMENT 'Additional Data',
  `description` text COMMENT 'Description',
  `name` varchar(255) DEFAULT NULL COMMENT 'Name',
  `sku` varchar(255) DEFAULT NULL COMMENT 'Sku',
  PRIMARY KEY (`entity_id`),
  KEY `SALES_SHIPMENT_ITEM_PARENT_ID` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Sales Flat Shipment Item';

--
-- Table structure for table `sales_shipment_track`
--

DROP TABLE IF EXISTS `sales_shipment_track`;
CREATE TABLE `sales_shipment_track` (
  `entity_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Entity Id',
  `parent_id` int(10) unsigned NOT NULL COMMENT 'Parent Id',
  `weight` decimal(12,4) DEFAULT NULL COMMENT 'Weight',
  `qty` decimal(12,4) DEFAULT NULL COMMENT 'Qty',
  `order_id` int(10) unsigned NOT NULL COMMENT 'Order Id',
  `track_number` text COMMENT 'Number',
  `description` text COMMENT 'Description',
  `title` varchar(255) DEFAULT NULL COMMENT 'Title',
  `carrier_code` varchar(32) DEFAULT NULL COMMENT 'Carrier Code',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Created At',
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Updated At',
  PRIMARY KEY (`entity_id`),
  KEY `SALES_SHIPMENT_TRACK_PARENT_ID` (`parent_id`),
  KEY `SALES_SHIPMENT_TRACK_ORDER_ID` (`order_id`),
  KEY `SALES_SHIPMENT_TRACK_CREATED_AT` (`created_at`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Sales Flat Shipment Track';

--
-- Table structure for table `sales_shipping_aggregated`
--

DROP TABLE IF EXISTS `sales_shipping_aggregated`;
CREATE TABLE `sales_shipping_aggregated` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Id',
  `period` date DEFAULT NULL COMMENT 'Period',
  `store_id` smallint(5) unsigned DEFAULT NULL COMMENT 'Store Id',
  `order_status` varchar(50) DEFAULT NULL COMMENT 'Order Status',
  `shipping_description` varchar(255) DEFAULT NULL COMMENT 'Shipping Description',
  `orders_count` int(11) NOT NULL DEFAULT '0' COMMENT 'Orders Count',
  `total_shipping` decimal(12,4) DEFAULT NULL COMMENT 'Total Shipping',
  `total_shipping_actual` decimal(12,4) DEFAULT NULL COMMENT 'Total Shipping Actual',
  PRIMARY KEY (`id`),
  UNIQUE KEY `SALES_SHPP_AGGRED_PERIOD_STORE_ID_ORDER_STS_SHPP_DESCRIPTION` (`period`,`store_id`,`order_status`,`shipping_description`),
  KEY `SALES_SHIPPING_AGGREGATED_STORE_ID` (`store_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Sales Shipping Aggregated';

--
-- Table structure for table `sales_shipping_aggregated_order`
--

DROP TABLE IF EXISTS `sales_shipping_aggregated_order`;
CREATE TABLE `sales_shipping_aggregated_order` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Id',
  `period` date DEFAULT NULL COMMENT 'Period',
  `store_id` smallint(5) unsigned DEFAULT NULL COMMENT 'Store Id',
  `order_status` varchar(50) DEFAULT NULL COMMENT 'Order Status',
  `shipping_description` varchar(255) DEFAULT NULL COMMENT 'Shipping Description',
  `orders_count` int(11) NOT NULL DEFAULT '0' COMMENT 'Orders Count',
  `total_shipping` decimal(12,4) DEFAULT NULL COMMENT 'Total Shipping',
  `total_shipping_actual` decimal(12,4) DEFAULT NULL COMMENT 'Total Shipping Actual',
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNQ_C05FAE47282EEA68654D0924E946761F` (`period`,`store_id`,`order_status`,`shipping_description`),
  KEY `SALES_SHIPPING_AGGREGATED_ORDER_STORE_ID` (`store_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Sales Shipping Aggregated Order';

--
-- Table structure for table `salesrule`
--

DROP TABLE IF EXISTS `salesrule`;
CREATE TABLE `salesrule` (
  `rule_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Rule Id',
  `name` varchar(255) DEFAULT NULL COMMENT 'Name',
  `description` text COMMENT 'Description',
  `from_date` date DEFAULT NULL COMMENT 'From',
  `to_date` date DEFAULT NULL COMMENT 'To',
  `uses_per_customer` int(11) NOT NULL DEFAULT '0' COMMENT 'Uses Per Customer',
  `is_active` smallint(6) NOT NULL DEFAULT '0' COMMENT 'Is Active',
  `conditions_serialized` mediumtext COMMENT 'Conditions Serialized',
  `actions_serialized` mediumtext COMMENT 'Actions Serialized',
  `stop_rules_processing` smallint(6) NOT NULL DEFAULT '1' COMMENT 'Stop Rules Processing',
  `is_advanced` smallint(5) unsigned NOT NULL DEFAULT '1' COMMENT 'Is Advanced',
  `product_ids` text COMMENT 'Product Ids',
  `sort_order` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Sort Order',
  `simple_action` varchar(32) DEFAULT NULL COMMENT 'Simple Action',
  `discount_amount` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Discount Amount',
  `discount_qty` decimal(12,4) DEFAULT NULL COMMENT 'Discount Qty',
  `discount_step` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Discount Step',
  `apply_to_shipping` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Apply To Shipping',
  `times_used` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Times Used',
  `is_rss` smallint(6) NOT NULL DEFAULT '0' COMMENT 'Is Rss',
  `coupon_type` smallint(5) unsigned NOT NULL DEFAULT '1' COMMENT 'Coupon Type',
  `use_auto_generation` smallint(6) NOT NULL DEFAULT '0' COMMENT 'Use Auto Generation',
  `uses_per_coupon` int(11) NOT NULL DEFAULT '0' COMMENT 'User Per Coupon',
  `simple_free_shipping` smallint(6) DEFAULT NULL,
  PRIMARY KEY (`rule_id`),
  KEY `SALESRULE_IS_ACTIVE_SORT_ORDER_TO_DATE_FROM_DATE` (`is_active`,`sort_order`,`to_date`,`from_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Salesrule';

--
-- Table structure for table `salesrule_coupon`
--

DROP TABLE IF EXISTS `salesrule_coupon`;
CREATE TABLE `salesrule_coupon` (
  `coupon_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Coupon Id',
  `rule_id` int(10) unsigned NOT NULL COMMENT 'Rule Id',
  `code` varchar(255) DEFAULT NULL COMMENT 'Code',
  `usage_limit` int(10) unsigned DEFAULT NULL COMMENT 'Usage Limit',
  `usage_per_customer` int(10) unsigned DEFAULT NULL COMMENT 'Usage Per Customer',
  `times_used` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Times Used',
  `expiration_date` timestamp NULL DEFAULT NULL COMMENT 'Expiration Date',
  `is_primary` smallint(5) unsigned DEFAULT NULL COMMENT 'Is Primary',
  `created_at` timestamp NULL DEFAULT NULL COMMENT 'Coupon Code Creation Date',
  `type` smallint(6) DEFAULT '0' COMMENT 'Coupon Code Type',
  PRIMARY KEY (`coupon_id`),
  UNIQUE KEY `SALESRULE_COUPON_CODE` (`code`),
  UNIQUE KEY `SALESRULE_COUPON_RULE_ID_IS_PRIMARY` (`rule_id`,`is_primary`),
  KEY `SALESRULE_COUPON_RULE_ID` (`rule_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Salesrule Coupon';

--
-- Table structure for table `salesrule_coupon_aggregated`
--

DROP TABLE IF EXISTS `salesrule_coupon_aggregated`;
CREATE TABLE `salesrule_coupon_aggregated` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Id',
  `period` date NOT NULL COMMENT 'Period',
  `store_id` smallint(5) unsigned DEFAULT NULL COMMENT 'Store Id',
  `order_status` varchar(50) DEFAULT NULL COMMENT 'Order Status',
  `coupon_code` varchar(50) DEFAULT NULL COMMENT 'Coupon Code',
  `coupon_uses` int(11) NOT NULL DEFAULT '0' COMMENT 'Coupon Uses',
  `subtotal_amount` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Subtotal Amount',
  `discount_amount` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Discount Amount',
  `total_amount` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Total Amount',
  `subtotal_amount_actual` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Subtotal Amount Actual',
  `discount_amount_actual` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Discount Amount Actual',
  `total_amount_actual` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Total Amount Actual',
  `rule_name` varchar(255) DEFAULT NULL COMMENT 'Rule Name',
  PRIMARY KEY (`id`),
  UNIQUE KEY `SALESRULE_COUPON_AGGRED_PERIOD_STORE_ID_ORDER_STS_COUPON_CODE` (`period`,`store_id`,`order_status`,`coupon_code`),
  KEY `SALESRULE_COUPON_AGGREGATED_STORE_ID` (`store_id`),
  KEY `SALESRULE_COUPON_AGGREGATED_RULE_NAME` (`rule_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Coupon Aggregated';

--
-- Table structure for table `salesrule_coupon_aggregated_order`
--

DROP TABLE IF EXISTS `salesrule_coupon_aggregated_order`;
CREATE TABLE `salesrule_coupon_aggregated_order` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Id',
  `period` date NOT NULL COMMENT 'Period',
  `store_id` smallint(5) unsigned DEFAULT NULL COMMENT 'Store Id',
  `order_status` varchar(50) DEFAULT NULL COMMENT 'Order Status',
  `coupon_code` varchar(50) DEFAULT NULL COMMENT 'Coupon Code',
  `coupon_uses` int(11) NOT NULL DEFAULT '0' COMMENT 'Coupon Uses',
  `subtotal_amount` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Subtotal Amount',
  `discount_amount` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Discount Amount',
  `total_amount` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Total Amount',
  `rule_name` varchar(255) DEFAULT NULL COMMENT 'Rule Name',
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNQ_1094D1FBBCBB11704A29DEF3ACC37D2B` (`period`,`store_id`,`order_status`,`coupon_code`),
  KEY `SALESRULE_COUPON_AGGREGATED_ORDER_STORE_ID` (`store_id`),
  KEY `SALESRULE_COUPON_AGGREGATED_ORDER_RULE_NAME` (`rule_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Coupon Aggregated Order';

--
-- Table structure for table `salesrule_coupon_aggregated_updated`
--

DROP TABLE IF EXISTS `salesrule_coupon_aggregated_updated`;
CREATE TABLE `salesrule_coupon_aggregated_updated` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Id',
  `period` date NOT NULL COMMENT 'Period',
  `store_id` smallint(5) unsigned DEFAULT NULL COMMENT 'Store Id',
  `order_status` varchar(50) DEFAULT NULL COMMENT 'Order Status',
  `coupon_code` varchar(50) DEFAULT NULL COMMENT 'Coupon Code',
  `coupon_uses` int(11) NOT NULL DEFAULT '0' COMMENT 'Coupon Uses',
  `subtotal_amount` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Subtotal Amount',
  `discount_amount` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Discount Amount',
  `total_amount` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Total Amount',
  `subtotal_amount_actual` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Subtotal Amount Actual',
  `discount_amount_actual` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Discount Amount Actual',
  `total_amount_actual` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Total Amount Actual',
  `rule_name` varchar(255) DEFAULT NULL COMMENT 'Rule Name',
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNQ_7196FA120A4F0F84E1B66605E87E213E` (`period`,`store_id`,`order_status`,`coupon_code`),
  KEY `SALESRULE_COUPON_AGGREGATED_UPDATED_STORE_ID` (`store_id`),
  KEY `SALESRULE_COUPON_AGGREGATED_UPDATED_RULE_NAME` (`rule_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Salesrule Coupon Aggregated Updated';

--
-- Table structure for table `salesrule_coupon_usage`
--

DROP TABLE IF EXISTS `salesrule_coupon_usage`;
CREATE TABLE `salesrule_coupon_usage` (
  `coupon_id` int(10) unsigned NOT NULL COMMENT 'Coupon Id',
  `customer_id` int(10) unsigned NOT NULL COMMENT 'Customer Id',
  `times_used` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Times Used',
  PRIMARY KEY (`coupon_id`,`customer_id`),
  KEY `SALESRULE_COUPON_USAGE_CUSTOMER_ID` (`customer_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Salesrule Coupon Usage';

--
-- Table structure for table `salesrule_customer`
--

DROP TABLE IF EXISTS `salesrule_customer`;
CREATE TABLE `salesrule_customer` (
  `rule_customer_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Rule Customer Id',
  `rule_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Rule Id',
  `customer_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Customer Id',
  `times_used` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Times Used',
  PRIMARY KEY (`rule_customer_id`),
  KEY `SALESRULE_CUSTOMER_RULE_ID_CUSTOMER_ID` (`rule_id`,`customer_id`),
  KEY `SALESRULE_CUSTOMER_CUSTOMER_ID_RULE_ID` (`customer_id`,`rule_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Salesrule Customer';

--
-- Table structure for table `salesrule_customer_group`
--

DROP TABLE IF EXISTS `salesrule_customer_group`;
CREATE TABLE `salesrule_customer_group` (
  `rule_id` int(10) unsigned NOT NULL COMMENT 'Rule Id',
  `customer_group_id` smallint(5) unsigned NOT NULL COMMENT 'Customer Group Id',
  PRIMARY KEY (`rule_id`,`customer_group_id`),
  KEY `SALESRULE_CUSTOMER_GROUP_CUSTOMER_GROUP_ID` (`customer_group_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Sales Rules To Customer Groups Relations';

--
-- Table structure for table `salesrule_label`
--

DROP TABLE IF EXISTS `salesrule_label`;
CREATE TABLE `salesrule_label` (
  `label_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Label Id',
  `rule_id` int(10) unsigned NOT NULL COMMENT 'Rule Id',
  `store_id` smallint(5) unsigned NOT NULL COMMENT 'Store Id',
  `label` varchar(255) DEFAULT NULL COMMENT 'Label',
  PRIMARY KEY (`label_id`),
  UNIQUE KEY `SALESRULE_LABEL_RULE_ID_STORE_ID` (`rule_id`,`store_id`),
  KEY `SALESRULE_LABEL_STORE_ID` (`store_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Salesrule Label';

--
-- Table structure for table `salesrule_product_attribute`
--

DROP TABLE IF EXISTS `salesrule_product_attribute`;
CREATE TABLE `salesrule_product_attribute` (
  `rule_id` int(10) unsigned NOT NULL COMMENT 'Rule Id',
  `website_id` smallint(5) unsigned NOT NULL COMMENT 'Website Id',
  `customer_group_id` smallint(5) unsigned NOT NULL COMMENT 'Customer Group Id',
  `attribute_id` smallint(5) unsigned NOT NULL COMMENT 'Attribute Id',
  PRIMARY KEY (`rule_id`,`website_id`,`customer_group_id`,`attribute_id`),
  KEY `SALESRULE_PRODUCT_ATTRIBUTE_WEBSITE_ID` (`website_id`),
  KEY `SALESRULE_PRODUCT_ATTRIBUTE_CUSTOMER_GROUP_ID` (`customer_group_id`),
  KEY `SALESRULE_PRODUCT_ATTRIBUTE_ATTRIBUTE_ID` (`attribute_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Salesrule Product Attribute';

--
-- Table structure for table `salesrule_website`
--

DROP TABLE IF EXISTS `salesrule_website`;
CREATE TABLE `salesrule_website` (
  `rule_id` int(10) unsigned NOT NULL COMMENT 'Rule Id',
  `website_id` smallint(5) unsigned NOT NULL COMMENT 'Website Id',
  PRIMARY KEY (`rule_id`,`website_id`),
  KEY `SALESRULE_WEBSITE_WEBSITE_ID` (`website_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Sales Rules To Websites Relations';

--
-- Table structure for table `search_query`
--

DROP TABLE IF EXISTS `search_query`;
CREATE TABLE `search_query` (
  `query_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Query ID',
  `query_text` varchar(255) DEFAULT NULL COMMENT 'Query text',
  `num_results` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Num results',
  `popularity` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Popularity',
  `redirect` varchar(255) DEFAULT NULL COMMENT 'Redirect',
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Store ID',
  `display_in_terms` smallint(6) NOT NULL DEFAULT '1' COMMENT 'Display in terms',
  `is_active` smallint(6) DEFAULT '1' COMMENT 'Active status',
  `is_processed` smallint(6) DEFAULT '0' COMMENT 'Processed status',
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Updated at',
  PRIMARY KEY (`query_id`),
  UNIQUE KEY `SEARCH_QUERY_QUERY_TEXT_STORE_ID` (`query_text`,`store_id`),
  KEY `SEARCH_QUERY_QUERY_TEXT_STORE_ID_POPULARITY` (`query_text`,`store_id`,`popularity`),
  KEY `SEARCH_QUERY_STORE_ID` (`store_id`),
  KEY `SEARCH_QUERY_IS_PROCESSED` (`is_processed`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Search query table';

--
-- Table structure for table `search_synonyms`
--

DROP TABLE IF EXISTS `search_synonyms`;
CREATE TABLE `search_synonyms` (
  `group_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Synonyms Group Id',
  `synonyms` text NOT NULL COMMENT 'list of synonyms making up this group',
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Store Id - identifies the store view these synonyms belong to',
  `website_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Website Id - identifies the website id these synonyms belong to',
  PRIMARY KEY (`group_id`),
  KEY `SEARCH_SYNONYMS_STORE_ID` (`store_id`),
  KEY `SEARCH_SYNONYMS_WEBSITE_ID` (`website_id`),
  FULLTEXT KEY `SEARCH_SYNONYMS_SYNONYMS` (`synonyms`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='table storing various synonyms groups';

--
-- Table structure for table `sendfriend_log`
--

DROP TABLE IF EXISTS `sendfriend_log`;
CREATE TABLE `sendfriend_log` (
  `log_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Log ID',
  `ip` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT 'Customer IP address',
  `time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Log time',
  `website_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Website ID',
  PRIMARY KEY (`log_id`),
  KEY `SENDFRIEND_LOG_IP` (`ip`),
  KEY `SENDFRIEND_LOG_TIME` (`time`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Send to friend function log storage table';

--
-- Table structure for table `sequence_creditmemo_0`
--

DROP TABLE IF EXISTS `sequence_creditmemo_0`;
CREATE TABLE `sequence_creditmemo_0` (
  `sequence_value` int(10) unsigned NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`sequence_value`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Table structure for table `sequence_creditmemo_1`
--

DROP TABLE IF EXISTS `sequence_creditmemo_1`;
CREATE TABLE `sequence_creditmemo_1` (
  `sequence_value` int(10) unsigned NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`sequence_value`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Table structure for table `sequence_creditmemo_2`
--

DROP TABLE IF EXISTS `sequence_creditmemo_2`;
CREATE TABLE `sequence_creditmemo_2` (
  `sequence_value` int(10) unsigned NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`sequence_value`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Table structure for table `sequence_creditmemo_3`
--

DROP TABLE IF EXISTS `sequence_creditmemo_3`;
CREATE TABLE `sequence_creditmemo_3` (
  `sequence_value` int(10) unsigned NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`sequence_value`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Table structure for table `sequence_creditmemo_4`
--

DROP TABLE IF EXISTS `sequence_creditmemo_4`;
CREATE TABLE `sequence_creditmemo_4` (
  `sequence_value` int(10) unsigned NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`sequence_value`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Table structure for table `sequence_creditmemo_5`
--

DROP TABLE IF EXISTS `sequence_creditmemo_5`;
CREATE TABLE `sequence_creditmemo_5` (
  `sequence_value` int(10) unsigned NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`sequence_value`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Table structure for table `sequence_creditmemo_6`
--

DROP TABLE IF EXISTS `sequence_creditmemo_6`;
CREATE TABLE `sequence_creditmemo_6` (
  `sequence_value` int(10) unsigned NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`sequence_value`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Table structure for table `sequence_invoice_0`
--

DROP TABLE IF EXISTS `sequence_invoice_0`;
CREATE TABLE `sequence_invoice_0` (
  `sequence_value` int(10) unsigned NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`sequence_value`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Table structure for table `sequence_invoice_1`
--

DROP TABLE IF EXISTS `sequence_invoice_1`;
CREATE TABLE `sequence_invoice_1` (
  `sequence_value` int(10) unsigned NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`sequence_value`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Table structure for table `sequence_invoice_2`
--

DROP TABLE IF EXISTS `sequence_invoice_2`;
CREATE TABLE `sequence_invoice_2` (
  `sequence_value` int(10) unsigned NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`sequence_value`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Table structure for table `sequence_invoice_3`
--

DROP TABLE IF EXISTS `sequence_invoice_3`;
CREATE TABLE `sequence_invoice_3` (
  `sequence_value` int(10) unsigned NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`sequence_value`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Table structure for table `sequence_invoice_4`
--

DROP TABLE IF EXISTS `sequence_invoice_4`;
CREATE TABLE `sequence_invoice_4` (
  `sequence_value` int(10) unsigned NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`sequence_value`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Table structure for table `sequence_invoice_5`
--

DROP TABLE IF EXISTS `sequence_invoice_5`;
CREATE TABLE `sequence_invoice_5` (
  `sequence_value` int(10) unsigned NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`sequence_value`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Table structure for table `sequence_invoice_6`
--

DROP TABLE IF EXISTS `sequence_invoice_6`;
CREATE TABLE `sequence_invoice_6` (
  `sequence_value` int(10) unsigned NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`sequence_value`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Table structure for table `sequence_order_0`
--

DROP TABLE IF EXISTS `sequence_order_0`;
CREATE TABLE `sequence_order_0` (
  `sequence_value` int(10) unsigned NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`sequence_value`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Table structure for table `sequence_order_1`
--

DROP TABLE IF EXISTS `sequence_order_1`;
CREATE TABLE `sequence_order_1` (
  `sequence_value` int(10) unsigned NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`sequence_value`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Table structure for table `sequence_order_2`
--

DROP TABLE IF EXISTS `sequence_order_2`;
CREATE TABLE `sequence_order_2` (
  `sequence_value` int(10) unsigned NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`sequence_value`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sequence_order_2`
--

LOCK TABLES `sequence_order_2` WRITE;
/*!40000 ALTER TABLE `sequence_order_2` DISABLE KEYS */;
INSERT INTO `sequence_order_2` VALUES ('1'),('2'),('3'),('4'),('5'),('6'),('7'),('8'),('9'),('10'),('11'),('12');
/*!40000 ALTER TABLE `sequence_order_2` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sequence_order_3`
--

DROP TABLE IF EXISTS `sequence_order_3`;
CREATE TABLE `sequence_order_3` (
  `sequence_value` int(10) unsigned NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`sequence_value`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Table structure for table `sequence_order_4`
--

DROP TABLE IF EXISTS `sequence_order_4`;
CREATE TABLE `sequence_order_4` (
  `sequence_value` int(10) unsigned NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`sequence_value`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Table structure for table `sequence_order_5`
--

DROP TABLE IF EXISTS `sequence_order_5`;
CREATE TABLE `sequence_order_5` (
  `sequence_value` int(10) unsigned NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`sequence_value`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Table structure for table `sequence_order_6`
--

DROP TABLE IF EXISTS `sequence_order_6`;
CREATE TABLE `sequence_order_6` (
  `sequence_value` int(10) unsigned NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`sequence_value`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Table structure for table `sequence_shipment_0`
--

DROP TABLE IF EXISTS `sequence_shipment_0`;
CREATE TABLE `sequence_shipment_0` (
  `sequence_value` int(10) unsigned NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`sequence_value`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Table structure for table `sequence_shipment_1`
--

DROP TABLE IF EXISTS `sequence_shipment_1`;
CREATE TABLE `sequence_shipment_1` (
  `sequence_value` int(10) unsigned NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`sequence_value`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Table structure for table `sequence_shipment_2`
--

DROP TABLE IF EXISTS `sequence_shipment_2`;
CREATE TABLE `sequence_shipment_2` (
  `sequence_value` int(10) unsigned NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`sequence_value`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Table structure for table `sequence_shipment_3`
--

DROP TABLE IF EXISTS `sequence_shipment_3`;
CREATE TABLE `sequence_shipment_3` (
  `sequence_value` int(10) unsigned NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`sequence_value`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Table structure for table `sequence_shipment_4`
--

DROP TABLE IF EXISTS `sequence_shipment_4`;
CREATE TABLE `sequence_shipment_4` (
  `sequence_value` int(10) unsigned NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`sequence_value`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Table structure for table `sequence_shipment_5`
--

DROP TABLE IF EXISTS `sequence_shipment_5`;
CREATE TABLE `sequence_shipment_5` (
  `sequence_value` int(10) unsigned NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`sequence_value`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Table structure for table `sequence_shipment_6`
--

DROP TABLE IF EXISTS `sequence_shipment_6`;
CREATE TABLE `sequence_shipment_6` (
  `sequence_value` int(10) unsigned NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`sequence_value`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Table structure for table `session`
--

DROP TABLE IF EXISTS `session`;
CREATE TABLE `session` (
  `session_id` varchar(255) NOT NULL COMMENT 'Session Id',
  `session_expires` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Date of Session Expiration',
  `session_data` mediumblob NOT NULL COMMENT 'Session Data',
  PRIMARY KEY (`session_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Database Sessions Storage';

--
-- Table structure for table `setup_module`
--

DROP TABLE IF EXISTS `setup_module`;
CREATE TABLE `setup_module` (
  `module` varchar(50) NOT NULL COMMENT 'Module',
  `schema_version` varchar(50) DEFAULT NULL COMMENT 'Schema Version',
  `data_version` varchar(50) DEFAULT NULL COMMENT 'Data Version',
  PRIMARY KEY (`module`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Module versions registry';

--
-- Dumping data for table `setup_module`
--

LOCK TABLES `setup_module` WRITE;
/*!40000 ALTER TABLE `setup_module` DISABLE KEYS */;
INSERT INTO `setup_module` VALUES ('CommerceExtensions_AdvancedcustomerImportExport','1.0.0','1.0.0'),('Deved_DisableRegistration','2.0.0','2.0.0'),('Itoris_Core','1.0.5','1.0.5'),('Itoris_DynamicProductOptions','2.0.2','2.0.2'),('Itoris_ProductPriceFormula','1.6.0','1.6.0'),('Magento_AdminNotification','2.0.0','2.0.0'),('Magento_AdvancedPricingImportExport','2.0.0','2.0.0'),('Magento_Authorization','2.0.0','2.0.0'),('Magento_Authorizenet','2.0.0','2.0.0'),('Magento_Backend','2.0.0','2.0.0'),('Magento_Backup','2.0.0','2.0.0'),('Magento_Braintree','2.0.0','2.0.0'),('Magento_Bundle','2.0.2','2.0.2'),('Magento_BundleImportExport','2.0.0','2.0.0'),('Magento_CacheInvalidate','2.0.0','2.0.0'),('Magento_Captcha','2.0.0','2.0.0'),('Magento_Catalog','2.1.4','2.1.4'),('Magento_CatalogImportExport','2.0.0','2.0.0'),('Magento_CatalogInventory','2.0.1','2.0.1'),('Magento_CatalogRule','2.0.1','2.0.1'),('Magento_CatalogRuleConfigurable','2.0.0','2.0.0'),('Magento_CatalogSearch','2.0.0','2.0.0'),('Magento_CatalogUrlRewrite','2.0.0','2.0.0'),('Magento_CatalogWidget','2.0.0','2.0.0'),('Magento_Checkout','2.0.0','2.0.0'),('Magento_CheckoutAgreements','2.0.1','2.0.1'),('Magento_Cms','2.0.1','2.0.1'),('Magento_CmsUrlRewrite','2.0.0','2.0.0'),('Magento_Config','2.0.0','2.0.0'),('Magento_ConfigurableImportExport','2.0.0','2.0.0'),('Magento_ConfigurableProduct','2.0.0','2.0.0'),('Magento_Contact','2.0.0','2.0.0'),('Magento_Cookie','2.0.0','2.0.0'),('Magento_Cron','2.0.0','2.0.0'),('Magento_CurrencySymbol','2.0.0','2.0.0'),('Magento_Customer','2.0.9','2.0.9'),('Magento_CustomerImportExport','2.0.0','2.0.0'),('Magento_Deploy','2.0.0','2.0.0'),('Magento_Developer','2.0.0','2.0.0'),('Magento_Dhl','2.0.0','2.0.0'),('Magento_Directory','2.0.0','2.0.0'),('Magento_Downloadable','2.0.1','2.0.1'),('Magento_DownloadableImportExport','2.0.0','2.0.0'),('Magento_Eav','2.0.0','2.0.0'),('Magento_Email','2.0.0','2.0.0'),('Magento_EncryptionKey','2.0.0','2.0.0'),('Magento_Fedex','2.0.0','2.0.0'),('Magento_GiftMessage','2.0.1','2.0.1'),('Magento_GoogleAdwords','2.0.0','2.0.0'),('Magento_GoogleAnalytics','2.0.0','2.0.0'),('Magento_GoogleOptimizer','2.0.0','2.0.0'),('Magento_GroupedImportExport','2.0.0','2.0.0'),('Magento_GroupedProduct','2.0.1','2.0.1'),('Magento_ImportExport','2.0.1','2.0.1'),('Magento_Indexer','2.0.0','2.0.0'),('Magento_Integration','2.2.0','2.2.0'),('Magento_LayeredNavigation','2.0.0','2.0.0'),('Magento_Marketplace','1.0.0','1.0.0'),('Magento_MediaStorage','2.0.0','2.0.0'),('Magento_Msrp','2.1.3','2.1.3'),('Magento_Multishipping','2.0.0','2.0.0'),('Magento_NewRelicReporting','2.0.0','2.0.0'),('Magento_Newsletter','2.0.0','2.0.0'),('Magento_OfflinePayments','2.0.0','2.0.0'),('Magento_OfflineShipping','2.0.0','2.0.0'),('Magento_PageCache','2.0.0','2.0.0'),('Magento_Payment','2.0.0','2.0.0'),('Magento_Paypal','2.0.0','2.0.0'),('Magento_Persistent','2.0.0','2.0.0'),('Magento_ProductAlert','2.0.0','2.0.0'),('Magento_ProductVideo','2.0.0.2','2.0.0.2'),('Magento_Quote','2.0.4','2.0.4'),('Magento_Reports','2.0.0','2.0.0'),('Magento_RequireJs','2.0.0','2.0.0'),('Magento_Review','2.0.0','2.0.0'),('Magento_Rss','2.0.0','2.0.0'),('Magento_Rule','2.0.0','2.0.0'),('Magento_Sales','2.0.3','2.0.3'),('Magento_SalesInventory','1.0.0','1.0.0'),('Magento_SalesRule','2.0.1','2.0.1'),('Magento_SalesSequence','2.0.0','2.0.0'),('Magento_SampleData','2.0.0','2.0.0'),('Magento_Search','2.0.4','2.0.4'),('Magento_Security','2.0.1','2.0.1'),('Magento_SendFriend','2.0.0','2.0.0'),('Magento_Shipping','2.0.0','2.0.0'),('Magento_Sitemap','2.0.0','2.0.0'),('Magento_Store','2.0.0','2.0.0'),('Magento_Swagger','2.0.0','2.0.0'),('Magento_Swatches','2.0.1','2.0.1'),('Magento_SwatchesLayeredNavigation','2.0.0','2.0.0'),('Magento_Tax','2.0.1','2.0.1'),('Magento_TaxImportExport','2.0.0','2.0.0'),('Magento_Theme','2.0.1','2.0.1'),('Magento_Translation','2.0.0','2.0.0'),('Magento_Ui','2.0.0','2.0.0'),('Magento_Ups','2.0.0','2.0.0'),('Magento_UrlRewrite','2.0.0','2.0.0'),('Magento_User','2.0.1','2.0.1'),('Magento_Usps','2.0.1','2.0.1'),('Magento_Variable','2.0.0','2.0.0'),('Magento_Vault','2.0.2','2.0.2'),('Magento_Version','2.0.0','2.0.0'),('Magento_Webapi','2.0.0','2.0.0'),('Magento_WebapiSecurity','2.0.0','2.0.0'),('Magento_Weee','2.0.0','2.0.0'),('Magento_Widget','2.0.0','2.0.0'),('Magento_Wishlist','2.0.0','2.0.0'),('Syscon_CustCheckout','1.0.1','1.0.1'),('Syscon_CustomerPut','1.0.0','1.0.0');
/*!40000 ALTER TABLE `setup_module` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shipping_tablerate`
--

DROP TABLE IF EXISTS `shipping_tablerate`;
CREATE TABLE `shipping_tablerate` (
  `pk` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Primary key',
  `website_id` int(11) NOT NULL DEFAULT '0' COMMENT 'Website Id',
  `dest_country_id` varchar(4) NOT NULL DEFAULT '0' COMMENT 'Destination coutry ISO/2 or ISO/3 code',
  `dest_region_id` int(11) NOT NULL DEFAULT '0' COMMENT 'Destination Region Id',
  `dest_zip` varchar(10) NOT NULL DEFAULT '*' COMMENT 'Destination Post Code (Zip)',
  `condition_name` varchar(20) NOT NULL COMMENT 'Rate Condition name',
  `condition_value` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Rate condition value',
  `price` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Price',
  `cost` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Cost',
  PRIMARY KEY (`pk`),
  UNIQUE KEY `UNQ_D60821CDB2AFACEE1566CFC02D0D4CAA` (`website_id`,`dest_country_id`,`dest_region_id`,`dest_zip`,`condition_name`,`condition_value`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Shipping Tablerate';

--
-- Table structure for table `sitemap`
--

DROP TABLE IF EXISTS `sitemap`;
CREATE TABLE `sitemap` (
  `sitemap_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Sitemap Id',
  `sitemap_type` varchar(32) DEFAULT NULL COMMENT 'Sitemap Type',
  `sitemap_filename` varchar(32) DEFAULT NULL COMMENT 'Sitemap Filename',
  `sitemap_path` varchar(255) DEFAULT NULL COMMENT 'Sitemap Path',
  `sitemap_time` timestamp NULL DEFAULT NULL COMMENT 'Sitemap Time',
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Store id',
  PRIMARY KEY (`sitemap_id`),
  KEY `SITEMAP_STORE_ID` (`store_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='XML Sitemap';

--
-- Table structure for table `store`
--

DROP TABLE IF EXISTS `store`;
CREATE TABLE `store` (
  `store_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Store Id',
  `code` varchar(32) DEFAULT NULL COMMENT 'Code',
  `website_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Website Id',
  `group_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Group Id',
  `name` varchar(255) NOT NULL COMMENT 'Store Name',
  `sort_order` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Store Sort Order',
  `is_active` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Store Activity',
  PRIMARY KEY (`store_id`),
  UNIQUE KEY `STORE_CODE` (`code`),
  KEY `STORE_WEBSITE_ID` (`website_id`),
  KEY `STORE_IS_ACTIVE_SORT_ORDER` (`is_active`,`sort_order`),
  KEY `STORE_GROUP_ID` (`group_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='Stores';

--
-- Dumping data for table `store`
--

LOCK TABLES `store` WRITE;
/*!40000 ALTER TABLE `store` DISABLE KEYS */;
INSERT INTO `store` VALUES (0,'admin',0,0,'Admin',0,1),(2,'prof_view_fr',2,2,'fr',0,1),(3,'prof_view_de',2,2,'de',0,1),(4,'priv_view_fr',3,3,'fr',0,1),(5,'priv_view_de',3,3,'de',0,1),(6,'inact_view',4,4,'inact',10,1);
/*!40000 ALTER TABLE `store` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `store_group`
--

DROP TABLE IF EXISTS `store_group`;
CREATE TABLE `store_group` (
  `group_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Group Id',
  `website_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Website Id',
  `name` varchar(255) NOT NULL COMMENT 'Store Group Name',
  `root_category_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Root Category Id',
  `default_store_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Default Store Id',
  PRIMARY KEY (`group_id`),
  KEY `STORE_GROUP_WEBSITE_ID` (`website_id`),
  KEY `STORE_GROUP_DEFAULT_STORE_ID` (`default_store_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='Store Groups';

--
-- Dumping data for table `store_group`
--

LOCK TABLES `store_group` WRITE;
/*!40000 ALTER TABLE `store_group` DISABLE KEYS */;
INSERT INTO `store_group` VALUES (0,0,'Default','0',0),(2,2,'prof_store','3',2),(3,3,'priv_store','19',4),(4,4,'inact_store','23',6);
/*!40000 ALTER TABLE `store_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `store_website`
--

DROP TABLE IF EXISTS `store_website`;
CREATE TABLE `store_website` (
  `website_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Website Id',
  `code` varchar(32) DEFAULT NULL COMMENT 'Code',
  `name` varchar(64) DEFAULT NULL COMMENT 'Website Name',
  `sort_order` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Sort Order',
  `default_group_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Default Group Id',
  `is_default` smallint(5) unsigned DEFAULT '0' COMMENT 'Defines Is Website Default',
  PRIMARY KEY (`website_id`),
  UNIQUE KEY `STORE_WEBSITE_CODE` (`code`),
  KEY `STORE_WEBSITE_SORT_ORDER` (`sort_order`),
  KEY `STORE_WEBSITE_DEFAULT_GROUP_ID` (`default_group_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='Websites';

--
-- Dumping data for table `store_website`
--

LOCK TABLES `store_website` WRITE;
/*!40000 ALTER TABLE `store_website` DISABLE KEYS */;
INSERT INTO `store_website` VALUES (0,'admin','Admin',0,0,0),(2,'prof','professionals',0,2,1),(3,'priv','privates',9,3,0),(4,'inact','inactives',10,4,0);
/*!40000 ALTER TABLE `store_website` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tax_calculation`
--

DROP TABLE IF EXISTS `tax_calculation`;
CREATE TABLE `tax_calculation` (
  `tax_calculation_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Tax Calculation Id',
  `tax_calculation_rate_id` int(11) NOT NULL COMMENT 'Tax Calculation Rate Id',
  `tax_calculation_rule_id` int(11) NOT NULL COMMENT 'Tax Calculation Rule Id',
  `customer_tax_class_id` smallint(6) NOT NULL COMMENT 'Customer Tax Class Id',
  `product_tax_class_id` smallint(6) NOT NULL COMMENT 'Product Tax Class Id',
  PRIMARY KEY (`tax_calculation_id`),
  KEY `TAX_CALCULATION_TAX_CALCULATION_RULE_ID` (`tax_calculation_rule_id`),
  KEY `TAX_CALCULATION_CUSTOMER_TAX_CLASS_ID` (`customer_tax_class_id`),
  KEY `TAX_CALCULATION_PRODUCT_TAX_CLASS_ID` (`product_tax_class_id`),
  KEY `TAX_CALC_TAX_CALC_RATE_ID_CSTR_TAX_CLASS_ID_PRD_TAX_CLASS_ID` (`tax_calculation_rate_id`,`customer_tax_class_id`,`product_tax_class_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Tax Calculation';

--
-- Table structure for table `tax_calculation_rate`
--

DROP TABLE IF EXISTS `tax_calculation_rate`;
CREATE TABLE `tax_calculation_rate` (
  `tax_calculation_rate_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Tax Calculation Rate Id',
  `tax_country_id` varchar(2) NOT NULL COMMENT 'Tax Country Id',
  `tax_region_id` int(11) NOT NULL COMMENT 'Tax Region Id',
  `tax_postcode` varchar(21) DEFAULT NULL COMMENT 'Tax Postcode',
  `code` varchar(255) NOT NULL COMMENT 'Code',
  `rate` decimal(12,4) NOT NULL COMMENT 'Rate',
  `zip_is_range` smallint(6) DEFAULT NULL COMMENT 'Zip Is Range',
  `zip_from` int(10) unsigned DEFAULT NULL COMMENT 'Zip From',
  `zip_to` int(10) unsigned DEFAULT NULL COMMENT 'Zip To',
  PRIMARY KEY (`tax_calculation_rate_id`),
  KEY `TAX_CALCULATION_RATE_TAX_COUNTRY_ID_TAX_REGION_ID_TAX_POSTCODE` (`tax_country_id`,`tax_region_id`,`tax_postcode`),
  KEY `TAX_CALCULATION_RATE_CODE` (`code`),
  KEY `IDX_CA799F1E2CB843495F601E56C84A626D` (`tax_calculation_rate_id`,`tax_country_id`,`tax_region_id`,`zip_is_range`,`tax_postcode`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='Tax Calculation Rate';

--
-- Dumping data for table `tax_calculation_rate`
--

LOCK TABLES `tax_calculation_rate` WRITE;
/*!40000 ALTER TABLE `tax_calculation_rate` DISABLE KEYS */;
INSERT INTO `tax_calculation_rate` VALUES ('1','US','12','*','US-CA-*-Rate 1','8.2500',NULL,NULL,NULL),('2','US','43','*','US-NY-*-Rate 1','8.3750',NULL,NULL,NULL);
/*!40000 ALTER TABLE `tax_calculation_rate` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tax_calculation_rate_title`
--

DROP TABLE IF EXISTS `tax_calculation_rate_title`;
CREATE TABLE `tax_calculation_rate_title` (
  `tax_calculation_rate_title_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Tax Calculation Rate Title Id',
  `tax_calculation_rate_id` int(11) NOT NULL COMMENT 'Tax Calculation Rate Id',
  `store_id` smallint(5) unsigned NOT NULL COMMENT 'Store Id',
  `value` varchar(255) NOT NULL COMMENT 'Value',
  PRIMARY KEY (`tax_calculation_rate_title_id`),
  KEY `TAX_CALCULATION_RATE_TITLE_TAX_CALCULATION_RATE_ID_STORE_ID` (`tax_calculation_rate_id`,`store_id`),
  KEY `TAX_CALCULATION_RATE_TITLE_STORE_ID` (`store_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Tax Calculation Rate Title';

--
-- Table structure for table `tax_calculation_rule`
--

DROP TABLE IF EXISTS `tax_calculation_rule`;
CREATE TABLE `tax_calculation_rule` (
  `tax_calculation_rule_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Tax Calculation Rule Id',
  `code` varchar(255) NOT NULL COMMENT 'Code',
  `priority` int(11) NOT NULL COMMENT 'Priority',
  `position` int(11) NOT NULL COMMENT 'Position',
  `calculate_subtotal` int(11) NOT NULL COMMENT 'Calculate off subtotal option',
  PRIMARY KEY (`tax_calculation_rule_id`),
  KEY `TAX_CALCULATION_RULE_PRIORITY_POSITION` (`priority`,`position`),
  KEY `TAX_CALCULATION_RULE_CODE` (`code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Tax Calculation Rule';

--
-- Table structure for table `tax_class`
--

DROP TABLE IF EXISTS `tax_class`;
CREATE TABLE `tax_class` (
  `class_id` smallint(6) NOT NULL AUTO_INCREMENT COMMENT 'Class Id',
  `class_name` varchar(255) NOT NULL COMMENT 'Class Name',
  `class_type` varchar(8) NOT NULL DEFAULT 'CUSTOMER' COMMENT 'Class Type',
  PRIMARY KEY (`class_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='Tax Class';

--
-- Dumping data for table `tax_class`
--

LOCK TABLES `tax_class` WRITE;
/*!40000 ALTER TABLE `tax_class` DISABLE KEYS */;
INSERT INTO `tax_class` VALUES (2,'Taxable Goods','PRODUCT'),(3,'Retail Customer','CUSTOMER'),(4,'TVA taux normal','PRODUCT');
/*!40000 ALTER TABLE `tax_class` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tax_order_aggregated_created`
--

DROP TABLE IF EXISTS `tax_order_aggregated_created`;
CREATE TABLE `tax_order_aggregated_created` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Id',
  `period` date DEFAULT NULL COMMENT 'Period',
  `store_id` smallint(5) unsigned DEFAULT NULL COMMENT 'Store Id',
  `code` varchar(255) NOT NULL COMMENT 'Code',
  `order_status` varchar(50) NOT NULL COMMENT 'Order Status',
  `percent` float DEFAULT NULL COMMENT 'Percent',
  `orders_count` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Orders Count',
  `tax_base_amount_sum` float DEFAULT NULL COMMENT 'Tax Base Amount Sum',
  PRIMARY KEY (`id`),
  UNIQUE KEY `TAX_ORDER_AGGRED_CREATED_PERIOD_STORE_ID_CODE_PERCENT_ORDER_STS` (`period`,`store_id`,`code`,`percent`,`order_status`),
  KEY `TAX_ORDER_AGGREGATED_CREATED_STORE_ID` (`store_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Tax Order Aggregation';

--
-- Table structure for table `tax_order_aggregated_updated`
--

DROP TABLE IF EXISTS `tax_order_aggregated_updated`;
CREATE TABLE `tax_order_aggregated_updated` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Id',
  `period` date DEFAULT NULL COMMENT 'Period',
  `store_id` smallint(5) unsigned DEFAULT NULL COMMENT 'Store Id',
  `code` varchar(255) NOT NULL COMMENT 'Code',
  `order_status` varchar(50) NOT NULL COMMENT 'Order Status',
  `percent` float DEFAULT NULL COMMENT 'Percent',
  `orders_count` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Orders Count',
  `tax_base_amount_sum` float DEFAULT NULL COMMENT 'Tax Base Amount Sum',
  PRIMARY KEY (`id`),
  UNIQUE KEY `TAX_ORDER_AGGRED_UPDATED_PERIOD_STORE_ID_CODE_PERCENT_ORDER_STS` (`period`,`store_id`,`code`,`percent`,`order_status`),
  KEY `TAX_ORDER_AGGREGATED_UPDATED_STORE_ID` (`store_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Tax Order Aggregated Updated';

--
-- Table structure for table `theme`
--

DROP TABLE IF EXISTS `theme`;
CREATE TABLE `theme` (
  `theme_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Theme identifier',
  `parent_id` int(11) DEFAULT NULL COMMENT 'Parent Id',
  `theme_path` varchar(255) DEFAULT NULL COMMENT 'Theme Path',
  `theme_title` varchar(255) NOT NULL COMMENT 'Theme Title',
  `preview_image` varchar(255) DEFAULT NULL COMMENT 'Preview Image',
  `is_featured` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'Is Theme Featured',
  `area` varchar(255) NOT NULL COMMENT 'Theme Area',
  `type` smallint(6) NOT NULL COMMENT 'Theme type: 0:physical, 1:virtual, 2:staging',
  `code` text COMMENT 'Full theme code, including package',
  PRIMARY KEY (`theme_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='Core theme';

--
-- Dumping data for table `theme`
--

LOCK TABLES `theme` WRITE;
/*!40000 ALTER TABLE `theme` DISABLE KEYS */;
INSERT INTO `theme` VALUES ('1',NULL,'Magento/blank','Magento Blank','preview_image_59c23629187e8.jpeg',0,'frontend',0,'Magento/blank'),('2','1','Magento/luma','Magento Luma','preview_image_59c236293f449.jpeg',0,'frontend',0,'Magento/luma'),('3',NULL,'Magento/backend','Magento 2 backend',NULL,0,'adminhtml',0,'Magento/backend'),('4','2','Syscon/fournierbois','Syscon Fournierbois','preview_image_59c378b36882d.jpeg',0,'frontend',0,'Syscon/fournierbois');
/*!40000 ALTER TABLE `theme` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `theme_file`
--

DROP TABLE IF EXISTS `theme_file`;
CREATE TABLE `theme_file` (
  `theme_files_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Theme files identifier',
  `theme_id` int(10) unsigned NOT NULL COMMENT 'Theme Id',
  `file_path` varchar(255) DEFAULT NULL COMMENT 'Relative path to file',
  `file_type` varchar(32) NOT NULL COMMENT 'File Type',
  `content` longtext NOT NULL COMMENT 'File Content',
  `sort_order` smallint(6) NOT NULL DEFAULT '0' COMMENT 'Sort Order',
  `is_temporary` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'Is Temporary File',
  PRIMARY KEY (`theme_files_id`),
  KEY `THEME_FILE_THEME_ID_THEME_THEME_ID` (`theme_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Core theme files';

--
-- Table structure for table `translation`
--

DROP TABLE IF EXISTS `translation`;
CREATE TABLE `translation` (
  `key_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Key Id of Translation',
  `string` varchar(255) NOT NULL DEFAULT 'Translate String' COMMENT 'Translation String',
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Store Id',
  `translate` varchar(255) DEFAULT NULL COMMENT 'Translate',
  `locale` varchar(20) NOT NULL DEFAULT 'en_US' COMMENT 'Locale',
  `crc_string` bigint(20) NOT NULL DEFAULT '1591228201' COMMENT 'Translation String CRC32 Hash',
  PRIMARY KEY (`key_id`),
  UNIQUE KEY `TRANSLATION_STORE_ID_LOCALE_CRC_STRING_STRING` (`store_id`,`locale`,`crc_string`,`string`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Translations';

--
-- Table structure for table `ui_bookmark`
--

DROP TABLE IF EXISTS `ui_bookmark`;
CREATE TABLE `ui_bookmark` (
  `bookmark_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Bookmark identifier',
  `user_id` int(10) unsigned NOT NULL COMMENT 'User Id',
  `namespace` varchar(255) NOT NULL COMMENT 'Bookmark namespace',
  `identifier` varchar(255) NOT NULL COMMENT 'Bookmark Identifier',
  `current` smallint(6) NOT NULL COMMENT 'Mark current bookmark per user and identifier',
  `title` varchar(255) DEFAULT NULL COMMENT 'Bookmark title',
  `config` longtext COMMENT 'Bookmark config',
  `created_at` datetime NOT NULL COMMENT 'Bookmark created at',
  `updated_at` datetime NOT NULL COMMENT 'Bookmark updated at',
  PRIMARY KEY (`bookmark_id`),
  KEY `UI_BOOKMARK_USER_ID_NAMESPACE_IDENTIFIER` (`user_id`,`namespace`,`identifier`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8 COMMENT='Bookmark';

--
-- Dumping data for table `ui_bookmark`
--

LOCK TABLES `ui_bookmark` WRITE;
/*!40000 ALTER TABLE `ui_bookmark` DISABLE KEYS */;
INSERT INTO `ui_bookmark` VALUES ('1','1','product_listing','default',1,'Default View','{\"views\":{\"default\":{\"label\":\"Default View\",\"index\":\"default\",\"editable\":false,\"data\":{\"filters\":{\"applied\":{\"placeholder\":true}},\"columns\":{\"entity_id\":{\"visible\":true,\"sorting\":\"asc\"},\"name\":{\"visible\":true,\"sorting\":false},\"sku\":{\"visible\":true,\"sorting\":false},\"price\":{\"visible\":true,\"sorting\":false},\"websites\":{\"visible\":true,\"sorting\":false},\"qty\":{\"visible\":true,\"sorting\":false},\"short_description\":{\"visible\":false,\"sorting\":false},\"special_price\":{\"visible\":false,\"sorting\":false},\"cost\":{\"visible\":false,\"sorting\":false},\"weight\":{\"visible\":false,\"sorting\":false},\"meta_title\":{\"visible\":false,\"sorting\":false},\"meta_keyword\":{\"visible\":false,\"sorting\":false},\"meta_description\":{\"visible\":false,\"sorting\":false},\"url_key\":{\"visible\":false,\"sorting\":false},\"msrp\":{\"visible\":false,\"sorting\":false},\"ids\":{\"visible\":true,\"sorting\":false},\"type_id\":{\"visible\":true,\"sorting\":false},\"attribute_set_id\":{\"visible\":true,\"sorting\":false},\"visibility\":{\"visible\":true,\"sorting\":false},\"status\":{\"visible\":true,\"sorting\":false},\"manufacturer\":{\"visible\":false,\"sorting\":false},\"color\":{\"visible\":false,\"sorting\":false},\"custom_design\":{\"visible\":false,\"sorting\":false},\"page_layout\":{\"visible\":false,\"sorting\":false},\"country_of_manufacture\":{\"visible\":false,\"sorting\":false},\"custom_layout\":{\"visible\":false,\"sorting\":false},\"tax_class_id\":{\"visible\":false,\"sorting\":false},\"gift_message_available\":{\"visible\":false,\"sorting\":false},\"actions\":{\"visible\":true,\"sorting\":false},\"thumbnail\":{\"visible\":true,\"sorting\":false},\"special_from_date\":{\"visible\":false,\"sorting\":false},\"special_to_date\":{\"visible\":false,\"sorting\":false},\"news_from_date\":{\"visible\":false,\"sorting\":false},\"news_to_date\":{\"visible\":false,\"sorting\":false},\"custom_design_from\":{\"visible\":false,\"sorting\":false},\"custom_design_to\":{\"visible\":false,\"sorting\":false}},\"paging\":{\"options\":{\"20\":{\"value\":20,\"label\":20},\"30\":{\"value\":30,\"label\":30},\"50\":{\"value\":50,\"label\":50},\"100\":{\"value\":100,\"label\":100},\"200\":{\"value\":200,\"label\":200}},\"value\":20},\"displayMode\":\"grid\",\"positions\":{\"ids\":0,\"entity_id\":1,\"thumbnail\":2,\"name\":3,\"type_id\":4,\"attribute_set_id\":5,\"sku\":6,\"price\":7,\"qty\":8,\"visibility\":9,\"status\":10,\"websites\":11,\"short_description\":12,\"special_price\":13,\"special_from_date\":14,\"special_to_date\":15,\"cost\":16,\"weight\":17,\"manufacturer\":18,\"meta_title\":19,\"meta_keyword\":20,\"meta_description\":21,\"color\":22,\"news_from_date\":23,\"news_to_date\":24,\"custom_design\":25,\"custom_design_from\":26,\"custom_design_to\":27,\"page_layout\":28,\"country_of_manufacture\":29,\"custom_layout\":30,\"url_key\":31,\"msrp\":32,\"tax_class_id\":33,\"gift_message_available\":34,\"actions\":35}},\"value\":\"Default View\"}}}','0000-00-00 00:00:00','0000-00-00 00:00:00'),('2','1','product_listing','current',0,NULL,'{\"current\":{\"filters\":{\"applied\":{\"placeholder\":true}},\"columns\":{\"entity_id\":{\"visible\":true,\"sorting\":\"asc\"},\"name\":{\"visible\":true,\"sorting\":false},\"sku\":{\"visible\":true,\"sorting\":false},\"price\":{\"visible\":true,\"sorting\":false},\"websites\":{\"visible\":true,\"sorting\":false},\"qty\":{\"visible\":true,\"sorting\":false},\"short_description\":{\"visible\":false,\"sorting\":false},\"special_price\":{\"visible\":false,\"sorting\":false},\"cost\":{\"visible\":false,\"sorting\":false},\"weight\":{\"visible\":false,\"sorting\":false},\"meta_title\":{\"visible\":false,\"sorting\":false},\"meta_keyword\":{\"visible\":false,\"sorting\":false},\"meta_description\":{\"visible\":false,\"sorting\":false},\"url_key\":{\"visible\":false,\"sorting\":false},\"msrp\":{\"visible\":false,\"sorting\":false},\"ids\":{\"visible\":true,\"sorting\":false},\"type_id\":{\"visible\":true,\"sorting\":false},\"attribute_set_id\":{\"visible\":true,\"sorting\":false},\"visibility\":{\"visible\":true,\"sorting\":false},\"status\":{\"visible\":true,\"sorting\":false},\"manufacturer\":{\"visible\":false,\"sorting\":false},\"color\":{\"visible\":false,\"sorting\":false},\"custom_design\":{\"visible\":false,\"sorting\":false},\"page_layout\":{\"visible\":false,\"sorting\":false},\"country_of_manufacture\":{\"visible\":false,\"sorting\":false},\"custom_layout\":{\"visible\":false,\"sorting\":false},\"tax_class_id\":{\"visible\":false,\"sorting\":false},\"gift_message_available\":{\"visible\":false,\"sorting\":false},\"actions\":{\"visible\":true,\"sorting\":false},\"thumbnail\":{\"visible\":true,\"sorting\":false},\"special_from_date\":{\"visible\":false,\"sorting\":false},\"special_to_date\":{\"visible\":false,\"sorting\":false},\"news_from_date\":{\"visible\":false,\"sorting\":false},\"news_to_date\":{\"visible\":false,\"sorting\":false},\"custom_design_from\":{\"visible\":false,\"sorting\":false},\"custom_design_to\":{\"visible\":false,\"sorting\":false},\"product_nbr\":{\"visible\":true,\"sorting\":false}},\"paging\":{\"options\":{\"20\":{\"value\":20,\"label\":20},\"30\":{\"value\":30,\"label\":30},\"50\":{\"value\":50,\"label\":50},\"100\":{\"value\":100,\"label\":100},\"200\":{\"value\":200,\"label\":200}},\"value\":20},\"displayMode\":\"grid\",\"positions\":{\"ids\":0,\"entity_id\":1,\"thumbnail\":2,\"name\":3,\"type_id\":4,\"attribute_set_id\":5,\"sku\":6,\"price\":7,\"qty\":8,\"visibility\":9,\"status\":10,\"websites\":11,\"short_description\":12,\"special_price\":13,\"special_from_date\":14,\"special_to_date\":15,\"cost\":16,\"weight\":17,\"manufacturer\":18,\"meta_title\":19,\"meta_keyword\":20,\"meta_description\":21,\"color\":22,\"news_from_date\":23,\"news_to_date\":24,\"custom_design\":25,\"custom_design_from\":26,\"custom_design_to\":27,\"page_layout\":28,\"country_of_manufacture\":29,\"custom_layout\":30,\"url_key\":31,\"msrp\":32,\"tax_class_id\":33,\"gift_message_available\":34,\"actions\":35,\"product_nbr\":36}}}','0000-00-00 00:00:00','0000-00-00 00:00:00'),('3','1','customer_listing','default',1,'Default View','{\"views\":{\"default\":{\"label\":\"Default View\",\"index\":\"default\",\"editable\":false,\"data\":{\"filters\":{\"applied\":{\"placeholder\":true}},\"columns\":{\"entity_id\":{\"visible\":true,\"sorting\":\"asc\"},\"name\":{\"visible\":true,\"sorting\":false},\"email\":{\"visible\":true,\"sorting\":false},\"billing_telephone\":{\"visible\":true,\"sorting\":false},\"billing_postcode\":{\"visible\":true,\"sorting\":false},\"billing_region\":{\"visible\":true,\"sorting\":false},\"confirmation\":{\"visible\":true,\"sorting\":false},\"created_in\":{\"visible\":true,\"sorting\":false},\"billing_full\":{\"visible\":false,\"sorting\":false},\"shipping_full\":{\"visible\":false,\"sorting\":false},\"taxvat\":{\"visible\":true,\"sorting\":false},\"billing_street\":{\"visible\":false,\"sorting\":false},\"billing_city\":{\"visible\":false,\"sorting\":false},\"billing_fax\":{\"visible\":false,\"sorting\":false},\"billing_vat_id\":{\"visible\":false,\"sorting\":false},\"billing_company\":{\"visible\":false,\"sorting\":false},\"billing_firstname\":{\"visible\":false,\"sorting\":false},\"billing_lastname\":{\"visible\":false,\"sorting\":false},\"lock_expires\":{\"visible\":false,\"sorting\":false},\"ids\":{\"visible\":true,\"sorting\":false},\"group_id\":{\"visible\":true,\"sorting\":false},\"billing_country_id\":{\"visible\":true,\"sorting\":false},\"website_id\":{\"visible\":true,\"sorting\":false},\"gender\":{\"visible\":true,\"sorting\":false},\"actions\":{\"visible\":true,\"sorting\":false},\"created_at\":{\"visible\":true,\"sorting\":false},\"dob\":{\"visible\":true,\"sorting\":false}},\"displayMode\":\"grid\",\"search\":{\"value\":\"\"},\"paging\":{\"options\":{\"20\":{\"value\":20,\"label\":20},\"30\":{\"value\":30,\"label\":30},\"50\":{\"value\":50,\"label\":50},\"100\":{\"value\":100,\"label\":100},\"200\":{\"value\":200,\"label\":200}},\"value\":20},\"positions\":{\"ids\":0,\"entity_id\":1,\"name\":2,\"email\":3,\"group_id\":4,\"billing_telephone\":5,\"billing_postcode\":6,\"billing_country_id\":7,\"billing_region\":8,\"created_at\":9,\"website_id\":10,\"confirmation\":11,\"created_in\":12,\"billing_full\":13,\"shipping_full\":14,\"dob\":15,\"taxvat\":16,\"gender\":17,\"billing_street\":18,\"billing_city\":19,\"billing_fax\":20,\"billing_vat_id\":21,\"billing_company\":22,\"billing_firstname\":23,\"billing_lastname\":24,\"lock_expires\":25,\"actions\":26}},\"value\":\"Default View\"}}}','0000-00-00 00:00:00','0000-00-00 00:00:00'),('4','1','customer_listing','current',0,NULL,'{\"current\":{\"filters\":{\"applied\":{\"placeholder\":true}},\"columns\":{\"entity_id\":{\"visible\":true,\"sorting\":\"asc\"},\"name\":{\"visible\":true,\"sorting\":false},\"email\":{\"visible\":true,\"sorting\":false},\"billing_telephone\":{\"visible\":true,\"sorting\":false},\"billing_postcode\":{\"visible\":true,\"sorting\":false},\"billing_region\":{\"visible\":true,\"sorting\":false},\"confirmation\":{\"visible\":true,\"sorting\":false},\"created_in\":{\"visible\":true,\"sorting\":false},\"billing_full\":{\"visible\":false,\"sorting\":false},\"shipping_full\":{\"visible\":false,\"sorting\":false},\"taxvat\":{\"visible\":true,\"sorting\":false},\"billing_street\":{\"visible\":false,\"sorting\":false},\"billing_city\":{\"visible\":false,\"sorting\":false},\"billing_fax\":{\"visible\":false,\"sorting\":false},\"billing_vat_id\":{\"visible\":false,\"sorting\":false},\"billing_company\":{\"visible\":false,\"sorting\":false},\"billing_firstname\":{\"visible\":false,\"sorting\":false},\"billing_lastname\":{\"visible\":false,\"sorting\":false},\"lock_expires\":{\"visible\":false,\"sorting\":false},\"ids\":{\"visible\":true,\"sorting\":false},\"group_id\":{\"visible\":true,\"sorting\":false},\"billing_country_id\":{\"visible\":true,\"sorting\":false},\"website_id\":{\"visible\":true,\"sorting\":false},\"gender\":{\"visible\":true,\"sorting\":false},\"actions\":{\"visible\":true,\"sorting\":false},\"created_at\":{\"visible\":true,\"sorting\":false},\"dob\":{\"visible\":true,\"sorting\":false}},\"displayMode\":\"grid\",\"search\":{\"value\":\"\"},\"paging\":{\"options\":{\"20\":{\"value\":20,\"label\":20},\"30\":{\"value\":30,\"label\":30},\"50\":{\"value\":50,\"label\":50},\"100\":{\"value\":100,\"label\":100},\"200\":{\"value\":200,\"label\":200}},\"value\":20},\"positions\":{\"ids\":0,\"entity_id\":1,\"name\":2,\"email\":3,\"group_id\":4,\"billing_telephone\":5,\"billing_postcode\":6,\"billing_country_id\":7,\"billing_region\":8,\"created_at\":9,\"website_id\":10,\"confirmation\":11,\"created_in\":12,\"billing_full\":13,\"shipping_full\":14,\"dob\":15,\"taxvat\":16,\"gender\":17,\"billing_street\":18,\"billing_city\":19,\"billing_fax\":20,\"billing_vat_id\":21,\"billing_company\":22,\"billing_firstname\":23,\"billing_lastname\":24,\"lock_expires\":25,\"actions\":26}}}','0000-00-00 00:00:00','0000-00-00 00:00:00'),('5','1','design_config_listing','default',1,'Default View','{\"views\":{\"default\":{\"label\":\"Default View\",\"index\":\"default\",\"editable\":false,\"data\":{\"columns\":{\"default\":{\"visible\":true,\"sorting\":false},\"theme_theme_id\":{\"visible\":true,\"sorting\":false},\"store_website_id\":{\"visible\":true,\"sorting\":false},\"store_group_id\":{\"visible\":true,\"sorting\":false},\"store_id\":{\"visible\":true,\"sorting\":false},\"actions\":{\"visible\":true,\"sorting\":false}},\"filters\":{\"applied\":{\"placeholder\":true}},\"displayMode\":\"grid\",\"positions\":{\"default\":0,\"store_website_id\":1,\"store_group_id\":2,\"store_id\":3,\"theme_theme_id\":4,\"actions\":5},\"paging\":{\"options\":{\"20\":{\"value\":20,\"label\":20},\"30\":{\"value\":30,\"label\":30},\"50\":{\"value\":50,\"label\":50},\"100\":{\"value\":100,\"label\":100},\"200\":{\"value\":200,\"label\":200}},\"value\":20}},\"value\":\"Default View\"}}}','0000-00-00 00:00:00','0000-00-00 00:00:00'),('6','1','design_config_listing','current',0,NULL,'{\"current\":{\"columns\":{\"default\":{\"visible\":true,\"sorting\":false},\"theme_theme_id\":{\"visible\":true,\"sorting\":false},\"store_website_id\":{\"visible\":true,\"sorting\":false},\"store_group_id\":{\"visible\":true,\"sorting\":false},\"store_id\":{\"visible\":true,\"sorting\":false},\"actions\":{\"visible\":true,\"sorting\":false}},\"filters\":{\"applied\":{\"placeholder\":true}},\"displayMode\":\"grid\",\"positions\":{\"default\":0,\"store_website_id\":1,\"store_group_id\":2,\"store_id\":3,\"theme_theme_id\":4,\"actions\":5},\"paging\":{\"options\":{\"20\":{\"value\":20,\"label\":20},\"30\":{\"value\":30,\"label\":30},\"50\":{\"value\":50,\"label\":50},\"100\":{\"value\":100,\"label\":100},\"200\":{\"value\":200,\"label\":200}},\"value\":20}}}','0000-00-00 00:00:00','0000-00-00 00:00:00'),('7','1','cms_page_listing','default',1,'Default View','{\"views\":{\"default\":{\"label\":\"Default View\",\"index\":\"default\",\"editable\":false,\"data\":{\"columns\":{\"page_id\":{\"visible\":true,\"sorting\":\"asc\"},\"title\":{\"visible\":true,\"sorting\":false},\"identifier\":{\"visible\":true,\"sorting\":false},\"store_id\":{\"visible\":true,\"sorting\":false},\"meta_title\":{\"visible\":false,\"sorting\":false},\"meta_keywords\":{\"visible\":false,\"sorting\":false},\"meta_description\":{\"visible\":false,\"sorting\":false},\"ids\":{\"visible\":true,\"sorting\":false},\"page_layout\":{\"visible\":true,\"sorting\":false},\"is_active\":{\"visible\":true,\"sorting\":false},\"custom_theme\":{\"visible\":false,\"sorting\":false},\"custom_root_template\":{\"visible\":false,\"sorting\":false},\"actions\":{\"visible\":true,\"sorting\":false},\"creation_time\":{\"visible\":true,\"sorting\":false},\"update_time\":{\"visible\":true,\"sorting\":false},\"custom_theme_from\":{\"visible\":false,\"sorting\":false},\"custom_theme_to\":{\"visible\":false,\"sorting\":false}},\"displayMode\":\"grid\",\"paging\":{\"options\":{\"20\":{\"value\":20,\"label\":20},\"30\":{\"value\":30,\"label\":30},\"50\":{\"value\":50,\"label\":50},\"100\":{\"value\":100,\"label\":100},\"200\":{\"value\":200,\"label\":200}},\"value\":20},\"search\":{\"value\":\"\"},\"positions\":{\"ids\":0,\"page_id\":1,\"title\":2,\"identifier\":3,\"page_layout\":4,\"store_id\":5,\"is_active\":6,\"creation_time\":7,\"update_time\":8,\"custom_theme_from\":9,\"custom_theme_to\":10,\"custom_theme\":11,\"custom_root_template\":12,\"meta_title\":13,\"meta_keywords\":14,\"meta_description\":15,\"actions\":16},\"filters\":{\"applied\":{\"placeholder\":true}}},\"value\":\"Default View\"}}}','0000-00-00 00:00:00','0000-00-00 00:00:00'),('8','1','cms_page_listing','current',0,NULL,'{\"current\":{\"columns\":{\"page_id\":{\"visible\":true,\"sorting\":\"asc\"},\"title\":{\"visible\":true,\"sorting\":false},\"identifier\":{\"visible\":true,\"sorting\":false},\"store_id\":{\"visible\":true,\"sorting\":false},\"meta_title\":{\"visible\":false,\"sorting\":false},\"meta_keywords\":{\"visible\":false,\"sorting\":false},\"meta_description\":{\"visible\":false,\"sorting\":false},\"ids\":{\"visible\":true,\"sorting\":false},\"page_layout\":{\"visible\":true,\"sorting\":false},\"is_active\":{\"visible\":true,\"sorting\":false},\"custom_theme\":{\"visible\":false,\"sorting\":false},\"custom_root_template\":{\"visible\":false,\"sorting\":false},\"actions\":{\"visible\":true,\"sorting\":false},\"creation_time\":{\"visible\":true,\"sorting\":false},\"update_time\":{\"visible\":true,\"sorting\":false},\"custom_theme_from\":{\"visible\":false,\"sorting\":false},\"custom_theme_to\":{\"visible\":false,\"sorting\":false}},\"displayMode\":\"grid\",\"paging\":{\"options\":{\"20\":{\"value\":20,\"label\":20},\"30\":{\"value\":30,\"label\":30},\"50\":{\"value\":50,\"label\":50},\"100\":{\"value\":100,\"label\":100},\"200\":{\"value\":200,\"label\":200}},\"value\":20},\"search\":{\"value\":\"\"},\"positions\":{\"ids\":0,\"page_id\":1,\"title\":2,\"identifier\":3,\"page_layout\":4,\"store_id\":5,\"is_active\":6,\"creation_time\":7,\"update_time\":8,\"custom_theme_from\":9,\"custom_theme_to\":10,\"custom_theme\":11,\"custom_root_template\":12,\"meta_title\":13,\"meta_keywords\":14,\"meta_description\":15,\"actions\":16},\"filters\":{\"applied\":{\"placeholder\":true}}}}','0000-00-00 00:00:00','0000-00-00 00:00:00'),('9','1','cms_block_listing','default',1,'Default View','{\"views\":{\"default\":{\"label\":\"Default View\",\"index\":\"default\",\"editable\":false,\"data\":{\"search\":{\"value\":\"\"},\"filters\":{\"applied\":{\"placeholder\":true}},\"columns\":{\"block_id\":{\"visible\":true,\"sorting\":\"asc\"},\"title\":{\"visible\":true,\"sorting\":false},\"identifier\":{\"visible\":true,\"sorting\":false},\"store_id\":{\"visible\":true,\"sorting\":false},\"ids\":{\"visible\":true,\"sorting\":false},\"is_active\":{\"visible\":true,\"sorting\":false},\"actions\":{\"visible\":true,\"sorting\":false},\"creation_time\":{\"visible\":true,\"sorting\":false},\"update_time\":{\"visible\":true,\"sorting\":false}},\"displayMode\":\"grid\",\"paging\":{\"options\":{\"20\":{\"value\":20,\"label\":20},\"30\":{\"value\":30,\"label\":30},\"50\":{\"value\":50,\"label\":50},\"100\":{\"value\":100,\"label\":100},\"200\":{\"value\":200,\"label\":200}},\"value\":20},\"positions\":{\"ids\":0,\"block_id\":1,\"title\":2,\"identifier\":3,\"store_id\":4,\"is_active\":5,\"creation_time\":6,\"update_time\":7,\"actions\":8}},\"value\":\"Default View\"}}}','0000-00-00 00:00:00','0000-00-00 00:00:00'),('10','1','cms_block_listing','current',0,NULL,'{\"current\":{\"search\":{\"value\":\"\"},\"filters\":{\"applied\":{\"placeholder\":true}},\"columns\":{\"block_id\":{\"visible\":true,\"sorting\":\"asc\"},\"title\":{\"visible\":true,\"sorting\":false},\"identifier\":{\"visible\":true,\"sorting\":false},\"store_id\":{\"visible\":true,\"sorting\":false},\"ids\":{\"visible\":true,\"sorting\":false},\"is_active\":{\"visible\":true,\"sorting\":false},\"actions\":{\"visible\":true,\"sorting\":false},\"creation_time\":{\"visible\":true,\"sorting\":false},\"update_time\":{\"visible\":true,\"sorting\":false}},\"displayMode\":\"grid\",\"paging\":{\"options\":{\"20\":{\"value\":20,\"label\":20},\"30\":{\"value\":30,\"label\":30},\"50\":{\"value\":50,\"label\":50},\"100\":{\"value\":100,\"label\":100},\"200\":{\"value\":200,\"label\":200}},\"value\":20},\"positions\":{\"ids\":0,\"block_id\":1,\"title\":2,\"identifier\":3,\"store_id\":4,\"is_active\":5,\"creation_time\":6,\"update_time\":7,\"actions\":8}}}','0000-00-00 00:00:00','0000-00-00 00:00:00'),('11','1','sales_order_grid','default',1,'Default View','{\"views\":{\"default\":{\"label\":\"Default View\",\"index\":\"default\",\"editable\":false,\"data\":{\"columns\":{\"increment_id\":{\"visible\":true,\"sorting\":\"desc\"},\"store_id\":{\"visible\":true,\"sorting\":false},\"billing_name\":{\"visible\":true,\"sorting\":false},\"shipping_name\":{\"visible\":true,\"sorting\":false},\"base_grand_total\":{\"visible\":true,\"sorting\":false},\"grand_total\":{\"visible\":true,\"sorting\":false},\"billing_address\":{\"visible\":false,\"sorting\":false},\"shipping_address\":{\"visible\":false,\"sorting\":false},\"shipping_information\":{\"visible\":false,\"sorting\":false},\"customer_email\":{\"visible\":false,\"sorting\":false},\"subtotal\":{\"visible\":false,\"sorting\":false},\"shipping_and_handling\":{\"visible\":false,\"sorting\":false},\"customer_name\":{\"visible\":false,\"sorting\":false},\"total_refunded\":{\"visible\":false,\"sorting\":false},\"ids\":{\"visible\":true,\"sorting\":false},\"status\":{\"visible\":true,\"sorting\":false},\"customer_group\":{\"visible\":false,\"sorting\":false},\"payment_method\":{\"visible\":false,\"sorting\":false},\"actions\":{\"visible\":true,\"sorting\":false},\"created_at\":{\"visible\":true,\"sorting\":false}},\"displayMode\":\"grid\",\"paging\":{\"options\":{\"20\":{\"value\":20,\"label\":20},\"30\":{\"value\":30,\"label\":30},\"50\":{\"value\":50,\"label\":50},\"100\":{\"value\":100,\"label\":100},\"200\":{\"value\":200,\"label\":200}},\"value\":20},\"positions\":{\"ids\":0,\"increment_id\":1,\"store_id\":2,\"created_at\":3,\"billing_name\":4,\"shipping_name\":5,\"base_grand_total\":6,\"grand_total\":7,\"status\":8,\"billing_address\":9,\"shipping_address\":10,\"shipping_information\":11,\"customer_email\":12,\"customer_group\":13,\"subtotal\":14,\"shipping_and_handling\":15,\"customer_name\":16,\"payment_method\":17,\"total_refunded\":18,\"actions\":19},\"search\":{\"value\":\"\"},\"filters\":{\"applied\":{\"placeholder\":true}}},\"value\":\"Default View\"}}}','0000-00-00 00:00:00','0000-00-00 00:00:00'),('12','1','sales_order_grid','current',0,NULL,'{\"current\":{\"columns\":{\"increment_id\":{\"visible\":true,\"sorting\":\"desc\"},\"store_id\":{\"visible\":true,\"sorting\":false},\"billing_name\":{\"visible\":true,\"sorting\":false},\"shipping_name\":{\"visible\":true,\"sorting\":false},\"base_grand_total\":{\"visible\":true,\"sorting\":false},\"grand_total\":{\"visible\":true,\"sorting\":false},\"billing_address\":{\"visible\":false,\"sorting\":false},\"shipping_address\":{\"visible\":false,\"sorting\":false},\"shipping_information\":{\"visible\":false,\"sorting\":false},\"customer_email\":{\"visible\":false,\"sorting\":false},\"subtotal\":{\"visible\":false,\"sorting\":false},\"shipping_and_handling\":{\"visible\":false,\"sorting\":false},\"customer_name\":{\"visible\":false,\"sorting\":false},\"total_refunded\":{\"visible\":false,\"sorting\":false},\"ids\":{\"visible\":true,\"sorting\":false},\"status\":{\"visible\":true,\"sorting\":false},\"customer_group\":{\"visible\":false,\"sorting\":false},\"payment_method\":{\"visible\":false,\"sorting\":false},\"actions\":{\"visible\":true,\"sorting\":false},\"created_at\":{\"visible\":true,\"sorting\":false}},\"displayMode\":\"grid\",\"paging\":{\"options\":{\"20\":{\"value\":20,\"label\":20},\"30\":{\"value\":30,\"label\":30},\"50\":{\"value\":50,\"label\":50},\"100\":{\"value\":100,\"label\":100},\"200\":{\"value\":200,\"label\":200}},\"value\":20},\"positions\":{\"ids\":0,\"increment_id\":1,\"store_id\":2,\"created_at\":3,\"billing_name\":4,\"shipping_name\":5,\"base_grand_total\":6,\"grand_total\":7,\"status\":8,\"billing_address\":9,\"shipping_address\":10,\"shipping_information\":11,\"customer_email\":12,\"customer_group\":13,\"subtotal\":14,\"shipping_and_handling\":15,\"customer_name\":16,\"payment_method\":17,\"total_refunded\":18,\"actions\":19},\"search\":{\"value\":\"\"},\"filters\":{\"applied\":{\"placeholder\":true}}}}','0000-00-00 00:00:00','0000-00-00 00:00:00'),('13','2','product_listing','default',1,'Default View','{\"views\":{\"default\":{\"label\":\"Default View\",\"index\":\"default\",\"editable\":false,\"data\":{\"filters\":{\"applied\":{\"placeholder\":true}},\"columns\":{\"entity_id\":{\"visible\":true,\"sorting\":\"asc\"},\"name\":{\"visible\":true,\"sorting\":false},\"sku\":{\"visible\":true,\"sorting\":false},\"price\":{\"visible\":true,\"sorting\":false},\"websites\":{\"visible\":true,\"sorting\":false},\"qty\":{\"visible\":true,\"sorting\":false},\"short_description\":{\"visible\":false,\"sorting\":false},\"special_price\":{\"visible\":false,\"sorting\":false},\"cost\":{\"visible\":false,\"sorting\":false},\"weight\":{\"visible\":false,\"sorting\":false},\"meta_title\":{\"visible\":false,\"sorting\":false},\"meta_keyword\":{\"visible\":false,\"sorting\":false},\"meta_description\":{\"visible\":false,\"sorting\":false},\"url_key\":{\"visible\":false,\"sorting\":false},\"msrp\":{\"visible\":false,\"sorting\":false},\"product_nbr\":{\"visible\":true,\"sorting\":false},\"ids\":{\"visible\":true,\"sorting\":false},\"type_id\":{\"visible\":true,\"sorting\":false},\"attribute_set_id\":{\"visible\":true,\"sorting\":false},\"visibility\":{\"visible\":true,\"sorting\":false},\"status\":{\"visible\":true,\"sorting\":false},\"manufacturer\":{\"visible\":false,\"sorting\":false},\"color\":{\"visible\":false,\"sorting\":false},\"custom_design\":{\"visible\":false,\"sorting\":false},\"page_layout\":{\"visible\":false,\"sorting\":false},\"country_of_manufacture\":{\"visible\":false,\"sorting\":false},\"custom_layout\":{\"visible\":false,\"sorting\":false},\"tax_class_id\":{\"visible\":false,\"sorting\":false},\"gift_message_available\":{\"visible\":false,\"sorting\":false},\"actions\":{\"visible\":true,\"sorting\":false},\"thumbnail\":{\"visible\":true,\"sorting\":false},\"special_from_date\":{\"visible\":false,\"sorting\":false},\"special_to_date\":{\"visible\":false,\"sorting\":false},\"news_from_date\":{\"visible\":false,\"sorting\":false},\"news_to_date\":{\"visible\":false,\"sorting\":false},\"custom_design_from\":{\"visible\":false,\"sorting\":false},\"custom_design_to\":{\"visible\":false,\"sorting\":false}},\"displayMode\":\"grid\",\"paging\":{\"options\":{\"20\":{\"value\":20,\"label\":20},\"30\":{\"value\":30,\"label\":30},\"50\":{\"value\":50,\"label\":50},\"100\":{\"value\":100,\"label\":100},\"200\":{\"value\":200,\"label\":200}},\"value\":20},\"positions\":{\"ids\":0,\"entity_id\":1,\"thumbnail\":2,\"name\":3,\"type_id\":4,\"attribute_set_id\":5,\"sku\":6,\"price\":7,\"qty\":8,\"visibility\":9,\"status\":10,\"websites\":11,\"short_description\":12,\"special_price\":13,\"special_from_date\":14,\"special_to_date\":15,\"cost\":16,\"weight\":17,\"manufacturer\":18,\"meta_title\":19,\"meta_keyword\":20,\"meta_description\":21,\"color\":22,\"news_from_date\":23,\"news_to_date\":24,\"custom_design\":25,\"custom_design_from\":26,\"custom_design_to\":27,\"page_layout\":28,\"country_of_manufacture\":29,\"custom_layout\":30,\"url_key\":31,\"msrp\":32,\"tax_class_id\":33,\"gift_message_available\":34,\"product_nbr\":35,\"actions\":36}},\"value\":\"Default View\"}}}','0000-00-00 00:00:00','0000-00-00 00:00:00'),('14','2','product_listing','current',0,NULL,'{\"current\":{\"filters\":{\"applied\":{\"placeholder\":true}},\"columns\":{\"entity_id\":{\"visible\":true,\"sorting\":\"asc\"},\"name\":{\"visible\":true,\"sorting\":false},\"sku\":{\"visible\":true,\"sorting\":false},\"price\":{\"visible\":true,\"sorting\":false},\"websites\":{\"visible\":true,\"sorting\":false},\"qty\":{\"visible\":true,\"sorting\":false},\"short_description\":{\"visible\":false,\"sorting\":false},\"special_price\":{\"visible\":false,\"sorting\":false},\"cost\":{\"visible\":false,\"sorting\":false},\"weight\":{\"visible\":false,\"sorting\":false},\"meta_title\":{\"visible\":false,\"sorting\":false},\"meta_keyword\":{\"visible\":false,\"sorting\":false},\"meta_description\":{\"visible\":false,\"sorting\":false},\"url_key\":{\"visible\":false,\"sorting\":false},\"msrp\":{\"visible\":false,\"sorting\":false},\"product_nbr\":{\"visible\":true,\"sorting\":false},\"ids\":{\"visible\":true,\"sorting\":false},\"type_id\":{\"visible\":true,\"sorting\":false},\"attribute_set_id\":{\"visible\":true,\"sorting\":false},\"visibility\":{\"visible\":true,\"sorting\":false},\"status\":{\"visible\":true,\"sorting\":false},\"manufacturer\":{\"visible\":false,\"sorting\":false},\"color\":{\"visible\":false,\"sorting\":false},\"custom_design\":{\"visible\":false,\"sorting\":false},\"page_layout\":{\"visible\":false,\"sorting\":false},\"country_of_manufacture\":{\"visible\":false,\"sorting\":false},\"custom_layout\":{\"visible\":false,\"sorting\":false},\"tax_class_id\":{\"visible\":false,\"sorting\":false},\"gift_message_available\":{\"visible\":false,\"sorting\":false},\"actions\":{\"visible\":true,\"sorting\":false},\"thumbnail\":{\"visible\":true,\"sorting\":false},\"special_from_date\":{\"visible\":false,\"sorting\":false},\"special_to_date\":{\"visible\":false,\"sorting\":false},\"news_from_date\":{\"visible\":false,\"sorting\":false},\"news_to_date\":{\"visible\":false,\"sorting\":false},\"custom_design_from\":{\"visible\":false,\"sorting\":false},\"custom_design_to\":{\"visible\":false,\"sorting\":false}},\"displayMode\":\"grid\",\"paging\":{\"options\":{\"20\":{\"value\":20,\"label\":20},\"30\":{\"value\":30,\"label\":30},\"50\":{\"value\":50,\"label\":50},\"100\":{\"value\":100,\"label\":100},\"200\":{\"value\":200,\"label\":200}},\"value\":20},\"positions\":{\"ids\":0,\"entity_id\":1,\"thumbnail\":2,\"name\":3,\"type_id\":4,\"attribute_set_id\":5,\"sku\":6,\"price\":7,\"qty\":8,\"visibility\":9,\"status\":10,\"websites\":11,\"short_description\":12,\"special_price\":13,\"special_from_date\":14,\"special_to_date\":15,\"cost\":16,\"weight\":17,\"manufacturer\":18,\"meta_title\":19,\"meta_keyword\":20,\"meta_description\":21,\"color\":22,\"news_from_date\":23,\"news_to_date\":24,\"custom_design\":25,\"custom_design_from\":26,\"custom_design_to\":27,\"page_layout\":28,\"country_of_manufacture\":29,\"custom_layout\":30,\"url_key\":31,\"msrp\":32,\"tax_class_id\":33,\"gift_message_available\":34,\"product_nbr\":35,\"actions\":36}}}','0000-00-00 00:00:00','0000-00-00 00:00:00'),('15','2','customer_listing','default',1,'Default View','{\"views\":{\"default\":{\"label\":\"Default View\",\"index\":\"default\",\"editable\":false,\"data\":{\"filters\":{\"applied\":{\"placeholder\":true}},\"columns\":{\"entity_id\":{\"visible\":true,\"sorting\":\"asc\"},\"name\":{\"visible\":true,\"sorting\":false},\"email\":{\"visible\":true,\"sorting\":false},\"billing_telephone\":{\"visible\":true,\"sorting\":false},\"billing_postcode\":{\"visible\":true,\"sorting\":false},\"billing_region\":{\"visible\":true,\"sorting\":false},\"confirmation\":{\"visible\":true,\"sorting\":false},\"created_in\":{\"visible\":true,\"sorting\":false},\"billing_full\":{\"visible\":false,\"sorting\":false},\"shipping_full\":{\"visible\":false,\"sorting\":false},\"taxvat\":{\"visible\":true,\"sorting\":false},\"billing_street\":{\"visible\":false,\"sorting\":false},\"billing_city\":{\"visible\":false,\"sorting\":false},\"billing_fax\":{\"visible\":false,\"sorting\":false},\"billing_vat_id\":{\"visible\":false,\"sorting\":false},\"billing_company\":{\"visible\":false,\"sorting\":false},\"billing_firstname\":{\"visible\":false,\"sorting\":false},\"billing_lastname\":{\"visible\":false,\"sorting\":false},\"lock_expires\":{\"visible\":false,\"sorting\":false},\"ids\":{\"visible\":true,\"sorting\":false},\"group_id\":{\"visible\":true,\"sorting\":false},\"billing_country_id\":{\"visible\":true,\"sorting\":false},\"website_id\":{\"visible\":true,\"sorting\":false},\"gender\":{\"visible\":true,\"sorting\":false},\"actions\":{\"visible\":true,\"sorting\":false},\"created_at\":{\"visible\":true,\"sorting\":false},\"dob\":{\"visible\":true,\"sorting\":false}},\"displayMode\":\"grid\",\"paging\":{\"options\":{\"20\":{\"value\":20,\"label\":20},\"30\":{\"value\":30,\"label\":30},\"50\":{\"value\":50,\"label\":50},\"100\":{\"value\":100,\"label\":100},\"200\":{\"value\":200,\"label\":200}},\"value\":20},\"search\":{\"value\":\"\"},\"positions\":{\"ids\":0,\"entity_id\":1,\"name\":2,\"email\":3,\"group_id\":4,\"billing_telephone\":5,\"billing_postcode\":6,\"billing_country_id\":7,\"billing_region\":8,\"created_at\":9,\"website_id\":10,\"confirmation\":11,\"created_in\":12,\"billing_full\":13,\"shipping_full\":14,\"dob\":15,\"taxvat\":16,\"gender\":17,\"billing_street\":18,\"billing_city\":19,\"billing_fax\":20,\"billing_vat_id\":21,\"billing_company\":22,\"billing_firstname\":23,\"billing_lastname\":24,\"lock_expires\":25,\"actions\":26}},\"value\":\"Default View\"}}}','0000-00-00 00:00:00','0000-00-00 00:00:00'),('16','2','customer_listing','current',0,NULL,'{\"current\":{\"filters\":{\"applied\":{\"placeholder\":true}},\"columns\":{\"entity_id\":{\"visible\":true,\"sorting\":\"asc\"},\"name\":{\"visible\":true,\"sorting\":false},\"email\":{\"visible\":true,\"sorting\":false},\"billing_telephone\":{\"visible\":true,\"sorting\":false},\"billing_postcode\":{\"visible\":true,\"sorting\":false},\"billing_region\":{\"visible\":true,\"sorting\":false},\"confirmation\":{\"visible\":true,\"sorting\":false},\"created_in\":{\"visible\":true,\"sorting\":false},\"billing_full\":{\"visible\":false,\"sorting\":false},\"shipping_full\":{\"visible\":false,\"sorting\":false},\"taxvat\":{\"visible\":true,\"sorting\":false},\"billing_street\":{\"visible\":false,\"sorting\":false},\"billing_city\":{\"visible\":false,\"sorting\":false},\"billing_fax\":{\"visible\":false,\"sorting\":false},\"billing_vat_id\":{\"visible\":false,\"sorting\":false},\"billing_company\":{\"visible\":false,\"sorting\":false},\"billing_firstname\":{\"visible\":false,\"sorting\":false},\"billing_lastname\":{\"visible\":false,\"sorting\":false},\"lock_expires\":{\"visible\":false,\"sorting\":false},\"ids\":{\"visible\":true,\"sorting\":false},\"group_id\":{\"visible\":true,\"sorting\":false},\"billing_country_id\":{\"visible\":true,\"sorting\":false},\"website_id\":{\"visible\":true,\"sorting\":false},\"gender\":{\"visible\":true,\"sorting\":false},\"actions\":{\"visible\":true,\"sorting\":false},\"created_at\":{\"visible\":true,\"sorting\":false},\"dob\":{\"visible\":true,\"sorting\":false}},\"displayMode\":\"grid\",\"paging\":{\"options\":{\"20\":{\"value\":20,\"label\":20},\"30\":{\"value\":30,\"label\":30},\"50\":{\"value\":50,\"label\":50},\"100\":{\"value\":100,\"label\":100},\"200\":{\"value\":200,\"label\":200}},\"value\":20},\"search\":{\"value\":\"\"},\"positions\":{\"ids\":0,\"entity_id\":1,\"name\":2,\"email\":3,\"group_id\":4,\"billing_telephone\":5,\"billing_postcode\":6,\"billing_country_id\":7,\"billing_region\":8,\"created_at\":9,\"website_id\":10,\"confirmation\":11,\"created_in\":12,\"billing_full\":13,\"shipping_full\":14,\"dob\":15,\"taxvat\":16,\"gender\":17,\"billing_street\":18,\"billing_city\":19,\"billing_fax\":20,\"billing_vat_id\":21,\"billing_company\":22,\"billing_firstname\":23,\"billing_lastname\":24,\"lock_expires\":25,\"actions\":26}}}','0000-00-00 00:00:00','0000-00-00 00:00:00'),('17','2','design_config_listing','default',1,'Default View','{\"views\":{\"default\":{\"label\":\"Default View\",\"index\":\"default\",\"editable\":false,\"data\":{\"filters\":{\"applied\":{\"placeholder\":true}},\"columns\":{\"theme_theme_id\":{\"visible\":true,\"sorting\":false},\"store_website_id\":{\"visible\":true,\"sorting\":false},\"store_group_id\":{\"visible\":true,\"sorting\":false},\"store_id\":{\"visible\":true,\"sorting\":false},\"actions\":{\"visible\":true,\"sorting\":false},\"default\":{\"visible\":true,\"sorting\":false}},\"displayMode\":\"grid\",\"paging\":{\"options\":{\"20\":{\"value\":20,\"label\":20},\"30\":{\"value\":30,\"label\":30},\"50\":{\"value\":50,\"label\":50},\"100\":{\"value\":100,\"label\":100},\"200\":{\"value\":200,\"label\":200}},\"value\":20},\"positions\":{\"default\":0,\"store_website_id\":1,\"store_group_id\":2,\"store_id\":3,\"theme_theme_id\":4,\"actions\":5}},\"value\":\"Default View\"}}}','0000-00-00 00:00:00','0000-00-00 00:00:00'),('18','2','design_config_listing','current',0,NULL,'{\"current\":{\"filters\":{\"applied\":{\"placeholder\":true}},\"columns\":{\"theme_theme_id\":{\"visible\":true,\"sorting\":false},\"store_website_id\":{\"visible\":true,\"sorting\":false},\"store_group_id\":{\"visible\":true,\"sorting\":false},\"store_id\":{\"visible\":true,\"sorting\":false},\"actions\":{\"visible\":true,\"sorting\":false},\"default\":{\"visible\":true,\"sorting\":false}},\"displayMode\":\"grid\",\"paging\":{\"options\":{\"20\":{\"value\":20,\"label\":20},\"30\":{\"value\":30,\"label\":30},\"50\":{\"value\":50,\"label\":50},\"100\":{\"value\":100,\"label\":100},\"200\":{\"value\":200,\"label\":200}},\"value\":20},\"positions\":{\"default\":0,\"store_website_id\":1,\"store_group_id\":2,\"store_id\":3,\"theme_theme_id\":4,\"actions\":5}}}','0000-00-00 00:00:00','0000-00-00 00:00:00'),('19','2','cms_page_listing','current',0,NULL,'{\"current\":{\"filters\":{\"applied\":{\"placeholder\":true}},\"columns\":{\"page_id\":{\"visible\":true,\"sorting\":\"asc\"},\"title\":{\"visible\":true,\"sorting\":false},\"identifier\":{\"visible\":true,\"sorting\":false},\"store_id\":{\"visible\":true,\"sorting\":false},\"meta_title\":{\"visible\":false,\"sorting\":false},\"meta_keywords\":{\"visible\":false,\"sorting\":false},\"meta_description\":{\"visible\":false,\"sorting\":false},\"ids\":{\"visible\":true,\"sorting\":false},\"page_layout\":{\"visible\":true,\"sorting\":false},\"is_active\":{\"visible\":true,\"sorting\":false},\"custom_theme\":{\"visible\":false,\"sorting\":false},\"custom_root_template\":{\"visible\":false,\"sorting\":false},\"actions\":{\"visible\":true,\"sorting\":false},\"creation_time\":{\"visible\":true,\"sorting\":false},\"update_time\":{\"visible\":true,\"sorting\":false},\"custom_theme_from\":{\"visible\":false,\"sorting\":false},\"custom_theme_to\":{\"visible\":false,\"sorting\":false}},\"displayMode\":\"grid\",\"search\":{\"value\":\"\"},\"paging\":{\"options\":{\"20\":{\"value\":20,\"label\":20},\"30\":{\"value\":30,\"label\":30},\"50\":{\"value\":50,\"label\":50},\"100\":{\"value\":100,\"label\":100},\"200\":{\"value\":200,\"label\":200}},\"value\":20},\"positions\":{\"ids\":0,\"page_id\":1,\"title\":2,\"identifier\":3,\"page_layout\":4,\"store_id\":5,\"is_active\":6,\"creation_time\":7,\"update_time\":8,\"custom_theme_from\":9,\"custom_theme_to\":10,\"custom_theme\":11,\"custom_root_template\":12,\"meta_title\":13,\"meta_keywords\":14,\"meta_description\":15,\"actions\":16}}}','0000-00-00 00:00:00','0000-00-00 00:00:00'),('20','2','cms_page_listing','default',1,'Default View','{\"views\":{\"default\":{\"label\":\"Default View\",\"index\":\"default\",\"editable\":false,\"data\":{\"filters\":{\"applied\":{\"placeholder\":true}},\"columns\":{\"page_id\":{\"visible\":true,\"sorting\":\"asc\"},\"title\":{\"visible\":true,\"sorting\":false},\"identifier\":{\"visible\":true,\"sorting\":false},\"store_id\":{\"visible\":true,\"sorting\":false},\"meta_title\":{\"visible\":false,\"sorting\":false},\"meta_keywords\":{\"visible\":false,\"sorting\":false},\"meta_description\":{\"visible\":false,\"sorting\":false},\"ids\":{\"visible\":true,\"sorting\":false},\"page_layout\":{\"visible\":true,\"sorting\":false},\"is_active\":{\"visible\":true,\"sorting\":false},\"custom_theme\":{\"visible\":false,\"sorting\":false},\"custom_root_template\":{\"visible\":false,\"sorting\":false},\"actions\":{\"visible\":true,\"sorting\":false},\"creation_time\":{\"visible\":true,\"sorting\":false},\"update_time\":{\"visible\":true,\"sorting\":false},\"custom_theme_from\":{\"visible\":false,\"sorting\":false},\"custom_theme_to\":{\"visible\":false,\"sorting\":false}},\"displayMode\":\"grid\",\"search\":{\"value\":\"\"},\"paging\":{\"options\":{\"20\":{\"value\":20,\"label\":20},\"30\":{\"value\":30,\"label\":30},\"50\":{\"value\":50,\"label\":50},\"100\":{\"value\":100,\"label\":100},\"200\":{\"value\":200,\"label\":200}},\"value\":20},\"positions\":{\"ids\":0,\"page_id\":1,\"title\":2,\"identifier\":3,\"page_layout\":4,\"store_id\":5,\"is_active\":6,\"creation_time\":7,\"update_time\":8,\"custom_theme_from\":9,\"custom_theme_to\":10,\"custom_theme\":11,\"custom_root_template\":12,\"meta_title\":13,\"meta_keywords\":14,\"meta_description\":15,\"actions\":16}},\"value\":\"Default View\"}}}','0000-00-00 00:00:00','0000-00-00 00:00:00'),('21','1','sales_order_view_invoice_grid','default',1,'Default View','{\"views\":{\"default\":{\"label\":\"Default View\",\"index\":\"default\",\"editable\":false,\"data\":{\"filters\":{\"applied\":{\"placeholder\":true}},\"columns\":{\"increment_id\":{\"visible\":true,\"sorting\":\"asc\"},\"order_increment_id\":{\"visible\":true,\"sorting\":false},\"billing_name\":{\"visible\":true,\"sorting\":false},\"grand_total\":{\"visible\":true,\"sorting\":false},\"store_id\":{\"visible\":false,\"sorting\":false},\"billing_address\":{\"visible\":false,\"sorting\":false},\"shipping_address\":{\"visible\":false,\"sorting\":false},\"customer_name\":{\"visible\":false,\"sorting\":false},\"customer_email\":{\"visible\":false,\"sorting\":false},\"shipping_information\":{\"visible\":false,\"sorting\":false},\"subtotal\":{\"visible\":false,\"sorting\":false},\"shipping_and_handling\":{\"visible\":false,\"sorting\":false},\"ids\":{\"visible\":true,\"sorting\":false},\"state\":{\"visible\":true,\"sorting\":false},\"customer_group_id\":{\"visible\":false,\"sorting\":false},\"payment_method\":{\"visible\":false,\"sorting\":false},\"actions\":{\"visible\":true,\"sorting\":false},\"created_at\":{\"visible\":true,\"sorting\":false},\"order_created_at\":{\"visible\":true,\"sorting\":false}},\"search\":{\"value\":\"\"},\"displayMode\":\"grid\",\"paging\":{\"options\":{\"20\":{\"value\":20,\"label\":20},\"30\":{\"value\":30,\"label\":30},\"50\":{\"value\":50,\"label\":50},\"100\":{\"value\":100,\"label\":100},\"200\":{\"value\":200,\"label\":200}},\"value\":20},\"positions\":{\"ids\":0,\"increment_id\":1,\"created_at\":2,\"order_increment_id\":3,\"order_created_at\":4,\"billing_name\":5,\"state\":6,\"grand_total\":7,\"store_id\":8,\"billing_address\":9,\"shipping_address\":10,\"customer_name\":11,\"customer_email\":12,\"customer_group_id\":13,\"payment_method\":14,\"shipping_information\":15,\"subtotal\":16,\"shipping_and_handling\":17,\"actions\":18}},\"value\":\"Default View\"}}}','0000-00-00 00:00:00','0000-00-00 00:00:00'),('22','1','sales_order_view_creditmemo_grid','default',1,'Default View','{\"views\":{\"default\":{\"label\":\"Default View\",\"index\":\"default\",\"editable\":false,\"data\":{\"filters\":{\"applied\":{\"placeholder\":true}},\"columns\":{\"increment_id\":{\"visible\":true,\"sorting\":false},\"order_increment_id\":{\"visible\":true,\"sorting\":false},\"billing_name\":{\"visible\":true,\"sorting\":false},\"base_grand_total\":{\"visible\":true,\"sorting\":false},\"store_id\":{\"visible\":false,\"sorting\":false},\"billing_address\":{\"visible\":false,\"sorting\":false},\"shipping_address\":{\"visible\":false,\"sorting\":false},\"customer_name\":{\"visible\":false,\"sorting\":false},\"customer_email\":{\"visible\":false,\"sorting\":false},\"shipping_information\":{\"visible\":false,\"sorting\":false},\"subtotal\":{\"visible\":false,\"sorting\":false},\"shipping_and_handling\":{\"visible\":false,\"sorting\":false},\"adjustment_positive\":{\"visible\":false,\"sorting\":false},\"adjustment_negative\":{\"visible\":false,\"sorting\":false},\"order_base_grand_total\":{\"visible\":false,\"sorting\":false},\"ids\":{\"visible\":true,\"sorting\":false},\"state\":{\"visible\":true,\"sorting\":false},\"order_status\":{\"visible\":false,\"sorting\":false},\"customer_group_id\":{\"visible\":false,\"sorting\":false},\"payment_method\":{\"visible\":false,\"sorting\":false},\"actions\":{\"visible\":true,\"sorting\":false},\"created_at\":{\"visible\":true,\"sorting\":false},\"order_created_at\":{\"visible\":true,\"sorting\":false}},\"search\":{\"value\":\"\"},\"displayMode\":\"grid\",\"paging\":{\"options\":{\"20\":{\"value\":20,\"label\":20},\"30\":{\"value\":30,\"label\":30},\"50\":{\"value\":50,\"label\":50},\"100\":{\"value\":100,\"label\":100},\"200\":{\"value\":200,\"label\":200}},\"value\":20},\"positions\":{\"ids\":0,\"increment_id\":1,\"created_at\":2,\"order_increment_id\":3,\"order_created_at\":4,\"billing_name\":5,\"state\":6,\"base_grand_total\":7,\"order_status\":8,\"store_id\":9,\"billing_address\":10,\"shipping_address\":11,\"customer_name\":12,\"customer_email\":13,\"customer_group_id\":14,\"payment_method\":15,\"shipping_information\":16,\"subtotal\":17,\"shipping_and_handling\":18,\"adjustment_positive\":19,\"adjustment_negative\":20,\"order_base_grand_total\":21,\"actions\":22}},\"value\":\"Default View\"}}}','0000-00-00 00:00:00','0000-00-00 00:00:00'),('23','1','sales_order_view_shipment_grid','default',1,'Default View','{\"views\":{\"default\":{\"label\":\"Default View\",\"index\":\"default\",\"editable\":false,\"data\":{\"filters\":{\"applied\":{\"placeholder\":true}},\"columns\":{\"increment_id\":{\"visible\":true,\"sorting\":\"asc\"},\"order_increment_id\":{\"visible\":true,\"sorting\":false},\"shipping_name\":{\"visible\":true,\"sorting\":false},\"total_qty\":{\"visible\":true,\"sorting\":false},\"store_id\":{\"visible\":false,\"sorting\":false},\"customer_name\":{\"visible\":false,\"sorting\":false},\"customer_email\":{\"visible\":false,\"sorting\":false},\"billing_address\":{\"visible\":false,\"sorting\":false},\"shipping_address\":{\"visible\":false,\"sorting\":false},\"shipping_information\":{\"visible\":false,\"sorting\":false},\"ids\":{\"visible\":true,\"sorting\":false},\"order_status\":{\"visible\":false,\"sorting\":false},\"customer_group_id\":{\"visible\":false,\"sorting\":false},\"payment_method\":{\"visible\":false,\"sorting\":false},\"actions\":{\"visible\":true,\"sorting\":false},\"created_at\":{\"visible\":true,\"sorting\":false},\"order_created_at\":{\"visible\":true,\"sorting\":false}},\"search\":{\"value\":\"\"},\"displayMode\":\"grid\",\"paging\":{\"options\":{\"20\":{\"value\":20,\"label\":20},\"30\":{\"value\":30,\"label\":30},\"50\":{\"value\":50,\"label\":50},\"100\":{\"value\":100,\"label\":100},\"200\":{\"value\":200,\"label\":200}},\"value\":20},\"positions\":{\"ids\":0,\"increment_id\":1,\"created_at\":2,\"order_increment_id\":3,\"order_created_at\":4,\"shipping_name\":5,\"total_qty\":6,\"order_status\":7,\"store_id\":8,\"customer_name\":9,\"customer_email\":10,\"customer_group_id\":11,\"billing_address\":12,\"shipping_address\":13,\"payment_method\":14,\"shipping_information\":15,\"actions\":16}},\"value\":\"Default View\"}}}','0000-00-00 00:00:00','0000-00-00 00:00:00'),('24','1','sales_order_view_invoice_grid','current',0,NULL,'{\"current\":{\"filters\":{\"applied\":{\"placeholder\":true}},\"columns\":{\"increment_id\":{\"visible\":true,\"sorting\":\"asc\"},\"order_increment_id\":{\"visible\":true,\"sorting\":false},\"billing_name\":{\"visible\":true,\"sorting\":false},\"grand_total\":{\"visible\":true,\"sorting\":false},\"store_id\":{\"visible\":false,\"sorting\":false},\"billing_address\":{\"visible\":false,\"sorting\":false},\"shipping_address\":{\"visible\":false,\"sorting\":false},\"customer_name\":{\"visible\":false,\"sorting\":false},\"customer_email\":{\"visible\":false,\"sorting\":false},\"shipping_information\":{\"visible\":false,\"sorting\":false},\"subtotal\":{\"visible\":false,\"sorting\":false},\"shipping_and_handling\":{\"visible\":false,\"sorting\":false},\"ids\":{\"visible\":true,\"sorting\":false},\"state\":{\"visible\":true,\"sorting\":false},\"customer_group_id\":{\"visible\":false,\"sorting\":false},\"payment_method\":{\"visible\":false,\"sorting\":false},\"actions\":{\"visible\":true,\"sorting\":false},\"created_at\":{\"visible\":true,\"sorting\":false},\"order_created_at\":{\"visible\":true,\"sorting\":false}},\"search\":{\"value\":\"\"},\"displayMode\":\"grid\",\"paging\":{\"options\":{\"20\":{\"value\":20,\"label\":20},\"30\":{\"value\":30,\"label\":30},\"50\":{\"value\":50,\"label\":50},\"100\":{\"value\":100,\"label\":100},\"200\":{\"value\":200,\"label\":200}},\"value\":20},\"positions\":{\"ids\":0,\"increment_id\":1,\"created_at\":2,\"order_increment_id\":3,\"order_created_at\":4,\"billing_name\":5,\"state\":6,\"grand_total\":7,\"store_id\":8,\"billing_address\":9,\"shipping_address\":10,\"customer_name\":11,\"customer_email\":12,\"customer_group_id\":13,\"payment_method\":14,\"shipping_information\":15,\"subtotal\":16,\"shipping_and_handling\":17,\"actions\":18}}}','0000-00-00 00:00:00','0000-00-00 00:00:00'),('25','1','sales_order_view_shipment_grid','current',0,NULL,'{\"current\":{\"filters\":{\"applied\":{\"placeholder\":true}},\"columns\":{\"increment_id\":{\"visible\":true,\"sorting\":\"asc\"},\"order_increment_id\":{\"visible\":true,\"sorting\":false},\"shipping_name\":{\"visible\":true,\"sorting\":false},\"total_qty\":{\"visible\":true,\"sorting\":false},\"store_id\":{\"visible\":false,\"sorting\":false},\"customer_name\":{\"visible\":false,\"sorting\":false},\"customer_email\":{\"visible\":false,\"sorting\":false},\"billing_address\":{\"visible\":false,\"sorting\":false},\"shipping_address\":{\"visible\":false,\"sorting\":false},\"shipping_information\":{\"visible\":false,\"sorting\":false},\"ids\":{\"visible\":true,\"sorting\":false},\"order_status\":{\"visible\":false,\"sorting\":false},\"customer_group_id\":{\"visible\":false,\"sorting\":false},\"payment_method\":{\"visible\":false,\"sorting\":false},\"actions\":{\"visible\":true,\"sorting\":false},\"created_at\":{\"visible\":true,\"sorting\":false},\"order_created_at\":{\"visible\":true,\"sorting\":false}},\"search\":{\"value\":\"\"},\"displayMode\":\"grid\",\"paging\":{\"options\":{\"20\":{\"value\":20,\"label\":20},\"30\":{\"value\":30,\"label\":30},\"50\":{\"value\":50,\"label\":50},\"100\":{\"value\":100,\"label\":100},\"200\":{\"value\":200,\"label\":200}},\"value\":20},\"positions\":{\"ids\":0,\"increment_id\":1,\"created_at\":2,\"order_increment_id\":3,\"order_created_at\":4,\"shipping_name\":5,\"total_qty\":6,\"order_status\":7,\"store_id\":8,\"customer_name\":9,\"customer_email\":10,\"customer_group_id\":11,\"billing_address\":12,\"shipping_address\":13,\"payment_method\":14,\"shipping_information\":15,\"actions\":16}}}','0000-00-00 00:00:00','0000-00-00 00:00:00'),('26','1','sales_order_view_creditmemo_grid','current',0,NULL,'{\"current\":{\"filters\":{\"applied\":{\"placeholder\":true}},\"columns\":{\"increment_id\":{\"visible\":true,\"sorting\":false},\"order_increment_id\":{\"visible\":true,\"sorting\":false},\"billing_name\":{\"visible\":true,\"sorting\":false},\"base_grand_total\":{\"visible\":true,\"sorting\":false},\"store_id\":{\"visible\":false,\"sorting\":false},\"billing_address\":{\"visible\":false,\"sorting\":false},\"shipping_address\":{\"visible\":false,\"sorting\":false},\"customer_name\":{\"visible\":false,\"sorting\":false},\"customer_email\":{\"visible\":false,\"sorting\":false},\"shipping_information\":{\"visible\":false,\"sorting\":false},\"subtotal\":{\"visible\":false,\"sorting\":false},\"shipping_and_handling\":{\"visible\":false,\"sorting\":false},\"adjustment_positive\":{\"visible\":false,\"sorting\":false},\"adjustment_negative\":{\"visible\":false,\"sorting\":false},\"order_base_grand_total\":{\"visible\":false,\"sorting\":false},\"ids\":{\"visible\":true,\"sorting\":false},\"state\":{\"visible\":true,\"sorting\":false},\"order_status\":{\"visible\":false,\"sorting\":false},\"customer_group_id\":{\"visible\":false,\"sorting\":false},\"payment_method\":{\"visible\":false,\"sorting\":false},\"actions\":{\"visible\":true,\"sorting\":false},\"created_at\":{\"visible\":true,\"sorting\":false},\"order_created_at\":{\"visible\":true,\"sorting\":false}},\"search\":{\"value\":\"\"},\"displayMode\":\"grid\",\"paging\":{\"options\":{\"20\":{\"value\":20,\"label\":20},\"30\":{\"value\":30,\"label\":30},\"50\":{\"value\":50,\"label\":50},\"100\":{\"value\":100,\"label\":100},\"200\":{\"value\":200,\"label\":200}},\"value\":20},\"positions\":{\"ids\":0,\"increment_id\":1,\"created_at\":2,\"order_increment_id\":3,\"order_created_at\":4,\"billing_name\":5,\"state\":6,\"base_grand_total\":7,\"order_status\":8,\"store_id\":9,\"billing_address\":10,\"shipping_address\":11,\"customer_name\":12,\"customer_email\":13,\"customer_group_id\":14,\"payment_method\":15,\"shipping_information\":16,\"subtotal\":17,\"shipping_and_handling\":18,\"adjustment_positive\":19,\"adjustment_negative\":20,\"order_base_grand_total\":21,\"actions\":22}}}','0000-00-00 00:00:00','0000-00-00 00:00:00');
/*!40000 ALTER TABLE `ui_bookmark` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `url_rewrite`
--

DROP TABLE IF EXISTS `url_rewrite`;
CREATE TABLE `url_rewrite` (
  `url_rewrite_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Rewrite Id',
  `entity_type` varchar(32) NOT NULL COMMENT 'Entity type code',
  `entity_id` int(10) unsigned NOT NULL COMMENT 'Entity ID',
  `request_path` varchar(255) DEFAULT NULL COMMENT 'Request Path',
  `target_path` varchar(255) DEFAULT NULL COMMENT 'Target Path',
  `redirect_type` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Redirect Type',
  `store_id` smallint(5) unsigned NOT NULL COMMENT 'Store Id',
  `description` varchar(255) DEFAULT NULL COMMENT 'Description',
  `is_autogenerated` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Is rewrite generated automatically flag',
  `metadata` varchar(255) DEFAULT NULL COMMENT 'Meta data for url rewrite',
  PRIMARY KEY (`url_rewrite_id`),
  UNIQUE KEY `URL_REWRITE_REQUEST_PATH_STORE_ID` (`request_path`,`store_id`),
  KEY `URL_REWRITE_TARGET_PATH` (`target_path`),
  KEY `URL_REWRITE_STORE_ID_ENTITY_ID` (`store_id`,`entity_id`)
) ENGINE=InnoDB AUTO_INCREMENT=218 DEFAULT CHARSET=utf8 COMMENT='Url Rewrites';

--
-- Dumping data for table `url_rewrite`
--

LOCK TABLES `url_rewrite` WRITE;
/*!40000 ALTER TABLE `url_rewrite` DISABLE KEYS */;
INSERT INTO `url_rewrite` VALUES ('1','cms-page','1','no-route','cms/page/view/page_id/1',0,1,NULL,1,NULL),('2','cms-page','2','home','cms/page/view/page_id/2',0,1,NULL,1,NULL),('3','cms-page','3','enable-cookies','cms/page/view/page_id/3',0,1,NULL,1,NULL),('4','cms-page','4','privacy-policy-cookie-restriction-mode','cms/page/view/page_id/4',0,1,NULL,1,NULL),('5','category','4','charpente-et-colles.html','catalog/category/view/id/4',0,2,NULL,1,NULL),('6','category','5','charpente-et-colles/bois-colles.html','catalog/category/view/id/5',0,2,NULL,1,NULL),('7','category','6','charpente-et-colles/bois-colles/blc-epicea.html','catalog/category/view/id/6',0,2,NULL,1,NULL),('8','category','7','isolation.html','catalog/category/view/id/7',0,2,NULL,1,NULL),('9','category','8','isolation/ampack.html','catalog/category/view/id/8',0,2,NULL,1,NULL),('10','category','9','isolation/ampack/ampacoll.html','catalog/category/view/id/9',0,2,NULL,1,NULL),('11','category','10','lames-et-listerie.html','catalog/category/view/id/10',0,2,NULL,1,NULL),('12','category','11','lames-et-listerie/meleze-rabote.html','catalog/category/view/id/11',0,2,NULL,1,NULL),('13','category','12','lames-et-listerie/meleze-rabote/chanfrein.html','catalog/category/view/id/12',0,2,NULL,1,NULL),('14','category','13','panneaux.html','catalog/category/view/id/13',0,2,NULL,1,NULL),('15','category','14','panneaux/produits-knauf.html','catalog/category/view/id/14',0,2,NULL,1,NULL),('16','category','15','panneaux/produits-knauf/vis.html','catalog/category/view/id/15',0,2,NULL,1,NULL),('17','category','16','menuiserie-et-avives.html','catalog/category/view/id/16',0,2,NULL,1,NULL),('18','category','17','menuiserie-et-avives/car-fenetre-massif.html','catalog/category/view/id/17',0,2,NULL,1,NULL),('19','category','18','menuiserie-et-avives/car-fenetre-massif/epicea-guichets.html','catalog/category/view/id/18',0,2,NULL,1,NULL),('43','category','4','charpente-et-colles.html','catalog/category/view/id/4',0,3,NULL,1,NULL),('44','category','5','charpente-et-colles/bois-colles.html','catalog/category/view/id/5',0,3,NULL,1,NULL),('45','category','6','charpente-et-colles/bois-colles/blc-epicea.html','catalog/category/view/id/6',0,3,NULL,1,NULL),('46','category','7','isolation.html','catalog/category/view/id/7',0,3,NULL,1,NULL),('47','category','8','isolation/ampack.html','catalog/category/view/id/8',0,3,NULL,1,NULL),('48','category','9','isolation/ampack/ampacoll.html','catalog/category/view/id/9',0,3,NULL,1,NULL),('49','category','10','lames-et-listerie.html','catalog/category/view/id/10',0,3,NULL,1,NULL),('50','category','11','lames-et-listerie/meleze-rabote.html','catalog/category/view/id/11',0,3,NULL,1,NULL),('51','category','12','lames-et-listerie/meleze-rabote/chanfrein.html','catalog/category/view/id/12',0,3,NULL,1,NULL),('52','category','13','panneaux.html','catalog/category/view/id/13',0,3,NULL,1,NULL),('53','category','14','panneaux/produits-knauf.html','catalog/category/view/id/14',0,3,NULL,1,NULL),('54','category','15','panneaux/produits-knauf/vis.html','catalog/category/view/id/15',0,3,NULL,1,NULL),('55','category','16','menuiserie-et-avives.html','catalog/category/view/id/16',0,3,NULL,1,NULL),('56','category','17','menuiserie-et-avives/car-fenetre-massif.html','catalog/category/view/id/17',0,3,NULL,1,NULL),('57','category','18','menuiserie-et-avives/car-fenetre-massif/epicea-guichets.html','catalog/category/view/id/18',0,3,NULL,1,NULL),('133','category','20','isolation.html','catalog/category/view/id/20',0,4,NULL,1,NULL),('134','category','21','isolation/ampack.html','catalog/category/view/id/21',0,4,NULL,1,NULL),('135','category','22','isolation/ampack/ampacoll.html','catalog/category/view/id/22',0,4,NULL,1,NULL),('136','category','20','isolation.html','catalog/category/view/id/20',0,5,NULL,1,NULL),('137','category','21','isolation/ampack.html','catalog/category/view/id/21',0,5,NULL,1,NULL),('138','category','22','isolation/ampack/ampacoll.html','catalog/category/view/id/22',0,5,NULL,1,NULL),('163','product','27','ampatop-25.html','catalog/product/view/id/27',0,3,NULL,1,NULL),('164','product','27','isolation/ampack/ampacoll/ampatop-25.html','catalog/product/view/id/27/category/9',0,3,NULL,1,'a:1:{s:11:\"category_id\";s:1:\"9\";}'),('165','product','27','/ampatop-25.html','catalog/product/view/id/27/category/3',0,3,NULL,1,'a:1:{s:11:\"category_id\";s:1:\"3\";}'),('166','product','27','isolation/ampatop-25.html','catalog/product/view/id/27/category/7',0,3,NULL,1,'a:1:{s:11:\"category_id\";s:1:\"7\";}'),('167','product','27','isolation/ampack/ampatop-25.html','catalog/product/view/id/27/category/8',0,3,NULL,1,'a:1:{s:11:\"category_id\";s:1:\"8\";}'),('168','product','27','ampatop-25.html','catalog/product/view/id/27',0,2,NULL,1,NULL),('169','product','27','isolation/ampack/ampacoll/ampatop-25.html','catalog/product/view/id/27/category/9',0,2,NULL,1,'a:1:{s:11:\"category_id\";s:1:\"9\";}'),('170','product','27','/ampatop-25.html','catalog/product/view/id/27/category/3',0,2,NULL,1,'a:1:{s:11:\"category_id\";s:1:\"3\";}'),('171','product','27','isolation/ampatop-25.html','catalog/product/view/id/27/category/7',0,2,NULL,1,'a:1:{s:11:\"category_id\";s:1:\"7\";}'),('172','product','27','isolation/ampack/ampatop-25.html','catalog/product/view/id/27/category/8',0,2,NULL,1,'a:1:{s:11:\"category_id\";s:1:\"8\";}'),('173','product','28','lamelle-colle-bs-11-epicea-si.html','catalog/product/view/id/28',0,3,NULL,1,NULL),('174','product','28','charpente-et-colles/bois-colles/blc-epicea/lamelle-colle-bs-11-epicea-si.html','catalog/product/view/id/28/category/6',0,3,NULL,1,'a:1:{s:11:\"category_id\";s:1:\"6\";}'),('175','product','28','/lamelle-colle-bs-11-epicea-si.html','catalog/product/view/id/28/category/3',0,3,NULL,1,'a:1:{s:11:\"category_id\";s:1:\"3\";}'),('176','product','28','charpente-et-colles/lamelle-colle-bs-11-epicea-si.html','catalog/product/view/id/28/category/4',0,3,NULL,1,'a:1:{s:11:\"category_id\";s:1:\"4\";}'),('177','product','28','charpente-et-colles/bois-colles/lamelle-colle-bs-11-epicea-si.html','catalog/product/view/id/28/category/5',0,3,NULL,1,'a:1:{s:11:\"category_id\";s:1:\"5\";}'),('178','product','28','lamelle-colle-bs-11-epicea-si.html','catalog/product/view/id/28',0,2,NULL,1,NULL),('179','product','28','charpente-et-colles/bois-colles/blc-epicea/lamelle-colle-bs-11-epicea-si.html','catalog/product/view/id/28/category/6',0,2,NULL,1,'a:1:{s:11:\"category_id\";s:1:\"6\";}'),('180','product','28','/lamelle-colle-bs-11-epicea-si.html','catalog/product/view/id/28/category/3',0,2,NULL,1,'a:1:{s:11:\"category_id\";s:1:\"3\";}'),('181','product','28','charpente-et-colles/lamelle-colle-bs-11-epicea-si.html','catalog/product/view/id/28/category/4',0,2,NULL,1,'a:1:{s:11:\"category_id\";s:1:\"4\";}'),('182','product','28','charpente-et-colles/bois-colles/lamelle-colle-bs-11-epicea-si.html','catalog/product/view/id/28/category/5',0,2,NULL,1,'a:1:{s:11:\"category_id\";s:1:\"5\";}'),('183','product','29','carrelets-guichets-epicea.html','catalog/product/view/id/29',0,3,NULL,1,NULL),('184','product','29','menuiserie-et-avives/car-fenetre-massif/epicea-guichets/carrelets-guichets-epicea.html','catalog/product/view/id/29/category/18',0,3,NULL,1,'a:1:{s:11:\"category_id\";s:2:\"18\";}'),('185','product','29','/carrelets-guichets-epicea.html','catalog/product/view/id/29/category/3',0,3,NULL,1,'a:1:{s:11:\"category_id\";s:1:\"3\";}'),('186','product','29','menuiserie-et-avives/carrelets-guichets-epicea.html','catalog/product/view/id/29/category/16',0,3,NULL,1,'a:1:{s:11:\"category_id\";s:2:\"16\";}'),('187','product','29','menuiserie-et-avives/car-fenetre-massif/carrelets-guichets-epicea.html','catalog/product/view/id/29/category/17',0,3,NULL,1,'a:1:{s:11:\"category_id\";s:2:\"17\";}'),('188','product','29','carrelets-guichets-epicea.html','catalog/product/view/id/29',0,2,NULL,1,NULL),('189','product','29','menuiserie-et-avives/car-fenetre-massif/epicea-guichets/carrelets-guichets-epicea.html','catalog/product/view/id/29/category/18',0,2,NULL,1,'a:1:{s:11:\"category_id\";s:2:\"18\";}'),('190','product','29','/carrelets-guichets-epicea.html','catalog/product/view/id/29/category/3',0,2,NULL,1,'a:1:{s:11:\"category_id\";s:1:\"3\";}'),('191','product','29','menuiserie-et-avives/carrelets-guichets-epicea.html','catalog/product/view/id/29/category/16',0,2,NULL,1,'a:1:{s:11:\"category_id\";s:2:\"16\";}'),('192','product','29','menuiserie-et-avives/car-fenetre-massif/carrelets-guichets-epicea.html','catalog/product/view/id/29/category/17',0,2,NULL,1,'a:1:{s:11:\"category_id\";s:2:\"17\";}'),('193','product','30','vis-de-fixation-vidiwall.html','catalog/product/view/id/30',0,3,NULL,1,NULL),('194','product','30','panneaux/produits-knauf/vis/vis-de-fixation-vidiwall.html','catalog/product/view/id/30/category/15',0,3,NULL,1,'a:1:{s:11:\"category_id\";s:2:\"15\";}'),('195','product','30','/vis-de-fixation-vidiwall.html','catalog/product/view/id/30/category/3',0,3,NULL,1,'a:1:{s:11:\"category_id\";s:1:\"3\";}'),('196','product','30','panneaux/vis-de-fixation-vidiwall.html','catalog/product/view/id/30/category/13',0,3,NULL,1,'a:1:{s:11:\"category_id\";s:2:\"13\";}'),('197','product','30','panneaux/produits-knauf/vis-de-fixation-vidiwall.html','catalog/product/view/id/30/category/14',0,3,NULL,1,'a:1:{s:11:\"category_id\";s:2:\"14\";}'),('198','product','30','vis-de-fixation-vidiwall.html','catalog/product/view/id/30',0,2,NULL,1,NULL),('199','product','30','panneaux/produits-knauf/vis/vis-de-fixation-vidiwall.html','catalog/product/view/id/30/category/15',0,2,NULL,1,'a:1:{s:11:\"category_id\";s:2:\"15\";}'),('200','product','30','/vis-de-fixation-vidiwall.html','catalog/product/view/id/30/category/3',0,2,NULL,1,'a:1:{s:11:\"category_id\";s:1:\"3\";}'),('201','product','30','panneaux/vis-de-fixation-vidiwall.html','catalog/product/view/id/30/category/13',0,2,NULL,1,'a:1:{s:11:\"category_id\";s:2:\"13\";}'),('202','product','30','panneaux/produits-knauf/vis-de-fixation-vidiwall.html','catalog/product/view/id/30/category/14',0,2,NULL,1,'a:1:{s:11:\"category_id\";s:2:\"14\";}'),('203','product','31','lames-meleze-iib-iiia.html','catalog/product/view/id/31',0,3,NULL,1,NULL),('204','product','31','lames-et-listerie/meleze-rabote/chanfrein/lames-meleze-iib-iiia.html','catalog/product/view/id/31/category/12',0,3,NULL,1,'a:1:{s:11:\"category_id\";s:2:\"12\";}'),('205','product','31','/lames-meleze-iib-iiia.html','catalog/product/view/id/31/category/3',0,3,NULL,1,'a:1:{s:11:\"category_id\";s:1:\"3\";}'),('206','product','31','lames-et-listerie/lames-meleze-iib-iiia.html','catalog/product/view/id/31/category/10',0,3,NULL,1,'a:1:{s:11:\"category_id\";s:2:\"10\";}'),('207','product','31','lames-et-listerie/meleze-rabote/lames-meleze-iib-iiia.html','catalog/product/view/id/31/category/11',0,3,NULL,1,'a:1:{s:11:\"category_id\";s:2:\"11\";}'),('208','product','31','lames-meleze-iib-iiia.html','catalog/product/view/id/31',0,2,NULL,1,NULL),('209','product','31','lames-et-listerie/meleze-rabote/chanfrein/lames-meleze-iib-iiia.html','catalog/product/view/id/31/category/12',0,2,NULL,1,'a:1:{s:11:\"category_id\";s:2:\"12\";}'),('210','product','31','/lames-meleze-iib-iiia.html','catalog/product/view/id/31/category/3',0,2,NULL,1,'a:1:{s:11:\"category_id\";s:1:\"3\";}'),('211','product','31','lames-et-listerie/lames-meleze-iib-iiia.html','catalog/product/view/id/31/category/10',0,2,NULL,1,'a:1:{s:11:\"category_id\";s:2:\"10\";}'),('212','product','31','lames-et-listerie/meleze-rabote/lames-meleze-iib-iiia.html','catalog/product/view/id/31/category/11',0,2,NULL,1,'a:1:{s:11:\"category_id\";s:2:\"11\";}'),('213','product','35','testproduit.html','catalog/product/view/id/35',0,3,NULL,1,NULL),('214','product','35','isolation/ampack/ampacoll/testproduit.html','catalog/product/view/id/35/category/9',0,3,NULL,1,'a:1:{s:11:\"category_id\";s:1:\"9\";}'),('215','product','35','/testproduit.html','catalog/product/view/id/35/category/3',0,3,NULL,1,'a:1:{s:11:\"category_id\";s:1:\"3\";}'),('216','product','35','isolation/testproduit.html','catalog/product/view/id/35/category/7',0,3,NULL,1,'a:1:{s:11:\"category_id\";s:1:\"7\";}'),('217','product','35','isolation/ampack/testproduit.html','catalog/product/view/id/35/category/8',0,3,NULL,1,'a:1:{s:11:\"category_id\";s:1:\"8\";}');
/*!40000 ALTER TABLE `url_rewrite` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `variable`
--

DROP TABLE IF EXISTS `variable`;
CREATE TABLE `variable` (
  `variable_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Variable Id',
  `code` varchar(255) DEFAULT NULL COMMENT 'Variable Code',
  `name` varchar(255) DEFAULT NULL COMMENT 'Variable Name',
  PRIMARY KEY (`variable_id`),
  UNIQUE KEY `VARIABLE_CODE` (`code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Variables';

--
-- Table structure for table `variable_value`
--

DROP TABLE IF EXISTS `variable_value`;
CREATE TABLE `variable_value` (
  `value_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Variable Value Id',
  `variable_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Variable Id',
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Store Id',
  `plain_value` text COMMENT 'Plain Text Value',
  `html_value` text COMMENT 'Html Value',
  PRIMARY KEY (`value_id`),
  UNIQUE KEY `VARIABLE_VALUE_VARIABLE_ID_STORE_ID` (`variable_id`,`store_id`),
  KEY `VARIABLE_VALUE_STORE_ID` (`store_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Variable Value';

--
-- Table structure for table `vault_payment_token`
--

DROP TABLE IF EXISTS `vault_payment_token`;
CREATE TABLE `vault_payment_token` (
  `entity_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Entity Id',
  `customer_id` int(10) unsigned DEFAULT NULL COMMENT 'Customer Id',
  `public_hash` varchar(128) NOT NULL COMMENT 'Hash code for using on frontend',
  `payment_method_code` varchar(128) NOT NULL COMMENT 'Payment method code',
  `type` varchar(128) NOT NULL COMMENT 'Type',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Created At',
  `expires_at` timestamp NULL DEFAULT NULL COMMENT 'Expires At',
  `gateway_token` varchar(255) NOT NULL COMMENT 'Gateway Token',
  `details` text COMMENT 'Details',
  `is_active` tinyint(1) NOT NULL COMMENT 'Is active flag',
  `is_visible` tinyint(1) NOT NULL COMMENT 'Is visible flag',
  PRIMARY KEY (`entity_id`),
  UNIQUE KEY `VAULT_PAYMENT_TOKEN_HASH_UNIQUE_INDEX_PUBLIC_HASH` (`public_hash`),
  UNIQUE KEY `UNQ_54DCE14AEAEA03B587F9EF723EB10A10` (`payment_method_code`,`customer_id`,`gateway_token`),
  KEY `VAULT_PAYMENT_TOKEN_CUSTOMER_ID_CUSTOMER_ENTITY_ENTITY_ID` (`customer_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Vault tokens of payment';

--
-- Table structure for table `vault_payment_token_order_payment_link`
--

DROP TABLE IF EXISTS `vault_payment_token_order_payment_link`;
CREATE TABLE `vault_payment_token_order_payment_link` (
  `order_payment_id` int(10) unsigned NOT NULL COMMENT 'Order payment Id',
  `payment_token_id` int(10) unsigned NOT NULL COMMENT 'Payment token Id',
  PRIMARY KEY (`order_payment_id`,`payment_token_id`),
  KEY `FK_4ED894655446D385894580BECA993862` (`payment_token_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Order payments to vault token';

--
-- Table structure for table `weee_tax`
--

DROP TABLE IF EXISTS `weee_tax`;
CREATE TABLE `weee_tax` (
  `value_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Value Id',
  `website_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Website Id',
  `entity_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity Id',
  `country` varchar(2) DEFAULT NULL COMMENT 'Country',
  `value` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Value',
  `state` int(11) NOT NULL DEFAULT '0' COMMENT 'State',
  `attribute_id` smallint(5) unsigned NOT NULL COMMENT 'Attribute Id',
  PRIMARY KEY (`value_id`),
  KEY `WEEE_TAX_WEBSITE_ID` (`website_id`),
  KEY `WEEE_TAX_ENTITY_ID` (`entity_id`),
  KEY `WEEE_TAX_COUNTRY` (`country`),
  KEY `WEEE_TAX_ATTRIBUTE_ID` (`attribute_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Weee Tax';

--
-- Table structure for table `widget`
--

DROP TABLE IF EXISTS `widget`;
CREATE TABLE `widget` (
  `widget_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Widget Id',
  `widget_code` varchar(255) DEFAULT NULL COMMENT 'Widget code for template directive',
  `widget_type` varchar(255) DEFAULT NULL COMMENT 'Widget Type',
  `parameters` text COMMENT 'Parameters',
  PRIMARY KEY (`widget_id`),
  KEY `WIDGET_WIDGET_CODE` (`widget_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Preconfigured Widgets';

--
-- Table structure for table `widget_instance`
--

DROP TABLE IF EXISTS `widget_instance`;
CREATE TABLE `widget_instance` (
  `instance_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Instance Id',
  `instance_type` varchar(255) DEFAULT NULL COMMENT 'Instance Type',
  `theme_id` int(10) unsigned NOT NULL COMMENT 'Theme id',
  `title` varchar(255) DEFAULT NULL COMMENT 'Widget Title',
  `store_ids` varchar(255) NOT NULL DEFAULT '0' COMMENT 'Store ids',
  `widget_parameters` text COMMENT 'Widget parameters',
  `sort_order` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Sort order',
  PRIMARY KEY (`instance_id`),
  KEY `WIDGET_INSTANCE_THEME_ID_THEME_THEME_ID` (`theme_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Instances of Widget for Package Theme';

--
-- Table structure for table `widget_instance_page`
--

DROP TABLE IF EXISTS `widget_instance_page`;
CREATE TABLE `widget_instance_page` (
  `page_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Page Id',
  `instance_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Instance Id',
  `page_group` varchar(25) DEFAULT NULL COMMENT 'Block Group Type',
  `layout_handle` varchar(255) DEFAULT NULL COMMENT 'Layout Handle',
  `block_reference` varchar(255) DEFAULT NULL COMMENT 'Container',
  `page_for` varchar(25) DEFAULT NULL COMMENT 'For instance entities',
  `entities` text COMMENT 'Catalog entities (comma separated)',
  `page_template` varchar(255) DEFAULT NULL COMMENT 'Path to widget template',
  PRIMARY KEY (`page_id`),
  KEY `WIDGET_INSTANCE_PAGE_INSTANCE_ID` (`instance_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Instance of Widget on Page';

--
-- Table structure for table `widget_instance_page_layout`
--

DROP TABLE IF EXISTS `widget_instance_page_layout`;
CREATE TABLE `widget_instance_page_layout` (
  `page_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Page Id',
  `layout_update_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Layout Update Id',
  UNIQUE KEY `WIDGET_INSTANCE_PAGE_LAYOUT_LAYOUT_UPDATE_ID_PAGE_ID` (`layout_update_id`,`page_id`),
  KEY `WIDGET_INSTANCE_PAGE_LAYOUT_PAGE_ID` (`page_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Layout updates';

--
-- Table structure for table `wishlist`
--

DROP TABLE IF EXISTS `wishlist`;
CREATE TABLE `wishlist` (
  `wishlist_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Wishlist ID',
  `customer_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Customer ID',
  `shared` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Sharing flag (0 or 1)',
  `sharing_code` varchar(32) DEFAULT NULL COMMENT 'Sharing encrypted code',
  `updated_at` timestamp NULL DEFAULT NULL COMMENT 'Last updated date',
  PRIMARY KEY (`wishlist_id`),
  UNIQUE KEY `WISHLIST_CUSTOMER_ID` (`customer_id`),
  KEY `WISHLIST_SHARED` (`shared`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='Wishlist main Table';

--
-- Dumping data for table `wishlist`
--

LOCK TABLES `wishlist` WRITE;
/*!40000 ALTER TABLE `wishlist` DISABLE KEYS */;
INSERT INTO `wishlist` VALUES ('2','6',0,'8cd03fdc4bf8c9913c5d2a6e9101c2be','2017-09-25 11:27:40'),('3','19',0,'3c62e8a9304ca9b00f6fbdc0c9b3e469','2017-10-10 08:24:48');
/*!40000 ALTER TABLE `wishlist` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wishlist_item`
--

DROP TABLE IF EXISTS `wishlist_item`;
CREATE TABLE `wishlist_item` (
  `wishlist_item_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Wishlist item ID',
  `wishlist_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Wishlist ID',
  `product_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Product ID',
  `store_id` smallint(5) unsigned DEFAULT NULL COMMENT 'Store ID',
  `added_at` timestamp NULL DEFAULT NULL COMMENT 'Add date and time',
  `description` text COMMENT 'Short description of wish list item',
  `qty` decimal(12,4) NOT NULL COMMENT 'Qty',
  PRIMARY KEY (`wishlist_item_id`),
  KEY `WISHLIST_ITEM_WISHLIST_ID` (`wishlist_id`),
  KEY `WISHLIST_ITEM_PRODUCT_ID` (`product_id`),
  KEY `WISHLIST_ITEM_STORE_ID` (`store_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Wishlist items';

--
-- Table structure for table `wishlist_item_option`
--

DROP TABLE IF EXISTS `wishlist_item_option`;
CREATE TABLE `wishlist_item_option` (
  `option_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Option Id',
  `wishlist_item_id` int(10) unsigned NOT NULL COMMENT 'Wishlist Item Id',
  `product_id` int(10) unsigned NOT NULL COMMENT 'Product Id',
  `code` varchar(255) NOT NULL COMMENT 'Code',
  `value` text COMMENT 'Value',
  PRIMARY KEY (`option_id`),
  KEY `FK_A014B30B04B72DD0EAB3EECD779728D6` (`wishlist_item_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Wishlist Item Option Table';

ALTER TABLE `admin_passwords`
  ADD CONSTRAINT `ADMIN_PASSWORDS_USER_ID_ADMIN_USER_USER_ID` FOREIGN KEY (`user_id`) REFERENCES `admin_user` (`user_id`) ON DELETE CASCADE;

ALTER TABLE `admin_user_session`
  ADD CONSTRAINT `ADMIN_USER_SESSION_USER_ID_ADMIN_USER_USER_ID` FOREIGN KEY (`user_id`) REFERENCES `admin_user` (`user_id`) ON DELETE CASCADE;

ALTER TABLE `authorization_rule`
  ADD CONSTRAINT `AUTHORIZATION_RULE_ROLE_ID_AUTHORIZATION_ROLE_ROLE_ID` FOREIGN KEY (`role_id`) REFERENCES `authorization_role` (`role_id`) ON DELETE CASCADE;

ALTER TABLE `catalog_category_entity_datetime`
  ADD CONSTRAINT `CATALOG_CATEGORY_ENTITY_DATETIME_STORE_ID_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `CAT_CTGR_ENTT_DTIME_ATTR_ID_EAV_ATTR_ATTR_ID` FOREIGN KEY (`attribute_id`) REFERENCES `eav_attribute` (`attribute_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `CAT_CTGR_ENTT_DTIME_ENTT_ID_CAT_CTGR_ENTT_ENTT_ID` FOREIGN KEY (`entity_id`) REFERENCES `catalog_category_entity` (`entity_id`) ON DELETE CASCADE;

ALTER TABLE `catalog_category_entity_decimal`
  ADD CONSTRAINT `CATALOG_CATEGORY_ENTITY_DECIMAL_STORE_ID_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `CAT_CTGR_ENTT_DEC_ATTR_ID_EAV_ATTR_ATTR_ID` FOREIGN KEY (`attribute_id`) REFERENCES `eav_attribute` (`attribute_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `CAT_CTGR_ENTT_DEC_ENTT_ID_CAT_CTGR_ENTT_ENTT_ID` FOREIGN KEY (`entity_id`) REFERENCES `catalog_category_entity` (`entity_id`) ON DELETE CASCADE;

ALTER TABLE `catalog_category_entity_int`
  ADD CONSTRAINT `CATALOG_CATEGORY_ENTITY_INT_STORE_ID_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `CAT_CTGR_ENTT_INT_ATTR_ID_EAV_ATTR_ATTR_ID` FOREIGN KEY (`attribute_id`) REFERENCES `eav_attribute` (`attribute_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `CAT_CTGR_ENTT_INT_ENTT_ID_CAT_CTGR_ENTT_ENTT_ID` FOREIGN KEY (`entity_id`) REFERENCES `catalog_category_entity` (`entity_id`) ON DELETE CASCADE;

ALTER TABLE `catalog_category_entity_text`
  ADD CONSTRAINT `CATALOG_CATEGORY_ENTITY_TEXT_STORE_ID_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `CAT_CTGR_ENTT_TEXT_ATTR_ID_EAV_ATTR_ATTR_ID` FOREIGN KEY (`attribute_id`) REFERENCES `eav_attribute` (`attribute_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `CAT_CTGR_ENTT_TEXT_ENTT_ID_CAT_CTGR_ENTT_ENTT_ID` FOREIGN KEY (`entity_id`) REFERENCES `catalog_category_entity` (`entity_id`) ON DELETE CASCADE;

ALTER TABLE `catalog_category_entity_varchar`
  ADD CONSTRAINT `CATALOG_CATEGORY_ENTITY_VARCHAR_STORE_ID_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `CAT_CTGR_ENTT_VCHR_ATTR_ID_EAV_ATTR_ATTR_ID` FOREIGN KEY (`attribute_id`) REFERENCES `eav_attribute` (`attribute_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `CAT_CTGR_ENTT_VCHR_ENTT_ID_CAT_CTGR_ENTT_ENTT_ID` FOREIGN KEY (`entity_id`) REFERENCES `catalog_category_entity` (`entity_id`) ON DELETE CASCADE;

ALTER TABLE `catalog_category_product`
  ADD CONSTRAINT `CAT_CTGR_PRD_CTGR_ID_CAT_CTGR_ENTT_ENTT_ID` FOREIGN KEY (`category_id`) REFERENCES `catalog_category_entity` (`entity_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `CAT_CTGR_PRD_PRD_ID_CAT_PRD_ENTT_ENTT_ID` FOREIGN KEY (`product_id`) REFERENCES `catalog_product_entity` (`entity_id`) ON DELETE CASCADE;

ALTER TABLE `catalog_compare_item`
  ADD CONSTRAINT `CATALOG_COMPARE_ITEM_CUSTOMER_ID_CUSTOMER_ENTITY_ENTITY_ID` FOREIGN KEY (`customer_id`) REFERENCES `customer_entity` (`entity_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `CATALOG_COMPARE_ITEM_PRODUCT_ID_CATALOG_PRODUCT_ENTITY_ENTITY_ID` FOREIGN KEY (`product_id`) REFERENCES `catalog_product_entity` (`entity_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `CATALOG_COMPARE_ITEM_STORE_ID_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`) ON DELETE SET NULL;

ALTER TABLE `catalog_eav_attribute`
  ADD CONSTRAINT `CATALOG_EAV_ATTRIBUTE_ATTRIBUTE_ID_EAV_ATTRIBUTE_ATTRIBUTE_ID` FOREIGN KEY (`attribute_id`) REFERENCES `eav_attribute` (`attribute_id`) ON DELETE CASCADE;

ALTER TABLE `catalog_product_bundle_option`
  ADD CONSTRAINT `CAT_PRD_BNDL_OPT_PARENT_ID_CAT_PRD_ENTT_ENTT_ID` FOREIGN KEY (`parent_id`) REFERENCES `catalog_product_entity` (`entity_id`) ON DELETE CASCADE;

ALTER TABLE `catalog_product_bundle_option_value`
  ADD CONSTRAINT `CAT_PRD_BNDL_OPT_VAL_OPT_ID_CAT_PRD_BNDL_OPT_OPT_ID` FOREIGN KEY (`option_id`) REFERENCES `catalog_product_bundle_option` (`option_id`) ON DELETE CASCADE;

ALTER TABLE `catalog_product_bundle_price_index`
  ADD CONSTRAINT `CAT_PRD_BNDL_PRICE_IDX_CSTR_GROUP_ID_CSTR_GROUP_CSTR_GROUP_ID` FOREIGN KEY (`customer_group_id`) REFERENCES `customer_group` (`customer_group_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `CAT_PRD_BNDL_PRICE_IDX_ENTT_ID_CAT_PRD_ENTT_ENTT_ID` FOREIGN KEY (`entity_id`) REFERENCES `catalog_product_entity` (`entity_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `CAT_PRD_BNDL_PRICE_IDX_WS_ID_STORE_WS_WS_ID` FOREIGN KEY (`website_id`) REFERENCES `store_website` (`website_id`) ON DELETE CASCADE;

ALTER TABLE `catalog_product_bundle_selection`
  ADD CONSTRAINT `CAT_PRD_BNDL_SELECTION_OPT_ID_CAT_PRD_BNDL_OPT_OPT_ID` FOREIGN KEY (`option_id`) REFERENCES `catalog_product_bundle_option` (`option_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `CAT_PRD_BNDL_SELECTION_PRD_ID_CAT_PRD_ENTT_ENTT_ID` FOREIGN KEY (`product_id`) REFERENCES `catalog_product_entity` (`entity_id`) ON DELETE CASCADE;

ALTER TABLE `catalog_product_bundle_selection_price`
  ADD CONSTRAINT `CAT_PRD_BNDL_SELECTION_PRICE_WS_ID_STORE_WS_WS_ID` FOREIGN KEY (`website_id`) REFERENCES `store_website` (`website_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_DCF37523AA05D770A70AA4ED7C2616E4` FOREIGN KEY (`selection_id`) REFERENCES `catalog_product_bundle_selection` (`selection_id`) ON DELETE CASCADE;

ALTER TABLE `catalog_product_entity`
  ADD CONSTRAINT `CAT_PRD_ENTT_ATTR_SET_ID_EAV_ATTR_SET_ATTR_SET_ID` FOREIGN KEY (`attribute_set_id`) REFERENCES `eav_attribute_set` (`attribute_set_id`) ON DELETE CASCADE;

ALTER TABLE `catalog_product_entity_datetime`
  ADD CONSTRAINT `CATALOG_PRODUCT_ENTITY_DATETIME_STORE_ID_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `CAT_PRD_ENTT_DTIME_ATTR_ID_EAV_ATTR_ATTR_ID` FOREIGN KEY (`attribute_id`) REFERENCES `eav_attribute` (`attribute_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `CAT_PRD_ENTT_DTIME_ENTT_ID_CAT_PRD_ENTT_ENTT_ID` FOREIGN KEY (`entity_id`) REFERENCES `catalog_product_entity` (`entity_id`) ON DELETE CASCADE;

ALTER TABLE `catalog_product_entity_decimal`
  ADD CONSTRAINT `CATALOG_PRODUCT_ENTITY_DECIMAL_STORE_ID_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `CAT_PRD_ENTT_DEC_ATTR_ID_EAV_ATTR_ATTR_ID` FOREIGN KEY (`attribute_id`) REFERENCES `eav_attribute` (`attribute_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `CAT_PRD_ENTT_DEC_ENTT_ID_CAT_PRD_ENTT_ENTT_ID` FOREIGN KEY (`entity_id`) REFERENCES `catalog_product_entity` (`entity_id`) ON DELETE CASCADE;

ALTER TABLE `catalog_product_entity_gallery`
  ADD CONSTRAINT `CATALOG_PRODUCT_ENTITY_GALLERY_STORE_ID_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `CAT_PRD_ENTT_GLR_ATTR_ID_EAV_ATTR_ATTR_ID` FOREIGN KEY (`attribute_id`) REFERENCES `eav_attribute` (`attribute_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `CAT_PRD_ENTT_GLR_ENTT_ID_CAT_PRD_ENTT_ENTT_ID` FOREIGN KEY (`entity_id`) REFERENCES `catalog_product_entity` (`entity_id`) ON DELETE CASCADE;

ALTER TABLE `catalog_product_entity_int`
  ADD CONSTRAINT `CATALOG_PRODUCT_ENTITY_INT_STORE_ID_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `CAT_PRD_ENTT_INT_ATTR_ID_EAV_ATTR_ATTR_ID` FOREIGN KEY (`attribute_id`) REFERENCES `eav_attribute` (`attribute_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `CAT_PRD_ENTT_INT_ENTT_ID_CAT_PRD_ENTT_ENTT_ID` FOREIGN KEY (`entity_id`) REFERENCES `catalog_product_entity` (`entity_id`) ON DELETE CASCADE;

ALTER TABLE `catalog_product_entity_media_gallery`
  ADD CONSTRAINT `CAT_PRD_ENTT_MDA_GLR_ATTR_ID_EAV_ATTR_ATTR_ID` FOREIGN KEY (`attribute_id`) REFERENCES `eav_attribute` (`attribute_id`) ON DELETE CASCADE;

ALTER TABLE `catalog_product_entity_media_gallery_value`
  ADD CONSTRAINT `CAT_PRD_ENTT_MDA_GLR_VAL_ENTT_ID_CAT_PRD_ENTT_ENTT_ID` FOREIGN KEY (`entity_id`) REFERENCES `catalog_product_entity` (`entity_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `CAT_PRD_ENTT_MDA_GLR_VAL_STORE_ID_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `CAT_PRD_ENTT_MDA_GLR_VAL_VAL_ID_CAT_PRD_ENTT_MDA_GLR_VAL_ID` FOREIGN KEY (`value_id`) REFERENCES `catalog_product_entity_media_gallery` (`value_id`) ON DELETE CASCADE;

ALTER TABLE `catalog_product_entity_media_gallery_value_to_entity`
  ADD CONSTRAINT `CAT_PRD_ENTT_MDA_GLR_VAL_TO_ENTT_ENTT_ID_CAT_PRD_ENTT_ENTT_ID` FOREIGN KEY (`entity_id`) REFERENCES `catalog_product_entity` (`entity_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_A6C6C8FAA386736921D3A7C4B50B1185` FOREIGN KEY (`value_id`) REFERENCES `catalog_product_entity_media_gallery` (`value_id`) ON DELETE CASCADE;

ALTER TABLE `catalog_product_entity_media_gallery_value_video`
  ADD CONSTRAINT `CAT_PRD_ENTT_MDA_GLR_VAL_VIDEO_STORE_ID_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_6FDF205946906B0E653E60AA769899F8` FOREIGN KEY (`value_id`) REFERENCES `catalog_product_entity_media_gallery` (`value_id`) ON DELETE CASCADE;

ALTER TABLE `catalog_product_entity_text`
  ADD CONSTRAINT `CATALOG_PRODUCT_ENTITY_TEXT_STORE_ID_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `CAT_PRD_ENTT_TEXT_ATTR_ID_EAV_ATTR_ATTR_ID` FOREIGN KEY (`attribute_id`) REFERENCES `eav_attribute` (`attribute_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `CAT_PRD_ENTT_TEXT_ENTT_ID_CAT_PRD_ENTT_ENTT_ID` FOREIGN KEY (`entity_id`) REFERENCES `catalog_product_entity` (`entity_id`) ON DELETE CASCADE;

ALTER TABLE `catalog_product_entity_tier_price`
  ADD CONSTRAINT `CAT_PRD_ENTT_TIER_PRICE_CSTR_GROUP_ID_CSTR_GROUP_CSTR_GROUP_ID` FOREIGN KEY (`customer_group_id`) REFERENCES `customer_group` (`customer_group_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `CAT_PRD_ENTT_TIER_PRICE_ENTT_ID_CAT_PRD_ENTT_ENTT_ID` FOREIGN KEY (`entity_id`) REFERENCES `catalog_product_entity` (`entity_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `CAT_PRD_ENTT_TIER_PRICE_WS_ID_STORE_WS_WS_ID` FOREIGN KEY (`website_id`) REFERENCES `store_website` (`website_id`) ON DELETE CASCADE;

ALTER TABLE `catalog_product_entity_varchar`
  ADD CONSTRAINT `CATALOG_PRODUCT_ENTITY_VARCHAR_STORE_ID_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `CAT_PRD_ENTT_VCHR_ATTR_ID_EAV_ATTR_ATTR_ID` FOREIGN KEY (`attribute_id`) REFERENCES `eav_attribute` (`attribute_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `CAT_PRD_ENTT_VCHR_ENTT_ID_CAT_PRD_ENTT_ENTT_ID` FOREIGN KEY (`entity_id`) REFERENCES `catalog_product_entity` (`entity_id`) ON DELETE CASCADE;

ALTER TABLE `catalog_product_index_price`
  ADD CONSTRAINT `CATALOG_PRODUCT_INDEX_PRICE_WEBSITE_ID_STORE_WEBSITE_WEBSITE_ID` FOREIGN KEY (`website_id`) REFERENCES `store_website` (`website_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `CAT_PRD_IDX_PRICE_CSTR_GROUP_ID_CSTR_GROUP_CSTR_GROUP_ID` FOREIGN KEY (`customer_group_id`) REFERENCES `customer_group` (`customer_group_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `CAT_PRD_IDX_PRICE_ENTT_ID_CAT_PRD_ENTT_ENTT_ID` FOREIGN KEY (`entity_id`) REFERENCES `catalog_product_entity` (`entity_id`) ON DELETE CASCADE;

ALTER TABLE `catalog_product_index_tier_price`
  ADD CONSTRAINT `CAT_PRD_IDX_TIER_PRICE_CSTR_GROUP_ID_CSTR_GROUP_CSTR_GROUP_ID` FOREIGN KEY (`customer_group_id`) REFERENCES `customer_group` (`customer_group_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `CAT_PRD_IDX_TIER_PRICE_ENTT_ID_CAT_PRD_ENTT_ENTT_ID` FOREIGN KEY (`entity_id`) REFERENCES `catalog_product_entity` (`entity_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `CAT_PRD_IDX_TIER_PRICE_WS_ID_STORE_WS_WS_ID` FOREIGN KEY (`website_id`) REFERENCES `store_website` (`website_id`) ON DELETE CASCADE;

ALTER TABLE `catalog_product_index_website`
  ADD CONSTRAINT `CAT_PRD_IDX_WS_WS_ID_STORE_WS_WS_ID` FOREIGN KEY (`website_id`) REFERENCES `store_website` (`website_id`) ON DELETE CASCADE;

ALTER TABLE `catalog_product_link`
  ADD CONSTRAINT `CATALOG_PRODUCT_LINK_PRODUCT_ID_CATALOG_PRODUCT_ENTITY_ENTITY_ID` FOREIGN KEY (`product_id`) REFERENCES `catalog_product_entity` (`entity_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `CAT_PRD_LNK_LNKED_PRD_ID_CAT_PRD_ENTT_ENTT_ID` FOREIGN KEY (`linked_product_id`) REFERENCES `catalog_product_entity` (`entity_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `CAT_PRD_LNK_LNK_TYPE_ID_CAT_PRD_LNK_TYPE_LNK_TYPE_ID` FOREIGN KEY (`link_type_id`) REFERENCES `catalog_product_link_type` (`link_type_id`) ON DELETE CASCADE;

ALTER TABLE `catalog_product_link_attribute`
  ADD CONSTRAINT `CAT_PRD_LNK_ATTR_LNK_TYPE_ID_CAT_PRD_LNK_TYPE_LNK_TYPE_ID` FOREIGN KEY (`link_type_id`) REFERENCES `catalog_product_link_type` (`link_type_id`) ON DELETE CASCADE;

ALTER TABLE `catalog_product_link_attribute_decimal`
  ADD CONSTRAINT `CAT_PRD_LNK_ATTR_DEC_LNK_ID_CAT_PRD_LNK_LNK_ID` FOREIGN KEY (`link_id`) REFERENCES `catalog_product_link` (`link_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_AB2EFA9A14F7BCF1D5400056203D14B6` FOREIGN KEY (`product_link_attribute_id`) REFERENCES `catalog_product_link_attribute` (`product_link_attribute_id`) ON DELETE CASCADE;

ALTER TABLE `catalog_product_link_attribute_int`
  ADD CONSTRAINT `CAT_PRD_LNK_ATTR_INT_LNK_ID_CAT_PRD_LNK_LNK_ID` FOREIGN KEY (`link_id`) REFERENCES `catalog_product_link` (`link_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_D6D878F8BA2A4282F8DDED7E6E3DE35C` FOREIGN KEY (`product_link_attribute_id`) REFERENCES `catalog_product_link_attribute` (`product_link_attribute_id`) ON DELETE CASCADE;

ALTER TABLE `catalog_product_link_attribute_varchar`
  ADD CONSTRAINT `CAT_PRD_LNK_ATTR_VCHR_LNK_ID_CAT_PRD_LNK_LNK_ID` FOREIGN KEY (`link_id`) REFERENCES `catalog_product_link` (`link_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_DEE9C4DA61CFCC01DFCF50F0D79CEA51` FOREIGN KEY (`product_link_attribute_id`) REFERENCES `catalog_product_link_attribute` (`product_link_attribute_id`) ON DELETE CASCADE;

ALTER TABLE `catalog_product_option`
  ADD CONSTRAINT `CAT_PRD_OPT_PRD_ID_CAT_PRD_ENTT_ENTT_ID` FOREIGN KEY (`product_id`) REFERENCES `catalog_product_entity` (`entity_id`) ON DELETE CASCADE;

ALTER TABLE `catalog_product_option_price`
  ADD CONSTRAINT `CATALOG_PRODUCT_OPTION_PRICE_STORE_ID_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `CAT_PRD_OPT_PRICE_OPT_ID_CAT_PRD_OPT_OPT_ID` FOREIGN KEY (`option_id`) REFERENCES `catalog_product_option` (`option_id`) ON DELETE CASCADE;

ALTER TABLE `catalog_product_option_title`
  ADD CONSTRAINT `CATALOG_PRODUCT_OPTION_TITLE_STORE_ID_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `CAT_PRD_OPT_TTL_OPT_ID_CAT_PRD_OPT_OPT_ID` FOREIGN KEY (`option_id`) REFERENCES `catalog_product_option` (`option_id`) ON DELETE CASCADE;

ALTER TABLE `catalog_product_option_type_price`
  ADD CONSTRAINT `CATALOG_PRODUCT_OPTION_TYPE_PRICE_STORE_ID_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_B523E3378E8602F376CC415825576B7F` FOREIGN KEY (`option_type_id`) REFERENCES `catalog_product_option_type_value` (`option_type_id`) ON DELETE CASCADE;

ALTER TABLE `catalog_product_option_type_title`
  ADD CONSTRAINT `CATALOG_PRODUCT_OPTION_TYPE_TITLE_STORE_ID_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_C085B9CF2C2A302E8043FDEA1937D6A2` FOREIGN KEY (`option_type_id`) REFERENCES `catalog_product_option_type_value` (`option_type_id`) ON DELETE CASCADE;

ALTER TABLE `catalog_product_option_type_value`
  ADD CONSTRAINT `CAT_PRD_OPT_TYPE_VAL_OPT_ID_CAT_PRD_OPT_OPT_ID` FOREIGN KEY (`option_id`) REFERENCES `catalog_product_option` (`option_id`) ON DELETE CASCADE;

ALTER TABLE `catalog_product_relation`
  ADD CONSTRAINT `CAT_PRD_RELATION_CHILD_ID_CAT_PRD_ENTT_ENTT_ID` FOREIGN KEY (`child_id`) REFERENCES `catalog_product_entity` (`entity_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `CAT_PRD_RELATION_PARENT_ID_CAT_PRD_ENTT_ENTT_ID` FOREIGN KEY (`parent_id`) REFERENCES `catalog_product_entity` (`entity_id`) ON DELETE CASCADE;

ALTER TABLE `catalog_product_super_attribute`
  ADD CONSTRAINT `CAT_PRD_SPR_ATTR_PRD_ID_CAT_PRD_ENTT_ENTT_ID` FOREIGN KEY (`product_id`) REFERENCES `catalog_product_entity` (`entity_id`) ON DELETE CASCADE;

ALTER TABLE `catalog_product_super_attribute_label`
  ADD CONSTRAINT `CATALOG_PRODUCT_SUPER_ATTRIBUTE_LABEL_STORE_ID_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_309442281DF7784210ED82B2CC51E5D5` FOREIGN KEY (`product_super_attribute_id`) REFERENCES `catalog_product_super_attribute` (`product_super_attribute_id`) ON DELETE CASCADE;

ALTER TABLE `catalog_product_super_link`
  ADD CONSTRAINT `CAT_PRD_SPR_LNK_PARENT_ID_CAT_PRD_ENTT_ENTT_ID` FOREIGN KEY (`parent_id`) REFERENCES `catalog_product_entity` (`entity_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `CAT_PRD_SPR_LNK_PRD_ID_CAT_PRD_ENTT_ENTT_ID` FOREIGN KEY (`product_id`) REFERENCES `catalog_product_entity` (`entity_id`) ON DELETE CASCADE;

ALTER TABLE `catalog_product_website`
  ADD CONSTRAINT `CATALOG_PRODUCT_WEBSITE_WEBSITE_ID_STORE_WEBSITE_WEBSITE_ID` FOREIGN KEY (`website_id`) REFERENCES `store_website` (`website_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `CAT_PRD_WS_PRD_ID_CAT_PRD_ENTT_ENTT_ID` FOREIGN KEY (`product_id`) REFERENCES `catalog_product_entity` (`entity_id`) ON DELETE CASCADE;

ALTER TABLE `catalog_url_rewrite_product_category`
  ADD CONSTRAINT `CAT_URL_REWRITE_PRD_CTGR_CTGR_ID_CAT_CTGR_ENTT_ENTT_ID` FOREIGN KEY (`category_id`) REFERENCES `catalog_category_entity` (`entity_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `CAT_URL_REWRITE_PRD_CTGR_PRD_ID_CAT_PRD_ENTT_ENTT_ID` FOREIGN KEY (`product_id`) REFERENCES `catalog_product_entity` (`entity_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_BB79E64705D7F17FE181F23144528FC8` FOREIGN KEY (`url_rewrite_id`) REFERENCES `url_rewrite` (`url_rewrite_id`) ON DELETE CASCADE;

ALTER TABLE `cataloginventory_stock_item`
  ADD CONSTRAINT `CATINV_STOCK_ITEM_PRD_ID_CAT_PRD_ENTT_ENTT_ID` FOREIGN KEY (`product_id`) REFERENCES `catalog_product_entity` (`entity_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `CATINV_STOCK_ITEM_STOCK_ID_CATINV_STOCK_STOCK_ID` FOREIGN KEY (`stock_id`) REFERENCES `cataloginventory_stock` (`stock_id`) ON DELETE CASCADE;

ALTER TABLE `catalogrule_customer_group`
  ADD CONSTRAINT `CATALOGRULE_CUSTOMER_GROUP_RULE_ID_CATALOGRULE_RULE_ID` FOREIGN KEY (`rule_id`) REFERENCES `catalogrule` (`rule_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `CATRULE_CSTR_GROUP_CSTR_GROUP_ID_CSTR_GROUP_CSTR_GROUP_ID` FOREIGN KEY (`customer_group_id`) REFERENCES `customer_group` (`customer_group_id`) ON DELETE CASCADE;

ALTER TABLE `catalogrule_group_website`
  ADD CONSTRAINT `CATALOGRULE_GROUP_WEBSITE_RULE_ID_CATALOGRULE_RULE_ID` FOREIGN KEY (`rule_id`) REFERENCES `catalogrule` (`rule_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `CATALOGRULE_GROUP_WEBSITE_WEBSITE_ID_STORE_WEBSITE_WEBSITE_ID` FOREIGN KEY (`website_id`) REFERENCES `store_website` (`website_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `CATRULE_GROUP_WS_CSTR_GROUP_ID_CSTR_GROUP_CSTR_GROUP_ID` FOREIGN KEY (`customer_group_id`) REFERENCES `customer_group` (`customer_group_id`) ON DELETE CASCADE;

ALTER TABLE `catalogrule_website`
  ADD CONSTRAINT `CATALOGRULE_WEBSITE_RULE_ID_CATALOGRULE_RULE_ID` FOREIGN KEY (`rule_id`) REFERENCES `catalogrule` (`rule_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `CATALOGRULE_WEBSITE_WEBSITE_ID_STORE_WEBSITE_WEBSITE_ID` FOREIGN KEY (`website_id`) REFERENCES `store_website` (`website_id`) ON DELETE CASCADE;

ALTER TABLE `checkout_agreement_store`
  ADD CONSTRAINT `CHECKOUT_AGREEMENT_STORE_STORE_ID_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `CHKT_AGRT_STORE_AGRT_ID_CHKT_AGRT_AGRT_ID` FOREIGN KEY (`agreement_id`) REFERENCES `checkout_agreement` (`agreement_id`) ON DELETE CASCADE;

ALTER TABLE `cms_block_store`
  ADD CONSTRAINT `CMS_BLOCK_STORE_BLOCK_ID_CMS_BLOCK_BLOCK_ID` FOREIGN KEY (`block_id`) REFERENCES `cms_block` (`block_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `CMS_BLOCK_STORE_STORE_ID_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`) ON DELETE CASCADE;

ALTER TABLE `cms_page_store`
  ADD CONSTRAINT `CMS_PAGE_STORE_PAGE_ID_CMS_PAGE_PAGE_ID` FOREIGN KEY (`page_id`) REFERENCES `cms_page` (`page_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `CMS_PAGE_STORE_STORE_ID_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`) ON DELETE CASCADE;

ALTER TABLE `customer_address_entity`
  ADD CONSTRAINT `CUSTOMER_ADDRESS_ENTITY_PARENT_ID_CUSTOMER_ENTITY_ENTITY_ID` FOREIGN KEY (`parent_id`) REFERENCES `customer_entity` (`entity_id`) ON DELETE CASCADE;

ALTER TABLE `customer_address_entity_datetime`
  ADD CONSTRAINT `CSTR_ADDR_ENTT_DTIME_ATTR_ID_EAV_ATTR_ATTR_ID` FOREIGN KEY (`attribute_id`) REFERENCES `eav_attribute` (`attribute_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `CSTR_ADDR_ENTT_DTIME_ENTT_ID_CSTR_ADDR_ENTT_ENTT_ID` FOREIGN KEY (`entity_id`) REFERENCES `customer_address_entity` (`entity_id`) ON DELETE CASCADE;

ALTER TABLE `customer_address_entity_decimal`
  ADD CONSTRAINT `CSTR_ADDR_ENTT_DEC_ATTR_ID_EAV_ATTR_ATTR_ID` FOREIGN KEY (`attribute_id`) REFERENCES `eav_attribute` (`attribute_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `CSTR_ADDR_ENTT_DEC_ENTT_ID_CSTR_ADDR_ENTT_ENTT_ID` FOREIGN KEY (`entity_id`) REFERENCES `customer_address_entity` (`entity_id`) ON DELETE CASCADE;

ALTER TABLE `customer_address_entity_int`
  ADD CONSTRAINT `CSTR_ADDR_ENTT_INT_ATTR_ID_EAV_ATTR_ATTR_ID` FOREIGN KEY (`attribute_id`) REFERENCES `eav_attribute` (`attribute_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `CSTR_ADDR_ENTT_INT_ENTT_ID_CSTR_ADDR_ENTT_ENTT_ID` FOREIGN KEY (`entity_id`) REFERENCES `customer_address_entity` (`entity_id`) ON DELETE CASCADE;

ALTER TABLE `customer_address_entity_text`
  ADD CONSTRAINT `CSTR_ADDR_ENTT_TEXT_ATTR_ID_EAV_ATTR_ATTR_ID` FOREIGN KEY (`attribute_id`) REFERENCES `eav_attribute` (`attribute_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `CSTR_ADDR_ENTT_TEXT_ENTT_ID_CSTR_ADDR_ENTT_ENTT_ID` FOREIGN KEY (`entity_id`) REFERENCES `customer_address_entity` (`entity_id`) ON DELETE CASCADE;

ALTER TABLE `customer_address_entity_varchar`
  ADD CONSTRAINT `CSTR_ADDR_ENTT_VCHR_ATTR_ID_EAV_ATTR_ATTR_ID` FOREIGN KEY (`attribute_id`) REFERENCES `eav_attribute` (`attribute_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `CSTR_ADDR_ENTT_VCHR_ENTT_ID_CSTR_ADDR_ENTT_ENTT_ID` FOREIGN KEY (`entity_id`) REFERENCES `customer_address_entity` (`entity_id`) ON DELETE CASCADE;

ALTER TABLE `customer_eav_attribute`
  ADD CONSTRAINT `CUSTOMER_EAV_ATTRIBUTE_ATTRIBUTE_ID_EAV_ATTRIBUTE_ATTRIBUTE_ID` FOREIGN KEY (`attribute_id`) REFERENCES `eav_attribute` (`attribute_id`) ON DELETE CASCADE;

ALTER TABLE `customer_eav_attribute_website`
  ADD CONSTRAINT `CSTR_EAV_ATTR_WS_ATTR_ID_EAV_ATTR_ATTR_ID` FOREIGN KEY (`attribute_id`) REFERENCES `eav_attribute` (`attribute_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `CSTR_EAV_ATTR_WS_WS_ID_STORE_WS_WS_ID` FOREIGN KEY (`website_id`) REFERENCES `store_website` (`website_id`) ON DELETE CASCADE;

ALTER TABLE `customer_entity`
  ADD CONSTRAINT `CUSTOMER_ENTITY_STORE_ID_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`) ON DELETE SET NULL,
  ADD CONSTRAINT `CUSTOMER_ENTITY_WEBSITE_ID_STORE_WEBSITE_WEBSITE_ID` FOREIGN KEY (`website_id`) REFERENCES `store_website` (`website_id`) ON DELETE SET NULL;

ALTER TABLE `customer_entity_datetime`
  ADD CONSTRAINT `CUSTOMER_ENTITY_DATETIME_ATTRIBUTE_ID_EAV_ATTRIBUTE_ATTRIBUTE_ID` FOREIGN KEY (`attribute_id`) REFERENCES `eav_attribute` (`attribute_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `CUSTOMER_ENTITY_DATETIME_ENTITY_ID_CUSTOMER_ENTITY_ENTITY_ID` FOREIGN KEY (`entity_id`) REFERENCES `customer_entity` (`entity_id`) ON DELETE CASCADE;

ALTER TABLE `customer_entity_decimal`
  ADD CONSTRAINT `CUSTOMER_ENTITY_DECIMAL_ATTRIBUTE_ID_EAV_ATTRIBUTE_ATTRIBUTE_ID` FOREIGN KEY (`attribute_id`) REFERENCES `eav_attribute` (`attribute_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `CUSTOMER_ENTITY_DECIMAL_ENTITY_ID_CUSTOMER_ENTITY_ENTITY_ID` FOREIGN KEY (`entity_id`) REFERENCES `customer_entity` (`entity_id`) ON DELETE CASCADE;

ALTER TABLE `customer_entity_int`
  ADD CONSTRAINT `CUSTOMER_ENTITY_INT_ATTRIBUTE_ID_EAV_ATTRIBUTE_ATTRIBUTE_ID` FOREIGN KEY (`attribute_id`) REFERENCES `eav_attribute` (`attribute_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `CUSTOMER_ENTITY_INT_ENTITY_ID_CUSTOMER_ENTITY_ENTITY_ID` FOREIGN KEY (`entity_id`) REFERENCES `customer_entity` (`entity_id`) ON DELETE CASCADE;

ALTER TABLE `customer_entity_text`
  ADD CONSTRAINT `CUSTOMER_ENTITY_TEXT_ATTRIBUTE_ID_EAV_ATTRIBUTE_ATTRIBUTE_ID` FOREIGN KEY (`attribute_id`) REFERENCES `eav_attribute` (`attribute_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `CUSTOMER_ENTITY_TEXT_ENTITY_ID_CUSTOMER_ENTITY_ENTITY_ID` FOREIGN KEY (`entity_id`) REFERENCES `customer_entity` (`entity_id`) ON DELETE CASCADE;

ALTER TABLE `customer_entity_varchar`
  ADD CONSTRAINT `CUSTOMER_ENTITY_VARCHAR_ATTRIBUTE_ID_EAV_ATTRIBUTE_ATTRIBUTE_ID` FOREIGN KEY (`attribute_id`) REFERENCES `eav_attribute` (`attribute_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `CUSTOMER_ENTITY_VARCHAR_ENTITY_ID_CUSTOMER_ENTITY_ENTITY_ID` FOREIGN KEY (`entity_id`) REFERENCES `customer_entity` (`entity_id`) ON DELETE CASCADE;

ALTER TABLE `customer_form_attribute`
  ADD CONSTRAINT `CUSTOMER_FORM_ATTRIBUTE_ATTRIBUTE_ID_EAV_ATTRIBUTE_ATTRIBUTE_ID` FOREIGN KEY (`attribute_id`) REFERENCES `eav_attribute` (`attribute_id`) ON DELETE CASCADE;

ALTER TABLE `design_change`
  ADD CONSTRAINT `DESIGN_CHANGE_STORE_ID_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`) ON DELETE CASCADE;

ALTER TABLE `directory_country_region_name`
  ADD CONSTRAINT `DIR_COUNTRY_REGION_NAME_REGION_ID_DIR_COUNTRY_REGION_REGION_ID` FOREIGN KEY (`region_id`) REFERENCES `directory_country_region` (`region_id`) ON DELETE CASCADE;

ALTER TABLE `downloadable_link`
  ADD CONSTRAINT `DOWNLOADABLE_LINK_PRODUCT_ID_CATALOG_PRODUCT_ENTITY_ENTITY_ID` FOREIGN KEY (`product_id`) REFERENCES `catalog_product_entity` (`entity_id`) ON DELETE CASCADE;

ALTER TABLE `downloadable_link_price`
  ADD CONSTRAINT `DOWNLOADABLE_LINK_PRICE_LINK_ID_DOWNLOADABLE_LINK_LINK_ID` FOREIGN KEY (`link_id`) REFERENCES `downloadable_link` (`link_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `DOWNLOADABLE_LINK_PRICE_WEBSITE_ID_STORE_WEBSITE_WEBSITE_ID` FOREIGN KEY (`website_id`) REFERENCES `store_website` (`website_id`) ON DELETE CASCADE;

ALTER TABLE `downloadable_link_purchased`
  ADD CONSTRAINT `DL_LNK_PURCHASED_CSTR_ID_CSTR_ENTT_ENTT_ID` FOREIGN KEY (`customer_id`) REFERENCES `customer_entity` (`entity_id`) ON DELETE SET NULL,
  ADD CONSTRAINT `DOWNLOADABLE_LINK_PURCHASED_ORDER_ID_SALES_ORDER_ENTITY_ID` FOREIGN KEY (`order_id`) REFERENCES `sales_order` (`entity_id`) ON DELETE SET NULL;

ALTER TABLE `downloadable_link_purchased_item`
  ADD CONSTRAINT `DL_LNK_PURCHASED_ITEM_ORDER_ITEM_ID_SALES_ORDER_ITEM_ITEM_ID` FOREIGN KEY (`order_item_id`) REFERENCES `sales_order_item` (`item_id`) ON DELETE SET NULL,
  ADD CONSTRAINT `DL_LNK_PURCHASED_ITEM_PURCHASED_ID_DL_LNK_PURCHASED_PURCHASED_ID` FOREIGN KEY (`purchased_id`) REFERENCES `downloadable_link_purchased` (`purchased_id`) ON DELETE CASCADE;

ALTER TABLE `downloadable_link_title`
  ADD CONSTRAINT `DOWNLOADABLE_LINK_TITLE_LINK_ID_DOWNLOADABLE_LINK_LINK_ID` FOREIGN KEY (`link_id`) REFERENCES `downloadable_link` (`link_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `DOWNLOADABLE_LINK_TITLE_STORE_ID_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`) ON DELETE CASCADE;

ALTER TABLE `downloadable_sample`
  ADD CONSTRAINT `DOWNLOADABLE_SAMPLE_PRODUCT_ID_CATALOG_PRODUCT_ENTITY_ENTITY_ID` FOREIGN KEY (`product_id`) REFERENCES `catalog_product_entity` (`entity_id`) ON DELETE CASCADE;

ALTER TABLE `downloadable_sample_title`
  ADD CONSTRAINT `DL_SAMPLE_TTL_SAMPLE_ID_DL_SAMPLE_SAMPLE_ID` FOREIGN KEY (`sample_id`) REFERENCES `downloadable_sample` (`sample_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `DOWNLOADABLE_SAMPLE_TITLE_STORE_ID_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`) ON DELETE CASCADE;

ALTER TABLE `eav_attribute`
  ADD CONSTRAINT `EAV_ATTRIBUTE_ENTITY_TYPE_ID_EAV_ENTITY_TYPE_ENTITY_TYPE_ID` FOREIGN KEY (`entity_type_id`) REFERENCES `eav_entity_type` (`entity_type_id`) ON DELETE CASCADE;

ALTER TABLE `eav_attribute_group`
  ADD CONSTRAINT `EAV_ATTR_GROUP_ATTR_SET_ID_EAV_ATTR_SET_ATTR_SET_ID` FOREIGN KEY (`attribute_set_id`) REFERENCES `eav_attribute_set` (`attribute_set_id`) ON DELETE CASCADE;

ALTER TABLE `eav_attribute_label`
  ADD CONSTRAINT `EAV_ATTRIBUTE_LABEL_ATTRIBUTE_ID_EAV_ATTRIBUTE_ATTRIBUTE_ID` FOREIGN KEY (`attribute_id`) REFERENCES `eav_attribute` (`attribute_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `EAV_ATTRIBUTE_LABEL_STORE_ID_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`) ON DELETE CASCADE;

ALTER TABLE `eav_attribute_option`
  ADD CONSTRAINT `EAV_ATTRIBUTE_OPTION_ATTRIBUTE_ID_EAV_ATTRIBUTE_ATTRIBUTE_ID` FOREIGN KEY (`attribute_id`) REFERENCES `eav_attribute` (`attribute_id`) ON DELETE CASCADE;

ALTER TABLE `eav_attribute_option_swatch`
  ADD CONSTRAINT `EAV_ATTRIBUTE_OPTION_SWATCH_STORE_ID_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `EAV_ATTR_OPT_SWATCH_OPT_ID_EAV_ATTR_OPT_OPT_ID` FOREIGN KEY (`option_id`) REFERENCES `eav_attribute_option` (`option_id`) ON DELETE CASCADE;

ALTER TABLE `eav_attribute_option_value`
  ADD CONSTRAINT `EAV_ATTRIBUTE_OPTION_VALUE_STORE_ID_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `EAV_ATTR_OPT_VAL_OPT_ID_EAV_ATTR_OPT_OPT_ID` FOREIGN KEY (`option_id`) REFERENCES `eav_attribute_option` (`option_id`) ON DELETE CASCADE;

ALTER TABLE `eav_attribute_set`
  ADD CONSTRAINT `EAV_ATTRIBUTE_SET_ENTITY_TYPE_ID_EAV_ENTITY_TYPE_ENTITY_TYPE_ID` FOREIGN KEY (`entity_type_id`) REFERENCES `eav_entity_type` (`entity_type_id`) ON DELETE CASCADE;

ALTER TABLE `eav_entity`
  ADD CONSTRAINT `EAV_ENTITY_ENTITY_TYPE_ID_EAV_ENTITY_TYPE_ENTITY_TYPE_ID` FOREIGN KEY (`entity_type_id`) REFERENCES `eav_entity_type` (`entity_type_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `EAV_ENTITY_STORE_ID_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`) ON DELETE CASCADE;

ALTER TABLE `eav_entity_attribute`
  ADD CONSTRAINT `EAV_ENTITY_ATTRIBUTE_ATTRIBUTE_ID_EAV_ATTRIBUTE_ATTRIBUTE_ID` FOREIGN KEY (`attribute_id`) REFERENCES `eav_attribute` (`attribute_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `EAV_ENTT_ATTR_ATTR_GROUP_ID_EAV_ATTR_GROUP_ATTR_GROUP_ID` FOREIGN KEY (`attribute_group_id`) REFERENCES `eav_attribute_group` (`attribute_group_id`) ON DELETE CASCADE;

ALTER TABLE `eav_entity_datetime`
  ADD CONSTRAINT `EAV_ENTITY_DATETIME_ENTITY_ID_EAV_ENTITY_ENTITY_ID` FOREIGN KEY (`entity_id`) REFERENCES `eav_entity` (`entity_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `EAV_ENTITY_DATETIME_STORE_ID_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `EAV_ENTT_DTIME_ENTT_TYPE_ID_EAV_ENTT_TYPE_ENTT_TYPE_ID` FOREIGN KEY (`entity_type_id`) REFERENCES `eav_entity_type` (`entity_type_id`) ON DELETE CASCADE;

ALTER TABLE `eav_entity_decimal`
  ADD CONSTRAINT `EAV_ENTITY_DECIMAL_ENTITY_ID_EAV_ENTITY_ENTITY_ID` FOREIGN KEY (`entity_id`) REFERENCES `eav_entity` (`entity_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `EAV_ENTITY_DECIMAL_ENTITY_TYPE_ID_EAV_ENTITY_TYPE_ENTITY_TYPE_ID` FOREIGN KEY (`entity_type_id`) REFERENCES `eav_entity_type` (`entity_type_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `EAV_ENTITY_DECIMAL_STORE_ID_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`) ON DELETE CASCADE;

ALTER TABLE `eav_entity_int`
  ADD CONSTRAINT `EAV_ENTITY_INT_ENTITY_ID_EAV_ENTITY_ENTITY_ID` FOREIGN KEY (`entity_id`) REFERENCES `eav_entity` (`entity_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `EAV_ENTITY_INT_ENTITY_TYPE_ID_EAV_ENTITY_TYPE_ENTITY_TYPE_ID` FOREIGN KEY (`entity_type_id`) REFERENCES `eav_entity_type` (`entity_type_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `EAV_ENTITY_INT_STORE_ID_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`) ON DELETE CASCADE;

ALTER TABLE `eav_entity_store`
  ADD CONSTRAINT `EAV_ENTITY_STORE_ENTITY_TYPE_ID_EAV_ENTITY_TYPE_ENTITY_TYPE_ID` FOREIGN KEY (`entity_type_id`) REFERENCES `eav_entity_type` (`entity_type_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `EAV_ENTITY_STORE_STORE_ID_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`) ON DELETE CASCADE;

ALTER TABLE `eav_entity_text`
  ADD CONSTRAINT `EAV_ENTITY_TEXT_ENTITY_ID_EAV_ENTITY_ENTITY_ID` FOREIGN KEY (`entity_id`) REFERENCES `eav_entity` (`entity_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `EAV_ENTITY_TEXT_ENTITY_TYPE_ID_EAV_ENTITY_TYPE_ENTITY_TYPE_ID` FOREIGN KEY (`entity_type_id`) REFERENCES `eav_entity_type` (`entity_type_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `EAV_ENTITY_TEXT_STORE_ID_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`) ON DELETE CASCADE;

ALTER TABLE `eav_entity_varchar`
  ADD CONSTRAINT `EAV_ENTITY_VARCHAR_ENTITY_ID_EAV_ENTITY_ENTITY_ID` FOREIGN KEY (`entity_id`) REFERENCES `eav_entity` (`entity_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `EAV_ENTITY_VARCHAR_ENTITY_TYPE_ID_EAV_ENTITY_TYPE_ENTITY_TYPE_ID` FOREIGN KEY (`entity_type_id`) REFERENCES `eav_entity_type` (`entity_type_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `EAV_ENTITY_VARCHAR_STORE_ID_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`) ON DELETE CASCADE;

ALTER TABLE `eav_form_element`
  ADD CONSTRAINT `EAV_FORM_ELEMENT_ATTRIBUTE_ID_EAV_ATTRIBUTE_ATTRIBUTE_ID` FOREIGN KEY (`attribute_id`) REFERENCES `eav_attribute` (`attribute_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `EAV_FORM_ELEMENT_FIELDSET_ID_EAV_FORM_FIELDSET_FIELDSET_ID` FOREIGN KEY (`fieldset_id`) REFERENCES `eav_form_fieldset` (`fieldset_id`) ON DELETE SET NULL,
  ADD CONSTRAINT `EAV_FORM_ELEMENT_TYPE_ID_EAV_FORM_TYPE_TYPE_ID` FOREIGN KEY (`type_id`) REFERENCES `eav_form_type` (`type_id`) ON DELETE CASCADE;

ALTER TABLE `eav_form_fieldset`
  ADD CONSTRAINT `EAV_FORM_FIELDSET_TYPE_ID_EAV_FORM_TYPE_TYPE_ID` FOREIGN KEY (`type_id`) REFERENCES `eav_form_type` (`type_id`) ON DELETE CASCADE;

ALTER TABLE `eav_form_fieldset_label`
  ADD CONSTRAINT `EAV_FORM_FIELDSET_LABEL_STORE_ID_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `EAV_FORM_FSET_LBL_FSET_ID_EAV_FORM_FSET_FSET_ID` FOREIGN KEY (`fieldset_id`) REFERENCES `eav_form_fieldset` (`fieldset_id`) ON DELETE CASCADE;

ALTER TABLE `eav_form_type`
  ADD CONSTRAINT `EAV_FORM_TYPE_STORE_ID_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`) ON DELETE CASCADE;

ALTER TABLE `eav_form_type_entity`
  ADD CONSTRAINT `EAV_FORM_TYPE_ENTITY_TYPE_ID_EAV_FORM_TYPE_TYPE_ID` FOREIGN KEY (`type_id`) REFERENCES `eav_form_type` (`type_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `EAV_FORM_TYPE_ENTT_ENTT_TYPE_ID_EAV_ENTT_TYPE_ENTT_TYPE_ID` FOREIGN KEY (`entity_type_id`) REFERENCES `eav_entity_type` (`entity_type_id`) ON DELETE CASCADE;

ALTER TABLE `googleoptimizer_code`
  ADD CONSTRAINT `GOOGLEOPTIMIZER_CODE_STORE_ID_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`) ON DELETE CASCADE;

ALTER TABLE `integration`
  ADD CONSTRAINT `INTEGRATION_CONSUMER_ID_OAUTH_CONSUMER_ENTITY_ID` FOREIGN KEY (`consumer_id`) REFERENCES `oauth_consumer` (`entity_id`) ON DELETE CASCADE;

ALTER TABLE `itoris_dynamicproductoptions_option`
  ADD CONSTRAINT `FK_ITORIS_DOPTIONS_OPTION_OPTION_ID` FOREIGN KEY (`orig_option_id`) REFERENCES `catalog_product_option` (`option_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_ITORIS_DOPTIONS_OPTION_PRODUCT_ID` FOREIGN KEY (`product_id`) REFERENCES `catalog_product_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_ITORIS_DOPTIONS_OPTION_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE;

ALTER TABLE `itoris_dynamicproductoptions_option_customergroup`
  ADD CONSTRAINT `FK_ITORIS_DOPTIONS_OPTION_CUSTOMERGROUP_GROUP_ID` FOREIGN KEY (`group_id`) REFERENCES `customer_group` (`customer_group_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_ITORIS_DOPTIONS_OPTION_CUSTOMERGROUP_OPTION_ID` FOREIGN KEY (`option_id`) REFERENCES `itoris_dynamicproductoptions_option` (`option_id`) ON DELETE CASCADE ON UPDATE CASCADE;

ALTER TABLE `itoris_dynamicproductoptions_option_value`
  ADD CONSTRAINT `FK_ITORIS_DOPTIONS_VALUE_PRODUCT_ID` FOREIGN KEY (`product_id`) REFERENCES `catalog_product_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_ITORIS_DOPTIONS_VALUE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_ITORIS_DOPTIONS_VALUE_VALUE_ID` FOREIGN KEY (`orig_value_id`) REFERENCES `catalog_product_option_type_value` (`option_type_id`) ON DELETE CASCADE ON UPDATE CASCADE;

ALTER TABLE `itoris_dynamicproductoptions_option_value_customergroup`
  ADD CONSTRAINT `FK_ITORIS_DOPTIONS_VALUE_CUSTOMERGROUP_GROUP_ID` FOREIGN KEY (`group_id`) REFERENCES `customer_group` (`customer_group_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_ITORIS_DOPTIONS_VALUE_CUSTOMERGROUP_VALUE_ID` FOREIGN KEY (`value_id`) REFERENCES `itoris_dynamicproductoptions_option_value` (`value_id`) ON DELETE CASCADE ON UPDATE CASCADE;

ALTER TABLE `itoris_dynamicproductoptions_options`
  ADD CONSTRAINT `FK_ITORIS_DOPTIONS_OPTIONS_PRODUCT_ID` FOREIGN KEY (`product_id`) REFERENCES `catalog_product_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_ITORIS_DOPTIONS_OPTIONS_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE;

ALTER TABLE `itoris_dynamicproductoptions_template_product`
  ADD CONSTRAINT `FK_ITORIS_DOPTIONS_TEMPLATE_CONFIG_ID` FOREIGN KEY (`config_id`) REFERENCES `itoris_dynamicproductoptions_options` (`config_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_ITORIS_DOPTIONS_TEMPLATE_PRODUCT_ID` FOREIGN KEY (`template_id`) REFERENCES `itoris_dynamicproductoptions_template` (`template_id`) ON DELETE CASCADE ON UPDATE CASCADE;

ALTER TABLE `itoris_productpriceformula_conditions`
  ADD CONSTRAINT `itoris_productpriceformula_conditions_ibfk_1` FOREIGN KEY (`formula_id`) REFERENCES `itoris_productpriceformula_formula` (`formula_id`) ON DELETE CASCADE ON UPDATE CASCADE;

ALTER TABLE `itoris_productpriceformula_formula`
  ADD CONSTRAINT `itoris_productpriceformula_formula_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `catalog_product_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE;

ALTER TABLE `itoris_productpriceformula_group`
  ADD CONSTRAINT `itoris_productpriceformula_group_ibfk_1` FOREIGN KEY (`formula_id`) REFERENCES `itoris_productpriceformula_formula` (`formula_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `itoris_productpriceformula_group_ibfk_2` FOREIGN KEY (`group_id`) REFERENCES `customer_group` (`customer_group_id`) ON DELETE CASCADE ON UPDATE CASCADE;

ALTER TABLE `layout_link`
  ADD CONSTRAINT `LAYOUT_LINK_LAYOUT_UPDATE_ID_LAYOUT_UPDATE_LAYOUT_UPDATE_ID` FOREIGN KEY (`layout_update_id`) REFERENCES `layout_update` (`layout_update_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `LAYOUT_LINK_STORE_ID_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `LAYOUT_LINK_THEME_ID_THEME_THEME_ID` FOREIGN KEY (`theme_id`) REFERENCES `theme` (`theme_id`) ON DELETE CASCADE;

ALTER TABLE `newsletter_problem`
  ADD CONSTRAINT `NEWSLETTER_PROBLEM_QUEUE_ID_NEWSLETTER_QUEUE_QUEUE_ID` FOREIGN KEY (`queue_id`) REFERENCES `newsletter_queue` (`queue_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `NLTTR_PROBLEM_SUBSCRIBER_ID_NLTTR_SUBSCRIBER_SUBSCRIBER_ID` FOREIGN KEY (`subscriber_id`) REFERENCES `newsletter_subscriber` (`subscriber_id`) ON DELETE CASCADE;

ALTER TABLE `newsletter_queue`
  ADD CONSTRAINT `NEWSLETTER_QUEUE_TEMPLATE_ID_NEWSLETTER_TEMPLATE_TEMPLATE_ID` FOREIGN KEY (`template_id`) REFERENCES `newsletter_template` (`template_id`) ON DELETE CASCADE;

ALTER TABLE `newsletter_queue_link`
  ADD CONSTRAINT `NEWSLETTER_QUEUE_LINK_QUEUE_ID_NEWSLETTER_QUEUE_QUEUE_ID` FOREIGN KEY (`queue_id`) REFERENCES `newsletter_queue` (`queue_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `NLTTR_QUEUE_LNK_SUBSCRIBER_ID_NLTTR_SUBSCRIBER_SUBSCRIBER_ID` FOREIGN KEY (`subscriber_id`) REFERENCES `newsletter_subscriber` (`subscriber_id`) ON DELETE CASCADE;

ALTER TABLE `newsletter_queue_store_link`
  ADD CONSTRAINT `NEWSLETTER_QUEUE_STORE_LINK_QUEUE_ID_NEWSLETTER_QUEUE_QUEUE_ID` FOREIGN KEY (`queue_id`) REFERENCES `newsletter_queue` (`queue_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `NEWSLETTER_QUEUE_STORE_LINK_STORE_ID_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`) ON DELETE CASCADE;

ALTER TABLE `newsletter_subscriber`
  ADD CONSTRAINT `NEWSLETTER_SUBSCRIBER_STORE_ID_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`) ON DELETE SET NULL;

ALTER TABLE `oauth_nonce`
  ADD CONSTRAINT `OAUTH_NONCE_CONSUMER_ID_OAUTH_CONSUMER_ENTITY_ID` FOREIGN KEY (`consumer_id`) REFERENCES `oauth_consumer` (`entity_id`) ON DELETE CASCADE;

ALTER TABLE `oauth_token`
  ADD CONSTRAINT `OAUTH_TOKEN_ADMIN_ID_ADMIN_USER_USER_ID` FOREIGN KEY (`admin_id`) REFERENCES `admin_user` (`user_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `OAUTH_TOKEN_CONSUMER_ID_OAUTH_CONSUMER_ENTITY_ID` FOREIGN KEY (`consumer_id`) REFERENCES `oauth_consumer` (`entity_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `OAUTH_TOKEN_CUSTOMER_ID_CUSTOMER_ENTITY_ENTITY_ID` FOREIGN KEY (`customer_id`) REFERENCES `customer_entity` (`entity_id`) ON DELETE CASCADE;

ALTER TABLE `paypal_billing_agreement`
  ADD CONSTRAINT `PAYPAL_BILLING_AGREEMENT_CUSTOMER_ID_CUSTOMER_ENTITY_ENTITY_ID` FOREIGN KEY (`customer_id`) REFERENCES `customer_entity` (`entity_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `PAYPAL_BILLING_AGREEMENT_STORE_ID_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`) ON DELETE SET NULL;

ALTER TABLE `paypal_billing_agreement_order`
  ADD CONSTRAINT `PAYPAL_BILLING_AGREEMENT_ORDER_ORDER_ID_SALES_ORDER_ENTITY_ID` FOREIGN KEY (`order_id`) REFERENCES `sales_order` (`entity_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `PAYPAL_BILLING_AGRT_ORDER_AGRT_ID_PAYPAL_BILLING_AGRT_AGRT_ID` FOREIGN KEY (`agreement_id`) REFERENCES `paypal_billing_agreement` (`agreement_id`) ON DELETE CASCADE;

ALTER TABLE `paypal_cert`
  ADD CONSTRAINT `PAYPAL_CERT_WEBSITE_ID_STORE_WEBSITE_WEBSITE_ID` FOREIGN KEY (`website_id`) REFERENCES `store_website` (`website_id`) ON DELETE CASCADE;

ALTER TABLE `paypal_settlement_report_row`
  ADD CONSTRAINT `FK_E183E488F593E0DE10C6EBFFEBAC9B55` FOREIGN KEY (`report_id`) REFERENCES `paypal_settlement_report` (`report_id`) ON DELETE CASCADE;

ALTER TABLE `persistent_session`
  ADD CONSTRAINT `PERSISTENT_SESSION_CUSTOMER_ID_CUSTOMER_ENTITY_ENTITY_ID` FOREIGN KEY (`customer_id`) REFERENCES `customer_entity` (`entity_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `PERSISTENT_SESSION_WEBSITE_ID_STORE_WEBSITE_WEBSITE_ID` FOREIGN KEY (`website_id`) REFERENCES `store_website` (`website_id`) ON DELETE CASCADE;

ALTER TABLE `product_alert_price`
  ADD CONSTRAINT `PRODUCT_ALERT_PRICE_CUSTOMER_ID_CUSTOMER_ENTITY_ENTITY_ID` FOREIGN KEY (`customer_id`) REFERENCES `customer_entity` (`entity_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `PRODUCT_ALERT_PRICE_PRODUCT_ID_CATALOG_PRODUCT_ENTITY_ENTITY_ID` FOREIGN KEY (`product_id`) REFERENCES `catalog_product_entity` (`entity_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `PRODUCT_ALERT_PRICE_WEBSITE_ID_STORE_WEBSITE_WEBSITE_ID` FOREIGN KEY (`website_id`) REFERENCES `store_website` (`website_id`) ON DELETE CASCADE;

ALTER TABLE `product_alert_stock`
  ADD CONSTRAINT `PRODUCT_ALERT_STOCK_CUSTOMER_ID_CUSTOMER_ENTITY_ENTITY_ID` FOREIGN KEY (`customer_id`) REFERENCES `customer_entity` (`entity_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `PRODUCT_ALERT_STOCK_PRODUCT_ID_CATALOG_PRODUCT_ENTITY_ENTITY_ID` FOREIGN KEY (`product_id`) REFERENCES `catalog_product_entity` (`entity_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `PRODUCT_ALERT_STOCK_WEBSITE_ID_STORE_WEBSITE_WEBSITE_ID` FOREIGN KEY (`website_id`) REFERENCES `store_website` (`website_id`) ON DELETE CASCADE;

ALTER TABLE `quote`
  ADD CONSTRAINT `QUOTE_STORE_ID_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`) ON DELETE CASCADE;

ALTER TABLE `quote_address`
  ADD CONSTRAINT `QUOTE_ADDRESS_QUOTE_ID_QUOTE_ENTITY_ID` FOREIGN KEY (`quote_id`) REFERENCES `quote` (`entity_id`) ON DELETE CASCADE;

ALTER TABLE `quote_address_item`
  ADD CONSTRAINT `QUOTE_ADDRESS_ITEM_QUOTE_ADDRESS_ID_QUOTE_ADDRESS_ADDRESS_ID` FOREIGN KEY (`quote_address_id`) REFERENCES `quote_address` (`address_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `QUOTE_ADDRESS_ITEM_QUOTE_ITEM_ID_QUOTE_ITEM_ITEM_ID` FOREIGN KEY (`quote_item_id`) REFERENCES `quote_item` (`item_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `QUOTE_ADDR_ITEM_PARENT_ITEM_ID_QUOTE_ADDR_ITEM_ADDR_ITEM_ID` FOREIGN KEY (`parent_item_id`) REFERENCES `quote_address_item` (`address_item_id`) ON DELETE CASCADE;

ALTER TABLE `quote_id_mask`
  ADD CONSTRAINT `QUOTE_ID_MASK_QUOTE_ID_QUOTE_ENTITY_ID` FOREIGN KEY (`quote_id`) REFERENCES `quote` (`entity_id`) ON DELETE CASCADE;

ALTER TABLE `quote_item`
  ADD CONSTRAINT `QUOTE_ITEM_PARENT_ITEM_ID_QUOTE_ITEM_ITEM_ID` FOREIGN KEY (`parent_item_id`) REFERENCES `quote_item` (`item_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `QUOTE_ITEM_QUOTE_ID_QUOTE_ENTITY_ID` FOREIGN KEY (`quote_id`) REFERENCES `quote` (`entity_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `QUOTE_ITEM_STORE_ID_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`) ON DELETE SET NULL;

ALTER TABLE `quote_item_option`
  ADD CONSTRAINT `QUOTE_ITEM_OPTION_ITEM_ID_QUOTE_ITEM_ITEM_ID` FOREIGN KEY (`item_id`) REFERENCES `quote_item` (`item_id`) ON DELETE CASCADE;

ALTER TABLE `quote_payment`
  ADD CONSTRAINT `QUOTE_PAYMENT_QUOTE_ID_QUOTE_ENTITY_ID` FOREIGN KEY (`quote_id`) REFERENCES `quote` (`entity_id`) ON DELETE CASCADE;

ALTER TABLE `quote_shipping_rate`
  ADD CONSTRAINT `QUOTE_SHIPPING_RATE_ADDRESS_ID_QUOTE_ADDRESS_ADDRESS_ID` FOREIGN KEY (`address_id`) REFERENCES `quote_address` (`address_id`) ON DELETE CASCADE;

ALTER TABLE `rating`
  ADD CONSTRAINT `RATING_ENTITY_ID_RATING_ENTITY_ENTITY_ID` FOREIGN KEY (`entity_id`) REFERENCES `rating_entity` (`entity_id`) ON DELETE CASCADE;

ALTER TABLE `rating_option`
  ADD CONSTRAINT `RATING_OPTION_RATING_ID_RATING_RATING_ID` FOREIGN KEY (`rating_id`) REFERENCES `rating` (`rating_id`) ON DELETE CASCADE;

ALTER TABLE `rating_option_vote`
  ADD CONSTRAINT `RATING_OPTION_VOTE_OPTION_ID_RATING_OPTION_OPTION_ID` FOREIGN KEY (`option_id`) REFERENCES `rating_option` (`option_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `RATING_OPTION_VOTE_REVIEW_ID_REVIEW_REVIEW_ID` FOREIGN KEY (`review_id`) REFERENCES `review` (`review_id`) ON DELETE CASCADE;

ALTER TABLE `rating_option_vote_aggregated`
  ADD CONSTRAINT `RATING_OPTION_VOTE_AGGREGATED_RATING_ID_RATING_RATING_ID` FOREIGN KEY (`rating_id`) REFERENCES `rating` (`rating_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `RATING_OPTION_VOTE_AGGREGATED_STORE_ID_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`) ON DELETE CASCADE;

ALTER TABLE `rating_store`
  ADD CONSTRAINT `RATING_STORE_RATING_ID_RATING_RATING_ID` FOREIGN KEY (`rating_id`) REFERENCES `rating` (`rating_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `RATING_STORE_STORE_ID_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`) ON DELETE CASCADE;

ALTER TABLE `rating_title`
  ADD CONSTRAINT `RATING_TITLE_RATING_ID_RATING_RATING_ID` FOREIGN KEY (`rating_id`) REFERENCES `rating` (`rating_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `RATING_TITLE_STORE_ID_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`) ON DELETE CASCADE;

ALTER TABLE `report_compared_product_index`
  ADD CONSTRAINT `REPORT_CMPD_PRD_IDX_CSTR_ID_CSTR_ENTT_ENTT_ID` FOREIGN KEY (`customer_id`) REFERENCES `customer_entity` (`entity_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `REPORT_CMPD_PRD_IDX_PRD_ID_CAT_PRD_ENTT_ENTT_ID` FOREIGN KEY (`product_id`) REFERENCES `catalog_product_entity` (`entity_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `REPORT_COMPARED_PRODUCT_INDEX_STORE_ID_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`) ON DELETE SET NULL;

ALTER TABLE `report_event`
  ADD CONSTRAINT `REPORT_EVENT_EVENT_TYPE_ID_REPORT_EVENT_TYPES_EVENT_TYPE_ID` FOREIGN KEY (`event_type_id`) REFERENCES `report_event_types` (`event_type_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `REPORT_EVENT_STORE_ID_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`) ON DELETE CASCADE;

ALTER TABLE `report_viewed_product_aggregated_daily`
  ADD CONSTRAINT `REPORT_VIEWED_PRD_AGGRED_DAILY_PRD_ID_CAT_PRD_ENTT_ENTT_ID` FOREIGN KEY (`product_id`) REFERENCES `catalog_product_entity` (`entity_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `REPORT_VIEWED_PRODUCT_AGGREGATED_DAILY_STORE_ID_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`) ON DELETE CASCADE;

ALTER TABLE `report_viewed_product_aggregated_monthly`
  ADD CONSTRAINT `REPORT_VIEWED_PRD_AGGRED_MONTHLY_PRD_ID_CAT_PRD_ENTT_ENTT_ID` FOREIGN KEY (`product_id`) REFERENCES `catalog_product_entity` (`entity_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `REPORT_VIEWED_PRODUCT_AGGREGATED_MONTHLY_STORE_ID_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`) ON DELETE CASCADE;

ALTER TABLE `report_viewed_product_aggregated_yearly`
  ADD CONSTRAINT `REPORT_VIEWED_PRD_AGGRED_YEARLY_PRD_ID_CAT_PRD_ENTT_ENTT_ID` FOREIGN KEY (`product_id`) REFERENCES `catalog_product_entity` (`entity_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `REPORT_VIEWED_PRODUCT_AGGREGATED_YEARLY_STORE_ID_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`) ON DELETE CASCADE;

ALTER TABLE `report_viewed_product_index`
  ADD CONSTRAINT `REPORT_VIEWED_PRD_IDX_CSTR_ID_CSTR_ENTT_ENTT_ID` FOREIGN KEY (`customer_id`) REFERENCES `customer_entity` (`entity_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `REPORT_VIEWED_PRD_IDX_PRD_ID_CAT_PRD_ENTT_ENTT_ID` FOREIGN KEY (`product_id`) REFERENCES `catalog_product_entity` (`entity_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `REPORT_VIEWED_PRODUCT_INDEX_STORE_ID_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`) ON DELETE SET NULL;

ALTER TABLE `review`
  ADD CONSTRAINT `REVIEW_ENTITY_ID_REVIEW_ENTITY_ENTITY_ID` FOREIGN KEY (`entity_id`) REFERENCES `review_entity` (`entity_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `REVIEW_STATUS_ID_REVIEW_STATUS_STATUS_ID` FOREIGN KEY (`status_id`) REFERENCES `review_status` (`status_id`) ON DELETE NO ACTION;

ALTER TABLE `review_detail`
  ADD CONSTRAINT `REVIEW_DETAIL_CUSTOMER_ID_CUSTOMER_ENTITY_ENTITY_ID` FOREIGN KEY (`customer_id`) REFERENCES `customer_entity` (`entity_id`) ON DELETE SET NULL,
  ADD CONSTRAINT `REVIEW_DETAIL_REVIEW_ID_REVIEW_REVIEW_ID` FOREIGN KEY (`review_id`) REFERENCES `review` (`review_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `REVIEW_DETAIL_STORE_ID_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`) ON DELETE SET NULL;

ALTER TABLE `review_entity_summary`
  ADD CONSTRAINT `REVIEW_ENTITY_SUMMARY_STORE_ID_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`) ON DELETE CASCADE;

ALTER TABLE `review_store`
  ADD CONSTRAINT `REVIEW_STORE_REVIEW_ID_REVIEW_REVIEW_ID` FOREIGN KEY (`review_id`) REFERENCES `review` (`review_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `REVIEW_STORE_STORE_ID_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`) ON DELETE CASCADE;

ALTER TABLE `sales_bestsellers_aggregated_daily`
  ADD CONSTRAINT `SALES_BESTSELLERS_AGGREGATED_DAILY_STORE_ID_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`) ON DELETE CASCADE;

ALTER TABLE `sales_bestsellers_aggregated_monthly`
  ADD CONSTRAINT `SALES_BESTSELLERS_AGGREGATED_MONTHLY_STORE_ID_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`) ON DELETE CASCADE;

ALTER TABLE `sales_bestsellers_aggregated_yearly`
  ADD CONSTRAINT `SALES_BESTSELLERS_AGGREGATED_YEARLY_STORE_ID_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`) ON DELETE CASCADE;

ALTER TABLE `sales_creditmemo`
  ADD CONSTRAINT `SALES_CREDITMEMO_ORDER_ID_SALES_ORDER_ENTITY_ID` FOREIGN KEY (`order_id`) REFERENCES `sales_order` (`entity_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `SALES_CREDITMEMO_STORE_ID_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`) ON DELETE SET NULL;

ALTER TABLE `sales_creditmemo_comment`
  ADD CONSTRAINT `SALES_CREDITMEMO_COMMENT_PARENT_ID_SALES_CREDITMEMO_ENTITY_ID` FOREIGN KEY (`parent_id`) REFERENCES `sales_creditmemo` (`entity_id`) ON DELETE CASCADE;

ALTER TABLE `sales_creditmemo_item`
  ADD CONSTRAINT `SALES_CREDITMEMO_ITEM_PARENT_ID_SALES_CREDITMEMO_ENTITY_ID` FOREIGN KEY (`parent_id`) REFERENCES `sales_creditmemo` (`entity_id`) ON DELETE CASCADE;

ALTER TABLE `sales_invoice`
  ADD CONSTRAINT `SALES_INVOICE_ORDER_ID_SALES_ORDER_ENTITY_ID` FOREIGN KEY (`order_id`) REFERENCES `sales_order` (`entity_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `SALES_INVOICE_STORE_ID_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`) ON DELETE SET NULL;

ALTER TABLE `sales_invoice_comment`
  ADD CONSTRAINT `SALES_INVOICE_COMMENT_PARENT_ID_SALES_INVOICE_ENTITY_ID` FOREIGN KEY (`parent_id`) REFERENCES `sales_invoice` (`entity_id`) ON DELETE CASCADE;

ALTER TABLE `sales_invoice_item`
  ADD CONSTRAINT `SALES_INVOICE_ITEM_PARENT_ID_SALES_INVOICE_ENTITY_ID` FOREIGN KEY (`parent_id`) REFERENCES `sales_invoice` (`entity_id`) ON DELETE CASCADE;

ALTER TABLE `sales_invoiced_aggregated`
  ADD CONSTRAINT `SALES_INVOICED_AGGREGATED_STORE_ID_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`) ON DELETE SET NULL;

ALTER TABLE `sales_invoiced_aggregated_order`
  ADD CONSTRAINT `SALES_INVOICED_AGGREGATED_ORDER_STORE_ID_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`) ON DELETE SET NULL;

ALTER TABLE `sales_order`
  ADD CONSTRAINT `SALES_ORDER_CUSTOMER_ID_CUSTOMER_ENTITY_ENTITY_ID` FOREIGN KEY (`customer_id`) REFERENCES `customer_entity` (`entity_id`) ON DELETE SET NULL,
  ADD CONSTRAINT `SALES_ORDER_STORE_ID_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`) ON DELETE SET NULL;

ALTER TABLE `sales_order_address`
  ADD CONSTRAINT `SALES_ORDER_ADDRESS_PARENT_ID_SALES_ORDER_ENTITY_ID` FOREIGN KEY (`parent_id`) REFERENCES `sales_order` (`entity_id`) ON DELETE CASCADE;

ALTER TABLE `sales_order_aggregated_created`
  ADD CONSTRAINT `SALES_ORDER_AGGREGATED_CREATED_STORE_ID_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`) ON DELETE SET NULL;

ALTER TABLE `sales_order_aggregated_updated`
  ADD CONSTRAINT `SALES_ORDER_AGGREGATED_UPDATED_STORE_ID_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`) ON DELETE SET NULL;

ALTER TABLE `sales_order_item`
  ADD CONSTRAINT `SALES_ORDER_ITEM_ORDER_ID_SALES_ORDER_ENTITY_ID` FOREIGN KEY (`order_id`) REFERENCES `sales_order` (`entity_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `SALES_ORDER_ITEM_STORE_ID_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`) ON DELETE SET NULL;

ALTER TABLE `sales_order_payment`
  ADD CONSTRAINT `SALES_ORDER_PAYMENT_PARENT_ID_SALES_ORDER_ENTITY_ID` FOREIGN KEY (`parent_id`) REFERENCES `sales_order` (`entity_id`) ON DELETE CASCADE;

ALTER TABLE `sales_order_status_history`
  ADD CONSTRAINT `SALES_ORDER_STATUS_HISTORY_PARENT_ID_SALES_ORDER_ENTITY_ID` FOREIGN KEY (`parent_id`) REFERENCES `sales_order` (`entity_id`) ON DELETE CASCADE;

ALTER TABLE `sales_order_status_label`
  ADD CONSTRAINT `SALES_ORDER_STATUS_LABEL_STATUS_SALES_ORDER_STATUS_STATUS` FOREIGN KEY (`status`) REFERENCES `sales_order_status` (`status`) ON DELETE CASCADE,
  ADD CONSTRAINT `SALES_ORDER_STATUS_LABEL_STORE_ID_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`) ON DELETE CASCADE;

ALTER TABLE `sales_order_status_state`
  ADD CONSTRAINT `SALES_ORDER_STATUS_STATE_STATUS_SALES_ORDER_STATUS_STATUS` FOREIGN KEY (`status`) REFERENCES `sales_order_status` (`status`) ON DELETE CASCADE;

ALTER TABLE `sales_order_tax_item`
  ADD CONSTRAINT `SALES_ORDER_TAX_ITEM_ASSOCIATED_ITEM_ID_SALES_ORDER_ITEM_ITEM_ID` FOREIGN KEY (`associated_item_id`) REFERENCES `sales_order_item` (`item_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `SALES_ORDER_TAX_ITEM_ITEM_ID_SALES_ORDER_ITEM_ITEM_ID` FOREIGN KEY (`item_id`) REFERENCES `sales_order_item` (`item_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `SALES_ORDER_TAX_ITEM_TAX_ID_SALES_ORDER_TAX_TAX_ID` FOREIGN KEY (`tax_id`) REFERENCES `sales_order_tax` (`tax_id`) ON DELETE CASCADE;

ALTER TABLE `sales_payment_transaction`
  ADD CONSTRAINT `FK_B99FF1A06402D725EBDB0F3A7ECD47A2` FOREIGN KEY (`parent_id`) REFERENCES `sales_payment_transaction` (`transaction_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `SALES_PAYMENT_TRANSACTION_ORDER_ID_SALES_ORDER_ENTITY_ID` FOREIGN KEY (`order_id`) REFERENCES `sales_order` (`entity_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `SALES_PAYMENT_TRANSACTION_PAYMENT_ID_SALES_ORDER_PAYMENT_ENTT_ID` FOREIGN KEY (`payment_id`) REFERENCES `sales_order_payment` (`entity_id`) ON DELETE CASCADE;

ALTER TABLE `sales_refunded_aggregated`
  ADD CONSTRAINT `SALES_REFUNDED_AGGREGATED_STORE_ID_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`) ON DELETE SET NULL;

ALTER TABLE `sales_refunded_aggregated_order`
  ADD CONSTRAINT `SALES_REFUNDED_AGGREGATED_ORDER_STORE_ID_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`) ON DELETE SET NULL;

ALTER TABLE `sales_sequence_profile`
  ADD CONSTRAINT `SALES_SEQUENCE_PROFILE_META_ID_SALES_SEQUENCE_META_META_ID` FOREIGN KEY (`meta_id`) REFERENCES `sales_sequence_meta` (`meta_id`) ON DELETE CASCADE;

ALTER TABLE `sales_shipment`
  ADD CONSTRAINT `SALES_SHIPMENT_ORDER_ID_SALES_ORDER_ENTITY_ID` FOREIGN KEY (`order_id`) REFERENCES `sales_order` (`entity_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `SALES_SHIPMENT_STORE_ID_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`) ON DELETE SET NULL;

ALTER TABLE `sales_shipment_comment`
  ADD CONSTRAINT `SALES_SHIPMENT_COMMENT_PARENT_ID_SALES_SHIPMENT_ENTITY_ID` FOREIGN KEY (`parent_id`) REFERENCES `sales_shipment` (`entity_id`) ON DELETE CASCADE;

ALTER TABLE `sales_shipment_item`
  ADD CONSTRAINT `SALES_SHIPMENT_ITEM_PARENT_ID_SALES_SHIPMENT_ENTITY_ID` FOREIGN KEY (`parent_id`) REFERENCES `sales_shipment` (`entity_id`) ON DELETE CASCADE;

ALTER TABLE `sales_shipment_track`
  ADD CONSTRAINT `SALES_SHIPMENT_TRACK_PARENT_ID_SALES_SHIPMENT_ENTITY_ID` FOREIGN KEY (`parent_id`) REFERENCES `sales_shipment` (`entity_id`) ON DELETE CASCADE;

ALTER TABLE `sales_shipping_aggregated`
  ADD CONSTRAINT `SALES_SHIPPING_AGGREGATED_STORE_ID_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`) ON DELETE SET NULL;

ALTER TABLE `sales_shipping_aggregated_order`
  ADD CONSTRAINT `SALES_SHIPPING_AGGREGATED_ORDER_STORE_ID_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`) ON DELETE SET NULL;

ALTER TABLE `salesrule_coupon`
  ADD CONSTRAINT `SALESRULE_COUPON_RULE_ID_SALESRULE_RULE_ID` FOREIGN KEY (`rule_id`) REFERENCES `salesrule` (`rule_id`) ON DELETE CASCADE;

ALTER TABLE `salesrule_coupon_aggregated`
  ADD CONSTRAINT `SALESRULE_COUPON_AGGREGATED_STORE_ID_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`) ON DELETE CASCADE;

ALTER TABLE `salesrule_coupon_aggregated_order`
  ADD CONSTRAINT `SALESRULE_COUPON_AGGREGATED_ORDER_STORE_ID_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`) ON DELETE CASCADE;

ALTER TABLE `salesrule_coupon_aggregated_updated`
  ADD CONSTRAINT `SALESRULE_COUPON_AGGREGATED_UPDATED_STORE_ID_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`) ON DELETE CASCADE;

ALTER TABLE `salesrule_coupon_usage`
  ADD CONSTRAINT `SALESRULE_COUPON_USAGE_COUPON_ID_SALESRULE_COUPON_COUPON_ID` FOREIGN KEY (`coupon_id`) REFERENCES `salesrule_coupon` (`coupon_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `SALESRULE_COUPON_USAGE_CUSTOMER_ID_CUSTOMER_ENTITY_ENTITY_ID` FOREIGN KEY (`customer_id`) REFERENCES `customer_entity` (`entity_id`) ON DELETE CASCADE;

ALTER TABLE `salesrule_customer`
  ADD CONSTRAINT `SALESRULE_CUSTOMER_CUSTOMER_ID_CUSTOMER_ENTITY_ENTITY_ID` FOREIGN KEY (`customer_id`) REFERENCES `customer_entity` (`entity_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `SALESRULE_CUSTOMER_RULE_ID_SALESRULE_RULE_ID` FOREIGN KEY (`rule_id`) REFERENCES `salesrule` (`rule_id`) ON DELETE CASCADE;

ALTER TABLE `salesrule_customer_group`
  ADD CONSTRAINT `SALESRULE_CSTR_GROUP_CSTR_GROUP_ID_CSTR_GROUP_CSTR_GROUP_ID` FOREIGN KEY (`customer_group_id`) REFERENCES `customer_group` (`customer_group_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `SALESRULE_CUSTOMER_GROUP_RULE_ID_SALESRULE_RULE_ID` FOREIGN KEY (`rule_id`) REFERENCES `salesrule` (`rule_id`) ON DELETE CASCADE;

ALTER TABLE `salesrule_label`
  ADD CONSTRAINT `SALESRULE_LABEL_RULE_ID_SALESRULE_RULE_ID` FOREIGN KEY (`rule_id`) REFERENCES `salesrule` (`rule_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `SALESRULE_LABEL_STORE_ID_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`) ON DELETE CASCADE;

ALTER TABLE `salesrule_product_attribute`
  ADD CONSTRAINT `SALESRULE_PRD_ATTR_ATTR_ID_EAV_ATTR_ATTR_ID` FOREIGN KEY (`attribute_id`) REFERENCES `eav_attribute` (`attribute_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `SALESRULE_PRD_ATTR_CSTR_GROUP_ID_CSTR_GROUP_CSTR_GROUP_ID` FOREIGN KEY (`customer_group_id`) REFERENCES `customer_group` (`customer_group_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `SALESRULE_PRODUCT_ATTRIBUTE_RULE_ID_SALESRULE_RULE_ID` FOREIGN KEY (`rule_id`) REFERENCES `salesrule` (`rule_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `SALESRULE_PRODUCT_ATTRIBUTE_WEBSITE_ID_STORE_WEBSITE_WEBSITE_ID` FOREIGN KEY (`website_id`) REFERENCES `store_website` (`website_id`) ON DELETE CASCADE;

ALTER TABLE `salesrule_website`
  ADD CONSTRAINT `SALESRULE_WEBSITE_RULE_ID_SALESRULE_RULE_ID` FOREIGN KEY (`rule_id`) REFERENCES `salesrule` (`rule_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `SALESRULE_WEBSITE_WEBSITE_ID_STORE_WEBSITE_WEBSITE_ID` FOREIGN KEY (`website_id`) REFERENCES `store_website` (`website_id`) ON DELETE CASCADE;

ALTER TABLE `search_query`
  ADD CONSTRAINT `SEARCH_QUERY_STORE_ID_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`) ON DELETE CASCADE;

ALTER TABLE `search_synonyms`
  ADD CONSTRAINT `SEARCH_SYNONYMS_STORE_ID_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `SEARCH_SYNONYMS_WEBSITE_ID_STORE_WEBSITE_WEBSITE_ID` FOREIGN KEY (`website_id`) REFERENCES `store_website` (`website_id`) ON DELETE CASCADE;

ALTER TABLE `sitemap`
  ADD CONSTRAINT `SITEMAP_STORE_ID_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`) ON DELETE CASCADE;

ALTER TABLE `store`
  ADD CONSTRAINT `STORE_GROUP_ID_STORE_GROUP_GROUP_ID` FOREIGN KEY (`group_id`) REFERENCES `store_group` (`group_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `STORE_WEBSITE_ID_STORE_WEBSITE_WEBSITE_ID` FOREIGN KEY (`website_id`) REFERENCES `store_website` (`website_id`) ON DELETE CASCADE;

ALTER TABLE `store_group`
  ADD CONSTRAINT `STORE_GROUP_WEBSITE_ID_STORE_WEBSITE_WEBSITE_ID` FOREIGN KEY (`website_id`) REFERENCES `store_website` (`website_id`) ON DELETE CASCADE;

ALTER TABLE `tax_calculation`
  ADD CONSTRAINT `TAX_CALCULATION_CUSTOMER_TAX_CLASS_ID_TAX_CLASS_CLASS_ID` FOREIGN KEY (`customer_tax_class_id`) REFERENCES `tax_class` (`class_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `TAX_CALCULATION_PRODUCT_TAX_CLASS_ID_TAX_CLASS_CLASS_ID` FOREIGN KEY (`product_tax_class_id`) REFERENCES `tax_class` (`class_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `TAX_CALC_TAX_CALC_RATE_ID_TAX_CALC_RATE_TAX_CALC_RATE_ID` FOREIGN KEY (`tax_calculation_rate_id`) REFERENCES `tax_calculation_rate` (`tax_calculation_rate_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `TAX_CALC_TAX_CALC_RULE_ID_TAX_CALC_RULE_TAX_CALC_RULE_ID` FOREIGN KEY (`tax_calculation_rule_id`) REFERENCES `tax_calculation_rule` (`tax_calculation_rule_id`) ON DELETE CASCADE;

ALTER TABLE `tax_calculation_rate_title`
  ADD CONSTRAINT `FK_37FB965F786AD5897BB3AE90470C42AB` FOREIGN KEY (`tax_calculation_rate_id`) REFERENCES `tax_calculation_rate` (`tax_calculation_rate_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `TAX_CALCULATION_RATE_TITLE_STORE_ID_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`) ON DELETE CASCADE;

ALTER TABLE `tax_order_aggregated_created`
  ADD CONSTRAINT `TAX_ORDER_AGGREGATED_CREATED_STORE_ID_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`) ON DELETE CASCADE;

ALTER TABLE `tax_order_aggregated_updated`
  ADD CONSTRAINT `TAX_ORDER_AGGREGATED_UPDATED_STORE_ID_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`) ON DELETE CASCADE;

ALTER TABLE `theme_file`
  ADD CONSTRAINT `THEME_FILE_THEME_ID_THEME_THEME_ID` FOREIGN KEY (`theme_id`) REFERENCES `theme` (`theme_id`) ON DELETE CASCADE;

ALTER TABLE `translation`
  ADD CONSTRAINT `TRANSLATION_STORE_ID_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`) ON DELETE CASCADE;

ALTER TABLE `ui_bookmark`
  ADD CONSTRAINT `UI_BOOKMARK_USER_ID_ADMIN_USER_USER_ID` FOREIGN KEY (`user_id`) REFERENCES `admin_user` (`user_id`) ON DELETE CASCADE;

ALTER TABLE `variable_value`
  ADD CONSTRAINT `VARIABLE_VALUE_STORE_ID_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `VARIABLE_VALUE_VARIABLE_ID_VARIABLE_VARIABLE_ID` FOREIGN KEY (`variable_id`) REFERENCES `variable` (`variable_id`) ON DELETE CASCADE;

ALTER TABLE `vault_payment_token`
  ADD CONSTRAINT `VAULT_PAYMENT_TOKEN_CUSTOMER_ID_CUSTOMER_ENTITY_ENTITY_ID` FOREIGN KEY (`customer_id`) REFERENCES `customer_entity` (`entity_id`) ON DELETE CASCADE;

ALTER TABLE `vault_payment_token_order_payment_link`
  ADD CONSTRAINT `FK_4ED894655446D385894580BECA993862` FOREIGN KEY (`payment_token_id`) REFERENCES `vault_payment_token` (`entity_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_CF37B9D854256534BE23C818F6291CA2` FOREIGN KEY (`order_payment_id`) REFERENCES `sales_order_payment` (`entity_id`) ON DELETE CASCADE;

ALTER TABLE `weee_tax`
  ADD CONSTRAINT `WEEE_TAX_ATTRIBUTE_ID_EAV_ATTRIBUTE_ATTRIBUTE_ID` FOREIGN KEY (`attribute_id`) REFERENCES `eav_attribute` (`attribute_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `WEEE_TAX_COUNTRY_DIRECTORY_COUNTRY_COUNTRY_ID` FOREIGN KEY (`country`) REFERENCES `directory_country` (`country_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `WEEE_TAX_ENTITY_ID_CATALOG_PRODUCT_ENTITY_ENTITY_ID` FOREIGN KEY (`entity_id`) REFERENCES `catalog_product_entity` (`entity_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `WEEE_TAX_WEBSITE_ID_STORE_WEBSITE_WEBSITE_ID` FOREIGN KEY (`website_id`) REFERENCES `store_website` (`website_id`) ON DELETE CASCADE;

ALTER TABLE `widget_instance`
  ADD CONSTRAINT `WIDGET_INSTANCE_THEME_ID_THEME_THEME_ID` FOREIGN KEY (`theme_id`) REFERENCES `theme` (`theme_id`) ON DELETE CASCADE;

ALTER TABLE `widget_instance_page`
  ADD CONSTRAINT `WIDGET_INSTANCE_PAGE_INSTANCE_ID_WIDGET_INSTANCE_INSTANCE_ID` FOREIGN KEY (`instance_id`) REFERENCES `widget_instance` (`instance_id`) ON DELETE CASCADE;

ALTER TABLE `widget_instance_page_layout`
  ADD CONSTRAINT `WIDGET_INSTANCE_PAGE_LAYOUT_PAGE_ID_WIDGET_INSTANCE_PAGE_PAGE_ID` FOREIGN KEY (`page_id`) REFERENCES `widget_instance_page` (`page_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `WIDGET_INSTANCE_PAGE_LYT_LYT_UPDATE_ID_LYT_UPDATE_LYT_UPDATE_ID` FOREIGN KEY (`layout_update_id`) REFERENCES `layout_update` (`layout_update_id`) ON DELETE CASCADE;

ALTER TABLE `wishlist`
  ADD CONSTRAINT `WISHLIST_CUSTOMER_ID_CUSTOMER_ENTITY_ENTITY_ID` FOREIGN KEY (`customer_id`) REFERENCES `customer_entity` (`entity_id`) ON DELETE CASCADE;

ALTER TABLE `wishlist_item`
  ADD CONSTRAINT `WISHLIST_ITEM_PRODUCT_ID_CATALOG_PRODUCT_ENTITY_ENTITY_ID` FOREIGN KEY (`product_id`) REFERENCES `catalog_product_entity` (`entity_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `WISHLIST_ITEM_STORE_ID_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`) ON DELETE SET NULL,
  ADD CONSTRAINT `WISHLIST_ITEM_WISHLIST_ID_WISHLIST_WISHLIST_ID` FOREIGN KEY (`wishlist_id`) REFERENCES `wishlist` (`wishlist_id`) ON DELETE CASCADE;

ALTER TABLE `wishlist_item_option`
  ADD CONSTRAINT `FK_A014B30B04B72DD0EAB3EECD779728D6` FOREIGN KEY (`wishlist_item_id`) REFERENCES `wishlist_item` (`wishlist_item_id`) ON DELETE CASCADE;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */; 
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-10-10 09:20:03 GMT