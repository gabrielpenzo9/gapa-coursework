-- MySQL dump 10.13  Distrib 8.0.34, for Win64 (x86_64)
--
-- Host: localhost    Database: final_project
-- ------------------------------------------------------
-- Server version	5.7.44-log

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
-- Table structure for table `doctor`
--

DROP TABLE IF EXISTS `doctor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `doctor` (
  `Doctor_ID` varchar(10) NOT NULL,
  `Name` varchar(20) DEFAULT NULL,
  `Specialization` varchar(30) DEFAULT NULL,
  `Contact_Information` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`Doctor_ID`),
  KEY `ind_doc` (`Specialization`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `doctor`
--

LOCK TABLES `doctor` WRITE;
/*!40000 ALTER TABLE `doctor` DISABLE KEYS */;
INSERT INTO `doctor` VALUES ('D001','Dr. Smith','Dermatology','609-989-7364'),('D002','Dr. Johnson','Allergy and Immunology','609-878-5423'),('D003','Dr. Williams','Gastroenterology','380-765-0192'),('D004','Dr. Brown','Cardiology','609-777-1872'),('D005','Dr. Jones','General Medicine','609-659-3858'),('D006','Dr. Miller','Endocrinology','755-102-6559'),('D007','Dr. Garcia','Infectious Disease','609-519-8576'),('D008','Dr. Martinez','Urology','609-877-0111'),('D009','Dr. Thomas','Psychiatry','350-875-8153'),('D010','Dr. Jackson','Pediatrics','609-987-1725'),('D011','Dr. Martin','Pain Management','877-085-7456');
/*!40000 ALTER TABLE `doctor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `insurance`
--

