-- phpMyAdmin SQL Dump
-- version 3.3.9
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jul 15, 2023 at 03:04 PM
-- Server version: 5.5.8
-- PHP Version: 5.3.5

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `soap`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE IF NOT EXISTS `admin` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `creationDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updationDate` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`, `creationDate`, `updationDate`) VALUES
(1, 'admin', 'admin123', '2017-01-24 21:51:18', '21-03-2019 08:02:48 AM');

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE IF NOT EXISTS `category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `categoryName` varchar(255) NOT NULL,
  `categoryDescription` longtext NOT NULL,
  `creationDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updationDate` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=24 ;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `categoryName`, `categoryDescription`, `creationDate`, `updationDate`) VALUES
(18, 'FERTILIZERS', '', '2022-03-11 11:46:23', ''),
(19, 'FARM EQUIPMENTS', '', '2022-03-11 11:46:58', ''),
(20, 'SEEDS', '', '2022-03-11 11:47:02', ''),
(23, 'Drip Items', '', '2022-04-19 05:42:57', '');

-- --------------------------------------------------------

--
-- Table structure for table `invoice`
--

CREATE TABLE IF NOT EXISTS `invoice` (
  `invoiceid` int(10) NOT NULL AUTO_INCREMENT,
  `userid` int(10) NOT NULL,
  `orderid` int(10) NOT NULL,
  PRIMARY KEY (`invoiceid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `invoice`
--


-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE IF NOT EXISTS `orders` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userId` int(11) NOT NULL,
  `productId` varchar(255) NOT NULL,
  `quantity` int(11) NOT NULL,
  `orderDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `paymentMethod` varchar(50) DEFAULT NULL,
  `orderStatus` varchar(55) DEFAULT NULL,
  `cakeMsg` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=80 ;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `userId`, `productId`, `quantity`, `orderDate`, `paymentMethod`, `orderStatus`, `cakeMsg`) VALUES
(7, 4, '34', 1, '2022-03-15 05:14:03', 'COD', 'Delivered', ''),
(8, 4, '34', 1, '2022-03-15 05:15:51', 'COD', 'Delivered', ''),
(9, 4, '32', 1, '2022-03-15 05:35:02', 'COD', 'Delivered', ''),
(10, 4, '36', 1, '2022-03-15 18:42:39', 'COD', NULL, '207515911296'),
(11, 4, '25', 1, '2022-03-16 10:20:14', 'COD', NULL, '207515911296'),
(12, 4, '35', 1, '2022-03-16 15:42:41', 'COD', 'Delivered', '207515911296'),
(13, 4, '32', 1, '2022-03-17 14:14:31', 'Internet Banking', 'Delivered', '12357895'),
(14, 4, '50', 1, '2022-03-19 11:36:55', 'Internet Banking', NULL, '12357895'),
(15, 4, '53', 1, '2022-03-20 17:22:09', 'Internet Banking', NULL, '12357895'),
(16, 4, '25', 1, '2022-03-21 12:07:20', 'COD', 'Delivered', ''),
(17, 1, '37', 1, '2022-03-21 12:22:18', 'Internet Banking', NULL, '12357895'),
(18, 1, '32', 1, '2022-03-21 12:25:35', 'COD', NULL, ''),
(19, 4, '35', 1, '2022-03-21 12:27:33', 'COD', NULL, ''),
(20, 4, '40', 1, '2022-03-21 12:53:23', 'COD', NULL, ''),
(21, 1, '38', 1, '2022-03-21 12:54:45', 'COD', NULL, ''),
(22, 1, '44', 1, '2022-03-21 12:56:39', 'COD', NULL, '12357895'),
(23, 4, '36', 1, '2022-03-21 14:21:36', 'COD', NULL, ''),
(24, 4, '40', 1, '2022-03-22 17:15:30', 'COD', NULL, ''),
(25, 4, '40', 1, '2022-03-22 17:21:36', 'COD', NULL, ''),
(26, 4, '48', 1, '2022-03-22 17:51:55', 'COD', NULL, ''),
(27, 4, '32', 1, '2022-03-22 18:07:06', 'COD', NULL, '-'),
(28, 4, '54', 1, '2022-03-24 15:45:22', 'Internet Banking', NULL, 'aergf'),
(29, 4, '36', 1, '2022-03-24 16:12:42', 'Internet Banking', NULL, 'aergf'),
(30, 4, '54', 1, '2022-03-24 16:12:42', 'Internet Banking', NULL, 'aergf'),
(31, 4, '53', 1, '2022-04-06 11:14:57', 'Internet Banking', NULL, 'aergf'),
(32, 4, '25', 1, '2022-04-06 11:33:41', 'Internet Banking', NULL, 'aergf'),
(33, 4, '53', 1, '2022-04-06 11:33:41', 'Internet Banking', NULL, 'aergf'),
(34, 4, '55', 1, '2022-04-07 11:01:54', 'Internet Banking', NULL, 'aergf'),
(35, 6, '52', 1, '2022-04-07 11:04:44', 'Internet Banking', NULL, '456789'),
(37, 1, '56', 1, '2022-04-07 11:10:55', 'COD', NULL, 'as'),
(38, 1, '51', 1, '2022-04-07 11:27:53', 'COD', NULL, ''),
(39, 7, '39', 1, '2022-04-07 11:37:26', NULL, NULL, ''),
(40, 8, '32', 1, '2022-04-07 11:44:16', 'COD', NULL, ''),
(41, 4, '44', 1, '2022-04-07 11:47:21', 'Internet Banking', NULL, ''),
(42, 1, '25', 1, '2022-04-07 12:16:31', 'COD', NULL, ''),
(43, 4, '53', 1, '2022-04-09 09:59:23', 'COD', NULL, ''),
(44, 4, '43', 1, '2022-04-09 10:00:00', 'Internet Banking', NULL, '123456'),
(45, 4, '34', 1, '2022-04-09 10:01:24', 'UPI Payment', NULL, 'asd'),
(46, 1, '53', 1, '2022-04-09 13:27:30', 'UPI Payment', NULL, ''),
(47, 4, '25', 1, '2022-04-09 14:06:08', 'COD', NULL, ''),
(48, 4, '25', 2, '2022-04-09 14:09:37', 'COD', NULL, ''),
(49, 4, '53', 1, '2022-04-09 14:09:37', 'COD', NULL, ''),
(50, 4, '43', 1, '2022-04-11 14:42:35', 'UPI Payment', NULL, 'sdsf'),
(51, 4, '25', 1, '2022-04-11 14:53:34', 'UPI Payment', NULL, ''),
(52, 4, '36', 1, '2022-04-11 14:53:34', 'UPI Payment', NULL, ''),
(53, 4, '40', 3, '2022-04-11 14:53:34', 'UPI Payment', NULL, ''),
(54, 1, '33', 1, '2022-04-13 11:13:57', 'UPI Payment', NULL, '051265256'),
(55, 1, '48', 1, '2022-04-15 13:14:25', 'COD', NULL, ''),
(56, 4, '36', 1, '2022-04-15 20:17:16', 'UPI Payment', NULL, ''),
(57, 4, '25', 1, '2022-04-16 17:08:26', 'COD', NULL, ''),
(58, 4, '35', 1, '2022-04-16 17:09:09', 'UPI Payment', NULL, ''),
(59, 4, '34', 4, '2022-04-17 15:04:34', 'COD', NULL, ''),
(60, 4, '25', 1, '2022-04-17 15:07:49', 'UPI Payment', NULL, ''),
(61, 4, '34', 1, '2022-04-18 11:00:58', 'UPI Payment', NULL, '92641'),
(62, 4, '60', 1, '2022-04-19 06:11:23', 'UPI Payment', NULL, '92641'),
(63, 4, '60', 1, '2022-04-19 11:16:09', 'UPI Payment', NULL, ''),
(64, 4, '58', 1, '2022-04-19 11:58:29', 'UPI Payment', NULL, ''),
(65, 1, '58', 1, '2022-04-19 12:04:02', '', NULL, ''),
(66, 4, '60', 1, '2022-04-28 11:32:14', 'UPI Payment', NULL, '5586'),
(67, 4, '60', 1, '2022-04-28 11:32:23', 'UPI Payment', NULL, '5586'),
(68, 1, '25', 1, '2022-04-28 11:32:57', 'UPI Payment', NULL, '52'),
(69, 4, '36', 1, '2022-04-28 11:35:44', 'UPI Payment', NULL, '5586'),
(70, 4, '25', 3, '2022-05-05 15:07:18', '', NULL, ''),
(71, 4, '32', 1, '2022-05-05 15:07:18', '', NULL, ''),
(72, 4, '32', 1, '2022-05-09 14:57:33', 'UPI Payment', NULL, '123456'),
(73, 6, '60', 2, '2022-05-17 11:24:39', 'UPI Payment', NULL, '1234556'),
(74, 6, '25', 1, '2022-05-17 11:38:33', 'COD', NULL, ''),
(75, 6, '33', 1, '2022-05-20 15:58:14', 'COD', NULL, ''),
(76, 4, '36', 1, '2022-05-31 10:53:46', 'UPI Payment', NULL, '123456'),
(77, 4, '40', 1, '2022-05-31 11:33:11', 'UPI Payment', NULL, '988463'),
(78, 4, '35', 1, '2022-05-31 14:21:16', NULL, NULL, ''),
(79, 4, '34', 1, '2022-08-10 10:42:25', NULL, NULL, '');

-- --------------------------------------------------------

--
-- Table structure for table `ordertrackhistory`
--

CREATE TABLE IF NOT EXISTS `ordertrackhistory` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `orderId` int(11) NOT NULL,
  `status` varchar(255) NOT NULL,
  `remark` mediumtext NOT NULL,
  `postingDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `ordertrackhistory`
--

INSERT INTO `ordertrackhistory` (`id`, `orderId`, `status`, `remark`, `postingDate`) VALUES
(1, 16, 'Delivered', 'qawe', '2022-03-21 13:02:00'),
(2, 7, 'Delivered', 'rgvf', '2022-03-30 13:53:36'),
(3, 8, 'Delivered', 'fr', '2022-03-30 13:53:55'),
(4, 9, 'Delivered', '123', '2022-04-29 11:08:09'),
(5, 12, 'Delivered', 'late', '2022-05-01 08:43:37'),
(6, 13, 'Delivered', 'wrfsd', '2022-05-31 11:35:45');

-- --------------------------------------------------------

--
-- Table structure for table `productreviews`
--

CREATE TABLE IF NOT EXISTS `productreviews` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `productId` int(11) NOT NULL,
  `quality` int(11) NOT NULL,
  `price` int(11) NOT NULL,
  `value` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `summary` varchar(255) NOT NULL,
  `review` longtext NOT NULL,
  `reviewDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `productreviews`
--

INSERT INTO `productreviews` (`id`, `productId`, `quality`, `price`, `value`, `name`, `summary`, `review`, `reviewDate`) VALUES
(1, 32, 5, 5, 5, 'siddarth', 'good', 'good', '2022-03-14 11:11:23'),
(2, 34, 0, 0, 0, 'SS', 'Discount can be given', 'Nice service', '2022-03-15 12:36:31'),
(3, 40, 2, 3, 2, 'nithin', 'bad', 'verybad', '2022-03-22 17:15:01'),
(4, 44, 1, 1, 1, 'siddarth', 'good', 'image', '2022-04-07 11:54:19'),
(5, 36, 0, 0, 0, 'Dipin Kumar R', 'good', 'good', '2022-05-01 08:19:07');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE IF NOT EXISTS `products` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `category` int(11) NOT NULL,
  `subCategory` int(11) NOT NULL,
  `productName` varchar(255) NOT NULL,
  `productPrice` int(11) NOT NULL,
  `productPriceBeforeDiscount` int(11) NOT NULL,
  `productDescription` longtext NOT NULL,
  `productImage1` varchar(255) NOT NULL,
  `productImage2` varchar(255) NOT NULL,
  `productImage3` varchar(255) NOT NULL,
  `shippingCharge` int(11) NOT NULL,
  `productAvailability` varchar(255) NOT NULL,
  `postingDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updationDate` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=62 ;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `category`, `subCategory`, `productName`, `productPrice`, `productPriceBeforeDiscount`, `productDescription`, `productImage1`, `productImage2`, `productImage3`, `shippingCharge`, `productAvailability`, `postingDate`, `updationDate`) VALUES
(25, 19, 44, 'Mahindra Cultivator', 32000, 35000, '<table class="sdpTbl sdpMt20 ie_w100 sdpOfh" style="box-sizing: inherit; overflow: hidden; display: grid; margin-top: 20px; align-content: baseline; max-height: 370px; color: rgb(102, 102, 102); font-family: arial; font-size: 16px; background-color: rgb(255, 255, 255);"><tbody style="box-sizing: inherit;"><tr class="sdpRow" style="box-sizing: inherit; display: grid; border-bottom: 1px solid rgb(234, 234, 234); grid-template-columns: 165px 1fr; align-items: center;"><td class="sdpClm" style="box-sizing: inherit; margin: 5px 0px; font-size: 15px;">Type</td><td id="Spec-1" class="sdpClm sdpPr sdpMr" style="box-sizing: inherit; position: relative; max-height: 40px; overflow: hidden; color: rgb(0, 0, 0); margin: 5px 0px; font-size: 15px; padding-left: 8px; line-height: 20px;">Rigid Cultivator<span style="box-sizing: inherit;"></span></td></tr><tr class="sdpRow" style="box-sizing: inherit; display: grid; border-bottom: 1px solid rgb(234, 234, 234); grid-template-columns: 165px 1fr; align-items: center;"><td class="sdpClm" style="box-sizing: inherit; margin: 5px 0px; font-size: 15px;">No Of Tynes</td><td id="Spec-2" class="sdpClm sdpPr sdpMr" style="box-sizing: inherit; position: relative; max-height: 40px; overflow: hidden; color: rgb(0, 0, 0); margin: 5px 0px; font-size: 15px; padding-left: 8px; line-height: 20px;">9 Tynes<span style="box-sizing: inherit;"></span></td></tr><tr class="sdpRow" style="box-sizing: inherit; display: grid; border-bottom: 1px solid rgb(234, 234, 234); grid-template-columns: 165px 1fr; align-items: center;"><td class="sdpClm" style="box-sizing: inherit; margin: 5px 0px; font-size: 15px;">Working Width</td><td id="Spec-3" class="sdpClm sdpPr sdpMr" style="box-sizing: inherit; position: relative; max-height: 40px; overflow: hidden; color: rgb(0, 0, 0); margin: 5px 0px; font-size: 15px; padding-left: 8px; line-height: 20px;">1860 mm<span style="box-sizing: inherit;"></span></td></tr><tr class="sdpRow" style="box-sizing: inherit; display: grid; border-bottom: 1px solid rgb(234, 234, 234); grid-template-columns: 165px 1fr; align-items: center;"><td class="sdpClm" style="box-sizing: inherit; margin: 5px 0px; font-size: 15px;">Brand</td><td id="Spec-4" class="sdpClm sdpPr sdpMr" style="box-sizing: inherit; position: relative; max-height: 40px; overflow: hidden; color: rgb(0, 0, 0); margin: 5px 0px; font-size: 15px; padding-left: 8px; line-height: 20px;">Mahindra<span style="box-sizing: inherit;"></span></td></tr><tr class="sdpRow" style="box-sizing: inherit; display: grid; border-bottom: 1px solid rgb(234, 234, 234); grid-template-columns: 165px 1fr; align-items: center;"><td class="sdpClm" style="box-sizing: inherit; margin: 5px 0px; font-size: 15px;">Suitable HP Range</td><td id="Spec-5" class="sdpClm sdpPr sdpMr" style="box-sizing: inherit; position: relative; max-height: 40px; overflow: hidden; color: rgb(0, 0, 0); margin: 5px 0px; font-size: 15px; padding-left: 8px; line-height: 20px;">35 hp &amp; Above<span style="box-sizing: inherit;"></span></td></tr><tr class="sdpRow" style="box-sizing: inherit; display: grid; border-bottom: 1px solid rgb(234, 234, 234); grid-template-columns: 165px 1fr; align-items: center;"><td class="sdpClm" style="box-sizing: inherit; margin: 5px 0px; font-size: 15px;">Tractor Power</td><td id="Spec-6" class="sdpClm sdpPr sdpMr" style="box-sizing: inherit; position: relative; max-height: 40px; overflow: hidden; color: rgb(0, 0, 0); margin: 5px 0px; font-size: 15px; padding-left: 8px; line-height: 20px;">35-65 hp</td></tr></tbody></table>', 'mahindra cultivator.jpg', 'mahindra cultivator 2.jpg', '', 500, 'In Stock', '2022-03-11 11:53:46', ''),
(28, 19, 44, 'Mahindra Mini Rotavator', 32000, 35000, '<table style="margin: 0px 0px 8px; padding: 0px; width: 657px; color: rgb(51, 51, 51); font-family: arial; font-size: 16px; background-color: rgb(255, 255, 255);"><tbody style="margin: 0px; padding: 0px;"><tr style="margin: 0px; padding: 0px;"><td class="tdwdt" style="margin: 0px; padding: 4px 5px; width: 252.8px; color: rgb(132, 132, 132); border-bottom: 1px solid rgb(234, 234, 234); font-size: 15px; vertical-align: top; word-break: break-word;">Brand</td><td class="tdwdt1 color6" style="margin: 0px; padding: 4px 5px; color: rgb(0, 0, 0); width: 384.2px; border-bottom: 1px solid rgb(234, 234, 234); font-size: 15px; vertical-align: top; word-break: break-word;">Mahindra</td></tr><tr style="margin: 0px; padding: 0px;"><td class="tdwdt" style="margin: 0px; padding: 4px 5px; width: 252.8px; color: rgb(132, 132, 132); border-bottom: 1px solid rgb(234, 234, 234); font-size: 15px; vertical-align: top; word-break: break-word;">Name Of Part</td><td class="tdwdt1 color6" style="margin: 0px; padding: 4px 5px; color: rgb(0, 0, 0); width: 384.2px; border-bottom: 1px solid rgb(234, 234, 234); font-size: 15px; vertical-align: top; word-break: break-word;">Rotavator</td></tr><tr style="margin: 0px; padding: 0px;"><td class="tdwdt" style="margin: 0px; padding: 4px 5px; width: 252.8px; color: rgb(132, 132, 132); border-bottom: 1px solid rgb(234, 234, 234); font-size: 15px; vertical-align: top; word-break: break-word;">Overall Width (Feet)</td><td class="tdwdt1 color6" style="margin: 0px; padding: 4px 5px; color: rgb(0, 0, 0); width: 384.2px; border-bottom: 1px solid rgb(234, 234, 234); font-size: 15px; vertical-align: top; word-break: break-word;">3 feet</td></tr><tr style="margin: 0px; padding: 0px;"><td class="tdwdt" style="margin: 0px; padding: 4px 5px; width: 252.8px; color: rgb(132, 132, 132); border-bottom: 1px solid rgb(234, 234, 234); font-size: 15px; vertical-align: top; word-break: break-word;">Overall Length</td><td class="tdwdt1 color6" style="margin: 0px; padding: 4px 5px; color: rgb(0, 0, 0); width: 384.2px; border-bottom: 1px solid rgb(234, 234, 234); font-size: 15px; vertical-align: top; word-break: break-word;">1400 mm</td></tr><tr style="margin: 0px; padding: 0px;"><td class="tdwdt" style="margin: 0px; padding: 4px 5px; width: 252.8px; color: rgb(132, 132, 132); border-bottom: 1px solid rgb(234, 234, 234); font-size: 15px; vertical-align: top; word-break: break-word;">Tractor Power hp</td><td class="tdwdt1 color6" style="margin: 0px; padding: 4px 5px; color: rgb(0, 0, 0); width: 384.2px; border-bottom: 1px solid rgb(234, 234, 234); font-size: 15px; vertical-align: top; word-break: break-word;">30 HP</td></tr><tr style="margin: 0px; padding: 0px;"><td class="tdwdt" style="margin: 0px; padding: 4px 5px; width: 252.8px; color: rgb(132, 132, 132); border-bottom: 1px solid rgb(234, 234, 234); font-size: 15px; vertical-align: top; word-break: break-word;">Weight (Kg)</td><td class="tdwdt1 color6" style="margin: 0px; padding: 4px 5px; color: rgb(0, 0, 0); width: 384.2px; border-bottom: 1px solid rgb(234, 234, 234); font-size: 15px; vertical-align: top; word-break: break-word;">300 kg</td></tr></tbody></table>', 'mahindra mini.webp', 'mahindra mini 2.jpg', '', 500, 'In Stock', '2022-03-11 12:04:23', ''),
(32, 18, 42, 'SPIC-UREA', 350, 500, '<table style="margin: 0px 0px 8px; padding: 0px; width: 656.987px; color: rgb(51, 51, 51); font-family: arial; font-size: 16px; background-color: rgb(255, 255, 255);"><tbody style="margin: 0px; padding: 0px;"><tr style="margin: 0px; padding: 0px;"><td class="tdwdt" style="margin: 0px; padding: 4px 5px; width: 252.788px; color: rgb(132, 132, 132); border-bottom: 1px solid rgb(234, 234, 234); font-size: 15px; vertical-align: top; word-break: break-word;">Brand</td><td class="tdwdt1 color6" style="margin: 0px; padding: 4px 5px; color: rgb(0, 0, 0); width: 384.2px; border-bottom: 1px solid rgb(234, 234, 234); font-size: 15px; vertical-align: top; word-break: break-word;">SPIC</td></tr><tr style="margin: 0px; padding: 0px;"><td class="tdwdt" style="margin: 0px; padding: 4px 5px; width: 252.788px; color: rgb(132, 132, 132); border-bottom: 1px solid rgb(234, 234, 234); font-size: 15px; vertical-align: top; word-break: break-word;">Packaging Size</td><td class="tdwdt1 color6" style="margin: 0px; padding: 4px 5px; color: rgb(0, 0, 0); width: 384.2px; border-bottom: 1px solid rgb(234, 234, 234); font-size: 15px; vertical-align: top; word-break: break-word;">45 kg</td></tr><tr style="margin: 0px; padding: 0px;"><td class="tdwdt" style="margin: 0px; padding: 4px 5px; width: 252.788px; color: rgb(132, 132, 132); border-bottom: 1px solid rgb(234, 234, 234); font-size: 15px; vertical-align: top; word-break: break-word;">Packaging Type</td><td class="tdwdt1 color6" style="margin: 0px; padding: 4px 5px; color: rgb(0, 0, 0); width: 384.2px; border-bottom: 1px solid rgb(234, 234, 234); font-size: 15px; vertical-align: top; word-break: break-word;">HDPE Bag</td></tr><tr style="margin: 0px; padding: 0px;"><td class="tdwdt" style="margin: 0px; padding: 4px 5px; width: 252.788px; color: rgb(132, 132, 132); border-bottom: 1px solid rgb(234, 234, 234); font-size: 15px; vertical-align: top; word-break: break-word;">Type</td><td class="tdwdt1 color6" style="margin: 0px; padding: 4px 5px; color: rgb(0, 0, 0); width: 384.2px; border-bottom: 1px solid rgb(234, 234, 234); font-size: 15px; vertical-align: top; word-break: break-word;">SPIC Urea</td></tr><tr style="margin: 0px; padding: 0px;"><td class="tdwdt" style="margin: 0px; padding: 4px 5px; width: 252.788px; color: rgb(132, 132, 132); border-bottom: 1px solid rgb(234, 234, 234); font-size: 15px; vertical-align: top; word-break: break-word;">Suitable in</td><td class="tdwdt1 color6" style="margin: 0px; padding: 4px 5px; color: rgb(0, 0, 0); width: 384.2px; border-bottom: 1px solid rgb(234, 234, 234); font-size: 15px; vertical-align: top; word-break: break-word;">Solution form as spray.</td></tr><tr style="margin: 0px; padding: 0px;"><td class="tdwdt" style="margin: 0px; padding: 4px 5px; width: 252.788px; color: rgb(132, 132, 132); border-bottom: 1px solid rgb(234, 234, 234); font-size: 15px; vertical-align: top; word-break: break-word;">Used as</td><td class="tdwdt1 color6" style="margin: 0px; padding: 4px 5px; color: rgb(0, 0, 0); width: 384.2px; border-bottom: 1px solid rgb(234, 234, 234); font-size: 15px; vertical-align: top; word-break: break-word;">Nitrogenous fertilizer</td></tr></tbody></table>', 'spic urea.jpg', 'urea 2nd image.jpg', '', 50, 'In Stock', '2022-03-14 11:05:40', ''),
(33, 18, 42, 'SPIC-SUPER', 900, 1000, '<ul style="box-sizing: border-box; overflow-wrap: break-word; margin-bottom: 0px; margin-left: 20px; list-style-position: initial; list-style-image: initial; color: rgb(65, 65, 65); font-family: Ubuntu, sans-serif; font-size: 16px; background-color: rgb(228, 239, 239);"><li style="box-sizing: border-box;">SSP helps to treat Sulphur deficiency in soils (40% of Indian soils are Sulphur deficient).</li><li style="box-sizing: border-box;">Continuous application of SSP reclaims Alkali soils.</li><li style="box-sizing: border-box;">Improves root formation and ensures quality product output.</li></ul>', 'spic super.jpg', 'urea 2nd image.jpg', '', 50, 'In Stock', '2022-03-14 11:19:44', ''),
(34, 19, 45, 'ASPEE BATTERY SPRAYER', 3750, 4000, '<table style="margin: 0px 0px 8px; padding: 0px; width: 735.987px; color: rgb(51, 51, 51); font-family: arial; font-size: 16px; background-color: rgb(255, 255, 255);"><tbody style="margin: 0px; padding: 0px;"><tr style="margin: 0px; padding: 0px;"><td class="tdwdt" style="margin: 0px; padding: 4px 5px; width: 284.388px; color: rgb(132, 132, 132); border-bottom: 1px solid rgb(234, 234, 234); font-size: 15px; vertical-align: top; word-break: break-word;">Brand</td><td class="tdwdt1 color6" style="margin: 0px; padding: 4px 5px; color: rgb(0, 0, 0); width: 431.6px; border-bottom: 1px solid rgb(234, 234, 234); font-size: 15px; vertical-align: top; word-break: break-word;">Aspee</td></tr><tr style="margin: 0px; padding: 0px;"><td class="tdwdt" style="margin: 0px; padding: 4px 5px; width: 284.388px; color: rgb(132, 132, 132); border-bottom: 1px solid rgb(234, 234, 234); font-size: 15px; vertical-align: top; word-break: break-word;">Power Source</td><td class="tdwdt1 color6" style="margin: 0px; padding: 4px 5px; color: rgb(0, 0, 0); width: 431.6px; border-bottom: 1px solid rgb(234, 234, 234); font-size: 15px; vertical-align: top; word-break: break-word;">Battery</td></tr><tr style="margin: 0px; padding: 0px;"><td class="tdwdt" style="margin: 0px; padding: 4px 5px; width: 284.388px; color: rgb(132, 132, 132); border-bottom: 1px solid rgb(234, 234, 234); font-size: 15px; vertical-align: top; word-break: break-word;">Size</td><td class="tdwdt1 color6" style="margin: 0px; padding: 4px 5px; color: rgb(0, 0, 0); width: 431.6px; border-bottom: 1px solid rgb(234, 234, 234); font-size: 15px; vertical-align: top; word-break: break-word;">355 X 178 X 482 L x W x H (in mm)</td></tr><tr style="margin: 0px; padding: 0px;"><td class="tdwdt" style="margin: 0px; padding: 4px 5px; width: 284.388px; color: rgb(132, 132, 132); border-bottom: 1px solid rgb(234, 234, 234); font-size: 15px; vertical-align: top; word-break: break-word;">Tank Capacity</td><td class="tdwdt1 color6" style="margin: 0px; padding: 4px 5px; color: rgb(0, 0, 0); width: 431.6px; border-bottom: 1px solid rgb(234, 234, 234); font-size: 15px; vertical-align: top; word-break: break-word;">16 Liter</td></tr><tr style="margin: 0px; padding: 0px;"><td class="tdwdt" style="margin: 0px; padding: 4px 5px; width: 284.388px; color: rgb(132, 132, 132); border-bottom: 1px solid rgb(234, 234, 234); font-size: 15px; vertical-align: top; word-break: break-word;">Battery Current</td><td class="tdwdt1 color6" style="margin: 0px; padding: 4px 5px; color: rgb(0, 0, 0); width: 431.6px; border-bottom: 1px solid rgb(234, 234, 234); font-size: 15px; vertical-align: top; word-break: break-word;">8 AH</td></tr><tr style="margin: 0px; padding: 0px;"><td class="tdwdt" style="margin: 0px; padding: 4px 5px; width: 284.388px; color: rgb(132, 132, 132); border-bottom: 1px solid rgb(234, 234, 234); font-size: 15px; vertical-align: top; word-break: break-word;">Material</td><td class="tdwdt1 color6" style="margin: 0px; padding: 4px 5px; color: rgb(0, 0, 0); width: 431.6px; border-bottom: 1px solid rgb(234, 234, 234); font-size: 15px; vertical-align: top; word-break: break-word;">Plastic</td></tr></tbody></table>', 'aspee-battery-sprayer-500x500.png', 'aspee battery sprayer.jpg', '', 50, 'In Stock', '2022-03-14 11:22:49', ''),
(35, 19, 45, 'ASPEE POWER SPRAYER', 15500, 16000, '<table style="margin: 0px 0px 8px; padding: 0px; width: 657px; color: rgb(51, 51, 51); font-family: arial; font-size: 16px; background-color: rgb(255, 255, 255);"><tbody style="margin: 0px; padding: 0px;"><tr style="margin: 0px; padding: 0px;"><td class="tdwdt" style="margin: 0px; padding: 4px 5px; width: 252.8px; color: rgb(132, 132, 132); border-bottom: 1px solid rgb(234, 234, 234); font-size: 15px; vertical-align: top; word-break: break-word;">Brand</td><td class="tdwdt1 color6" style="margin: 0px; padding: 4px 5px; color: rgb(0, 0, 0); width: 384.2px; border-bottom: 1px solid rgb(234, 234, 234); font-size: 15px; vertical-align: top; word-break: break-word;">ASPEE</td></tr><tr style="margin: 0px; padding: 0px;"><td class="tdwdt" style="margin: 0px; padding: 4px 5px; width: 252.8px; color: rgb(132, 132, 132); border-bottom: 1px solid rgb(234, 234, 234); font-size: 15px; vertical-align: top; word-break: break-word;">Sprayer Type</td><td class="tdwdt1 color6" style="margin: 0px; padding: 4px 5px; color: rgb(0, 0, 0); width: 384.2px; border-bottom: 1px solid rgb(234, 234, 234); font-size: 15px; vertical-align: top; word-break: break-word;">Knapsack</td></tr><tr style="margin: 0px; padding: 0px;"><td class="tdwdt" style="margin: 0px; padding: 4px 5px; width: 252.8px; color: rgb(132, 132, 132); border-bottom: 1px solid rgb(234, 234, 234); font-size: 15px; vertical-align: top; word-break: break-word;">Pump Type</td><td class="tdwdt1 color6" style="margin: 0px; padding: 4px 5px; color: rgb(0, 0, 0); width: 384.2px; border-bottom: 1px solid rgb(234, 234, 234); font-size: 15px; vertical-align: top; word-break: break-word;">Full Brass Reciprocating Pump</td></tr><tr style="margin: 0px; padding: 0px;"><td class="tdwdt" style="margin: 0px; padding: 4px 5px; width: 252.8px; color: rgb(132, 132, 132); border-bottom: 1px solid rgb(234, 234, 234); font-size: 15px; vertical-align: top; word-break: break-word;">Usage/Application</td><td class="tdwdt1 color6" style="margin: 0px; padding: 4px 5px; color: rgb(0, 0, 0); width: 384.2px; border-bottom: 1px solid rgb(234, 234, 234); font-size: 15px; vertical-align: top; word-break: break-word;">Agriculture</td></tr><tr style="margin: 0px; padding: 0px;"><td class="tdwdt" style="margin: 0px; padding: 4px 5px; width: 252.8px; color: rgb(132, 132, 132); border-bottom: 1px solid rgb(234, 234, 234); font-size: 15px; vertical-align: top; word-break: break-word;">Model Name/Number</td><td class="tdwdt1 color6" style="margin: 0px; padding: 4px 5px; color: rgb(0, 0, 0); width: 384.2px; border-bottom: 1px solid rgb(234, 234, 234); font-size: 15px; vertical-align: top; word-break: break-word;">KP35-4S</td></tr><tr style="margin: 0px; padding: 0px;"><td class="tdwdt" style="margin: 0px; padding: 4px 5px; width: 252.8px; color: rgb(132, 132, 132); border-bottom: 1px solid rgb(234, 234, 234); font-size: 15px; vertical-align: top; word-break: break-word;">Automation Grade</td><td class="tdwdt1 color6" style="margin: 0px; padding: 4px 5px; color: rgb(0, 0, 0); width: 384.2px; border-bottom: 1px solid rgb(234, 234, 234); font-size: 15px; vertical-align: top; word-break: break-word;">Semi-Automatic</td></tr></tbody></table>', 'ASPEE POWER SPRAYER.jpg', 'ASPEE POWER SPRAYER GUN 2ND IMAGE.jpg', '', 50, 'In Stock', '2022-03-14 11:26:06', ''),
(36, 19, 45, 'AIR PRESSURE PUMP', 199, 200, '<ul class="a-unordered-list a-vertical a-spacing-mini" style="box-sizing: border-box; margin-bottom: 0px; margin-left: 18px; color: rgb(15, 17, 17); font-family: Arial, sans-serif; font-size: 14px;"><li style="box-sizing: border-box; list-style: disc; overflow-wrap: break-word; margin: 0px;"><span class="a-list-item" style="box-sizing: border-box;">This is an All Purpose use Spray Pump.</span></li><li style="box-sizing: border-box; list-style: disc; overflow-wrap: break-word; margin: 0px;">This is Ideal for Indoor Gardening as well as Other Purpose</li><li style="box-sizing: border-box; list-style: disc; overflow-wrap: break-word; margin: 0px;">&nbsp;It works on Both Modes - Spray as well as Stream.</li><li style="box-sizing: border-box; list-style: disc; overflow-wrap: break-word; margin: 0px;">&nbsp;It can Be Used to Spray Water Soluble Fertilizer on the Leaves&nbsp; of the Plant or to water the seeds.</li></ul>', 'air pressure pump.jpg', 'air pressure pump 2.jpg', '', 50, 'In Stock', '2022-03-14 11:47:01', ''),
(37, 19, 45, 'HAND PUMP SPRAYER', 1000, 1100, '<div><span style="color: rgb(15, 17, 17); font-family: &quot;Amazon Ember&quot;, Arial, sans-serif; font-size: 14px;">CURVED NOZZLE DESIGN</span><br></div><div><span style="color: rgb(15, 17, 17); font-family: &quot;Amazon Ember&quot;, Arial, sans-serif; font-size: 14px;">COMFORTABLE AND EFFICIENT</span><span style="color: rgb(15, 17, 17); font-family: &quot;Amazon Ember&quot;, Arial, sans-serif; font-size: 14px;"><br></span></div><div><span style="color: rgb(15, 17, 17); font-family: &quot;Amazon Ember&quot;, Arial, sans-serif; font-size: 14px;">EASY FILLING</span><span style="color: rgb(15, 17, 17); font-family: &quot;Amazon Ember&quot;, Arial, sans-serif; font-size: 14px;"><br></span></div><div><span style="color: rgb(15, 17, 17); font-family: &quot;Amazon Ember&quot;, Arial, sans-serif; font-size: 14px;">Equipped with pressure relief protection valve</span><span style="color: rgb(15, 17, 17); font-family: &quot;Amazon Ember&quot;, Arial, sans-serif; font-size: 14px;"><br></span></div><div><span style="color: rgb(15, 17, 17); font-family: &quot;Amazon Ember&quot;, Arial, sans-serif; font-size: 14px;"><br></span></div>', 'handpump sprayer', 'handpump sprayer 2.jpg', '', 50, 'In Stock', '2022-03-14 11:58:42', ''),
(38, 19, 46, 'TEXMO 5HP MOTOR', 29000, 30000, '<font face="arial"><span style="box-sizing: border-box; font-weight: 700; color: rgb(51, 51, 51);">Brand :&nbsp;</span><span style="color: rgb(51, 51, 51);">TEXMO</span><br style="box-sizing: border-box; color: rgb(51, 51, 51);"><span style="box-sizing: border-box; font-weight: 700; color: rgb(51, 51, 51);">Product Name :&nbsp;</span><span style="color: rgb(51, 51, 51);">THREE PHASE OPENWELL SUBMERSIBLE MONOBLOKS</span><br style="box-sizing: border-box; color: rgb(51, 51, 51);"><span style="box-sizing: border-box; font-weight: 700; color: rgb(51, 51, 51);">Power Rating(HP) :&nbsp;</span><span style="color: rgb(51, 51, 51);">5.0</span><br style="box-sizing: border-box; color: rgb(51, 51, 51);"><span style="box-sizing: border-box; font-weight: 700; color: rgb(51, 51, 51);">Power Rating(KW) :&nbsp;</span><span style="color: rgb(51, 51, 51);">3.7</span><br style="box-sizing: border-box; color: rgb(51, 51, 51);"><span style="box-sizing: border-box; font-weight: 700; color: rgb(51, 51, 51);">Head range :&nbsp;</span><span style="color: rgb(51, 51, 51);">6 â€“ 119 m</span><br style="box-sizing: border-box; color: rgb(51, 51, 51);"><span style="box-sizing: border-box; font-weight: 700; color: rgb(51, 51, 51);">Discharge :&nbsp;</span><span style="color: rgb(51, 51, 51);">7.6 â€“ 165.6 m3 / hr</span></font><br>', 'texmo stage motor.jpg', 'texmo stage motor_2.jpg', '', 50, 'In Stock', '2022-03-14 12:13:38', ''),
(39, 19, 46, 'TEXMO BOREWELL MOTOR', 33000, 33500, '<span style="color: rgb(51, 51, 51); font-family: arial; font-size: 16px;">- Light weight &amp; easy to install.</span><br style="margin: 0px; padding: 0px; color: rgb(51, 51, 51); font-family: arial; font-size: 16px;"><span style="color: rgb(51, 51, 51); font-family: arial; font-size: 16px;">- Improved hydraulic design with increased efficiency &amp; reduced power consumption.</span><br style="margin: 0px; padding: 0px; color: rgb(51, 51, 51); font-family: arial; font-size: 16px;"><span style="color: rgb(51, 51, 51); font-family: arial; font-size: 16px;">- Noise free operation.</span><br style="margin: 0px; padding: 0px; color: rgb(51, 51, 51); font-family: arial; font-size: 16px;"><span style="color: rgb(51, 51, 51); font-family: arial; font-size: 16px;">- Stainless steel housing for corrosion resistances &amp; LTB for high wear resistances &amp; longer life.</span><br style="margin: 0px; padding: 0px; color: rgb(51, 51, 51); font-family: arial; font-size: 16px;"><span style="color: rgb(51, 51, 51); font-family: arial; font-size: 16px;">- Pressure diaphragm to compensate excess pressure due to heating up of winding &amp; filled water.</span><br>', 'texmo borewell motor.jpg', 'texmo borewell motor 2.jpg', '', 50, 'In Stock', '2022-03-14 12:17:03', ''),
(40, 19, 46, 'V-GUARD 1 HP MOTOR', 3000, 3300, '<table class="a-normal a-spacing-micro" style="width: 440.05px; color: rgb(15, 17, 17); font-family: &quot;Amazon Ember&quot;, Arial, sans-serif; font-size: 14px; background-color: rgb(255, 255, 255); margin-bottom: 4px !important;"><tbody style="box-sizing: border-box;"><tr class="a-spacing-small po-brand" style="box-sizing: border-box; margin-bottom: 8px !important;"><td class="a-span3" style="vertical-align: top; padding: 0px 3px 3px 0px; margin-right: 0px; width: 115.2px;"><span class="a-size-base a-text-bold" style="box-sizing: border-box; font-weight: 700 !important; line-height: 20px !important;">Brand</span></td><td class="a-span9" style="vertical-align: top; padding: 0px 0px 3px 3px; margin-right: 0px; width: 324.85px;"><span class="a-size-base" style="box-sizing: border-box; line-height: 20px !important;">V Guard</span></td></tr><tr class="a-spacing-small po-color" style="box-sizing: border-box; margin-bottom: 8px !important;"><td class="a-span3" style="vertical-align: top; padding: 3px 3px 3px 0px; margin-right: 0px; width: 115.2px;"><span class="a-size-base a-text-bold" style="box-sizing: border-box; font-weight: 700 !important; line-height: 20px !important;">Colour</span></td><td class="a-span9" style="vertical-align: top; padding: 3px 0px 3px 3px; margin-right: 0px; width: 324.85px;"><span class="a-size-base" style="box-sizing: border-box; line-height: 20px !important;">Multicolour</span></td></tr><tr class="a-spacing-small po-material" style="box-sizing: border-box; margin-bottom: 8px !important;"><td class="a-span3" style="vertical-align: top; padding: 3px 3px 3px 0px; margin-right: 0px; width: 115.2px;"><span class="a-size-base a-text-bold" style="box-sizing: border-box; font-weight: 700 !important; line-height: 20px !important;">Material</span></td><td class="a-span9" style="vertical-align: top; padding: 3px 0px 3px 3px; margin-right: 0px; width: 324.85px;"><span class="a-size-base" style="box-sizing: border-box; line-height: 20px !important;">Iron</span></td></tr><tr class="a-spacing-small po-item_dimensions" style="box-sizing: border-box; margin-bottom: 8px !important;"><td class="a-span3" style="vertical-align: top; padding: 3px 3px 3px 0px; margin-right: 0px; width: 115.2px;"><span class="a-size-base a-text-bold" style="box-sizing: border-box; font-weight: 700 !important; line-height: 20px !important;">Item Dimensions LxWxH</span></td><td class="a-span9" style="vertical-align: top; padding: 3px 0px 3px 3px; margin-right: 0px; width: 324.85px;"><span class="a-size-base" style="box-sizing: border-box; line-height: 20px !important;">24 x 26 x 24 Centimeters</span></td></tr><tr class="a-spacing-small po-power_source_type" style="box-sizing: border-box; margin-bottom: 8px !important;"><td class="a-span3" style="vertical-align: top; padding: 3px 3px 3px 0px; margin-right: 0px; width: 115.2px;"><span class="a-size-base a-text-bold" style="box-sizing: border-box; font-weight: 700 !important; line-height: 20px !important;">Power Source</span></td><td class="a-span9" style="vertical-align: top; padding: 3px 0px 3px 3px; margin-right: 0px; width: 324.85px;"><span class="a-size-base" style="box-sizing: border-box; line-height: 20px !important;">Corded Electric</span></td></tr><tr class="a-spacing-small po-item_weight" style="box-sizing: border-box; margin-bottom: 8px !important;"><td class="a-span3" style="vertical-align: top; padding: 3px 3px 3px 0px; margin-right: 0px; width: 115.2px;"><span class="a-size-base a-text-bold" style="box-sizing: border-box; font-weight: 700 !important; line-height: 20px !important;">Item Weight</span></td><td class="a-span9" style="vertical-align: top; padding: 3px 0px 3px 3px; margin-right: 0px; width: 324.85px;"><span class="a-size-base" style="box-sizing: border-box; line-height: 20px !important;">16000 Grams</span></td></tr><tr class="a-spacing-small po-maximum_flow_rate" style="box-sizing: border-box; margin-bottom: 8px !important;"><td class="a-span3" style="vertical-align: top; padding: 3px 3px 0px 0px; margin-right: 0px; width: 115.2px;"><span class="a-size-base a-text-bold" style="box-sizing: border-box; font-weight: 700 !important; line-height: 20px !important;">Maximum Flow Rate</span></td><td class="a-span9" style="vertical-align: top; padding: 3px 0px 0px 3px; margin-right: 0px; width: 324.85px;"><span class="a-size-base" style="box-sizing: border-box; line-height: 20px !important;">1600 Liters Per Minute</span></td></tr></tbody></table>', '1 hp motor.jpg', '1 hp motor 2.jpg', '', 50, 'In Stock', '2022-03-14 13:46:39', ''),
(42, 19, 46, 'COMMERCIAL CHAFF CUTTER', 24500, 25000, '<table style="margin: 0px 0px 8px; padding: 0px; width: 656.987px; color: rgb(51, 51, 51); font-family: arial; font-size: 16px; background-color: rgb(255, 255, 255);"><tbody style="margin: 0px; padding: 0px;"><tr style="margin: 0px; padding: 0px;"><td class="tdwdt" style="margin: 0px; padding: 4px 5px; width: 252.788px; color: rgb(132, 132, 132); border-bottom: 1px solid rgb(234, 234, 234); font-size: 15px; vertical-align: top; word-break: break-word;">Machine Feed</td><td class="tdwdt1 color6" style="margin: 0px; padding: 4px 5px; color: rgb(0, 0, 0); width: 384.2px; border-bottom: 1px solid rgb(234, 234, 234); font-size: 15px; vertical-align: top; word-break: break-word;">Grass</td></tr><tr style="margin: 0px; padding: 0px;"><td class="tdwdt" style="margin: 0px; padding: 4px 5px; width: 252.788px; color: rgb(132, 132, 132); border-bottom: 1px solid rgb(234, 234, 234); font-size: 15px; vertical-align: top; word-break: break-word;">Model Name/Number</td><td class="tdwdt1 color6" style="margin: 0px; padding: 4px 5px; color: rgb(0, 0, 0); width: 384.2px; border-bottom: 1px solid rgb(234, 234, 234); font-size: 15px; vertical-align: top; word-break: break-word;">CHOPKING NANO</td></tr><tr style="margin: 0px; padding: 0px;"><td class="tdwdt" style="margin: 0px; padding: 4px 5px; width: 252.788px; color: rgb(132, 132, 132); border-bottom: 1px solid rgb(234, 234, 234); font-size: 15px; vertical-align: top; word-break: break-word;">Brand</td><td class="tdwdt1 color6" style="margin: 0px; padding: 4px 5px; color: rgb(0, 0, 0); width: 384.2px; border-bottom: 1px solid rgb(234, 234, 234); font-size: 15px; vertical-align: top; word-break: break-word;">Chopking</td></tr><tr style="margin: 0px; padding: 0px;"><td class="tdwdt" style="margin: 0px; padding: 4px 5px; width: 252.788px; color: rgb(132, 132, 132); border-bottom: 1px solid rgb(234, 234, 234); font-size: 15px; vertical-align: top; word-break: break-word;">Power Source</td><td class="tdwdt1 color6" style="margin: 0px; padding: 4px 5px; color: rgb(0, 0, 0); width: 384.2px; border-bottom: 1px solid rgb(234, 234, 234); font-size: 15px; vertical-align: top; word-break: break-word;">Electric Motor</td></tr><tr style="margin: 0px; padding: 0px;"><td class="tdwdt" style="margin: 0px; padding: 4px 5px; width: 252.788px; color: rgb(132, 132, 132); border-bottom: 1px solid rgb(234, 234, 234); font-size: 15px; vertical-align: top; word-break: break-word;">Power</td><td class="tdwdt1 color6" style="margin: 0px; padding: 4px 5px; color: rgb(0, 0, 0); width: 384.2px; border-bottom: 1px solid rgb(234, 234, 234); font-size: 15px; vertical-align: top; word-break: break-word;">2HP</td></tr><tr style="margin: 0px; padding: 0px;"><td class="tdwdt" style="margin: 0px; padding: 4px 5px; width: 252.788px; color: rgb(132, 132, 132); border-bottom: 1px solid rgb(234, 234, 234); font-size: 15px; vertical-align: top; word-break: break-word;">Electric Motor</td><td class="tdwdt1 color6" style="margin: 0px; padding: 4px 5px; color: rgb(0, 0, 0); width: 384.2px; border-bottom: 1px solid rgb(234, 234, 234); font-size: 15px; vertical-align: top; word-break: break-word;">LAXMI 2HP</td></tr></tbody></table>', 'commercial chaff cutter.png', 'commercial chaff cutter_2.png', '', 500, 'In Stock', '2022-03-14 13:52:12', ''),
(43, 19, 46, 'NORMAL CHAFF CUTTER', 14500, 15000, '<table style="margin: 0px 0px 8px; padding: 0px; width: 736px; color: rgb(51, 51, 51); font-family: arial; font-size: 16px; background-color: rgb(255, 255, 255);"><tbody style="margin: 0px; padding: 0px;"><tr style="margin: 0px; padding: 0px;"><td class="tdwdt" style="margin: 0px; padding: 4px 5px; width: 284.4px; color: rgb(132, 132, 132); border-bottom: 1px solid rgb(234, 234, 234); font-size: 15px; vertical-align: top; word-break: break-word;">Machine Feed</td><td class="tdwdt1 color6" style="margin: 0px; padding: 4px 5px; color: rgb(0, 0, 0); width: 431.6px; border-bottom: 1px solid rgb(234, 234, 234); font-size: 15px; vertical-align: top; word-break: break-word;">Straw, Dry Grass, Corn Stalk, Bamboo</td></tr><tr style="margin: 0px; padding: 0px;"><td class="tdwdt" style="margin: 0px; padding: 4px 5px; width: 284.4px; color: rgb(132, 132, 132); border-bottom: 1px solid rgb(234, 234, 234); font-size: 15px; vertical-align: top; word-break: break-word;">Power Source</td><td class="tdwdt1 color6" style="margin: 0px; padding: 4px 5px; color: rgb(0, 0, 0); width: 431.6px; border-bottom: 1px solid rgb(234, 234, 234); font-size: 15px; vertical-align: top; word-break: break-word;">Electric Motor</td></tr><tr style="margin: 0px; padding: 0px;"><td class="tdwdt" style="margin: 0px; padding: 4px 5px; width: 284.4px; color: rgb(132, 132, 132); border-bottom: 1px solid rgb(234, 234, 234); font-size: 15px; vertical-align: top; word-break: break-word;">Automation Grade</td><td class="tdwdt1 color6" style="margin: 0px; padding: 4px 5px; color: rgb(0, 0, 0); width: 431.6px; border-bottom: 1px solid rgb(234, 234, 234); font-size: 15px; vertical-align: top; word-break: break-word;">Automatic</td></tr><tr style="margin: 0px; padding: 0px;"><td class="tdwdt" style="margin: 0px; padding: 4px 5px; width: 284.4px; color: rgb(132, 132, 132); border-bottom: 1px solid rgb(234, 234, 234); font-size: 15px; vertical-align: top; word-break: break-word;">Cutting Capacity</td><td class="tdwdt1 color6" style="margin: 0px; padding: 4px 5px; color: rgb(0, 0, 0); width: 431.6px; border-bottom: 1px solid rgb(234, 234, 234); font-size: 15px; vertical-align: top; word-break: break-word;">200-400 kg/hr</td></tr><tr style="margin: 0px; padding: 0px;"><td class="tdwdt" style="margin: 0px; padding: 4px 5px; width: 284.4px; color: rgb(132, 132, 132); border-bottom: 1px solid rgb(234, 234, 234); font-size: 15px; vertical-align: top; word-break: break-word;">Power</td><td class="tdwdt1 color6" style="margin: 0px; padding: 4px 5px; color: rgb(0, 0, 0); width: 431.6px; border-bottom: 1px solid rgb(234, 234, 234); font-size: 15px; vertical-align: top; word-break: break-word;">9-11 HP</td></tr><tr style="margin: 0px; padding: 0px;"><td class="tdwdt" style="margin: 0px; padding: 4px 5px; width: 284.4px; color: rgb(132, 132, 132); border-bottom: 1px solid rgb(234, 234, 234); font-size: 15px; vertical-align: top; word-break: break-word;">Material</td><td class="tdwdt1 color6" style="margin: 0px; padding: 4px 5px; color: rgb(0, 0, 0); width: 431.6px; border-bottom: 1px solid rgb(234, 234, 234); font-size: 15px; vertical-align: top; word-break: break-word;">Mild Steel</td></tr></tbody></table>', 'chaf cutter.jpg', 'chaf cutter.jpg', '', 500, 'In Stock', '2022-03-14 13:58:14', ''),
(44, 19, 46, 'GRASS CUTTER', 16300, 16500, '<table style="margin: 0px 0px 8px; padding: 0px; width: 736px; color: rgb(51, 51, 51); font-family: arial; font-size: 16px; background-color: rgb(255, 255, 255);"><tbody style="margin: 0px; padding: 0px;"><tr style="margin: 0px; padding: 0px;"><td class="tdwdt" style="margin: 0px; padding: 4px 5px; width: 284.4px; color: rgb(132, 132, 132); border-bottom: 1px solid rgb(234, 234, 234); font-size: 15px; vertical-align: top; word-break: break-word;">Brand</td><td class="tdwdt1 color6" style="margin: 0px; padding: 4px 5px; color: rgb(0, 0, 0); width: 431.6px; border-bottom: 1px solid rgb(234, 234, 234); font-size: 15px; vertical-align: top; word-break: break-word;">Honda</td></tr><tr style="margin: 0px; padding: 0px;"><td class="tdwdt" style="margin: 0px; padding: 4px 5px; width: 284.4px; color: rgb(132, 132, 132); border-bottom: 1px solid rgb(234, 234, 234); font-size: 15px; vertical-align: top; word-break: break-word;">Model</td><td class="tdwdt1 color6" style="margin: 0px; padding: 4px 5px; color: rgb(0, 0, 0); width: 431.6px; border-bottom: 1px solid rgb(234, 234, 234); font-size: 15px; vertical-align: top; word-break: break-word;">UMK425T U2ST</td></tr><tr style="margin: 0px; padding: 0px;"><td class="tdwdt" style="margin: 0px; padding: 4px 5px; width: 284.4px; color: rgb(132, 132, 132); border-bottom: 1px solid rgb(234, 234, 234); font-size: 15px; vertical-align: top; word-break: break-word;">Power</td><td class="tdwdt1 color6" style="margin: 0px; padding: 4px 5px; color: rgb(0, 0, 0); width: 431.6px; border-bottom: 1px solid rgb(234, 234, 234); font-size: 15px; vertical-align: top; word-break: break-word;">1HP</td></tr><tr style="margin: 0px; padding: 0px;"><td class="tdwdt" style="margin: 0px; padding: 4px 5px; width: 284.4px; color: rgb(132, 132, 132); border-bottom: 1px solid rgb(234, 234, 234); font-size: 15px; vertical-align: top; word-break: break-word;">Power Source</td><td class="tdwdt1 color6" style="margin: 0px; padding: 4px 5px; color: rgb(0, 0, 0); width: 431.6px; border-bottom: 1px solid rgb(234, 234, 234); font-size: 15px; vertical-align: top; word-break: break-word;">Petrol</td></tr><tr style="margin: 0px; padding: 0px;"><td class="tdwdt" style="margin: 0px; padding: 4px 5px; width: 284.4px; color: rgb(132, 132, 132); border-bottom: 1px solid rgb(234, 234, 234); font-size: 15px; vertical-align: top; word-break: break-word;">Engine Type</td><td class="tdwdt1 color6" style="margin: 0px; padding: 4px 5px; color: rgb(0, 0, 0); width: 431.6px; border-bottom: 1px solid rgb(234, 234, 234); font-size: 15px; vertical-align: top; word-break: break-word;">4 Stroke</td></tr><tr style="margin: 0px; padding: 0px;"><td class="tdwdt" style="margin: 0px; padding: 4px 5px; width: 284.4px; color: rgb(132, 132, 132); border-bottom: 1px solid rgb(234, 234, 234); font-size: 15px; vertical-align: top; word-break: break-word;">Weight</td><td class="tdwdt1 color6" style="margin: 0px; padding: 4px 5px; color: rgb(0, 0, 0); width: 431.6px; border-bottom: 1px solid rgb(234, 234, 234); font-size: 15px; vertical-align: top; word-break: break-word;">6.77kg</td></tr></tbody></table>', 'grass cutter.jpg', 'grass cutter_2.jpg', '', 500, 'In Stock', '2022-03-14 14:11:12', ''),
(48, 19, 46, 'HOLE DIGGER', 16700, 16800, '<ul class="a-unordered-list a-vertical a-spacing-mini" style="box-sizing: border-box; margin-bottom: 0px; margin-left: 18px; color: rgb(15, 17, 17); font-family: &quot;Amazon Ember&quot;, Arial, sans-serif; font-size: 14px;"><li style="box-sizing: border-box; list-style: disc; overflow-wrap: break-word; margin: 0px;"><span class="a-list-item" style="box-sizing: border-box;">Model No.: SM-EA63 Displacement: 63cc, Max. Power: 2.2kw</span></li><li style="box-sizing: border-box; list-style: disc; overflow-wrap: break-word; margin: 0px;"><span class="a-list-item" style="box-sizing: border-box;">Fuel Type: Petrol with 2T OilRatio: 40ml 2T Oil with 1ltr Petrol Engine Type: Single cylinder, Air cooling</span></li><li style="box-sizing: border-box; list-style: disc; overflow-wrap: break-word; margin: 0px;"><span class="a-list-item" style="box-sizing: border-box;">Driller/Bit Diameter: 4"and 6", Driller/Bit Length: 80cm/2.6 feet</span></li><li style="box-sizing: border-box; list-style: disc; overflow-wrap: break-word; margin: 0px;"><span class="a-list-item" style="box-sizing: border-box;">Warranty Type: We Provides 6 months engine warranty and lifetime repairing solution</span></li></ul>', 'hole digger.jpg', 'HOLE DIGGER 3.jpg', 'HOLE DIGGER 4.jpg', 1000, 'In Stock', '2022-03-14 14:17:51', ''),
(51, 18, 41, 'NEEM CAKE (veppam punnaku)', 2000, 2200, '<table style="margin: 0px 0px 8px; padding: 0px; width: 736px; color: rgb(51, 51, 51); font-family: arial; font-size: 16px; background-color: rgb(255, 255, 255);"><tbody style="margin: 0px; padding: 0px;"><tr style="margin: 0px; padding: 0px;"><td class="tdwdt" style="margin: 0px; padding: 4px 5px; width: 284.4px; color: rgb(132, 132, 132); border-bottom: 1px solid rgb(234, 234, 234); font-size: 15px; vertical-align: top; word-break: break-word;">Packaging Type</td><td class="tdwdt1 color6" style="margin: 0px; padding: 4px 5px; color: rgb(0, 0, 0); width: 431.6px; border-bottom: 1px solid rgb(234, 234, 234); font-size: 15px; vertical-align: top; word-break: break-word;">Polythene Bag</td></tr><tr style="margin: 0px; padding: 0px;"><td class="tdwdt" style="margin: 0px; padding: 4px 5px; width: 284.4px; color: rgb(132, 132, 132); border-bottom: 1px solid rgb(234, 234, 234); font-size: 15px; vertical-align: top; word-break: break-word;">Packaging Size</td><td class="tdwdt1 color6" style="margin: 0px; padding: 4px 5px; color: rgb(0, 0, 0); width: 431.6px; border-bottom: 1px solid rgb(234, 234, 234); font-size: 15px; vertical-align: top; word-break: break-word;">50 Kg</td></tr><tr style="margin: 0px; padding: 0px;"><td class="tdwdt" style="margin: 0px; padding: 4px 5px; width: 284.4px; color: rgb(132, 132, 132); border-bottom: 1px solid rgb(234, 234, 234); font-size: 15px; vertical-align: top; word-break: break-word;">Usage/Application</td><td class="tdwdt1 color6" style="margin: 0px; padding: 4px 5px; color: rgb(0, 0, 0); width: 431.6px; border-bottom: 1px solid rgb(234, 234, 234); font-size: 15px; vertical-align: top; word-break: break-word;">Pest Control</td></tr><tr style="margin: 0px; padding: 0px;"><td class="tdwdt" style="margin: 0px; padding: 4px 5px; width: 284.4px; color: rgb(132, 132, 132); border-bottom: 1px solid rgb(234, 234, 234); font-size: 15px; vertical-align: top; word-break: break-word;">Product Type</td><td class="tdwdt1 color6" style="margin: 0px; padding: 4px 5px; color: rgb(0, 0, 0); width: 431.6px; border-bottom: 1px solid rgb(234, 234, 234); font-size: 15px; vertical-align: top; word-break: break-word;">Organic</td></tr><tr style="margin: 0px; padding: 0px;"><td class="tdwdt" style="margin: 0px; padding: 4px 5px; width: 284.4px; color: rgb(132, 132, 132); border-bottom: 1px solid rgb(234, 234, 234); font-size: 15px; vertical-align: top; word-break: break-word;">Brand</td><td class="tdwdt1 color6" style="margin: 0px; padding: 4px 5px; color: rgb(0, 0, 0); width: 431.6px; border-bottom: 1px solid rgb(234, 234, 234); font-size: 15px; vertical-align: top; word-break: break-word;">Manidharma</td></tr><tr style="margin: 0px; padding: 0px;"><td class="tdwdt" style="margin: 0px; padding: 4px 5px; width: 284.4px; color: rgb(132, 132, 132); border-bottom: 1px solid rgb(234, 234, 234); font-size: 15px; vertical-align: top; word-break: break-word;">Form</td><td class="tdwdt1 color6" style="margin: 0px; padding: 4px 5px; color: rgb(0, 0, 0); width: 431.6px; border-bottom: 1px solid rgb(234, 234, 234); font-size: 15px; vertical-align: top; word-break: break-word;">Powder</td></tr></tbody></table>', 'neem punnaku.jpg', 'neem punnaku 2.jpg', '', 500, 'In Stock', '2022-03-15 10:43:10', ''),
(52, 18, 42, '2-4-D', 190, 200, '<div id="WEB_ANSWERS_RESULT_13__CAwYu7vDp2cseMPuJWGgAk__15" style="color: rgb(32, 33, 36); font-family: arial, sans-serif; font-size: medium;"><div class="wDYxhc" data-md="61" style="clear: none;"><div class="LGOjhe" data-attrid="wa:/description" aria-level="3" role="heading" data-hveid="CAkQAA" style="overflow: hidden; padding-bottom: 20px;"><span class="ILfuVd" style="font-size: 16px; line-height: 24px;"><span class="hgKElc" style="padding: 0px 8px 0px 0px;">2,4-D is one of the most widely used herbicides throughout the world, and is primarily used in agriculture&nbsp;<b>to control weeds in corn and grain, forestry, and lawn care practices</b>.</span></span></div><div><span class="ILfuVd" style="font-size: 16px; line-height: 24px;"><span class="hgKElc" style="padding: 0px 8px 0px 0px;"><br></span></span></div></div></div><div id="WEB_ANSWERS_STANDARD_RESULT_14__CAwYu7vDp2cseMPuJWGgAk__16" style="color: rgb(32, 33, 36); font-family: arial, sans-serif; font-size: medium;"><div class="g" style="font-size: 14px; line-height: 1.58; width: 600px; margin-top: 0px; margin-bottom: 4px; clear: both; padding-bottom: 0px; padding-left: 0px; padding-right: 0px;"><div data-hveid="CAsQAA" data-ved="2ahUKEwju3cOarsf2AhUdTmwGHbiKAZAQFSgAegQICxAA"><div class="tF2Cxc" style="position: relative;"></div></div></div></div>', '2 4 D.jpg', '2 4 D.jpg', '', 20, 'In Stock', '2022-03-15 10:46:33', ''),
(53, 20, 47, 'PADDY (IR-20)', 28, 30, '<table style="table-layout: fixed; width: 652px; color: rgb(32, 33, 36); font-family: arial, sans-serif; font-size: 14px; background-color: rgb(255, 255, 255);"><tbody><tr class="ztXv9" style="border-bottom: 1px solid rgb(235, 235, 235);"><th style="overflow-wrap: break-word; height: 26px; padding: 8px 10px 8px 0px; font-weight: bolder; text-align: left; vertical-align: top;">Pack Size</th><th style="overflow-wrap: break-word; height: 26px; padding: 8px 10px; font-weight: bolder; text-align: left; vertical-align: top;">1Kg</th></tr><tr style="border-bottom: 1px solid rgb(235, 235, 235);"><td style="overflow-wrap: break-word; height: 26px; padding: 8px 10px 8px 0px;">Plant Height</td><td style="overflow-wrap: break-word; height: 26px; padding: 8px 10px;">90-100 cm</td></tr><tr style="border-bottom: 1px solid rgb(235, 235, 235);"><td style="overflow-wrap: break-word; height: 26px; padding: 8px 10px 8px 0px;">Number of Tillers</td><td style="overflow-wrap: break-word; height: 26px; padding: 8px 10px;">12-14</td></tr><tr style="border-bottom: 1px solid rgb(235, 235, 235);"><td style="overflow-wrap: break-word; height: 26px; padding: 8px 10px 8px 0px;">Grain per Panicle</td><td style="overflow-wrap: break-word; height: 26px; padding: 8px 10px;">200-250</td></tr><tr style="border-bottom: 1px solid rgb(235, 235, 235);"><td style="overflow-wrap: break-word; height: 26px; padding: 8px 10px 8px 0px;">Grain type</td><td style="overflow-wrap: break-word; height: 26px; padding: 8px 10px;">Extra long slender Grain</td></tr></tbody></table>', 'paddy seed.jpg', 'paddy seed 2.jpg', '', 50, 'In Stock', '2022-03-15 10:51:16', ''),
(54, 22, 49, 'ROUNDUP 5L', 1450, 1500, '<span style="color: rgb(32, 33, 36); font-family: arial, sans-serif; font-size: 16px;">It is used&nbsp;</span><b style="color: rgb(32, 33, 36); font-family: arial, sans-serif; font-size: 16px;">to kill weeds, especially annual broadleaf weeds and grasses that compete with crops</b><span style="color: rgb(32, 33, 36); font-family: arial, sans-serif; font-size: 16px;">.</span><br>', 'roundup.jpg', 'roundup.jpg', '', 30, 'In Stock', '2022-03-15 11:38:10', ''),
(55, 22, 49, 'ROUNDUP 1L', 290, 300, '<span style="color: rgb(32, 33, 36); font-family: arial, sans-serif; font-size: 16px;">It is used&nbsp;</span><b style="color: rgb(32, 33, 36); font-family: arial, sans-serif; font-size: 16px;">to kill weeds, especially annual broadleaf weeds and grasses that compete with crops</b><span style="color: rgb(32, 33, 36); font-family: arial, sans-serif; font-size: 16px;">.</span><br>', 'round up 1 l.jpg', 'round up 1 l.jpg', '', 30, 'In Stock', '2022-03-15 11:39:30', ''),
(56, 22, 49, 'MONOCHROPTOPUS', 150, 160, '<table style="margin: 0px 0px 8px; padding: 0px; width: 736px; color: rgb(51, 51, 51); font-family: arial; font-size: 16px; background-color: rgb(255, 255, 255);"><tbody style="margin: 0px; padding: 0px;"><tr style="margin: 0px; padding: 0px;"><td class="tdwdt" style="margin: 0px; padding: 4px 5px; width: 284.4px; color: rgb(132, 132, 132); border-bottom: 1px solid rgb(234, 234, 234); font-size: 15px; vertical-align: top; word-break: break-word;">Brand</td><td class="tdwdt1 color6" style="margin: 0px; padding: 4px 5px; color: rgb(0, 0, 0); width: 431.6px; border-bottom: 1px solid rgb(234, 234, 234); font-size: 15px; vertical-align: top; word-break: break-word;">Monostar</td></tr><tr style="margin: 0px; padding: 0px;"><td class="tdwdt" style="margin: 0px; padding: 4px 5px; width: 284.4px; color: rgb(132, 132, 132); border-bottom: 1px solid rgb(234, 234, 234); font-size: 15px; vertical-align: top; word-break: break-word;">Packaging Type</td><td class="tdwdt1 color6" style="margin: 0px; padding: 4px 5px; color: rgb(0, 0, 0); width: 431.6px; border-bottom: 1px solid rgb(234, 234, 234); font-size: 15px; vertical-align: top; word-break: break-word;">Bottle</td></tr><tr style="margin: 0px; padding: 0px;"><td class="tdwdt" style="margin: 0px; padding: 4px 5px; width: 284.4px; color: rgb(132, 132, 132); border-bottom: 1px solid rgb(234, 234, 234); font-size: 15px; vertical-align: top; word-break: break-word;">Packaging Size</td><td class="tdwdt1 color6" style="margin: 0px; padding: 4px 5px; color: rgb(0, 0, 0); width: 431.6px; border-bottom: 1px solid rgb(234, 234, 234); font-size: 15px; vertical-align: top; word-break: break-word;">1 Litre</td></tr><tr style="margin: 0px; padding: 0px;"><td class="tdwdt" style="margin: 0px; padding: 4px 5px; width: 284.4px; color: rgb(132, 132, 132); border-bottom: 1px solid rgb(234, 234, 234); font-size: 15px; vertical-align: top; word-break: break-word;">Form</td><td class="tdwdt1 color6" style="margin: 0px; padding: 4px 5px; color: rgb(0, 0, 0); width: 431.6px; border-bottom: 1px solid rgb(234, 234, 234); font-size: 15px; vertical-align: top; word-break: break-word;">Liquid</td></tr><tr style="margin: 0px; padding: 0px;"><td class="tdwdt" style="margin: 0px; padding: 4px 5px; width: 284.4px; color: rgb(132, 132, 132); border-bottom: 1px solid rgb(234, 234, 234); font-size: 15px; vertical-align: top; word-break: break-word;">Purity</td><td class="tdwdt1 color6" style="margin: 0px; padding: 4px 5px; color: rgb(0, 0, 0); width: 431.6px; border-bottom: 1px solid rgb(234, 234, 234); font-size: 15px; vertical-align: top; word-break: break-word;">100%</td></tr><tr style="margin: 0px; padding: 0px;"><td class="tdwdt" style="margin: 0px; padding: 4px 5px; width: 284.4px; color: rgb(132, 132, 132); border-bottom: 1px solid rgb(234, 234, 234); font-size: 15px; vertical-align: top; word-break: break-word;">Shelf Life</td><td class="tdwdt1 color6" style="margin: 0px; padding: 4px 5px; color: rgb(0, 0, 0); width: 431.6px; border-bottom: 1px solid rgb(234, 234, 234); font-size: 15px; vertical-align: top; word-break: break-word;">2 Year</td></tr></tbody></table>', 'mono.jpg', 'mono.jpg', '', 20, 'In Stock', '2022-03-15 11:59:55', '');
INSERT INTO `products` (`id`, `category`, `subCategory`, `productName`, `productPrice`, `productPriceBeforeDiscount`, `productDescription`, `productImage1`, `productImage2`, `productImage3`, `shippingCharge`, `productAvailability`, `postingDate`, `updationDate`) VALUES
(57, 18, 41, 'PANJAKAVYA', 100, 120, '<table style="margin: 0px 0px 8px; padding: 0px; width: 657px; color: rgb(51, 51, 51); font-family: arial; font-size: 16px; background-color: rgb(255, 255, 255);"><tbody style="margin: 0px; padding: 0px;"><tr style="margin: 0px; padding: 0px;"><td class="tdwdt" style="margin: 0px; padding: 4px 5px; width: 252.8px; color: rgb(132, 132, 132); border-bottom: 1px solid rgb(234, 234, 234); font-size: 15px; vertical-align: top; word-break: break-word;">Capacity&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;<br>Form</td><td class="tdwdt1 color6" style="margin: 0px; padding: 4px 5px; color: rgb(0, 0, 0); width: 384.2px; border-bottom: 1px solid rgb(234, 234, 234); font-size: 15px; vertical-align: top; word-break: break-word;">1L<br>Liquid</td></tr><tr style="margin: 0px; padding: 0px;"><td class="tdwdt" style="margin: 0px; padding: 4px 5px; width: 252.8px; color: rgb(132, 132, 132); border-bottom: 1px solid rgb(234, 234, 234); font-size: 15px; vertical-align: top; word-break: break-word;">Application</td><td class="tdwdt1 color6" style="margin: 0px; padding: 4px 5px; color: rgb(0, 0, 0); width: 384.2px; border-bottom: 1px solid rgb(234, 234, 234); font-size: 15px; vertical-align: top; word-break: break-word;">Organic fertilizer for all , plants , animals , humans too</td></tr><tr style="margin: 0px; padding: 0px;"><td class="tdwdt" style="margin: 0px; padding: 4px 5px; width: 252.8px; color: rgb(132, 132, 132); border-bottom: 1px solid rgb(234, 234, 234); font-size: 15px; vertical-align: top; word-break: break-word;">Release Type</td><td class="tdwdt1 color6" style="margin: 0px; padding: 4px 5px; color: rgb(0, 0, 0); width: 384.2px; border-bottom: 1px solid rgb(234, 234, 234); font-size: 15px; vertical-align: top; word-break: break-word;">Controlled</td></tr><tr style="margin: 0px; padding: 0px;"><td class="tdwdt" style="margin: 0px; padding: 4px 5px; width: 252.8px; color: rgb(132, 132, 132); border-bottom: 1px solid rgb(234, 234, 234); font-size: 15px; vertical-align: top; word-break: break-word;">Target Crops And Plants</td><td class="tdwdt1 color6" style="margin: 0px; padding: 4px 5px; color: rgb(0, 0, 0); width: 384.2px; border-bottom: 1px solid rgb(234, 234, 234); font-size: 15px; vertical-align: top; word-break: break-word;">To all plants</td></tr><tr style="margin: 0px; padding: 0px;"><td class="tdwdt" style="margin: 0px; padding: 4px 5px; width: 252.8px; color: rgb(132, 132, 132); border-bottom: 1px solid rgb(234, 234, 234); font-size: 15px; vertical-align: top; word-break: break-word;">&nbsp;Life</td><td class="tdwdt1 color6" style="margin: 0px; padding: 4px 5px; color: rgb(0, 0, 0); width: 384.2px; border-bottom: 1px solid rgb(234, 234, 234); font-size: 15px; vertical-align: top; word-break: break-word;">150 days</td></tr></tbody></table>', 'panjakaviya.jpg', 'panjakaviya 2.jpg', '', 20, 'In Stock', '2022-03-15 12:04:19', ''),
(58, 23, 50, 'NETAFIM Elbow 16mm', 300, 350, '<table style="margin: 0px 0px 8px; padding: 0px; width: 736px; color: rgb(51, 51, 51); font-family: arial; font-size: 16px; background-color: rgb(255, 255, 255);"><tbody style="margin: 0px; padding: 0px;"><tr style="margin: 0px; padding: 0px;"><td class="tdwdt" style="margin: 0px; padding: 4px 5px; width: 284.4px; color: rgb(132, 132, 132); border-bottom: 1px solid rgb(234, 234, 234); font-size: 15px; vertical-align: top; word-break: break-word;">Size/ Diameter</td><td class="tdwdt1 color6" style="margin: 0px; padding: 4px 5px; color: rgb(0, 0, 0); width: 431.6px; border-bottom: 1px solid rgb(234, 234, 234); font-size: 15px; vertical-align: top; word-break: break-word;">16mm</td></tr><tr style="margin: 0px; padding: 0px;"><td class="tdwdt" style="margin: 0px; padding: 4px 5px; width: 284.4px; color: rgb(132, 132, 132); border-bottom: 1px solid rgb(234, 234, 234); font-size: 15px; vertical-align: top; word-break: break-word;">Fitting Type</td><td class="tdwdt1 color6" style="margin: 0px; padding: 4px 5px; color: rgb(0, 0, 0); width: 431.6px; border-bottom: 1px solid rgb(234, 234, 234); font-size: 15px; vertical-align: top; word-break: break-word;">Elbow</td></tr><tr style="margin: 0px; padding: 0px;"><td class="tdwdt" style="margin: 0px; padding: 4px 5px; width: 284.4px; color: rgb(132, 132, 132); border-bottom: 1px solid rgb(234, 234, 234); font-size: 15px; vertical-align: top; word-break: break-word;">Usage/Application</td><td class="tdwdt1 color6" style="margin: 0px; padding: 4px 5px; color: rgb(0, 0, 0); width: 431.6px; border-bottom: 1px solid rgb(234, 234, 234); font-size: 15px; vertical-align: top; word-break: break-word;">Drip Irrigation</td></tr><tr style="margin: 0px; padding: 0px;"><td class="tdwdt" style="margin: 0px; padding: 4px 5px; width: 284.4px; color: rgb(132, 132, 132); border-bottom: 1px solid rgb(234, 234, 234); font-size: 15px; vertical-align: top; word-break: break-word;">Color</td><td class="tdwdt1 color6" style="margin: 0px; padding: 4px 5px; color: rgb(0, 0, 0); width: 431.6px; border-bottom: 1px solid rgb(234, 234, 234); font-size: 15px; vertical-align: top; word-break: break-word;">BROWN</td></tr><tr style="margin: 0px; padding: 0px;"><td class="tdwdt" style="margin: 0px; padding: 4px 5px; width: 284.4px; color: rgb(132, 132, 132); border-bottom: 1px solid rgb(234, 234, 234); font-size: 15px; vertical-align: top; word-break: break-word;">Size</td><td class="tdwdt1 color6" style="margin: 0px; padding: 4px 5px; color: rgb(0, 0, 0); width: 431.6px; border-bottom: 1px solid rgb(234, 234, 234); font-size: 15px; vertical-align: top; word-break: break-word;">16MM</td></tr><tr style="margin: 0px; padding: 0px;"><td class="tdwdt" style="margin: 0px; padding: 4px 5px; width: 284.4px; color: rgb(132, 132, 132); border-bottom: 1px solid rgb(234, 234, 234); font-size: 15px; vertical-align: top; word-break: break-word;">Brand</td><td class="tdwdt1 color6" style="margin: 0px; padding: 4px 5px; color: rgb(0, 0, 0); width: 431.6px; border-bottom: 1px solid rgb(234, 234, 234); font-size: 15px; vertical-align: top; word-break: break-word;">NETAFIM</td></tr></tbody></table>', 'elbow-netafim.jpg', 'netafim elbo.jfif', '', 50, 'In Stock', '2022-04-19 05:49:57', ''),
(59, 23, 50, 'Netafim 16mm start connector', 300, 350, '<table style="margin: 0px 0px 8px; padding: 0px; width: 736px; color: rgb(51, 51, 51); font-family: arial; font-size: 16px; background-color: rgb(255, 255, 255);"><tbody style="margin: 0px; padding: 0px;"><tr style="margin: 0px; padding: 0px;"><td class="tdwdt" style="margin: 0px; padding: 4px 5px; width: 284.4px; color: rgb(132, 132, 132); border-bottom: 1px solid rgb(234, 234, 234); font-size: 15px; vertical-align: top; word-break: break-word;">Brand</td><td class="tdwdt1 color6" style="margin: 0px; padding: 4px 5px; color: rgb(0, 0, 0); width: 431.6px; border-bottom: 1px solid rgb(234, 234, 234); font-size: 15px; vertical-align: top; word-break: break-word;">Netafim</td></tr><tr style="margin: 0px; padding: 0px;"><td class="tdwdt" style="margin: 0px; padding: 4px 5px; width: 284.4px; color: rgb(132, 132, 132); border-bottom: 1px solid rgb(234, 234, 234); font-size: 15px; vertical-align: top; word-break: break-word;">Color</td><td class="tdwdt1 color6" style="margin: 0px; padding: 4px 5px; color: rgb(0, 0, 0); width: 431.6px; border-bottom: 1px solid rgb(234, 234, 234); font-size: 15px; vertical-align: top; word-break: break-word;">Brown</td></tr><tr style="margin: 0px; padding: 0px;"><td class="tdwdt" style="margin: 0px; padding: 4px 5px; width: 284.4px; color: rgb(132, 132, 132); border-bottom: 1px solid rgb(234, 234, 234); font-size: 15px; vertical-align: top; word-break: break-word;">Diameter</td><td class="tdwdt1 color6" style="margin: 0px; padding: 4px 5px; color: rgb(0, 0, 0); width: 431.6px; border-bottom: 1px solid rgb(234, 234, 234); font-size: 15px; vertical-align: top; word-break: break-word;">16 mm</td></tr></tbody></table>', 'netafim start.jpg', 'netafim-16mm-start-nipple-500x500.jpg', '', 50, 'In Stock', '2022-04-19 05:55:11', ''),
(60, 23, 50, 'NETAFIM Drip Roll', 1450, 1500, '<ul class="rich-text-list" style="box-sizing: inherit; margin-bottom: var(--rich-text-ul--margin-bottom, var(--brand__spacing)); margin-left: 0px; color: rgb(46, 46, 46); list-style-type: var(--brand__list-item--list-style-type, disc); list-style-position: var(--rich-text-ul--list-style-position, outside); margin-inline-start: var(--rich-text-ul--margin-inline-start, 20px); font-family: Roboto, Arial, sans-serif; font-size: 16px;"><li style="box-sizing: inherit; color: var(--brand__typography-p--color, rgb(var(--brand__color--text))); margin-bottom: var(--set-li--margin-bottom, var(--li--margin-bottom, calc(var(--brand__spacing--tiny) / 2)));"><span style="box-sizing: inherit; font-weight: 700;">Variety of flow rates:</span>&nbsp;5 different flow rates (0.7, 1.0, 1.6, 2.3, 3.5 L/H) can address any condition or application</li><li style="box-sizing: inherit; color: var(--brand__typography-p--color, rgb(var(--brand__color--text))); margin-bottom: var(--set-li--margin-bottom, var(--li--margin-bottom, calc(var(--brand__spacing--tiny) / 2)));"><span style="box-sizing: inherit; font-weight: 700;">Wide range of pipe diameters:</span>&nbsp;16.0 to 23.0 mm</li><li style="box-sizing: inherit; color: var(--brand__typography-p--color, rgb(var(--brand__color--text))); margin-bottom: var(--set-li--margin-bottom, var(--li--margin-bottom, calc(var(--brand__spacing--tiny) / 2)));"><span style="box-sizing: inherit; font-weight: 700;">Wall thickness:</span>&nbsp;1.0 mm - 1.2 mm</li><li style="box-sizing: inherit; color: var(--brand__typography-p--color, rgb(var(--brand__color--text))); margin-bottom: var(--set-li--margin-bottom, var(--li--margin-bottom, calc(var(--brand__spacing--tiny) / 2)));"><span style="box-sizing: inherit; font-weight: 700;">Pressure compensating range:&nbsp;</span>0.4-5.0 bar.</li><li style="box-sizing: inherit; color: var(--brand__typography-p--color, rgb(var(--brand__color--text)));"><span style="box-sizing: inherit; font-weight: 700;">Superb UV and chemical resistance</span></li><li style="box-sizing: inherit; color: var(--brand__typography-p--color, rgb(var(--brand__color--text)));"><span style="box-sizing: inherit; font-weight: 700;">Distance btw holes: 2 feet</span></li></ul>', 'drip roll 2.webp', 'drip roll 3.jfif', '', 50, 'In Stock', '2022-04-19 06:03:02', ''),
(61, 20, 47, 'Corn', 375, 400, '<b>Pack size:</b> 5Kg<div><b>Harvest period: 90 days</b></div><div><b>yield: 50 kg per acre</b></div>', 'corn seed.jfif', 'corn seed 2.jfif', '', 50, 'In Stock', '2022-04-19 06:10:21', '');

-- --------------------------------------------------------

--
-- Table structure for table `subcategory`
--

CREATE TABLE IF NOT EXISTS `subcategory` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `categoryid` int(11) NOT NULL,
  `subcategory` varchar(255) NOT NULL,
  `creationDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updationDate` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=51 ;

--
-- Dumping data for table `subcategory`
--

INSERT INTO `subcategory` (`id`, `categoryid`, `subcategory`, `creationDate`, `updationDate`) VALUES
(41, 18, 'Natural Fertilizers', '2022-03-11 11:47:22', ''),
(42, 18, 'Chemical Fertilizers', '2022-03-11 11:47:37', ''),
(44, 19, 'Cultivator', '2022-03-11 11:49:10', ''),
(45, 19, 'Sprayers', '2022-03-11 11:49:19', ''),
(46, 19, 'Motors and Machanaries', '2022-03-11 11:49:48', ''),
(47, 20, 'Country seed', '2022-03-11 11:50:34', ''),
(48, 20, 'Hybrid seeds', '2022-03-11 11:50:41', ''),
(49, 22, 'Pesticidees', '2022-03-15 11:36:47', ''),
(50, 23, 'Netafim', '2022-04-19 05:43:59', '');

-- --------------------------------------------------------

--
-- Table structure for table `userlog`
--

CREATE TABLE IF NOT EXISTS `userlog` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userEmail` varchar(255) NOT NULL,
  `userip` binary(16) NOT NULL,
  `loginTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `logout` varchar(255) NOT NULL,
  `status` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=110 ;

--
-- Dumping data for table `userlog`
--

INSERT INTO `userlog` (`id`, `userEmail`, `userip`, `loginTime`, `logout`, `status`) VALUES
(9, 'ksiddarth1232@gmail.com', '127.0.0.1\0\0\0\0\0\0\0', '2022-03-13 13:44:32', '', 0),
(10, 'ksiddarth1232@gmail.com', '127.0.0.1\0\0\0\0\0\0\0', '2022-03-13 13:44:41', '', 0),
(11, 'siddarthk.19bcr@kongu.edu', '127.0.0.1\0\0\0\0\0\0\0', '2022-03-13 13:44:49', '', 0),
(12, 'ksiddarth1232@gmail.com', '127.0.0.1\0\0\0\0\0\0\0', '2022-03-13 13:45:04', '', 0),
(13, 'ksiddarth1232@gmail.com', '127.0.0.1\0\0\0\0\0\0\0', '2022-03-13 13:47:23', '', 0),
(14, 'ksiddarth1232@gmail.com', '127.0.0.1\0\0\0\0\0\0\0', '2022-03-13 13:49:22', '', 1),
(15, 'ksiddarth1232@gmail.com', '127.0.0.1\0\0\0\0\0\0\0', '2022-03-13 20:25:01', '13-03-2022 08:26:48 PM', 1),
(16, 'ksiddarth1232@gmail.com', '127.0.0.1\0\0\0\0\0\0\0', '2022-03-14 08:47:12', '', 0),
(17, 'ksiddarth1232@gmail.com', '127.0.0.1\0\0\0\0\0\0\0', '2022-03-14 08:47:21', '', 1),
(18, 'ksiddarth1232@gmail.com', '127.0.0.1\0\0\0\0\0\0\0', '2022-03-15 05:13:49', '', 1),
(19, 'ksiddarth1232@gmail.com', '127.0.0.1\0\0\0\0\0\0\0', '2022-03-15 05:34:46', '15-03-2022 05:40:51 AM', 1),
(20, 'ksiddarth1232@gmail.com', '127.0.0.1\0\0\0\0\0\0\0', '2022-03-15 05:41:13', '', 1),
(21, 'ksiddarth1232@gmail.com', '127.0.0.1\0\0\0\0\0\0\0', '2022-03-15 13:44:45', '', 1),
(22, 'ksiddarth1232@gmail.com', '127.0.0.1\0\0\0\0\0\0\0', '2022-03-15 18:42:27', '15-03-2022 06:57:58 PM', 1),
(23, 'ksiddarth1232@gmail.com', '127.0.0.1\0\0\0\0\0\0\0', '2022-03-16 10:20:12', '', 1),
(24, 'ksiddarth1232@gmail.com', '127.0.0.1\0\0\0\0\0\0\0', '2022-03-16 13:47:47', '16-03-2022 01:52:11 PM', 1),
(25, 'kavin@gmail.com', '127.0.0.1\0\0\0\0\0\0\0', '2022-03-16 13:53:23', '16-03-2022 02:26:31 PM', 1),
(26, 'ksiddarth1232@gmail.com', '127.0.0.1\0\0\0\0\0\0\0', '2022-03-16 15:41:49', '', 1),
(27, 'ksiddarth1232@gmail.com', '127.0.0.1\0\0\0\0\0\0\0', '2022-03-17 10:26:47', '', 1),
(28, 'ksiddarth1232@gmail.com', '127.0.0.1\0\0\0\0\0\0\0', '2022-03-17 14:14:29', '', 1),
(29, 'ksiddarth1232@gmail.com', '127.0.0.1\0\0\0\0\0\0\0', '2022-03-19 11:36:52', '', 1),
(30, 'ksiddarth1232@gmail.com', '127.0.0.1\0\0\0\0\0\0\0', '2022-03-20 17:21:42', '', 0),
(31, 'ksiddarth1232@gmail.com', '127.0.0.1\0\0\0\0\0\0\0', '2022-03-20 17:21:52', '', 1),
(32, 'ksiddarth1232@gmail.com', '127.0.0.1\0\0\0\0\0\0\0', '2022-03-21 12:07:17', '21-03-2022 12:26:15 PM', 1),
(33, 'ksiddarth1232@gmail.com', '127.0.0.1\0\0\0\0\0\0\0', '2022-03-21 12:26:26', '', 1),
(34, 'ksiddarth1232@gmail.com', '127.0.0.1\0\0\0\0\0\0\0', '2022-03-21 12:53:04', '21-03-2022 01:00:04 PM', 1),
(35, 'kavin@gmail.com', '127.0.0.1\0\0\0\0\0\0\0', '2022-03-21 13:00:16', '', 0),
(36, 'ksiddarth1232@gmail.com', '127.0.0.1\0\0\0\0\0\0\0', '2022-03-21 14:21:33', '', 1),
(37, 'ksiddarth1232@gmail.com', '127.0.0.1\0\0\0\0\0\0\0', '2022-03-22 16:55:18', '', 1),
(38, 'ksiddarth1232@gmail.com', '127.0.0.1\0\0\0\0\0\0\0', '2022-03-24 15:45:12', '', 0),
(39, 'ksiddarth1232@gmail.com', '127.0.0.1\0\0\0\0\0\0\0', '2022-03-24 15:45:20', '', 1),
(40, 'ksiddarth1232@gmail.com', '127.0.0.1\0\0\0\0\0\0\0', '2022-04-05 14:05:36', '', 0),
(41, 'ksiddarth1232@gmail.com', '127.0.0.1\0\0\0\0\0\0\0', '2022-04-05 14:06:11', '', 1),
(42, 'ksiddarth1232@gmail.com', '127.0.0.1\0\0\0\0\0\0\0', '2022-04-06 11:13:55', '', 1),
(43, 'ksiddarth1232@gmail.com', '127.0.0.1\0\0\0\0\0\0\0', '2022-04-07 11:01:45', '07-04-2022 11:03:19 AM', 1),
(44, 'kavin@gmail.com', '127.0.0.1\0\0\0\0\0\0\0', '2022-04-07 11:04:22', '07-04-2022 11:35:27 AM', 1),
(45, 'ksiddarth1232@gmail.com', '127.0.0.1\0\0\0\0\0\0\0', '2022-04-07 11:35:47', '07-04-2022 11:36:01 AM', 1),
(46, 'dhina@gmail.com', '127.0.0.1\0\0\0\0\0\0\0', '2022-04-07 11:36:53', '07-04-2022 11:41:53 AM', 1),
(47, 'sidh@gmail.com', '127.0.0.1\0\0\0\0\0\0\0', '2022-04-07 11:42:46', '07-04-2022 11:46:53 AM', 1),
(48, 'ksiddarth1232@gmail.com', '127.0.0.1\0\0\0\0\0\0\0', '2022-04-07 11:47:10', '', 1),
(49, 'ksiddarth1232@gmail.com', '127.0.0.1\0\0\0\0\0\0\0', '2022-04-09 09:59:20', '', 1),
(50, 'ksiddarth1232@gmail.com', '127.0.0.1\0\0\0\0\0\0\0', '2022-04-09 14:05:50', '', 1),
(51, 'ksiddarth1232@gmail.com', '127.0.0.1\0\0\0\0\0\0\0', '2022-04-11 14:42:27', '11-04-2022 02:52:15 PM', 1),
(52, 'ksiddarth1232@gmail.com', '127.0.0.1\0\0\0\0\0\0\0', '2022-04-11 14:52:31', '', 1),
(53, 'ksiddarth1232@gmail.com', '127.0.0.1\0\0\0\0\0\0\0', '2022-04-13 10:00:05', '', 1),
(54, 'logitha@gmail.com', '127.0.0.1\0\0\0\0\0\0\0', '2022-04-13 14:07:25', '', 1),
(55, 'ksiddarth1232@gmail.com', '127.0.0.1\0\0\0\0\0\0\0', '2022-04-15 11:55:17', '', 1),
(56, 'ksiddarth1232@gmail.com', '127.0.0.1\0\0\0\0\0\0\0', '2022-04-15 20:17:12', '', 1),
(57, 'ksiddarth1232@gmail.com', '127.0.0.1\0\0\0\0\0\0\0', '2022-04-16 17:08:21', '', 1),
(58, 'ksiddarth1232@gmail.com', '127.0.0.1\0\0\0\0\0\0\0', '2022-04-17 11:13:41', '', 0),
(59, 'ksiddarth1232@gmail.com', '127.0.0.1\0\0\0\0\0\0\0', '2022-04-17 11:13:49', '17-04-2022 03:05:43 PM', 1),
(60, 'ksiddarth1232@gmail.com', '127.0.0.1\0\0\0\0\0\0\0', '2022-04-17 15:07:39', '', 1),
(61, 'ksiddarth1232@gmail.com', '127.0.0.1\0\0\0\0\0\0\0', '2022-04-17 21:17:36', '', 1),
(62, 'ksiddarth1232@gmail.com', '127.0.0.1\0\0\0\0\0\0\0', '2022-04-18 10:51:47', '', 1),
(63, 'ksiddarth1232@gmail.com', '127.0.0.1\0\0\0\0\0\0\0', '2022-04-18 12:47:59', '', 1),
(64, 'ksiddarth1232@gmail.com', '127.0.0.1\0\0\0\0\0\0\0', '2022-04-18 12:48:23', '', 1),
(65, 'ksiddarth1232@gmail.com', '127.0.0.1\0\0\0\0\0\0\0', '2022-04-18 13:00:00', '', 1),
(66, 'ksiddarth1232@gmail.com', '127.0.0.1\0\0\0\0\0\0\0', '2022-04-18 13:34:17', '', 1),
(67, 'ksiddarth1232@gmail.com', '127.0.0.1\0\0\0\0\0\0\0', '2022-04-18 13:37:10', '', 1),
(68, 'ksiddarth1232@gmail.com', '127.0.0.1\0\0\0\0\0\0\0', '2022-04-18 13:56:37', '', 1),
(69, 'ksiddarth1232@gmail.com', '127.0.0.1\0\0\0\0\0\0\0', '2022-04-18 13:57:01', '', 1),
(70, 'ksiddarth1232@gmail.com', '127.0.0.1\0\0\0\0\0\0\0', '2022-04-18 15:33:22', '', 1),
(71, 'ksiddarth1232@gmail.com', '127.0.0.1\0\0\0\0\0\0\0', '2022-04-19 06:11:02', '19-04-2022 06:11:04 AM', 1),
(72, 'ksiddarth1232@gmail.com', '127.0.0.1\0\0\0\0\0\0\0', '2022-04-19 06:11:08', '', 1),
(73, 'ksiddarth1232@gmail.com', '127.0.0.1\0\0\0\0\0\0\0', '2022-04-19 11:15:32', '19-04-2022 11:58:17 AM', 1),
(74, 'ksiddarth1232@gmail.com', '127.0.0.1\0\0\0\0\0\0\0', '2022-04-19 11:58:23', '', 1),
(75, 'ksiddarth1232@gmail.com', '127.0.0.1\0\0\0\0\0\0\0', '2022-04-19 12:10:57', '', 1),
(76, 'ksiddarth1232@gmail.com', '127.0.0.1\0\0\0\0\0\0\0', '2022-04-20 14:07:59', '20-04-2022 02:08:19 PM', 1),
(77, 'ksiddarth1232@gmail.com', '127.0.0.1\0\0\0\0\0\0\0', '2022-04-20 14:08:23', '', 1),
(78, 'ksiddarth1232@gmail.com', '127.0.0.1\0\0\0\0\0\0\0', '2022-04-20 15:35:12', '', 1),
(79, 'ksiddarth1232@gmail.com', '127.0.0.1\0\0\0\0\0\0\0', '2022-04-21 12:22:08', '', 1),
(80, 'ksiddarth1232@gmail.com', '127.0.0.1\0\0\0\0\0\0\0', '2022-04-22 15:37:44', '', 1),
(81, 'ksiddarth1232@gmail.com', '127.0.0.1\0\0\0\0\0\0\0', '2022-04-27 15:52:24', '', 1),
(82, 'ksiddarth1232@gmail.com', '127.0.0.1\0\0\0\0\0\0\0', '2022-04-28 11:31:59', '28-04-2022 11:35:07 AM', 1),
(83, 'ksiddarth1232@gmail.com', '127.0.0.1\0\0\0\0\0\0\0', '2022-04-28 11:35:41', '', 1),
(84, 'ksiddarth1232@gmail.com', '127.0.0.1\0\0\0\0\0\0\0', '2022-04-30 20:43:04', '', 1),
(85, 'ksiddarth1232@gmail.com', '127.0.0.1\0\0\0\0\0\0\0', '2022-04-30 20:54:08', '', 1),
(86, 'ksiddarth1232@gmail.com', '127.0.0.1\0\0\0\0\0\0\0', '2022-05-01 08:06:45', '01-05-2022 08:18:40 AM', 1),
(87, 'ksiddarth1232@gmail.com', '127.0.0.1\0\0\0\0\0\0\0', '2022-05-01 08:21:57', '01-05-2022 08:35:19 AM', 1),
(88, 'ksiddarth1232@gmail.com', '127.0.0.1\0\0\0\0\0\0\0', '2022-05-01 08:35:24', '01-05-2022 08:38:59 AM', 1),
(89, 'ksiddarth1232@gmail.com', '127.0.0.1\0\0\0\0\0\0\0', '2022-05-01 08:39:04', '01-05-2022 08:58:30 AM', 1),
(90, 'ksiddarth1232@gmail.com', '127.0.0.1\0\0\0\0\0\0\0', '2022-05-01 08:58:37', '01-05-2022 09:12:14 AM', 1),
(91, 'ksiddarth1232@gmail.com', '127.0.0.1\0\0\0\0\0\0\0', '2022-05-01 09:12:19', '01-05-2022 09:19:53 AM', 1),
(92, 'ksiddarth1232@gmail.com', '127.0.0.1\0\0\0\0\0\0\0', '2022-05-05 15:07:13', '', 1),
(93, 'ksiddarth1232@gmail.com', '127.0.0.1\0\0\0\0\0\0\0', '2022-05-09 14:57:11', '', 1),
(94, 'ksiddarth1232@gmail.com', '127.0.0.1\0\0\0\0\0\0\0', '2022-05-16 10:56:36', '16-05-2022 03:13:13 PM', 1),
(95, 'ksiddarth1232@gmail.com', '127.0.0.1\0\0\0\0\0\0\0', '2022-05-16 15:14:08', '', 1),
(96, 'ksiddarth1232@gmail.com', '127.0.0.1\0\0\0\0\0\0\0', '2022-05-16 15:21:51', '', 1),
(97, 'kavin@gmail.com', '127.0.0.1\0\0\0\0\0\0\0', '2022-05-17 11:23:56', '17-05-2022 11:26:29 AM', 1),
(98, 'kavin@gmail.com', '127.0.0.1\0\0\0\0\0\0\0', '2022-05-17 11:38:11', '', 1),
(99, 'kavin@gmail.com', '127.0.0.1\0\0\0\0\0\0\0', '2022-05-20 15:58:00', '', 1),
(100, 'admin@gmail.com', '127.0.0.1\0\0\0\0\0\0\0', '2022-05-21 09:02:31', '', 0),
(101, 'ksiddarth1232@gmail.com', '127.0.0.1\0\0\0\0\0\0\0', '2022-05-25 14:25:34', '', 1),
(102, 'ksiddarth1232@gmail.com', '127.0.0.1\0\0\0\0\0\0\0', '2022-05-25 15:22:19', '', 1),
(103, 'ksiddarth1232@gmail.com', '127.0.0.1\0\0\0\0\0\0\0', '2022-05-30 19:25:48', '', 1),
(104, 'sugavembarasan@gmail.com', '127.0.0.1\0\0\0\0\0\0\0', '2022-05-31 09:04:06', '', 1),
(105, 'ksiddarth1232@gmail.com', '127.0.0.1\0\0\0\0\0\0\0', '2022-05-31 10:51:14', '', 1),
(106, 'ksiddarth1232@gmail.com', '127.0.0.1\0\0\0\0\0\0\0', '2022-05-31 11:32:54', '', 1),
(107, 'ksiddarth1232@gmail.com', '127.0.0.1\0\0\0\0\0\0\0', '2022-05-31 12:31:03', '', 1),
(108, 'ksiddarth1232@gmail.com', '127.0.0.1\0\0\0\0\0\0\0', '2022-05-31 12:33:50', '', 1),
(109, 'ksiddarth1232@gmail.com', '127.0.0.1\0\0\0\0\0\0\0', '2022-08-10 10:41:44', '', 1);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `contactno` bigint(11) NOT NULL,
  `password` varchar(255) NOT NULL,
  `shippingAddress` longtext NOT NULL,
  `shippingState` varchar(255) NOT NULL,
  `shippingCity` varchar(255) NOT NULL,
  `shippingPincode` int(11) NOT NULL,
  `billingAddress` longtext NOT NULL,
  `billingState` varchar(255) NOT NULL,
  `billingCity` varchar(255) NOT NULL,
  `billingPincode` int(11) NOT NULL,
  `regDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updationDate` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=11 ;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `contactno`, `password`, `shippingAddress`, `shippingState`, `shippingCity`, `shippingPincode`, `billingAddress`, `billingState`, `billingCity`, `billingPincode`, `regDate`, `updationDate`) VALUES
(4, 'siddarth', 'ksiddarth1232@gmail.com', 9842122744, '8f506d9a29cbda36eb01ffa1726b503f', '#1, kagam kolathupalayam, kagam (po),\r\nsivagiri(via)', 'TAMIL NADU', 'Erode', 638109, '#1, kagam kolathupalayam, kagam (po),\r\nsivagiri(via)', 'TAMIL NADU', 'Erode', 638109, '2022-03-13 13:49:12', ''),
(10, 'siddarth', 'ksiddarth1232@gmail.com', 9842122744, 'fd2cc6c54239c40495a0d3a93b6380eb', '', '', '', 0, '', '', '', 0, '2022-05-04 11:16:35', '');

-- --------------------------------------------------------

--
-- Table structure for table `wishlist`
--

CREATE TABLE IF NOT EXISTS `wishlist` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userId` int(11) NOT NULL,
  `productId` int(11) NOT NULL,
  `postingDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `wishlist`
--

INSERT INTO `wishlist` (`id`, `userId`, `productId`, `postingDate`) VALUES
(1, 4, 33, '2022-03-15 15:10:48'),
(2, 4, 44, '2022-03-16 13:48:28'),
(4, 1, 44, '2022-04-07 11:59:34'),
(5, 4, 32, '2022-05-01 08:22:43'),
(6, 1, 32, '2022-05-31 11:32:02');
