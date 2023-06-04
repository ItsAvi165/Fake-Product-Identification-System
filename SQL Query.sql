# --------------------------------------------------------
# Host:                         127.0.0.1
# Database:                     22c9355_fake_product_bl
# Server version:               5.1.73-community
# Server OS:                    Win32
# HeidiSQL version:             5.0.0.3272
# Date/time:                    2023-03-24 16:41:59
# --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
# Dumping database structure for 22c9355_fake_product_bl
CREATE DATABASE IF NOT EXISTS `22c9355_fake_product_bl` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `22c9355_fake_product_bl`;


# Dumping structure for table 22c9355_fake_product_bl.companyregistertbl
CREATE TABLE IF NOT EXISTS `companyregistertbl` (
  `Cusername` text,
  `Cemail` text,
  `Cpassword` text,
  `CMbNo` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

# Dumping data for table 22c9355_fake_product_bl.companyregistertbl: 1 rows
/*!40000 ALTER TABLE `companyregistertbl` DISABLE KEYS */;
INSERT INTO `companyregistertbl` (`Cusername`, `Cemail`, `Cpassword`, `CMbNo`) VALUES ('om', 'om@gmail.com', 'Om@123', '9874563210');
/*!40000 ALTER TABLE `companyregistertbl` ENABLE KEYS */;


# Dumping structure for table 22c9355_fake_product_bl.distribute_product_info
CREATE TABLE IF NOT EXISTS `distribute_product_info` (
  `MID` int(10) NOT NULL AUTO_INCREMENT,
  `ProductName` text,
  `CompanyName` text,
  `DescriptionName` text,
  `MFGDate` text,
  `Price` text,
  `ExpiryDate` text,
  `Qty` text,
  `Product_No` text,
  PRIMARY KEY (`MID`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

# Dumping data for table 22c9355_fake_product_bl.distribute_product_info: 1 rows
/*!40000 ALTER TABLE `distribute_product_info` DISABLE KEYS */;
INSERT INTO `distribute_product_info` (`MID`, `ProductName`, `CompanyName`, `DescriptionName`, `MFGDate`, `Price`, `ExpiryDate`, `Qty`, `Product_No`) VALUES (1, 'shoes', 'adidas', 'men  adidas shoes', '2023-01-01', '1500', '2024-03-01', '2086', 'sho42237');
/*!40000 ALTER TABLE `distribute_product_info` ENABLE KEYS */;


# Dumping structure for table 22c9355_fake_product_bl.distribute_product_info_bill
CREATE TABLE IF NOT EXISTS `distribute_product_info_bill` (
  `MID` int(10) NOT NULL AUTO_INCREMENT,
  `ProductName` text,
  `CompanyName` text,
  `DescriptionName` text,
  `MFGDate` text,
  `Price` text,
  `ExpiryDate` text,
  `Qty` text,
  `Product_No` text,
  `Paybill` text,
  `Email_ID` text,
  `Distribute_Mobile_No` text,
  PRIMARY KEY (`MID`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

# Dumping data for table 22c9355_fake_product_bl.distribute_product_info_bill: 1 rows
/*!40000 ALTER TABLE `distribute_product_info_bill` DISABLE KEYS */;
INSERT INTO `distribute_product_info_bill` (`MID`, `ProductName`, `CompanyName`, `DescriptionName`, `MFGDate`, `Price`, `ExpiryDate`, `Qty`, `Product_No`, `Paybill`, `Email_ID`, `Distribute_Mobile_No`) VALUES (1, 'shoes', 'adidas', 'men  adidas shoes', '2023-01-01', '1500', '2024-03-01', '100', 'sho42237', '150000', 'om@gmail.com', '9874563210');
/*!40000 ALTER TABLE `distribute_product_info_bill` ENABLE KEYS */;


# Dumping structure for table 22c9355_fake_product_bl.product_info
CREATE TABLE IF NOT EXISTS `product_info` (
  `MID` int(10) NOT NULL AUTO_INCREMENT,
  `ProductName` text,
  `CompanyName` text,
  `DescriptionName` text,
  `MFGDate` text,
  `Price` text,
  `ExpiryDate` text,
  `Qty` text,
  `Product_No` text,
  PRIMARY KEY (`MID`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

# Dumping data for table 22c9355_fake_product_bl.product_info: 1 rows
/*!40000 ALTER TABLE `product_info` DISABLE KEYS */;
INSERT INTO `product_info` (`MID`, `ProductName`, `CompanyName`, `DescriptionName`, `MFGDate`, `Price`, `ExpiryDate`, `Qty`, `Product_No`) VALUES (1, 'shoes', 'adidas', 'men  adidas shoes', '2023-01-01', '1500', '2024-03-01', '14900', 'sho42237');
/*!40000 ALTER TABLE `product_info` ENABLE KEYS */;


# Dumping structure for table 22c9355_fake_product_bl.product_info_order
CREATE TABLE IF NOT EXISTS `product_info_order` (
  `D_Id` int(10) NOT NULL AUTO_INCREMENT,
  `Distribute_Email_ID` text,
  `Product_No` text,
  `ProductName` text,
  `CompanyName` text,
  `Order_Qty` text,
  `MId` text,
  `Distribute_Mobile_No` text,
  `Status_Info` text,
  PRIMARY KEY (`D_Id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

# Dumping data for table 22c9355_fake_product_bl.product_info_order: 1 rows
/*!40000 ALTER TABLE `product_info_order` DISABLE KEYS */;
INSERT INTO `product_info_order` (`D_Id`, `Distribute_Email_ID`, `Product_No`, `ProductName`, `CompanyName`, `Order_Qty`, `MId`, `Distribute_Mobile_No`, `Status_Info`) VALUES (1, 'om@gmail.com', 'sho42237', 'shoes', 'adidas', '100', '1', '9874563210', 'Accept Request');
/*!40000 ALTER TABLE `product_info_order` ENABLE KEYS */;


# Dumping structure for table 22c9355_fake_product_bl.registertbl
CREATE TABLE IF NOT EXISTS `registertbl` (
  `Uusername` text,
  `Uemail` text,
  `Upassword` text,
  `UMbNo` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

# Dumping data for table 22c9355_fake_product_bl.registertbl: 1 rows
/*!40000 ALTER TABLE `registertbl` DISABLE KEYS */;
INSERT INTO `registertbl` (`Uusername`, `Uemail`, `Upassword`, `UMbNo`) VALUES ('jitu', 'jitu@gmail.com', 'Jp@123', '9874563210');
/*!40000 ALTER TABLE `registertbl` ENABLE KEYS */;


# Dumping structure for table 22c9355_fake_product_bl.tblamount
CREATE TABLE IF NOT EXISTS `tblamount` (
  `A_ID` int(10) NOT NULL DEFAULT '0',
  `Email_ID` text,
  `Amount` text,
  PRIMARY KEY (`A_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

# Dumping data for table 22c9355_fake_product_bl.tblamount: 1 rows
/*!40000 ALTER TABLE `tblamount` DISABLE KEYS */;
INSERT INTO `tblamount` (`A_ID`, `Email_ID`, `Amount`) VALUES (0, 'om@gmail.com', '99850000');
/*!40000 ALTER TABLE `tblamount` ENABLE KEYS */;


# Dumping structure for table 22c9355_fake_product_bl.tbluser_amount
CREATE TABLE IF NOT EXISTS `tbluser_amount` (
  `A_ID` int(10) NOT NULL DEFAULT '0',
  `Email_ID` text,
  `Amount` text,
  PRIMARY KEY (`A_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

# Dumping data for table 22c9355_fake_product_bl.tbluser_amount: 1 rows
/*!40000 ALTER TABLE `tbluser_amount` DISABLE KEYS */;
INSERT INTO `tbluser_amount` (`A_ID`, `Email_ID`, `Amount`) VALUES (0, 'jitu@gmail.com', '100000000');
/*!40000 ALTER TABLE `tbluser_amount` ENABLE KEYS */;


# Dumping structure for table 22c9355_fake_product_bl.user_product_info
CREATE TABLE IF NOT EXISTS `user_product_info` (
  `MID` int(10) NOT NULL AUTO_INCREMENT,
  `ProductName` text,
  `CompanyName` text,
  `DescriptionName` text,
  `MFGDate` text,
  `Price` text,
  `ExpiryDate` text,
  `Qty` text,
  `Product_No` text,
  PRIMARY KEY (`MID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

# Dumping data for table 22c9355_fake_product_bl.user_product_info: 0 rows
/*!40000 ALTER TABLE `user_product_info` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_product_info` ENABLE KEYS */;


# Dumping structure for table 22c9355_fake_product_bl.user_product_info_bill
CREATE TABLE IF NOT EXISTS `user_product_info_bill` (
  `MID` int(10) NOT NULL AUTO_INCREMENT,
  `ProductName` text,
  `CompanyName` text,
  `DescriptionName` text,
  `MFGDate` text,
  `Price` text,
  `ExpiryDate` text,
  `Qty` text,
  `Product_No` text,
  `Paybill` text,
  `Email_ID` text,
  `User_Mobile_No` text,
  PRIMARY KEY (`MID`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

# Dumping data for table 22c9355_fake_product_bl.user_product_info_bill: 2 rows
/*!40000 ALTER TABLE `user_product_info_bill` DISABLE KEYS */;
INSERT INTO `user_product_info_bill` (`MID`, `ProductName`, `CompanyName`, `DescriptionName`, `MFGDate`, `Price`, `ExpiryDate`, `Qty`, `Product_No`, `Paybill`, `Email_ID`, `User_Mobile_No`) VALUES (1, 'shoes', 'adidas', 'men  adidas shoes', '2023-01-01', '1500', '2024-03-01', '2', 'sho42237', NULL, NULL, NULL), (2, 'shoes', 'adidas', 'men  adidas shoes', '2023-01-01', '1500', '2024-03-01', '2', 'sho42237', '3000', 'jitu@gmail.com', '9874563210');
/*!40000 ALTER TABLE `user_product_info_bill` ENABLE KEYS */;


# Dumping structure for table 22c9355_fake_product_bl.user_product_info_order
CREATE TABLE IF NOT EXISTS `user_product_info_order` (
  `D_Id` int(10) NOT NULL AUTO_INCREMENT,
  `User_Email_ID` text,
  `Product_No` text,
  `ProductName` text,
  `CompanyName` text,
  `Order_Qty` text,
  `MId` text,
  `User_Mobile_No` text,
  `Status_Info` text,
  PRIMARY KEY (`D_Id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

# Dumping data for table 22c9355_fake_product_bl.user_product_info_order: 1 rows
/*!40000 ALTER TABLE `user_product_info_order` DISABLE KEYS */;
INSERT INTO `user_product_info_order` (`D_Id`, `User_Email_ID`, `Product_No`, `ProductName`, `CompanyName`, `Order_Qty`, `MId`, `User_Mobile_No`, `Status_Info`) VALUES (1, 'jitu@gmail.com', 'sho42237', 'shoes', 'adidas', '2', '1', '9874563210', 'Accept Request');
/*!40000 ALTER TABLE `user_product_info_order` ENABLE KEYS */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
