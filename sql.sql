-- MySQL dump 10.13  Distrib 8.0.33, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: bm_software_north
-- ------------------------------------------------------
-- Server version	8.0.33

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
//  "reload": "php artisan db:wipe && php artisan migrate && php artisan migrate --path=app/Modules/**/* && php artisan migrate --path=app/Modules/* && php artisan migrate --path=app/Modules/AccountManagement/**/* && php artisan migrate --path=app/Modules/AssetManagement/**/*  && php artisan db:seed && php artisan passport:install"

--
-- Table structure for table `account_branch_targets`
--

DROP TABLE IF EXISTS `account_branch_targets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `account_branch_targets` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `account_category_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `session` date DEFAULT NULL,
  `comment` json DEFAULT NULL,
  `branch_id` bigint DEFAULT NULL,
  `target_amount` double(8,2) DEFAULT NULL,
  `payment_interval` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `creator` bigint unsigned DEFAULT NULL,
  `slug` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` enum('active','inactive') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'active',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `account_branch_targets`
--

LOCK TABLES `account_branch_targets` WRITE;
/*!40000 ALTER TABLE `account_branch_targets` DISABLE KEYS */;
/*!40000 ALTER TABLE `account_branch_targets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `account_categories`
--

DROP TABLE IF EXISTS `account_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `account_categories` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `parent` bigint DEFAULT NULL,
  `type` enum('expense','income') COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_regular` tinyint DEFAULT NULL,
  `creator` bigint unsigned DEFAULT NULL,
  `slug` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` enum('active','inactive') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'active',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `account_categories`
--

LOCK TABLES `account_categories` WRITE;
/*!40000 ALTER TABLE `account_categories` DISABLE KEYS */;
INSERT INTO `account_categories` VALUES (1,'সরাসরি এয়ানত',NULL,NULL,NULL,1,NULL,'srasri-eyant-4651193','active','2024-03-15 23:33:00','2024-03-15 23:33:00'),(2,'থানা থেকে প্রাপ্ত নিসাব',NULL,NULL,NULL,1,NULL,'thana-theke-prapt-nisab-1792505','active','2024-03-15 23:33:00','2024-03-15 23:33:00'),(3,'শুভাকাঙ্খীদের দান',NULL,NULL,NULL,1,NULL,'suvakankheeder-dan-9173684','active','2024-03-15 23:33:00','2024-03-15 23:33:00'),(4,'টেলিফোন ফি',NULL,NULL,NULL,1,NULL,'telifon-fi-3194928','active','2024-03-15 23:33:00','2024-03-15 23:33:00'),(5,'অনিয়মিত জমা',NULL,NULL,NULL,0,NULL,'oniymit-jma-5405784','active','2024-03-15 23:33:00','2024-03-15 23:33:00'),(6,'প্রকাশনা',NULL,NULL,NULL,0,NULL,'prkasna-9326573','active','2024-03-15 23:33:00','2024-03-15 23:33:00'),(7,'এককালিন',NULL,NULL,NULL,0,NULL,'ekkalin-9467443','active','2024-03-15 23:33:00','2024-03-15 23:33:00'),(8,'কল্যাণ তহবিল',NULL,NULL,NULL,0,NULL,'klzan-thbil-4358667','active','2024-03-15 23:33:00','2024-03-15 23:33:00'),(9,'সভা/সম্মেলন',NULL,NULL,NULL,0,NULL,'svasmmeln-8969358','active','2024-03-15 23:33:00','2024-03-15 23:33:00'),(10,'তারবিয়াত',NULL,NULL,NULL,0,NULL,'tarbiyat-29610569','active','2024-03-15 23:33:00','2024-03-15 23:33:00'),(11,'সমাজকল্যান/সমাজসেবা',NULL,NULL,NULL,0,NULL,'smajklzansmajseba-10911962','active','2024-03-15 23:33:00','2024-03-15 23:33:00'),(12,'নির্বাচনী ফান্ড',NULL,NULL,NULL,0,NULL,'nirwacnee-fand-16912949','active','2024-03-15 23:33:00','2024-03-15 23:33:00'),(13,'শহীদ ফান্ড',NULL,NULL,NULL,0,NULL,'sheed-fand-47413615','active','2024-03-15 23:33:00','2024-03-15 23:33:00'),(14,'হাওলাত গ্রহন',NULL,NULL,NULL,0,NULL,'haoolat-grhn-51414764','active','2024-03-15 23:33:00','2024-03-15 23:33:00'),(15,'হাওলাত ফেরত',NULL,NULL,NULL,0,NULL,'haoolat-fert-25415868','active','2024-03-15 23:33:00','2024-03-15 23:33:00'),(16,'আসবাবপত্র/সম্পদ ',NULL,NULL,NULL,0,NULL,'asbabptrsmpd-15416656','active','2024-03-15 23:33:00','2024-03-15 23:33:00'),(17,'শীতবস্ত্র',NULL,NULL,NULL,0,NULL,'seetbstr-43417175','active','2024-03-15 23:33:00','2024-03-15 23:33:00'),(18,'বিশেষ দান',NULL,NULL,NULL,0,NULL,'bisesh-dan-52518547','active','2024-03-15 23:33:00','2024-03-15 23:33:00'),(19,'আইন আদালত',NULL,NULL,NULL,0,NULL,'ain-adalt-19019967','active','2024-03-15 23:33:00','2024-03-15 23:33:00'),(20,'অগ্রিম ফেরত',NULL,NULL,NULL,0,NULL,'ogrim-fert-62720762','active','2024-03-15 23:33:00','2024-03-15 23:33:00'),(21,'ইফতার',NULL,NULL,NULL,0,NULL,'iftar-40921170','active','2024-03-15 23:33:00','2024-03-15 23:33:00'),(22,'ফিতরা',NULL,NULL,NULL,0,NULL,'fitra-35922112','active','2024-03-15 23:33:00','2024-03-15 23:33:00'),(23,'খাদ্য সহায়তা ফান্ড',NULL,NULL,NULL,0,NULL,'khadz-shayta-fand-40723852','active','2024-03-15 23:33:00','2024-03-15 23:33:00'),(24,'ভাড়া আদায়',NULL,NULL,NULL,0,NULL,'vara-aday-84024562','active','2024-03-15 23:33:00','2024-03-15 23:33:00'),(25,'কুরবানী',NULL,NULL,NULL,0,NULL,'kurbanee-56125763','active','2024-03-15 23:33:00','2024-03-15 23:33:00'),(26,'করজে হাসানা ফান্ড',NULL,NULL,NULL,0,NULL,'krje-hasana-fand-66726834','active','2024-03-15 23:33:00','2024-03-15 23:33:00'),(27,'ত্রাণ তহবিল',NULL,NULL,NULL,0,NULL,'tran-thbil-10827633','active','2024-03-15 23:33:00','2024-03-15 23:33:00'),(28,'শিক্ষা প্রতিষ্ঠান',NULL,NULL,NULL,0,NULL,'siksha-prtishthan-70128541','active','2024-03-15 23:33:00','2024-03-15 23:33:00'),(29,'বিবিধ',NULL,NULL,NULL,0,NULL,'bibidh-87229686','active','2024-03-15 23:33:00','2024-03-15 23:33:00'),(30,'করজে হাসানা ফান্ড',NULL,NULL,NULL,0,NULL,'krje-hasana-fand-88030689','active','2024-03-15 23:33:00','2024-03-15 23:33:00'),(31,'ত্রাণ তহবিল',NULL,NULL,NULL,0,NULL,'tran-thbil-48631593','active','2024-03-15 23:33:00','2024-03-15 23:33:00'),(32,'শিক্ষা প্রতিষ্ঠান',NULL,NULL,NULL,0,NULL,'siksha-prtishthan-68832366','active','2024-03-15 23:33:00','2024-03-15 23:33:00'),(33,'বিবিধ',NULL,NULL,NULL,0,NULL,'bibidh-64833815','active','2024-03-15 23:33:00','2024-03-15 23:33:00');
/*!40000 ALTER TABLE `account_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `account_division_budgets`
--