DROP TABLE IF EXISTS `insurance`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `insurance` (
  `Insurance_ID` varchar(10) NOT NULL,
  `Coverage_Info` varchar(50) DEFAULT NULL,
  `Provider` varchar(50) DEFAULT NULL,
  `Policy_Number` varchar(20) DEFAULT NULL,
  `Patient_ID` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`Insurance_ID`),
  KEY `Patient_ID` (`Patient_ID`),
  CONSTRAINT `insurance_ibfk_1` FOREIGN KEY (`Patient_ID`) REFERENCES `patient` (`Patient_ID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `insurance`
--

LOCK TABLES `insurance` WRITE;
/*!40000 ALTER TABLE `insurance` DISABLE KEYS */;
INSERT INTO `insurance` VALUES ('INS001','Full Coverage','Horizontal Inc.','HC123456','P001'),('INS002','Dental and Vision Coverage','DentalMax','DM678901','P002'),('INS003','Emergency Coverage','InsureFast Inc.','IF345678','P003'),('INS004','Full Coverage','TotalCare Inc.','TC098765','P004'),('INS005','Travel Coverage','Horizontal Inc.','HC123456','P005'),('INS006','Emergency Coverage','InsureFast Inc.','IF825596','P006'),('INS007','Full Coverage','TotalCare Inc.','TC593176','P007'),('INS008','Vision Coverage','Wellness Insurance Inc.','WI074138','P008'),('INS009','Full Coverage','Horizontal Inc.','HC948596','P009'),('INS010','Dental Coverage','DentalMax Inc.','DM102938','P010'),('INS011','Full Coverage','InsureFast Inc.','IF201605','P011'),('INS012','Emergency Coverage','SafeTravel Inc.','ST740148','P012'),('INS013','Full Coverage','Wellness Insurance Inc.','WI630963','P013'),('INS014','Dental and Vision Coverage','Horizontal Inc.','HC274265','P014'),('INS015','Vision Coverage','InsureFast Inc.','IF578280','P015'),('INS016','Dental Coverage','TotalCare Inc.','TC265108','P005'),('INS017','Emergency Coverage','Horizontal Inc.','HC750201','P010'),('INS018','Emergency Coverage','Wellness Insurance Inc.','WI559122','P008');
/*!40000 ALTER TABLE `insurance` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `medication`
--

DROP TABLE IF EXISTS `medication`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `medication` (
  `Medication_ID` varchar(10) NOT NULL,
  `Name` varchar(20) DEFAULT NULL,
  `Dosage` varchar(50) DEFAULT NULL,
  `Form` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`Medication_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `medication`
--

LOCK TABLES `medication` WRITE;
/*!40000 ALTER TABLE `medication` DISABLE KEYS */;
INSERT INTO `medication` VALUES ('M001','0.1% Adapalene','pea-sized amount','Topical gel'),('M002','Mometasone','2 sprays','Spray'),('M003','Lisinopril','5 mg','Oral tablet'),('M004','Pantoprozale','40 mg','Oral tablet'),('M005','Atenolol','50 mg','Oral tablet'),('M006','Aspirin','81 mg','Oral tablet'),('M007','Insulin Glargine','0.2 units','Vial'),('M008','Fluticasone','88 mcg','Inhaler'),('M009','Cephalexin','500 mg','Oral tablet'),('M010','Omeprazole','20 mg','Oral tablet'),('M011','Tamsulosin','0.4 mg','Oral tablet'),('M012','Sildenafil','100 mg','Oral tablet'),('M013','Clotrimazole','pea-sized amount','Cream'),('M014','Fluoxetine','20 mg','Oral tablet'),('M015','Loratadine','10 mg','Oral tablet'),('M016','Amoxicillin','500 mg','Oral tablet'),('M017','Fentanyl','25 mcg/hr','Transdermal Patch'),('M018','Ranitidine','150 mg','Oral tablet'),('M019','Azithromycin','81 mg','Oral tablet'),('M020','Atorvastatin','10 mg','Oral tablet'),('M021','Lorazepam','20 mg','Oral tablet');
/*!40000 ALTER TABLE `medication` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `patient`
--

DROP TABLE IF EXISTS `patient`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `patient` (
  `Patient_ID` varchar(20) NOT NULL,
  `Name` varchar(30) DEFAULT NULL,
  `Gender` varchar(10) DEFAULT NULL,
  `Age` int(2) DEFAULT NULL,
  `Address` varchar(30) DEFAULT NULL,
  `City` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`Patient_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `patient`
--

LOCK TABLES `patient` WRITE;
/*!40000 ALTER TABLE `patient` DISABLE KEYS */;
INSERT INTO `patient` VALUES ('P001','Rachael Potter','Female',32,'31 Tunnis Ave','Newark NJ'),('P002','Robert Gonzales','Male',47,'54 Walls Cliff Rd','Camden NJ'),('P003','Anne Grimes','Female',54,'71 Rivera Ave','Cape May NJ'),('P004','Jill Wagner','Female',28,'30 Williams Rd','Hammonton NJ'),('P005','Jesse Cowan','Female',67,'27 Peterson St','Newark NJ'),('P006','Aaron Hayes','Male',45,'3 California Ave','Hammonton NJ'),('P007','Steven Hendricks','Male',78,'67 New Ave','Cape May NJ'),('P008','Tommy Henderson','Male',30,'17 Curtis Rd','Newark NJ'),('P009','Allison Acevedo','Female',68,'23 Abbott St','Hammonton NJ'),('P010','Philip Mosley','Male',43,'20 Collins Ave','Camden NJ'),('P011','Diana Hines','Female',39,'9 Barnes Ave','Newark NJ'),('P012','David Smith','Male',47,'14 Leeds Rd','Newark NJ'),('P013','Taylor Chen','Male',67,'32 Donna Summit','Cape May NJ'),('P014','Valerie Lutz','Female',17,'18 White Parkways','Hammonton NJ'),('P015','Jason Rodriguez','Male',29,'31 Franklin Ave','Camden NJ'),('P016','Alex Ramirez','Male',30,'12 Elm Street','Princeton NJ');
/*!40000 ALTER TABLE `patient` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `patient_insurance_info`
--

DROP TABLE IF EXISTS `patient_insurance_info`;
/*!50001 DROP VIEW IF EXISTS `patient_insurance_info`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `patient_insurance_info` AS SELECT 
 1 AS `patient_id`,
 1 AS `name`,
 1 AS `provider`,
 1 AS `policy_number`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `pharmacy`
--

DROP TABLE IF EXISTS `pharmacy`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pharmacy` (
  `Pharmacy_ID` varchar(10) NOT NULL,
  `Name` varchar(50) DEFAULT NULL,
  `Address` varchar(50) DEFAULT NULL,
  `Contact_Information` varchar(20) DEFAULT NULL,
  `Prescription_ID` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`Pharmacy_ID`),
  KEY `Prescription_ID` (`Prescription_ID`),
  CONSTRAINT `pharmacy_ibfk_1` FOREIGN KEY (`Prescription_ID`) REFERENCES `prescription` (`Prescription_ID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pharmacy`
--

LOCK TABLES `pharmacy` WRITE;
/*!40000 ALTER TABLE `pharmacy` DISABLE KEYS */;
INSERT INTO `pharmacy` VALUES ('PH001','Central Pharmacy','123 Main St Newark NJ','609-209-5678','RX089'),('PH002','Green Valley Pharmacy','456 Elm St Camden NJ','609-128-2938','RX023'),('PH003','Family Care Pharmacy','789 Pine St Cape May NJ','609-595-2973','RX075'),('PH004','Wellness Pharmacy','101 Oak St Hammonton NJ','609-585-1937','RX047'),('PH005','Community Pharmacy','202 Maple St Newark NJ','609-505-1033','RX090'),('PH006','Sunrise Pharmacy','303 Birch St Hammonton NJ','609-875-1937','RX054'),('PH007','CarePlus Pharmacy','404 Cedar St Cape May NJ','609-868-1374','RX034'),('PH008','HealthFirst Pharmacy','505 Cherry St Newark NJ','609-123-1837','RX076'),('PH009','Medicorner Pharmacy','606 Ash St Hammonton NJ','609-875-2939','RX088'),('PH010','Apothecare Pharmacy','707 Spruce St Camden NJ','609-924-1928','RX011'),('PH011','Harbor Pharmacy','111 Harbor View Cape May NJ','609-027-1847','RX098'),('PH012','Pine Valley Pharmacy','222 Pine Valley Hammonton NJ','609-126-1038','RX022'),('PH013','Lakeside Pharmacy','333 Lakeside Newark NJ','609-962-1300','RX043'),('PH014','Riverfront Pharmacy','444 River Rd Camden NJ','609-927-3973','RX007'),('PH015','Summit Pharmacy','555 Summit Ave Cape May NJ','609-102-3483','RX003'),('PH016','Crestview Pharmacy','666 Crestview Newark NJ','609-962-1343','RX039'),('PH017','Oakwood Pharmacy','777 Oakwood Hammonton NJ','609-283-1233','RX050'),('PH018','Seaside Pharmacy','888 Seaside Blvd Cape May NJ','609-102-0987','RX024'),('PH019','Meadow Pharmacy','999 Meadow Ln Newark NJ','609-976-1120','RX096'),('PH020','Walgreens Pharmacy','1010 Cloud St Camden NJ','609-123-1384','RX074'),('PH021','CVS Pharmacy','2021 Sunview Newark NJ','609-912-1423','RX066'),('PH022','Rite Aid Pharmacy','2121 Moon Rd Hammonton NJ','609-024-1384','RX049'),('PH023','Walmart Pharmacy','2323 Starlight Cape May NJ','609-555-9475','RX072'),('PH024','ShopRite Pharmacy','2424 Comet Ct Newark NJ','609-555-4074','RX056');
/*!40000 ALTER TABLE `pharmacy` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `prescription`
--

DROP TABLE IF EXISTS `prescription`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `prescription` (
  `Prescription_ID` varchar(10) NOT NULL,
  `Prescription_Name` varchar(30) DEFAULT NULL,
  `Dosage_Instructions` varchar(50) DEFAULT NULL,
  `Duration` varchar(30) DEFAULT NULL,
  `Date_Issued` varchar(20) DEFAULT NULL,
  `Patient_ID` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`Prescription_ID`),
  KEY `Patient_ID` (`Patient_ID`),
  CONSTRAINT `prescription_ibfk_1` FOREIGN KEY (`Patient_ID`) REFERENCES `patient` (`Patient_ID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `prescription`
--

LOCK TABLES `prescription` WRITE;
/*!40000 ALTER TABLE `prescription` DISABLE KEYS */;
INSERT INTO `prescription` VALUES ('RX003','Mometasone','spray in each nostril once daily','As needed','02/02/2024','P001'),('RX007','0.1% Adapalene','small amount to affected area once daily','60 days','10/26/2023','P010'),('RX011','Lisinopril','two 10 mg tablets orally once daily','As directed by doctor','10/24/2024','P008'),('RX022','Pantoprazole','40 mg tablet orally once daily','8 weeks','12/09/2023','P004'),('RX023','Atenolol','50 mg tablet orally once daily in the morning','7 days','09/25/2023','P004'),('RX024','Azithromycin','81 mg tablet once daily','As directed by doctor','03/06/2024','P003'),('RX034','Insulin Glargine','Inject 30 units at bedtime','30 days','10/08/2023','P001'),('RX039','Fluticasone','inhale two puffs twice daily','As directed by doctor','09/30/2023','P013'),('RX043','Cephalexin','500 mg tablet orally every 8 hours','Complete course','10/01/2023','P012'),('RX047','Omeprazole','two 20 mg tablets orally','28 days','01/15/2024','P007'),('RX049','Lorazepam','20 mg tablet orally','21 days','01/09/2024','P005'),('RX050','Tamsulosin','0.4 tablet orally once daily after a meal','8 weeks','11/19/2023','P014'),('RX054','Sildenafil','100 mg orally once daily','As needed','03/24/2024','P009'),('RX056','1% Clotrimazole','apply cream to skin area twice daily','14 days','03/01/2024','P011'),('RX066','Loratadine','10 mg tablet orally once daily','21 days','02/18/2024','P002'),('RX072','Aspirin','81 mg tablet orally','21 days','01/21/2024','P010'),('RX074','Lorazepam','20 mg tablet orally','21 days','01/29/2024','P014'),('RX075','Aspirin','81 mg tablet once daily','As directed by doctor','02/19/2024','P002'),('RX076','Fluoxetine','20 mg orally once daily','21 days','01/24/2024','P005'),('RX088','Loratadine','10 mg tablet orally once daily','21 days','02/27/2024','P006'),('RX089','Amoxicillin','500 mg orally 3 times a day','14 days','12/16/2023','P008'),('RX090','Fentanyl','patch (12 mcg/hr) on skin','Every 72 hours','01/17/2024','P003'),('RX096','Atorvastatin','10 mg tablet orally once daily','21 days','02/08/2024','P012'),('RX098','Ranitidine','150 mg tablet twice daily','As needed','01/03/2024','P015');
/*!40000 ALTER TABLE `prescription` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Final view structure for view `patient_insurance_info`
--

/*!50001 DROP VIEW IF EXISTS `patient_insurance_info`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `patient_insurance_info` AS select `p`.`Patient_ID` AS `patient_id`,`p`.`Name` AS `name`,`i`.`Provider` AS `provider`,`i`.`Policy_Number` AS `policy_number` from (`patient` `p` join `insurance` `i` on((`p`.`Patient_ID` = `i`.`Patient_ID`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-09-13 14:06:22