DROP TABLE IF EXISTS `account_division_budgets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `account_division_budgets` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `division_id` bigint DEFAULT NULL,
  `account_category_id` bigint DEFAULT NULL,
  `budget_amount` double(8,2) DEFAULT NULL,
  `creator` bigint unsigned DEFAULT NULL,
  `slug` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` enum('active','inactive') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'active',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `account_division_budgets`
--

LOCK TABLES `account_division_budgets` WRITE;
/*!40000 ALTER TABLE `account_division_budgets` DISABLE KEYS */;
/*!40000 ALTER TABLE `account_division_budgets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `account_expense_months`
--

DROP TABLE IF EXISTS `account_expense_months`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `account_expense_months` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `month` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `active` tinyint NOT NULL DEFAULT '0',
  `creator` bigint unsigned DEFAULT NULL,
  `slug` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` enum('active','inactive') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'active',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `account_expense_months`
--

LOCK TABLES `account_expense_months` WRITE;
/*!40000 ALTER TABLE `account_expense_months` DISABLE KEYS */;
/*!40000 ALTER TABLE `account_expense_months` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `account_expense_support_image_table`
--

DROP TABLE IF EXISTS `account_expense_support_image_table`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `account_expense_support_image_table` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `url` text COLLATE utf8mb4_unicode_ci,
  `creator` bigint unsigned DEFAULT NULL,
  `slug` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` enum('active','inactive') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'active',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `account_expense_support_image_table`
--

LOCK TABLES `account_expense_support_image_table` WRITE;
/*!40000 ALTER TABLE `account_expense_support_image_table` DISABLE KEYS */;
/*!40000 ALTER TABLE `account_expense_support_image_table` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `account_expense_support_table`
--

DROP TABLE IF EXISTS `account_expense_support_table`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `account_expense_support_table` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `expense_id` bigint DEFAULT NULL,
  `account_log_id` bigint DEFAULT NULL,
  `account_expense_category_id` bigint DEFAULT NULL,
  `department_id` bigint DEFAULT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `creator_name` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `reason` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `approved_by_admin` tinyint NOT NULL DEFAULT '0',
  `approved_by_bm` tinyint NOT NULL DEFAULT '0',
  `approved_by_cp` tinyint NOT NULL DEFAULT '0',
  `is_canceled` tinyint NOT NULL DEFAULT '0',
  `cancel_by` bigint DEFAULT NULL,
  `amount` bigint DEFAULT NULL,
  `amount_in_text` text COLLATE utf8mb4_unicode_ci,
  `image_id` bigint DEFAULT NULL,
  `cancel_comment` text COLLATE utf8mb4_unicode_ci,
  `date` date DEFAULT NULL,
  `folio` int unsigned DEFAULT NULL,
  `creator` bigint unsigned DEFAULT NULL,
  `slug` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` enum('active','inactive') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'active',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `account_expense_support_table`
--

LOCK TABLES `account_expense_support_table` WRITE;
/*!40000 ALTER TABLE `account_expense_support_table` DISABLE KEYS */;
/*!40000 ALTER TABLE `account_expense_support_table` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `account_expenses`
--

DROP TABLE IF EXISTS `account_expenses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `account_expenses` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `approved` tinyint NOT NULL DEFAULT '0',
  `department_id` bigint DEFAULT NULL,
  `account_expense_category_id` bigint DEFAULT NULL,
  `amount` bigint DEFAULT NULL,
  `date` date DEFAULT NULL,
  `selected_month` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `folio` int unsigned DEFAULT NULL,
  `creator` bigint unsigned DEFAULT NULL,
  `slug` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` enum('active','inactive') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'active',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `account_expenses`
--

LOCK TABLES `account_expenses` WRITE;
/*!40000 ALTER TABLE `account_expenses` DISABLE KEYS */;
/*!40000 ALTER TABLE `account_expenses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `account_income_extrafields`
--

DROP TABLE IF EXISTS `account_income_extrafields`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `account_income_extrafields` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `account_income_id` bigint DEFAULT NULL,
  `field_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `value` text COLLATE utf8mb4_unicode_ci,
  `creator` bigint unsigned DEFAULT NULL,
  `slug` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` enum('active','inactive') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'active',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `account_income_extrafields`
--

LOCK TABLES `account_income_extrafields` WRITE;
/*!40000 ALTER TABLE `account_income_extrafields` DISABLE KEYS */;
/*!40000 ALTER TABLE `account_income_extrafields` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `account_incomes`
--

DROP TABLE IF EXISTS `account_incomes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `account_incomes` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `account_log_id` bigint DEFAULT NULL,
  `account_receipt_book_id` bigint DEFAULT NULL,
  `account_receipt_book_no` bigint DEFAULT NULL,
  `account_category_id` bigint DEFAULT NULL,
  `central_division_id` bigint DEFAULT NULL,
  `branch_id` bigint DEFAULT NULL,
  `account_receipt_no` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date` date DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `amount` double(8,2) DEFAULT NULL,
  `amount_in_text` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `folio` int unsigned DEFAULT NULL,
  `random_user` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `creator` bigint unsigned DEFAULT NULL,
  `slug` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` enum('active','inactive') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'active',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `account_incomes`
--

LOCK TABLES `account_incomes` WRITE;
/*!40000 ALTER TABLE `account_incomes` DISABLE KEYS */;
INSERT INTO `account_incomes` VALUES (1,1,NULL,NULL,4,NULL,2,NULL,'2024-03-16','asdfasdf',500.00,'Five Hundred',NULL,NULL,NULL,'6851429','active','2024-03-15 23:40:55','2024-03-15 23:40:55');
/*!40000 ALTER TABLE `account_incomes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `account_logs`
--

DROP TABLE IF EXISTS `account_logs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `account_logs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint DEFAULT NULL,
  `user_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `random_user` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date` timestamp NULL DEFAULT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `amount` double(8,2) DEFAULT NULL,
  `category_id` bigint DEFAULT NULL,
  `account_id` bigint DEFAULT NULL,
  `account_number_id` bigint DEFAULT NULL,
  `trx_id` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `receipt_no` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_expense` tinyint NOT NULL DEFAULT '0',
  `is_income` tinyint NOT NULL DEFAULT '0',
  `description` text COLLATE utf8mb4_unicode_ci,
  `creator` bigint unsigned DEFAULT NULL,
  `slug` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint unsigned NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `account_logs`
--

LOCK TABLES `account_logs` WRITE;
/*!40000 ALTER TABLE `account_logs` DISABLE KEYS */;
INSERT INTO `account_logs` VALUES (1,2,'user','randomuser','2024-03-15 18:00:00','Mr user',500.00,4,1,11222222111,'',NULL,0,1,'asdfasdf',NULL,'3011279',1,'2024-03-15 23:40:55','2024-03-15 23:40:55'),(2,2,'user',NULL,'2024-03-16 00:04:06','Mr user',500.00,NULL,NULL,NULL,NULL,NULL,1,0,NULL,NULL,'5822780',1,'2024-03-16 00:04:06','2024-03-16 00:04:06'),(3,2,'user',NULL,'2024-03-16 00:04:36','Mr user',100.00,54,NULL,NULL,NULL,NULL,0,1,NULL,NULL,'6753216',1,'2024-03-16 00:04:36','2024-03-16 00:57:06'),(4,2,'user',NULL,'2024-03-16 00:06:46','Mr user',100.00,54,NULL,NULL,NULL,NULL,0,1,NULL,NULL,'8444257',1,'2024-03-16 00:06:46','2024-03-16 00:06:46');
/*!40000 ALTER TABLE `account_logs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `account_numbers`
--

DROP TABLE IF EXISTS `account_numbers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `account_numbers` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `account_id` bigint DEFAULT NULL,
  `value` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `creator` bigint unsigned DEFAULT NULL,
  `slug` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint unsigned NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `account_numbers`
--

LOCK TABLES `account_numbers` WRITE;
/*!40000 ALTER TABLE `account_numbers` DISABLE KEYS */;
INSERT INTO `account_numbers` VALUES (1,1,'11222222111',NULL,'4691216',1,'2024-03-15 23:36:57','2024-03-15 23:36:57');
/*!40000 ALTER TABLE `account_numbers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `account_receipt_book_assigns`
--

DROP TABLE IF EXISTS `account_receipt_book_assigns`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `account_receipt_book_assigns` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `division_id` bigint DEFAULT NULL,
  `account_receipt_book_id` bigint DEFAULT NULL,
  `creator` bigint unsigned DEFAULT NULL,
  `slug` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` enum('active','inactive') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'active',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `account_receipt_book_assigns`
--

LOCK TABLES `account_receipt_book_assigns` WRITE;
/*!40000 ALTER TABLE `account_receipt_book_assigns` DISABLE KEYS */;
/*!40000 ALTER TABLE `account_receipt_book_assigns` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `account_receipt_books`
--

DROP TABLE IF EXISTS `account_receipt_books`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `account_receipt_books` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `receipt_book_no` bigint DEFAULT NULL,
  `receipt_start_serial_no` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `receipt_end_serial_no` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_approvel` tinyint DEFAULT NULL,
  `creator` bigint unsigned DEFAULT NULL,
  `slug` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` enum('active','inactive') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'active',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `account_receipt_books`
--

LOCK TABLES `account_receipt_books` WRITE;
/*!40000 ALTER TABLE `account_receipt_books` DISABLE KEYS */;
/*!40000 ALTER TABLE `account_receipt_books` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `accounts`
--

DROP TABLE IF EXISTS `accounts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `accounts` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `creator` bigint unsigned DEFAULT NULL,
  `slug` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint unsigned NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `accounts`
--

LOCK TABLES `accounts` WRITE;
/*!40000 ALTER TABLE `accounts` DISABLE KEYS */;
INSERT INTO `accounts` VALUES (1,'Bkash',NULL,NULL,'7201842',1,'2024-03-15 23:36:57','2024-03-15 23:36:57');
/*!40000 ALTER TABLE `accounts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `asset_asset_category`
--

DROP TABLE IF EXISTS `asset_asset_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `asset_asset_category` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `asset_id` bigint DEFAULT NULL,
  `asset_category_id` bigint DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `asset_asset_category`
--

LOCK TABLES `asset_asset_category` WRITE;
/*!40000 ALTER TABLE `asset_asset_category` DISABLE KEYS */;
/*!40000 ALTER TABLE `asset_asset_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `asset_asset_shop_list`
--

DROP TABLE IF EXISTS `asset_asset_shop_list`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `asset_asset_shop_list` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `asset_id` bigint DEFAULT NULL,
  `asset_shop_list_id` bigint DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `asset_asset_shop_list`
--

LOCK TABLES `asset_asset_shop_list` WRITE;
/*!40000 ALTER TABLE `asset_asset_shop_list` DISABLE KEYS */;
/*!40000 ALTER TABLE `asset_asset_shop_list` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `asset_audit_lists`
--

DROP TABLE IF EXISTS `asset_audit_lists`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `asset_audit_lists` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `asset_audit_id` bigint DEFAULT NULL,
  `asset_id` bigint DEFAULT NULL,
  `is_ok` enum('yes','no') COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `comment` text COLLATE utf8mb4_unicode_ci,
  `creator` bigint unsigned DEFAULT NULL,
  `slug` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` enum('active','inactive') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'active',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `asset_audit_lists`
--

LOCK TABLES `asset_audit_lists` WRITE;
/*!40000 ALTER TABLE `asset_audit_lists` DISABLE KEYS */;
/*!40000 ALTER TABLE `asset_audit_lists` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `asset_audits`
--

DROP TABLE IF EXISTS `asset_audits`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `asset_audits` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `is_complete` enum('yes','no') COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `creator` bigint unsigned DEFAULT NULL,
  `slug` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` enum('active','inactive') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'active',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `asset_audits`
--

LOCK TABLES `asset_audits` WRITE;
/*!40000 ALTER TABLE `asset_audits` DISABLE KEYS */;
/*!40000 ALTER TABLE `asset_audits` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `asset_brands`
--

DROP TABLE IF EXISTS `asset_brands`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `asset_brands` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `asset_id` bigint DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `logo` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `creator` bigint unsigned DEFAULT NULL,
  `slug` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` enum('active','inactive') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'active',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `asset_brands`
--

LOCK TABLES `asset_brands` WRITE;
/*!40000 ALTER TABLE `asset_brands` DISABLE KEYS */;
/*!40000 ALTER TABLE `asset_brands` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `asset_categories`
--

DROP TABLE IF EXISTS `asset_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `asset_categories` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `parent_id` bigint DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `creator` bigint unsigned DEFAULT NULL,
  `slug` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` enum('active','inactive') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'active',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `asset_categories`
--

LOCK TABLES `asset_categories` WRITE;
/*!40000 ALTER TABLE `asset_categories` DISABLE KEYS */;
/*!40000 ALTER TABLE `asset_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `asset_change_histories`
--

DROP TABLE IF EXISTS `asset_change_histories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `asset_change_histories` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `asset_id` bigint DEFAULT NULL,
  `column_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `old_value` text COLLATE utf8mb4_unicode_ci,
  `creator` bigint unsigned DEFAULT NULL,
  `slug` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` enum('active','inactive') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'active',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `asset_change_histories`
--

LOCK TABLES `asset_change_histories` WRITE;
/*!40000 ALTER TABLE `asset_change_histories` DISABLE KEYS */;
/*!40000 ALTER TABLE `asset_change_histories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `asset_items`
--

DROP TABLE IF EXISTS `asset_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `asset_items` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `asset_id` bigint DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `item_image` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `price` double(8,2) DEFAULT NULL,
  `quantity` int DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `is_waranty` tinyint NOT NULL DEFAULT '0',
  `waranty_date` date DEFAULT NULL,
  `waranty_image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `creator` bigint unsigned DEFAULT NULL,
  `slug` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` enum('active','inactive') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'active',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `asset_items`
--

LOCK TABLES `asset_items` WRITE;
/*!40000 ALTER TABLE `asset_items` DISABLE KEYS */;
/*!40000 ALTER TABLE `asset_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `asset_losts`
--

DROP TABLE IF EXISTS `asset_losts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `asset_losts` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `asset_id` bigint DEFAULT NULL,
  `reason` text COLLATE utf8mb4_unicode_ci,
  `lost_from_user` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lost_from_user_contact` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lost_date` date DEFAULT NULL,
  `creator` bigint unsigned DEFAULT NULL,
  `slug` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` enum('active','inactive') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'active',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `asset_losts`
--

LOCK TABLES `asset_losts` WRITE;
/*!40000 ALTER TABLE `asset_losts` DISABLE KEYS */;
/*!40000 ALTER TABLE `asset_losts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `asset_quotations`
--

DROP TABLE IF EXISTS `asset_quotations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `asset_quotations` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `creator` bigint unsigned DEFAULT NULL,
  `slug` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` enum('active','inactive') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'active',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `asset_quotations`
--

LOCK TABLES `asset_quotations` WRITE;
/*!40000 ALTER TABLE `asset_quotations` DISABLE KEYS */;
/*!40000 ALTER TABLE `asset_quotations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `asset_request_to_cps`
--

DROP TABLE IF EXISTS `asset_request_to_cps`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `asset_request_to_cps` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `central_branch_id` bigint DEFAULT NULL,
  `asset_quotation_id` bigint DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `is_approved` tinyint NOT NULL DEFAULT '0',
  `request_type` enum('purchase','remove') COLLATE utf8mb4_unicode_ci NOT NULL,
  `creator` bigint unsigned DEFAULT NULL,
  `slug` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` enum('active','inactive') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'active',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `asset_request_to_cps`
--

LOCK TABLES `asset_request_to_cps` WRITE;
/*!40000 ALTER TABLE `asset_request_to_cps` DISABLE KEYS */;
/*!40000 ALTER TABLE `asset_request_to_cps` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `asset_shop_lists`
--

DROP TABLE IF EXISTS `asset_shop_lists`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `asset_shop_lists` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `shop_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `owner_name` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `contact_number_1` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `contact_number_2` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `creator` bigint unsigned DEFAULT NULL,
  `slug` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` enum('active','inactive') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'active',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `asset_shop_lists`
--

LOCK TABLES `asset_shop_lists` WRITE;
/*!40000 ALTER TABLE `asset_shop_lists` DISABLE KEYS */;
/*!40000 ALTER TABLE `asset_shop_lists` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `asset_waranties`
--

DROP TABLE IF EXISTS `asset_waranties`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `asset_waranties` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `asset_id` bigint DEFAULT NULL,
  `waranty_date` date DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `waranty_card_image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `creator` bigint unsigned DEFAULT NULL,
  `slug` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` enum('active','inactive') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'active',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `asset_waranties`
--

LOCK TABLES `asset_waranties` WRITE;
/*!40000 ALTER TABLE `asset_waranties` DISABLE KEYS */;
/*!40000 ALTER TABLE `asset_waranties` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `assets`
--

DROP TABLE IF EXISTS `assets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `assets` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `central_division_id` bigint DEFAULT NULL,
  `description` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `price` double(8,2) DEFAULT NULL,
  `memo_no` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `memo_date` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `code` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `asset_location` text COLLATE utf8mb4_unicode_ci,
  `asset_owner` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `owner_phone_number` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `depreciation_amount` double(8,2) DEFAULT NULL,
  `depreciation_type` enum('percent','flat') COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `creator` bigint unsigned DEFAULT NULL,
  `slug` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` enum('active','inactive') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'active',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `assets`
--

LOCK TABLES `assets` WRITE;
/*!40000 ALTER TABLE `assets` DISABLE KEYS */;
/*!40000 ALTER TABLE `assets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cp_application_categories`
--

DROP TABLE IF EXISTS `cp_application_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cp_application_categories` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `creator` bigint unsigned DEFAULT NULL,
  `slug` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` enum('active','inactive') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'active',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cp_application_categories`
--

LOCK TABLES `cp_application_categories` WRITE;
/*!40000 ALTER TABLE `cp_application_categories` DISABLE KEYS */;
/*!40000 ALTER TABLE `cp_application_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cp_application_formats`
--

DROP TABLE IF EXISTS `cp_application_formats`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cp_application_formats` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `cp_application_category_id` bigint DEFAULT NULL,
  `field_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `field_type` enum('text','select','radio','checkbox','file','textarea') COLLATE utf8mb4_unicode_ci NOT NULL,
  `pdf_format` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `creator` bigint unsigned DEFAULT NULL,
  `slug` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` enum('active','inactive') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'active',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cp_application_formats`
--

LOCK TABLES `cp_application_formats` WRITE;
/*!40000 ALTER TABLE `cp_application_formats` DISABLE KEYS */;
/*!40000 ALTER TABLE `cp_application_formats` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cp_application_values`
--

DROP TABLE IF EXISTS `cp_application_values`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cp_application_values` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `cp_application_id` bigint DEFAULT NULL,
  `title_id` bigint DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `value` longtext COLLATE utf8mb4_unicode_ci,
  `creator` bigint unsigned DEFAULT NULL,
  `slug` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` enum('active','inactive') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'active',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cp_application_values`
--

LOCK TABLES `cp_application_values` WRITE;
/*!40000 ALTER TABLE `cp_application_values` DISABLE KEYS */;
/*!40000 ALTER TABLE `cp_application_values` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cp_applications`
--

DROP TABLE IF EXISTS `cp_applications`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cp_applications` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `cp_application_category_id` bigint DEFAULT NULL,
  `applicant_id` bigint DEFAULT NULL,
  `income_category_id` bigint DEFAULT NULL,
  `pdf_submission_file` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_approve` tinyint NOT NULL DEFAULT '0',
  `remarks` text COLLATE utf8mb4_unicode_ci,
  `subject` text COLLATE utf8mb4_unicode_ci,
  `is_moukuf` tinyint NOT NULL DEFAULT '0',
  `moukuf_amount` bigint DEFAULT NULL,
  `creator` bigint unsigned DEFAULT NULL,
  `slug` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` enum('active','inactive') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'active',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cp_applications`
--

LOCK TABLES `cp_applications` WRITE;
/*!40000 ALTER TABLE `cp_applications` DISABLE KEYS */;
/*!40000 ALTER TABLE `cp_applications` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `depertment_members`
--

DROP TABLE IF EXISTS `depertment_members`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `depertment_members` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `full_name` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `department_id` bigint DEFAULT NULL COMMENT 'user_id',
  `mobile_number` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `whatsapp_number` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `telegram_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `depertment_members`
--

LOCK TABLES `depertment_members` WRITE;
/*!40000 ALTER TABLE `depertment_members` DISABLE KEYS */;
/*!40000 ALTER TABLE `depertment_members` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `failed_jobs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `failed_jobs`
--

LOCK TABLES `failed_jobs` WRITE;
/*!40000 ALTER TABLE `failed_jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `failed_jobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `house_rents`
--

DROP TABLE IF EXISTS `house_rents`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `house_rents` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint DEFAULT NULL,
  `account_log_id` bigint DEFAULT NULL,
  `house_name` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `location` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `amount` int DEFAULT NULL,
  `month` date DEFAULT NULL,
  `creator` bigint unsigned DEFAULT NULL,
  `slug` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` enum('active','inactive') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'active',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `house_rents`
--

LOCK TABLES `house_rents` WRITE;
/*!40000 ALTER TABLE `house_rents` DISABLE KEYS */;
/*!40000 ALTER TABLE `house_rents` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jamanot_payments`
--

DROP TABLE IF EXISTS `jamanot_payments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `jamanot_payments` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint DEFAULT NULL,
  `jamanot_provide_id` bigint DEFAULT NULL,
  `account_log_id` bigint DEFAULT NULL,
  `category_id` bigint DEFAULT NULL,
  `amount` bigint DEFAULT NULL,
  `amount_in_text` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `given_date` date DEFAULT NULL,
  `attachment` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `due` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment_status` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `creator` bigint unsigned DEFAULT NULL,
  `slug` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` enum('active','inactive') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'active',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jamanot_payments`
--

LOCK TABLES `jamanot_payments` WRITE;
/*!40000 ALTER TABLE `jamanot_payments` DISABLE KEYS */;
/*!40000 ALTER TABLE `jamanot_payments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jamanot_providers`
--

DROP TABLE IF EXISTS `jamanot_providers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `jamanot_providers` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint DEFAULT NULL,
  `account_log_id` bigint DEFAULT NULL,
  `category_id` bigint DEFAULT NULL,
  `subject` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `medium` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `medium_identity` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `amount` bigint DEFAULT NULL,
  `amount_in_text` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `given_by` bigint DEFAULT NULL,
  `taken_date` date DEFAULT NULL,
  `given_date` date DEFAULT NULL,
  `attachment` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `payment_status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Due',
  `creator` bigint unsigned DEFAULT NULL,
  `slug` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` enum('active','inactive') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'active',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jamanot_providers`
--

LOCK TABLES `jamanot_providers` WRITE;
/*!40000 ALTER TABLE `jamanot_providers` DISABLE KEYS */;
/*!40000 ALTER TABLE `jamanot_providers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `loan_payments`
--

DROP TABLE IF EXISTS `loan_payments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `loan_payments` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint DEFAULT NULL,
  `loan_provide_id` bigint DEFAULT NULL,
  `account_log_id` bigint DEFAULT NULL,
  `category_id` bigint DEFAULT NULL,
  `amount` bigint DEFAULT NULL,
  `amount_in_text` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `given_date` date DEFAULT NULL,
  `attachment` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `due` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment_status` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `creator` bigint unsigned DEFAULT NULL,
  `slug` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` enum('active','inactive') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'active',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `loan_payments`
--

LOCK TABLES `loan_payments` WRITE;
/*!40000 ALTER TABLE `loan_payments` DISABLE KEYS */;
INSERT INTO `loan_payments` VALUES (1,2,1,3,54,100,'One Hundred','2024-03-16',NULL,'asdf','100','due',NULL,'2331770','active','2024-03-16 00:04:36','2024-03-16 00:57:06');
/*!40000 ALTER TABLE `loan_payments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `loan_providers`
--

DROP TABLE IF EXISTS `loan_providers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `loan_providers` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint DEFAULT NULL,
  `account_log_id` bigint DEFAULT NULL,
  `category_id` bigint DEFAULT NULL,
  `amount` bigint DEFAULT NULL,
  `amount_in_text` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `given_by` bigint DEFAULT NULL,
  `taken_date` date DEFAULT NULL,
  `given_date` date DEFAULT NULL,
  `purpose` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `appropriator` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `attachment` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `due` bigint NOT NULL DEFAULT '0',
  `payment_status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Due',
  `creator` bigint unsigned DEFAULT NULL,
  `slug` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` enum('active','inactive') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'active',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `loan_providers`
--

LOCK TABLES `loan_providers` WRITE;
/*!40000 ALTER TABLE `loan_providers` DISABLE KEYS */;
INSERT INTO `loan_providers` VALUES (1,2,2,54,500,'Five Hundred',1,'2024-03-16','2024-03-16','buy car','asasdf','uploads/loan/2024-03-16-06040628783.jpg','asdfasdf',100,'due',NULL,'6921326','active','2024-03-16 00:04:06','2024-03-16 00:57:06');
/*!40000 ALTER TABLE `loan_providers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `migrations` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=54 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (1,'2014_10_12_000000_create_users_table',1),(2,'2014_10_12_100000_create_password_reset_tokens_table',1),(3,'2014_10_12_100000_create_password_resets_table',1),(4,'2016_06_01_000001_create_oauth_auth_codes_table',1),(5,'2016_06_01_000002_create_oauth_access_tokens_table',1),(6,'2016_06_01_000003_create_oauth_refresh_tokens_table',1),(7,'2016_06_01_000004_create_oauth_clients_table',1),(8,'2016_06_01_000005_create_oauth_personal_access_clients_table',1),(9,'2019_08_19_000000_create_failed_jobs_table',1),(10,'2019_12_14_000001_create_personal_access_tokens_table',1),(11,'create_cp_application_categories_table',2),(12,'create_cp_application_formats_table',2),(13,'create_cp_application_values_table',2),(14,'create_cp_applications_table',2),(15,'create_house_rents_table',2),(16,'create_jamanot_payments_table',2),(17,'create_jamanot_providers_table',2),(18,'create_loan_payments_table',2),(19,'create_loan_providers_table',2),(20,'create_office_rents_table',2),(21,'create_salaries_table',2),(22,'create_setting_titles_table',2),(23,'create_sohid_families_table',2),(24,'create_user_notifications_table',2),(25,'create_user_permissions_table',2),(26,'create_user_roles_table',2),(27,'create_users_table',2),(28,'create_website_settings_table',2),(29,'create_account_branch_targets_table',3),(30,'create_account_categories_table',3),(31,'create_account_division_budgets_table',3),(32,'create_account_expenses_table',3),(33,'create_account_income_extrafields_table',3),(34,'create_account_incomes_table',3),(35,'create_account_logs_table',3),(36,'create_account_numbers_table',3),(37,'create_account_receipt_book_assigns_table',3),(38,'create_account_receipt_books_table',3),(39,'create_accounts_table',3),(40,'create_asset_audit_lists_table',4),(41,'create_asset_audits_table',4),(42,'create_asset_brands_table',4),(43,'create_asset_categories_table',4),(44,'create_asset_change_histories_table',4),(45,'create_asset_items_table',4),(46,'create_asset_losts_table',4),(47,'create_asset_quotations_table',4),(48,'create_asset_request_to_cps_table',4),(49,'create_asset_shop_lists_table',4),(50,'create_asset_waranties_table',4),(51,'create_assets_table',4),(52,'create_quotation_product_prices_table',4),(53,'create_quotation_products_table',4);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oauth_access_tokens`
--

DROP TABLE IF EXISTS `oauth_access_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `oauth_access_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint unsigned DEFAULT NULL,
  `client_id` bigint unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_access_tokens_user_id_index` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oauth_access_tokens`
--

LOCK TABLES `oauth_access_tokens` WRITE;
/*!40000 ALTER TABLE `oauth_access_tokens` DISABLE KEYS */;
INSERT INTO `oauth_access_tokens` VALUES ('04e13848bd3f2663cfd344950ee50080a42016a60eac6e668554c30b16fb704a290a42662efb8a91',1,1,'accessToken','[]',0,'2024-03-15 23:35:58','2024-03-15 23:35:58','2025-03-16 05:35:58');
/*!40000 ALTER TABLE `oauth_access_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oauth_auth_codes`
--

DROP TABLE IF EXISTS `oauth_auth_codes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `oauth_auth_codes` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint unsigned NOT NULL,
  `client_id` bigint unsigned NOT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_auth_codes_user_id_index` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oauth_auth_codes`
--

LOCK TABLES `oauth_auth_codes` WRITE;
/*!40000 ALTER TABLE `oauth_auth_codes` DISABLE KEYS */;
/*!40000 ALTER TABLE `oauth_auth_codes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oauth_clients`
--

DROP TABLE IF EXISTS `oauth_clients`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `oauth_clients` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint unsigned DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `secret` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `provider` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `redirect` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `personal_access_client` tinyint(1) NOT NULL,
  `password_client` tinyint(1) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_clients_user_id_index` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oauth_clients`
--

LOCK TABLES `oauth_clients` WRITE;
/*!40000 ALTER TABLE `oauth_clients` DISABLE KEYS */;
INSERT INTO `oauth_clients` VALUES (1,NULL,'Laravel Personal Access Client','sDyWHaKzemqVQ6kt14lfCf06YuByeIPDhOuH2HEo',NULL,'http://localhost',1,0,0,'2024-03-15 23:33:01','2024-03-15 23:33:01'),(2,NULL,'Laravel Password Grant Client','TnsWyPephSFyKSF1kLWpjvMqZvUlwQnlmqQRrTUG','users','http://localhost',0,1,0,'2024-03-15 23:33:01','2024-03-15 23:33:01');
/*!40000 ALTER TABLE `oauth_clients` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oauth_personal_access_clients`
--

DROP TABLE IF EXISTS `oauth_personal_access_clients`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `oauth_personal_access_clients` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `client_id` bigint unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oauth_personal_access_clients`
--

LOCK TABLES `oauth_personal_access_clients` WRITE;
/*!40000 ALTER TABLE `oauth_personal_access_clients` DISABLE KEYS */;
INSERT INTO `oauth_personal_access_clients` VALUES (1,1,'2024-03-15 23:33:01','2024-03-15 23:33:01');
/*!40000 ALTER TABLE `oauth_personal_access_clients` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oauth_refresh_tokens`
--

DROP TABLE IF EXISTS `oauth_refresh_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `oauth_refresh_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `access_token_id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_refresh_tokens_access_token_id_index` (`access_token_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oauth_refresh_tokens`
--

LOCK TABLES `oauth_refresh_tokens` WRITE;
/*!40000 ALTER TABLE `oauth_refresh_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `oauth_refresh_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `office_rents`
--

DROP TABLE IF EXISTS `office_rents`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `office_rents` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint DEFAULT NULL,
  `account_log_id` bigint DEFAULT NULL,
  `office_name` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `location` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `amount` int DEFAULT NULL,
  `month` date DEFAULT NULL,
  `creator` bigint unsigned DEFAULT NULL,
  `slug` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` enum('active','inactive') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'active',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `office_rents`
--

LOCK TABLES `office_rents` WRITE;
/*!40000 ALTER TABLE `office_rents` DISABLE KEYS */;
/*!40000 ALTER TABLE `office_rents` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `password_reset_tokens`
--

DROP TABLE IF EXISTS `password_reset_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `password_reset_tokens`
--

LOCK TABLES `password_reset_tokens` WRITE;
/*!40000 ALTER TABLE `password_reset_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_reset_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `password_resets`
--

LOCK TABLES `password_resets` WRITE;
/*!40000 ALTER TABLE `password_resets` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_resets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `personal_access_tokens`
--

DROP TABLE IF EXISTS `personal_access_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `personal_access_tokens` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `personal_access_tokens`
--

LOCK TABLES `personal_access_tokens` WRITE;
/*!40000 ALTER TABLE `personal_access_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `personal_access_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `quotation_product_prices`
--

DROP TABLE IF EXISTS `quotation_product_prices`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `quotation_product_prices` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `quotation_product_id` bigint DEFAULT NULL,
  `quotation_product_asset_quotation_id` bigint DEFAULT NULL,
  `shop_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` text COLLATE utf8mb4_unicode_ci,
  `shop_contact` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `price` double(8,2) DEFAULT NULL,
  `quotation_image` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `brand` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `creator` bigint unsigned DEFAULT NULL,
  `slug` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` enum('active','inactive') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'active',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `quotation_product_prices`
--

LOCK TABLES `quotation_product_prices` WRITE;
/*!40000 ALTER TABLE `quotation_product_prices` DISABLE KEYS */;
/*!40000 ALTER TABLE `quotation_product_prices` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `quotation_products`
--

DROP TABLE IF EXISTS `quotation_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `quotation_products` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `asset_quotation_id` bigint DEFAULT NULL,
  `product_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `creator` bigint unsigned DEFAULT NULL,
  `slug` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` enum('active','inactive') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'active',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `quotation_products`
--

LOCK TABLES `quotation_products` WRITE;
/*!40000 ALTER TABLE `quotation_products` DISABLE KEYS */;
/*!40000 ALTER TABLE `quotation_products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `salaries`
--

DROP TABLE IF EXISTS `salaries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `salaries` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint DEFAULT NULL,
  `account_log_id` bigint DEFAULT NULL,
  `category_id` bigint DEFAULT NULL,
  `amount` bigint DEFAULT NULL,
  `amount_in_text` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `given_by` bigint DEFAULT NULL,
  `date` date DEFAULT NULL,
  `attachment` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `creator` bigint unsigned DEFAULT NULL,
  `slug` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` enum('active','inactive') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'active',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `salaries`
--

LOCK TABLES `salaries` WRITE;
/*!40000 ALTER TABLE `salaries` DISABLE KEYS */;
/*!40000 ALTER TABLE `salaries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `setting_titles`
--

DROP TABLE IF EXISTS `setting_titles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `setting_titles` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `creator` bigint unsigned DEFAULT NULL,
  `slug` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` enum('active','inactive') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'active',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `setting_titles`
--

LOCK TABLES `setting_titles` WRITE;
/*!40000 ALTER TABLE `setting_titles` DISABLE KEYS */;
/*!40000 ALTER TABLE `setting_titles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `setting_values`
--

DROP TABLE IF EXISTS `setting_values`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `setting_values` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `setting_title_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `setting_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `value` text COLLATE utf8mb4_unicode_ci,
  `creator` bigint unsigned DEFAULT NULL,
  `slug` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` enum('active','inactive') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'active',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `setting_values`
--

LOCK TABLES `setting_values` WRITE;
/*!40000 ALTER TABLE `setting_values` DISABLE KEYS */;
/*!40000 ALTER TABLE `setting_values` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sohid_families`
--

DROP TABLE IF EXISTS `sohid_families`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sohid_families` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `age` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `father_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mother_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `creator` bigint unsigned DEFAULT NULL,
  `slug` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` enum('active','inactive') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'active',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sohid_families`
--

LOCK TABLES `sohid_families` WRITE;
/*!40000 ALTER TABLE `sohid_families` DISABLE KEYS */;
/*!40000 ALTER TABLE `sohid_families` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `target_moukuf`
--

DROP TABLE IF EXISTS `target_moukuf`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `target_moukuf` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `account_income_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `account_log_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `account_category_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `application_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `amount` double(8,2) DEFAULT NULL,
  `creator` bigint unsigned DEFAULT NULL,
  `slug` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` enum('active','inactive') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'active',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `target_moukuf`
--

LOCK TABLES `target_moukuf` WRITE;
/*!40000 ALTER TABLE `target_moukuf` DISABLE KEYS */;
/*!40000 ALTER TABLE `target_moukuf` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_notifications`
--

DROP TABLE IF EXISTS `user_notifications`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_notifications` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint DEFAULT NULL,
  `topic` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `to_all` tinyint NOT NULL DEFAULT '0',
  `to_department` bigint DEFAULT NULL,
  `seen` tinyint NOT NULL DEFAULT '0',
  `creator` bigint unsigned DEFAULT NULL,
  `slug` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` enum('active','inactive') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'active',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_notifications`
--

LOCK TABLES `user_notifications` WRITE;
/*!40000 ALTER TABLE `user_notifications` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_notifications` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_permissions`
--

DROP TABLE IF EXISTS `user_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_permissions` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `serial` int DEFAULT NULL,
  `creator` bigint unsigned DEFAULT NULL,
  `slug` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` enum('active','inactive') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'active',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_permissions`
--

LOCK TABLES `user_permissions` WRITE;
/*!40000 ALTER TABLE `user_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_roles`
--

DROP TABLE IF EXISTS `user_roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_roles` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `serial` int DEFAULT NULL,
  `creator` bigint unsigned DEFAULT NULL,
  `slug` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` enum('active','inactive') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'active',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_roles`
--

LOCK TABLES `user_roles` WRITE;
/*!40000 ALTER TABLE `user_roles` DISABLE KEYS */;
INSERT INTO `user_roles` VALUES (1,'admin',1,NULL,'admin-7581991','active','2024-03-15 23:33:00','2024-03-15 23:33:00'),(2,'user',2,NULL,'user-5492684','active','2024-03-15 23:33:00','2024-03-15 23:33:00');
/*!40000 ALTER TABLE `user_roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_user_permission`
--

DROP TABLE IF EXISTS `user_user_permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_user_permission` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint DEFAULT NULL,
  `user_permission_id` bigint DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_user_permission`
--

LOCK TABLES `user_user_permission` WRITE;
/*!40000 ALTER TABLE `user_user_permission` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_user_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_user_role`
--

DROP TABLE IF EXISTS `user_user_role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_user_role` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint DEFAULT NULL,
  `user_role_id` bigint DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_user_role`
--

LOCK TABLES `user_user_role` WRITE;
/*!40000 ALTER TABLE `user_user_role` DISABLE KEYS */;
INSERT INTO `user_user_role` VALUES (1,1,1,NULL,NULL),(2,2,2,NULL,NULL);
/*!40000 ALTER TABLE `user_user_role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `parent` bigint DEFAULT NULL,
  `full_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `uid` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `telegram_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `telegram_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'avatar.png',
  `creator` bigint unsigned DEFAULT NULL,
  `slug` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` enum('active','inactive') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'active',
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,NULL,'Mr admin','admin@gmail.com','$2y$10$L8WY2dr5xMs6QQ98OtGfrOGgkLHvmuNJlKtO7/92acwhhmCodq2da','454202712609',NULL,'admin','Shadhin Jonota','812239513','avatar.png',NULL,'mr-admin-9631830','active',NULL,NULL,'2024-03-15 23:33:00','2024-03-15 23:33:00'),(2,NULL,'Mr user','user@gmail.com','$2y$10$pemgiUXuDkEx2K5yU1n1l.Iie59n4wemyB/gNq6U0yefNltQHPyE2','574686576564',NULL,'user','Shadhin Jonota','812239513','avatar.png',NULL,'mr-user-1982270','active',NULL,NULL,'2024-03-15 23:33:00','2024-03-15 23:33:00');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `website_settings`
--

DROP TABLE IF EXISTS `website_settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `website_settings` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `creator` bigint unsigned DEFAULT NULL,
  `slug` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` enum('active','inactive') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'active',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `website_settings`
--

LOCK TABLES `website_settings` WRITE;
/*!40000 ALTER TABLE `website_settings` DISABLE KEYS */;
/*!40000 ALTER TABLE `website_settings` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-03-16 13:17:51
