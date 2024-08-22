-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 22, 2024 at 04:26 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.0.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mobile_service`
--

-- --------------------------------------------------------

--
-- Table structure for table `add_cart`
--

CREATE TABLE `add_cart` (
  `cart_id` int(10) NOT NULL,
  `cust_id` int(25) NOT NULL,
  `service_id` int(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `add_cart`
--

INSERT INTO `add_cart` (`cart_id`, `cust_id`, `service_id`) VALUES
(10, 6, 8),
(11, 6, 10),
(12, 6, 13),
(35, 1, 7),
(47, 1, 19),
(48, 13, 6),
(50, 13, 7),
(52, 14, 46),
(53, 14, 46),
(54, 14, 46),
(55, 14, 46),
(57, 12, 12),
(59, 12, 79),
(63, 12, 6);

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `admin_id` int(10) NOT NULL,
  `admin_name` varchar(50) DEFAULT NULL,
  `admin_email` varchar(60) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`admin_id`, `admin_name`, `admin_email`, `password`) VALUES
(4, 'admin_123', 'admin123@gmail.com', '202cb962ac59075b964b07152d234b70');

-- --------------------------------------------------------

--
-- Table structure for table `booking`
--

CREATE TABLE `booking` (
  `booking_id` int(20) NOT NULL,
  `cust_id` int(15) DEFAULT NULL,
  `service_id` int(15) DEFAULT NULL,
  `booking_add` varchar(255) NOT NULL,
  `booking_date` date DEFAULT NULL,
  `booking_time` varchar(20) NOT NULL,
  `booking_statue` varchar(20) NOT NULL DEFAULT 'Active'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `booking`
--

INSERT INTO `booking` (`booking_id`, `cust_id`, `service_id`, `booking_add`, `booking_date`, `booking_time`, `booking_statue`) VALUES
(2, 12, 6, '89, krishna park tenament Nikol ,  Ahmedabad', '2023-03-14', '03:00PM - 05:00PM ', 'Active'),
(4, 1, 8, 'A/5 dayavan soc , near sp ring road  ,  Ahmedabad', '2023-03-14', '11:00AM - 01:00PM ', 'Active'),
(19, 13, 25, 'Nikol ,  Ahmedabad', '2023-03-20', '01:00PM - 03:00PM ', 'Active'),
(25, 12, 9, '89, krishna park tenament Nikol , Ahmedabad', '2023-03-22', '11:00AM - 01:00PM ', 'Active'),
(26, 6, 51, 'hello ', '2023-03-20', '11:00AM - 01:00PM ', 'Active'),
(27, 11, 46, 'Nikol ,  Ahmedabad', '2023-03-15', '11:00AM - 01:00PM ', 'Active'),
(28, 13, 50, 'c/4 indrajit bag ,soc,nikol gam road Ahmedabad -382350.', '2023-03-24', '05:00AM - 07:00PM ', 'Active'),
(29, 6, 23, '46,manmohan park ,virat nager near nikol ahmedabad-382356.', '2023-03-22', '03:00PM - 05:00PM ', 'Active'),
(30, 10, 7, '78-shyam park ,sardar chock ,near shukan chokdi,AHMEDABAD -384556.', '2023-03-27', '01:00PM - 03:00PM ', 'Active'),
(31, 14, 24, 'A-45,khodiyar nager ,near d-mart mall Ahmedabad-385689', '2023-03-30', '11:00AM - 01:00PM ', 'Active'),
(33, 14, 33, 'A-45,khodiyar nager ,near d-mart mall Ahmedabad-385689', '2023-03-22', '11:00AM - 01:00PM ', 'Active'),
(34, 14, 6, 'A-45,khodiyar nager ,near d-mart mall Ahmedabad-385689', '2023-03-18', '11:00AM - 01:00PM ', 'Active'),
(39, 12, 12, 'Nikol ,  Ahmedabad', '2023-03-18', '11:00AM - 01:00PM ', 'Active'),
(40, 1, 78, 'Nikol ,  Ahmedabad', '2023-03-18', '11:00AM - 01:00PM ', 'Active'),
(42, 13, 147, 'Nikol ,  Ahmedabad', '2023-04-01', '11:00AM - 01:00PM ', 'Active'),
(43, 6, 46, 'Nikol ,  Ahmedabad', '2023-03-23', '11:00AM - 01:00PM ', 'Active'),
(44, 12, 19, 'Nikol ,  Ahmedabad', '2023-03-31', '11:00AM - 01:00PM ', 'Active'),
(45, 13, 44, 'maninagar', '2023-03-27', '11:00AM - 01:00PM ', 'Active'),
(46, 1, 53, 'hello ', '2023-03-27', '11:00AM - 01:00PM ', 'Active'),
(52, 12, 523, 'Nikol ,  Ahmedabad', '2023-04-27', '11:00AM - 01:00PM ', 'Active'),
(53, 1, 553, '80-A, Tapovan Duplex Near Sardar Mall ,Maninagar 352656', '2023-04-19', '11:00AM - 01:00PM ', 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `company`
--

CREATE TABLE `company` (
  `com_id` int(30) NOT NULL,
  `com_name` varchar(40) NOT NULL,
  `com_img` varchar(255) NOT NULL,
  `com_logo` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `company`
--

INSERT INTO `company` (`com_id`, `com_name`, `com_img`, `com_logo`) VALUES
(8, 'Apple', 'apple.jpg', 'cropped.jpg'),
(9, 'Samsung', 'Samsung.jpg', 'samsung_logo.jpg'),
(10, 'Oppo', 'oppo.jpg', 'oppo_logo.jpg'),
(11, 'OnePlus', 'oneplus.png', 'oneplus_logo.jpg'),
(12, 'Vivo', 'vivo.png', 'vivo_logo.jpg'),
(13, 'realme', 'realme.jpg', 'realme_logo.jpg'),
(14, 'Xiaomi/Mi', 'xiaomi.jpg', 'xiaomi_logo.jpg'),
(15, 'Poco', 'poco.jpg', 'poco_logo.jpg'),
(16, 'Nokia', 'nokia.jpg', 'nokia_logo.jpg'),
(18, 'Honor', 'honor.png', 'honor_logo.jpg'),
(19, 'Motorola ', 'motorola.jpg', 'motorola_logo.jpg'),
(21, 'Lenovo', 'lenova.jpg', 'lenova_logo.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE `contact` (
  `contact_id` int(15) NOT NULL,
  `contact_name` varchar(20) DEFAULT NULL,
  `contact_email` varchar(25) NOT NULL,
  `contact_message` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `contact`
--

INSERT INTO `contact` (`contact_id`, `contact_name`, `contact_email`, `contact_message`) VALUES
(4, 'ram', 'ram@gmail.com', 'nicely done.');

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `cust_id` int(25) NOT NULL,
  `cust_name` varchar(50) DEFAULT NULL,
  `cust_mob_num` varchar(11) DEFAULT NULL,
  `cust_email` varchar(100) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL,
  `cust_img` varchar(255) NOT NULL,
  `created_date` date DEFAULT NULL,
  `update_date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`cust_id`, `cust_name`, `cust_mob_num`, `cust_email`, `address`, `password`, `cust_img`, `created_date`, `update_date`) VALUES
(1, 'Divya Rathod', '95257894512', 'divyarathod2292002@gmail.com', '80-A, Tapovan Duplex Near Sardar Mall ,Maninagar 352656', '202cb962ac59075b964b07152d234b70', '', NULL, NULL),
(6, 'mihir Patel', '7894563215', 'mihir123@gmail.com', 'nice', '202cb962ac59075b964b07152d234b70\r\n', '', NULL, NULL),
(10, 'pratham patel', '545492', 'pratham@gmail.com', 'kbhfjd', '250cf8b51c773f3f8dc8b4be867a9a02', '', NULL, NULL),
(11, 'Shubham Patel', '9517536548', 'shubhampatel@gmail.com', 'hello', 'c35eed5128cfd124f4dcd2cf89cb8031', '', NULL, NULL),
(12, 'Priyank Satani', '7573024585', 'priyanksatani1234@gmail.com', 'Nikol ,  Ahmedabad', '202cb962ac59075b964b07152d234b70', '', NULL, NULL),
(13, 'khushi khamar', '9685895696', 'kushi@gmail.com', 'maninagar', '202cb962ac59075b964b07152d234b70', '', NULL, NULL),
(14, 'ram', '7573095856', 'ram@gmail.com', 'A-45,khodiyar nager ,near d-mart mall Ahmedabad-385689', '202cb962ac59075b964b07152d234b70', '', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--

CREATE TABLE `feedback` (
  `feedback_id` int(11) NOT NULL,
  `cust_name` varchar(25) DEFAULT NULL,
  `cust_mob_num` varchar(20) DEFAULT NULL,
  `cust_email` varchar(50) DEFAULT NULL,
  `feedback_message` varchar(255) DEFAULT NULL,
  `Created_dt` date DEFAULT NULL,
  `Update_dt` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `feedback`
--

INSERT INTO `feedback` (`feedback_id`, `cust_name`, `cust_mob_num`, `cust_email`, `feedback_message`, `Created_dt`, `Update_dt`) VALUES
(2, 'Divya Rathod', '7894563215', 'divyarathod2292002@gmail.com', 'nice web service.', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `location`
--

CREATE TABLE `location` (
  `location_id` int(15) NOT NULL,
  `location_city` varchar(25) DEFAULT NULL,
  `location_area` varchar(25) DEFAULT NULL,
  `created_date` date DEFAULT NULL,
  `update_date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `model`
--

CREATE TABLE `model` (
  `mod_id` int(30) NOT NULL,
  `mod_name` varchar(40) NOT NULL,
  `mod_img` varchar(255) NOT NULL,
  `com_id` int(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `model`
--

INSERT INTO `model` (`mod_id`, `mod_name`, `mod_img`, `com_id`) VALUES
(22, 'Apple iPhone 6 Plus', 'Apple iPhone 6 Plus.png', 8),
(23, 'Apple iPhone 6', 'Apple iPhone 6.png', 8),
(24, 'Apple iPhone 7', 'Apple iPhone 7.png', 8),
(25, 'Apple iPhone 8 Plus', 'Apple iPhone 8 Plus.png', 8),
(26, 'Apple iPhone 11 Pro Max', 'Apple iPhone 11 Pro Max.jpg', 8),
(27, 'Apple iPhone 12', 'Apple iPhone 12.jpg', 8),
(28, 'Apple iPhone 13 Mini', 'Apple iPhone 13 Mini.jpg', 8),
(29, 'Apple iPhone 13 Pro Max', 'Apple iPhone 13 Pro Max.jpg', 8),
(30, 'Apple iPhone 13 Pro', 'Apple iPhone 13 Pro.jpg', 8),
(31, 'Apple iPhone X', 'Apple iPhone X.png', 8),
(32, 'Apple iPhone XR', 'Apple iPhone XR.jpg', 8),
(33, 'Apple iPhone XS Max', 'Apple iPhone XS Max.jpg', 8),
(34, 'OnePlus 3', 'OnePlus 3.png', 11),
(35, 'OnePlus 5', 'OnePlus 5.png', 11),
(36, 'OnePlus 6T McLaren', 'OnePlus 6T McLaren.png', 11),
(37, 'OnePlus 6T', 'OnePlus 6T.jpg', 11),
(38, 'OnePlus 7T', 'OnePlus 7T.jpg', 11),
(39, 'OnePlus 8 Pro', 'OnePlus 8 Pro.jpg', 11),
(40, 'OnePlus 8T', 'OnePlus 8T.jpg', 11),
(41, 'OnePlus 9 5G', 'OnePlus 9 5G.jpg', 11),
(42, 'OnePlus 10R 5G', 'OnePlus 10R 5G.jpg', 11),
(43, 'OnePlus 10T 5G', 'OnePlus 10T 5G.jpg', 11),
(44, 'OnePlus Nord 2 5G', 'OnePlus Nord 2 5G.jpg', 11),
(45, 'OnePlus Nord', 'OnePlus Nord.jpg', 11),
(46, 'Samsung Galaxy A30s', 'Samsung Galaxy A30s.jpg', 9),
(47, 'Samsung Galaxy A33 5G', 'Samsung Galaxy A33 5G.jpg', 9),
(48, 'Samsung Galaxy A52', 'Samsung Galaxy A52.jpg', 9),
(49, 'Samsung Galaxy A53 5G', 'Samsung Galaxy A53 5G.jpg', 9),
(50, 'Samsung Galaxy C7 Pro', 'Samsung Galaxy C7 Pro.png', 9),
(51, 'Samsung Galaxy F02s', 'Samsung Galaxy F02s.jpg', 9),
(52, 'Samsung Galaxy F62', 'Samsung Galaxy F62.jpg', 9),
(53, 'Samsung Galaxy Note 20', 'Samsung Galaxy Note 20.jpg', 9),
(54, 'Samsung Galaxy S9 Plus', 'Samsung Galaxy S9 Plus.png', 9),
(55, 'Samsung Galaxy S22 5G', 'Samsung Galaxy S22 5G.jpg', 9),
(56, 'Samsung Galaxy Z Fold2 5G', 'Samsung Galaxy Z Fold2 5G.jpg', 9),
(57, 'Samsung Galaxy Z Fold4', 'Samsung Galaxy Z Fold4.jpg', 9),
(58, 'Vivo NEX', 'Vivo NEX.png', 12),
(59, 'Vivo V7 Plus', 'Vivo V7 Plus.png', 12),
(60, 'Vivo V9 Pro', 'Vivo V9 Pro.png', 12),
(61, 'Vivo V11', 'Vivo V11.png', 12),
(62, 'Vivo V15', 'Vivo V15.jpg', 12),
(63, 'Vivo V19', 'Vivo V19.jpg', 12),
(64, 'Vivo V20 SE', 'Vivo V20 SE.jpg', 12),
(65, 'Vivo V23 5G', 'Vivo V23 5G.jpg', 12),
(66, 'Vivo V25 5G', 'Vivo V25 5G.jpg', 12),
(67, 'Vivo X80', 'Vivo X80.jpg', 12),
(68, 'Vivo Y20G', 'Vivo Y20G.jpg', 12),
(69, 'Vivo Y33T', 'Vivo Y33T.jpg', 12),
(70, 'OPPO A5 2020', 'OPPO A5 2020.jpg', 10),
(71, 'OPPO A15s', 'OPPO A15s.jpg', 10),
(72, 'OPPO A17', 'OPPO A17.jpg', 10),
(73, 'OPPO A37', 'OPPO A37.jpg', 10),
(74, 'OPPO A74 5G', 'OPPO A74 5G.jpg', 10),
(75, 'OPPO A96', 'OPPO A96.jpg', 10),
(76, 'OPPO F19 Pro', 'OPPO F19 Pro.jpg', 10),
(77, 'OPPO F19s', 'OPPO F19s.jpg', 10),
(78, 'OPPO F19', 'OPPO F19.png', 10),
(79, 'OPPO F21s Pro', 'OPPO F21s Pro.jpg', 10),
(80, 'OPPO R15 Pro', 'OPPO R15 Pro.jpg', 10),
(81, 'OPPO Reno8 5G', 'OPPO Reno8 5G.jpg', 10),
(82, 'Honor 6X', 'Honor 6X.png', 18),
(83, 'Honor 7X', 'Honor 7X.png', 18),
(84, 'Honor 8 Pro', 'Honor 8 Pro.png', 18),
(85, 'Honor 8X', 'Honor 8X.png', 18),
(86, 'Honor 9 Lite', 'Honor 9 Lite.png', 18),
(87, 'Honor 9N', 'Honor 9N.png', 18),
(88, 'Honor Play', 'Honor Play.png', 18),
(89, 'Nokia 3.1 A', 'Nokia 3.1 A.png', 16),
(90, 'Nokia 3.1', 'Nokia 3.1.png', 16),
(91, 'Nokia 5.1 Plus', 'Nokia 5.1 Plus.jpg', 16),
(92, 'Nokia 6.1 Plus', 'Nokia 6.1 Plus.png', 16),
(93, 'Nokia 6.1', 'Nokia 6.1.png', 16),
(94, 'Nokia 6', 'Nokia 6.png', 16),
(95, 'Nokia 7 Plus', 'Nokia 7 Plus.jpg', 16),
(96, 'Nokia 7.1', 'Nokia 7.1.jpg', 16),
(97, 'Nokia 7.2', 'Nokia 7.2.jpg', 16),
(98, 'Nokia 8.1', 'Nokia 8.1.png', 16),
(99, 'Nokia C21 Plus', 'Nokia C21 Plus.jpg', 16),
(100, 'Nokia X71', 'Nokia X71.jpg', 16),
(101, 'Realme 5', 'Realme 5.jpg', 13),
(102, 'Realme 5s', 'Realme 5s.jpg', 13),
(103, 'Realme 7 Pro', 'Realme 7 Pro.jpg', 13),
(104, 'Realme 9i', 'Realme 9i.jpg', 13),
(105, 'Realme C3', 'Realme C3.jpg', 13),
(106, 'Realme C20', 'Realme C20.jpg', 13),
(107, 'Realme C25Y', 'Realme C25Y.jpg', 13),
(108, 'Realme GT 2 Pro', 'Realme GT 2 Pro.jpg', 13),
(109, 'Realme Narzo 50 Pro 5G', 'Realme Narzo 50 Pro 5G.jpg', 13),
(110, 'Realme Narzo 50i', 'Realme Narzo 50i.jpg', 13),
(111, 'Realme X7', 'Realme X7.jpg', 13),
(112, 'POCO C3', 'POCO C3.jpg', 15),
(113, 'POCO C31', 'POCO C31.jpg', 15),
(114, 'POCO F1', 'POCO F1.png', 15),
(115, 'POCO F3 GT', 'POCO F3 GT.jpg', 15),
(116, 'POCO M2 Pro', 'POCO M2 Pro.jpg', 15),
(117, 'POCO M3 Pro 5G', 'POCO M3 Pro 5G.jpg', 15),
(118, 'POCO M4 5G', 'POCO M4 5G.jpg', 15),
(119, 'POCO M4 Pro 5G', 'POCO M4 Pro 5G.jpg', 15),
(120, 'POCO M5', 'POCO M5.jpg', 15),
(121, 'POCO X2', 'POCO X2.jpg', 15),
(122, 'POCO X3 Pro', 'POCO X3 Pro.jpg', 15),
(123, 'POCO X4 Pro 5G', 'POCO X4 Pro 5G.jpg', 15),
(124, 'Realme Narzo 20', 'Realme Narzo 20.jpg', 13),
(125, 'Motorola Moto E7 Plus', 'Motorola Moto E7 Plus.jpg', 19),
(126, 'Motorola Moto E7 Power', 'Motorola Moto E7 Power.jpg', 19),
(127, 'Motorola Moto e32s', 'Motorola Moto e32s.jpg', 19),
(128, 'Motorola Moto Edge 20 Pro', 'Motorola Moto Edge 20 Pro.jpg', 19),
(129, 'Motorola Moto G6 Play', 'Motorola Moto G6 Play.png', 19),
(130, 'Motorola Moto G9 Power', 'Motorola Moto G9 Power.jpg', 19),
(131, 'Motorola Moto G10 Power', 'Motorola Moto G10 Power.jpg', 19),
(132, 'Motorola Moto G22', 'Motorola Moto G22.jpg', 19),
(133, 'Motorola Moto G51 5G', 'Motorola Moto G51 5G.jpg', 19),
(134, 'Motorola Moto G52', 'Motorola Moto G52.jpg', 19),
(135, 'Motorola Moto G72', 'Motorola Moto G72.jpg', 19),
(136, 'Motorola Moto G72', 'Motorola One Macro.jpg', 19),
(137, 'Lenovo A5', 'Lenovo A5.png', 21),
(139, 'Lenovo A6 Note', 'Lenovo A6 Note.jpg', 21),
(141, 'Lenovo K9 Note', 'Lenovo K9 Note.jpg', 21),
(142, 'Lenovo K10 Note', 'Lenovo K10 Note.jpg', 21),
(143, 'Lenovo K10 Plus', 'Lenovo K10 Plus.jpg', 21),
(145, 'Lenovo Z6 Pro', 'Lenovo Z6 Pro.jpg', 21);

-- --------------------------------------------------------

--
-- Table structure for table `service`
--

CREATE TABLE `service` (
  `service_id` int(30) NOT NULL,
  `service_name` varchar(40) DEFAULT NULL,
  `service_price` float DEFAULT NULL,
  `service_img` varchar(255) DEFAULT NULL,
  `service_desc` varchar(255) DEFAULT NULL,
  `com_id` int(30) DEFAULT NULL,
  `mod_id` int(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `service`
--

INSERT INTO `service` (`service_id`, `service_name`, `service_price`, `service_img`, `service_desc`, `com_id`, `mod_id`) VALUES
(6, 'Touch And Lcd', 2899, 'SCREEN.png', 'If your device Touch/LCD is damaged (Cracked) and has a destroyed image, no image or touch is not responding properly/ Only Half Display works.', 8, 22),
(7, 'Battry', 1499, 'BATTERY.png', 'If battery is drying faster or not holding the charge.', 8, 22),
(8, 'Front Camera', 1699, 'FRONT CAMERA.png', 'If the front camera is blank / blurred / Not able to focus or cracked.', 8, 22),
(9, 'Charging', 899, 'CHARGING JACK.png', 'If your device is not charging at all, slow charging or Power down after changing charger also that means there is a fault with charging Kit/Port of your device and require immediate replacement.', 8, 22),
(10, 'Ear Speaker ', 899, 'SPEAKER.png', 'If you hear cracking/disturbing /Low Voice or no voi ce at all during a phone call.', 8, 22),
(11, 'Mic', 899, 'MIC.png', 'While talking to other person and they are not able t o hear you at all	', 8, 22),
(12, 'Loud Speaker', 699, 'SPEAKER.png', 'If you can not hear the ringing or music sound.	', 8, 22),
(13, 'Volume', 899, 'RECEIVER.png', 'If Volume/Power button is not responding while increa sing and decreasing the volume', 8, 22),
(14, 'Back Camera', 1599, 'BACK CAMERA.png', 'If the back camera is blank / blurred / Not able to focus or cracked.', 8, 22),
(16, 'Dead', 299, 'PROXIMITY SENSOR.png', 'If your phone is not responding at all (Not able to S witch on)	', 8, 22),
(17, 'Touch And Lcd	', 3000, 'SCREEN.png', 'If your device Touch/LCD is damaged (Cracked) and has a destroyed image, no image or touch is not responding properly/ Only Half Display works', 8, 23),
(18, 'Battery', 1399, 'BATTERY.png', 'If battery is drying faster or not holding the charge', 8, 23),
(19, ' Front Camera', 1500, 'FRONT CAMERA.png', 'If you hear cracking/disturbing /Low Voice or no voi ce at all during a phone call.', 8, 23),
(20, ' Loud Speaker', 1000, 'SPEAKER.png', 'If you can not hear the ringing or music sound.', 8, 23),
(21, 'Mic', 999, 'MIC.png', 'While talking to other person and they are not able t o hear you at all', 8, 23),
(22, ' Volume', 1000, 'RECEIVER.png', 'If Volume is not responding while increa sing and decreasing the volume', 8, 23),
(23, 'Aux Jack', 1299, 'AUX JACK.png', 'AUX Jack is the port on a phone which is used to connect wired headphones or other audio cables to the phone.	', 8, 23),
(24, 'Ear Speaker', 800, 'SPEAKER.png', 'If you hear cracking/disturbing /Low Voice or no voi ce at all during a phone call.	', 8, 23),
(25, 'Touch And Lcd	', 2999, 'SCREEN.png', 'If your device Touch/LCD is damaged (Cracked) and has a destroyed image, no image or touch is not responding properly/ Only Half Display works.', 8, 24),
(26, 'Battery ', 1799, 'BATTERY.png', 'If battery is drying faster or not holding the charge', 8, 24),
(27, 'Front Camera', 2499, 'FRONT CAMERA.png', 'If the camera is blank / blurred / Not able to focus or cracked.', 8, 24),
(28, 'Charging', 799, 'CHARGING JACK.png', 'If your device is not charging at all, slow charging or Power down after changing charger also that means there is a fault with charging Kit/Port of your device and require immediate replacement.', 8, 24),
(29, 'Loud Speaker', 799, 'SPEAKER.png', 'If you can not hear the ringing or music sound.', 8, 24),
(31, 'Mic', 1099, 'MIC.png', 'While talking to other person and they are not able t o hear you at all', 8, 24),
(32, 'Ear Speaker', 1299, 'SPEAKER.png', 'If you hear cracking/disturbing /Low Voice or no voi ce at all during a phone call.	', 8, 24),
(33, 'Aux Jack', 1599, 'AUX JACK.png', 'AUX Jack is the port on a phone which is used to connect wired headphones or other audio cables to the phone.	', 8, 24),
(34, 'Back Camera', 2999, 'BACK CAMERA.png', 'If the back camera is blank / blurred / Not able to focus or cracked.	', 8, 24),
(35, 'Dead', 299, 'PROXIMITY SENSOR.png', 'If your phone is not responding at all (Not able to S witch on)	', 8, 24),
(36, 'Touch And Lcd	', 2399, 'SCREEN.png', 'If your device Touch/LCD is damaged (Cracked) and has a destroyed image, no image or touch is not responding properly/ Only Half Display works.	', 8, 25),
(37, 'Battery ', 1799, 'BATTERY.png', 'If battery is drying faster or not holding the charge	', 8, 25),
(38, 'Front Camera', 3999, 'FRONT CAMERA.png', 'If the camera is blank / blurred / Not able to focus More...', 8, 25),
(39, 'Charging', 999, 'CHARGING JACK.png', 'If your device is not charging at all, slow charging More...', 8, 25),
(41, 'Ear Speaker', 1299, 'SPEAKER.png', 'If you hear cracking/disturbing /Low Voice or no voi ce at all during a phone call.	', 8, 25),
(42, 'Mic', 999, 'MIC.png', 'While talking to other person and they are not able t More...', 8, 25),
(43, 'Loud Speaker', 999, 'SPEAKER.png', 'If you can not hear the ringing or music sound.', 8, 25),
(44, 'Aux Jack', 1599, 'AUX JACK.png', 'AUX Jack is the port on a phone which is used to connect wired headphones or other audio cables to the phone.	', 8, 25),
(45, 'Back Camera', 1599, 'BACK CAMERA.png', 'If the back camera is blank / blurred / Not able to focus or cracked.	', 8, 25),
(46, 'Touch And Lcd	', 10999, 'SCREEN.png', 'If your device Touch/LCD is damaged (Cracked) and has a destroyed image, no image or touch is not responding properly/ Only Half Display works.', 8, 26),
(47, 'Battery ', 1999, 'BATTERY.png', 'If battery is drying faster or not holding the charge	', 8, 26),
(48, 'Front Camera', 2499, 'FRONT CAMERA.png', 'If the front camera is blank / blurred / Not able to focus or cracked.	', 8, 26),
(49, 'Charging', 1599, 'CHARGING JACK.png', 'If your device is not charging at all, slow charging More...	', 8, 26),
(50, ' Loud Speaker', 1199, 'SPEAKER.png', 'If you can not hear the ringing or music sound.', 8, 26),
(51, 'Mic', 1199, 'MIC.png', 'While talking to other person and they are not able t o hear you at all	', 8, 26),
(52, 'Ear Speaker', 1699, 'SPEAKER.png', 'If you hear cracking/disturbing /Low Voice or no voi ce at all during a phone call.	', 8, 26),
(53, ' Aux Jack', 1099, 'AUX JACK.png', 'AUX Jack is the port on a phone which is used to connect wired headphones or other audio cables to the phone.	', 8, 26),
(54, 'Touch And Lcd	', 11999, 'SCREEN.png', 'If your device Touch/LCD is damaged (Cracked) and has a destroyed image, no image or touch is not responding properly/ Only Half Display works.', 8, 27),
(55, 'Battery ', 1299, 'BATTERY.png', 'If battery is drying faster or not holding the charge.	', 8, 27),
(56, 'Front Camera', 2499, 'FRONT CAMERA.png', 'If the front camera is blank / blurred / Not able to focus or cracked.	', 8, 27),
(57, 'Charging', 899, 'CHARGING JACK.png', 'If your device is not charging at all, slow charging or Power down after changing charger also that means there is a fault with charging Kit/Port of your device and require immediate replacement.	', 8, 27),
(58, 'Mic', 1500, 'MIC.png', 'While talking to other person and they are not able t o hear you at all	', 8, 27),
(59, 'Loud Speaker', 1599, 'SPEAKER.png', 'If you can not hear the ringing or music sound.	', 8, 27),
(60, 'Ear Speaker', 999, 'SPEAKER.png', 'If you hear cracking/disturbing /Low Voice or no voi ce at all during a phone call.	', 8, 27),
(61, 'Aux Jack', 1599, 'AUX JACK.png', 'AUX Jack is the port on a phone which is used to connect wired headphones or other audio cables to the phone.	', 8, 27),
(63, 'Back Camera', 1599, 'FRONT CAMERA.png', 'If the back camera is blank / blurred / Not able to focus or cracked.	', 8, 27),
(64, 'Aux Jack', 1099, 'AUX JACK.png', 'AUX Jack is the port on a phone which is used to connect wired headphones or other audio cables to the phone.	', 8, 22),
(65, 'Back Camera', 1999, 'FRONT CAMERA.png', 'If the back camera is blank / blurred / Not able to focus or cracked.	', 8, 23),
(66, 'Dead', 299, 'PROXIMITY SENSOR.png', 'If your phone is not responding at all (Not able to S witch on)	', 8, 23),
(67, 'Charging', 1999, 'CHARGING JACK.png', 'If your device is not charging at all, slow charging or Power down after changing charger also that means there is a fault with charging Kit/Port of your device and require immediate replacement.	', 8, 23),
(69, 'Volume', 999, 'RECEIVER.png', 'If Volume is not responding while increa sing and decreasing the volume	', 8, 24),
(75, 'Dead', 299, 'PROXIMITY SENSOR.png', 'If your phone is not responding at all (Not able to S witch on)	', 8, 25),
(76, 'Volume', 999, 'RECEIVER.png', 'If Volume is not responding while increa sing and decreasing the volume	', 8, 25),
(78, 'Back Camera', 1999, 'BACK CAMERA.png', 'If the back camera is blank / blurred / Not able to focus or cracked.	', 8, 26),
(79, 'Dead', 299, 'PROXIMITY SENSOR.png', 'If your phone is not responding at all (Not able to S witch on)	', 8, 26),
(80, 'Volume', 999, 'RECEIVER.png', 'If Volume is not responding while increa sing and decreasing the volume', 8, 26),
(82, 'Dead', 299, 'PROXIMITY SENSOR.png', 'If your phone is not responding at all (Not able to S witch on)	', 8, 27),
(83, 'Volume', 999, 'RECEIVER.png', 'If Volume is not responding while increa sing and decreasing the volume	', 8, 27),
(85, 'Touch And Lcd	', 2399, 'SCREEN.png', 'If your device Touch/LCD is damaged (Cracked) and has a destroyed image, no image or touch is not responding properly/ Only Half Display works.	', 8, 28),
(86, 'Battery ', 1599, 'BATTERY.png', 'If battery is drying faster or not holding the charge.	', 8, 28),
(87, 'Front Camera', 1999, 'FRONT CAMERA.png', 'If the front camera is blank / blurred / Not able to focus or cracked.	', 8, 28),
(88, 'Charging', 1399, 'CHARGING JACK.png', 'If your device is not charging at all, slow charging or Power down after changing charger also that means there is a fault with charging Kit/Port of your device and require immediate replacement.	', 8, 28),
(89, 'Ear Speaker', 899, 'SPEAKER.png', 'If you hear cracking/disturbing /Low Voice or no voi ce at all during a phone call.	', 8, 28),
(90, 'Mic', 999, 'MIC.png', 'While talking to other person and they are not able t o hear you at all	', 8, 28),
(91, 'Aux Jack', 1099, 'AUX JACK.png', 'AUX Jack is the port on a phone which is used to connect wired headphones or other audio cables to the phone.	', 8, 28),
(92, 'Loud Speaker', 1299, 'SPEAKER.png', 'If you can not hear the ringing or music sound.	', 8, 28),
(93, 'Back Camera', 1499, 'BACK CAMERA.png', 'If the back camera is blank / blurred / Not able to focus or cracked.	', 8, 28),
(94, 'Dead', 299, 'PROXIMITY SENSOR.png', 'If your phone is not responding at all (Not able to S witch on)	', 8, 28),
(95, 'Volume', 999, 'RECEIVER.png', 'If Volume is not responding while increa sing and decreasing the volume', 8, 28),
(97, 'Touch And Lcd	', 2199, 'SCREEN.png', 'If your device Touch/LCD is damaged (Cracked) and has a destroyed image, no image or touch is not responding properly/ Only Half Display works.	', 8, 29),
(98, 'Battery ', 1599, 'BATTERY.png', 'If battery is drying faster or not holding the charge	', 8, 29),
(99, 'Front Camera', 1999, 'FRONT CAMERA.png', 'If the front camera is blank / blurred / Not able to focus or cracked.	', 8, 29),
(100, 'Charging', 1299, 'CHARGING JACK.png', 'If your device is not charging at all, slow charging or Power down after changing charger also that means there is a fault with charging Kit/Port of your device and require immediate replacement.	', 8, 29),
(101, 'Loud Speaker', 999, 'SPEAKER.png', 'If you can not hear the ringing or music sound.	', 8, 29),
(102, 'Mic', 899, 'MIC.png', 'While talking to other person and they are not able t o hear you at all	', 8, 29),
(103, 'Ear Speaker', 799, 'SPEAKER.png', 'If you hear cracking/disturbing /Low Voice or no voi ce at all during a phone call.	', 8, 29),
(104, 'Aux Jack', 1199, 'AUX JACK.png', 'AUX Jack is the port on a phone which is used to connect wired headphones or other audio cables to the phone.	', 8, 29),
(105, 'Back Camera', 1399, 'BACK CAMERA.png', 'If the back camera is blank / blurred / Not able to focus or cracked.	', 8, 29),
(106, 'Dead', 299, 'PROXIMITY SENSOR.png', 'If your phone is not responding at all (Not able to S witch on)	', 8, 29),
(107, 'Volume', 999, 'RECEIVER.png', 'If Volume is not responding while increa sing and decreasing the volume', 8, 29),
(109, 'Touch And Lcd	', 3099, 'SCREEN.png', 'If your device Touch/LCD is damaged (Cracked) and has a destroyed image, no image or touch is not responding properly/ Only Half Display works.	', 8, 30),
(110, 'Battery ', 1699, 'BATTERY.png', 'If battery is drying faster or not holding the charge.	', 8, 30),
(111, 'Back Camera', 1299, 'BACK CAMERA.png', 'If the back camera is blank / blurred / Not able to focus or cracked.	', 8, 30),
(112, 'Ear Speaker', 1099, 'SPEAKER.png', 'If you hear cracking/disturbing /Low Voice or no voi ce at all during a phone call.	', 8, 30),
(113, 'Charging', 1999, 'CHARGING JACK.png', 'If your device is not charging at all, slow charging or Power down after changing charger also that means there is a fault with charging Kit/Port of your device and require immediate replacement.	', 8, 30),
(114, 'Mic', 1299, 'MIC.png', 'While talking to other person and they are not able t o hear you at all	', 8, 30),
(115, 'Loud Speaker', 1099, 'SPEAKER.png', 'If you can not hear the ringing or music sound.	', 8, 30),
(116, 'Aux Jack', 999, 'AUX JACK.png', 'AUX Jack is the port on a phone which is used to connect wired headphones or other audio cables to the phone.', 8, 30),
(117, 'Front Camera', 1999, 'FRONT CAMERA.png', 'If the front camera is blank / blurred / Not able to focus or cracked.	', 8, 30),
(118, 'Dead', 299, 'PROXIMITY SENSOR.png', 'If your phone is not responding at all (Not able to S witch on)	', 8, 30),
(119, 'Volume', 1999, 'RECEIVER.png', 'If Volume is not responding while increa sing and decreasing the volume	', 8, 30),
(121, 'Touch And Lcd	', 2999, 'SCREEN.png', 'If your device Touch/LCD is damaged (Cracked) and has a destroyed image, no image or touch is not responding properly/ Only Half Display works.	', 8, 31),
(122, 'Battery ', 1599, 'BATTERY.png', 'If battery is drying faster or not holding the charge.	', 8, 31),
(123, 'Front Camera', 1599, 'FRONT CAMERA.png', 'If the front camera is blank / blurred / Not able to focus or cracked.	', 8, 31),
(124, 'Charging', 2099, 'CHARGING JACK.png', 'If your device is not charging at all, slow charging More...	', 8, 31),
(125, 'Loud Speaker', 999, 'SPEAKER.png', 'If you can not hear the ringing or music sound.	', 8, 31),
(126, 'Mic', 1099, 'MIC.png', 'While talking to other person and they are not able t More...	', 8, 31),
(127, 'Ear Speaker', 1299, 'SPEAKER.png', 'If you hear cracking/disturbing /Low Voice or no voi ce at all during a phone call.	', 8, 31),
(128, 'Aux Jack', 1699, 'AUX JACK.png', 'AUX Jack is the port on a phone which is used to connect wired headphones or other audio cables to the phone.	', 8, 31),
(129, 'Back Camera', 1699, 'BACK CAMERA.png', 'If the back camera is blank / blurred / Not able to focus or cracked.	', 8, 31),
(130, 'Dead', 299, 'PROXIMITY SENSOR.png', 'If your phone is not responding at all (Not able to S witch on)	', 8, 31),
(131, 'Volume', 1099, 'RECEIVER.png', 'If Volume is not responding while increa sing and decreasing the volume	', 8, 31),
(133, 'Touch And Lcd	', 3099, 'SCREEN.png', 'If your device Touch/LCD is damaged (Cracked) and has a destroyed image, no image or touch is not responding properly/ Only Half Display works.	', 8, 32),
(134, 'Battery ', 1799, 'BATTERY.png', 'If battery is drying faster or not holding the charge.	', 8, 32),
(135, 'Front Camera', 1599, 'BACK CAMERA.png', 'If the front camera is blank / blurred / Not able to focus or cracked.	', 8, 32),
(136, 'Charging', 1899, 'CHARGING JACK.png', 'If your device is not charging at all, slow charging or Power down after changing charger also that means there is a fault with charging Kit/Port of your device and require immediate replacement.	', 8, 32),
(137, 'Ear Speaker', 899, 'SPEAKER.png', 'If you hear cracking/disturbing /Low Voice or no voi ce at all during a phone call.	', 8, 32),
(138, 'Mic', 999, 'MIC.png', 'While talking to other person and they are not able t o hear you at all	', 8, 32),
(139, 'Loud Speaker', 1199, 'SPEAKER.png', 'If you can not hear the ringing or music sound.	', 8, 32),
(140, 'Volume', 1299, 'RECEIVER.png', 'If Volume/Power button is not responding while increa sing and decreasing the volume	', 8, 32),
(141, 'Back Camera', 1299, 'BACK CAMERA.png', 'If the back camera is blank / blurred / Not able to focus or cracked.	', 8, 32),
(142, 'Dead', 299, 'PROXIMITY SENSOR.png', 'If your phone is not responding at all (Not able to S witch on)	', 8, 32),
(143, 'Aux Jack', 999, 'AUX JACK.png', 'AUX Jack is the port on a phone which is used to connect wired headphones or other audio cables to the phone.	', 8, 32),
(145, 'Touch And Lcd	', 2899, 'SCREEN.png', 'If your device Touch/LCD is damaged (Cracked) and has a destroyed image, no image or touch is not responding properly/ Only Half Display works	', 8, 33),
(146, 'Battery ', 1799, 'BATTERY.png', 'If battery is drying faster or not holding the charge.	', 8, 33),
(147, 'Front Camera', 1599, 'FRONT CAMERA.png', 'If the front camera is blank / blurred / Not able to focus or cracked.	', 8, 33),
(148, 'Charging', 2099, 'CHARGING JACK.png', 'If your device is not charging at all, slow charging or Power down after changing charger also that means there is a fault with charging Kit/Port of your device and require immediate replacement.	', 8, 33),
(149, 'Ear Speaker', 999, 'SPEAKER.png', 'If you hear cracking/disturbing /Low Voice or no voi ce at all during a phone call.	', 8, 33),
(386, 'Aux Jack', 899, 'AUX JACK.png', 'AUX Jack is the port on a phone which is used to connect wired headphones or other audio cables to the phone.	', 10, 76),
(388, 'Touch And Lcd	', 5099, 'SCREEN.png', 'If your device Touch/LCD is damaged (Cracked) and has a destroyed image, no image or touch is not responding properly/ Only Half Display works.	', 10, 77),
(389, 'Battery ', 1299, 'BATTERY.png', 'If battery is drying faster or not holding the charge.	', 10, 77),
(390, 'Front Camera', 1699, 'FRONT CAMERA.png', 'If the front camera is blank / blurred / Not able to focus or cracked.	', 10, 77),
(391, 'Charging', 1799, 'CHARGING JACK.png', 'If your device is not charging at all, slow charging or Power down after changing charger also that means there is a fault with charging Kit/Port of your device and require immediate replacement.	', 10, 77),
(392, 'Ear Speaker', 899, 'SPEAKER.png', 'If you hear cracking/disturbing /Low Voice or no voi ce at all during a phone call.	', 10, 77),
(393, 'Mic', 999, 'MIC.png', 'While talking to other person and they are not able t o hear you at all	', 10, 77),
(394, 'Loud Speaker', 1299, 'SPEAKER.png', 'If you can not hear the ringing or music sound.	', 10, 77),
(395, 'Volume', 1299, 'RECEIVER.png', 'If Volume/Power button is not responding while increa sing and decreasing the volume	', 10, 77),
(396, 'Back Camera', 1599, 'BACK CAMERA.png', 'If the back camera is blank / blurred / Not able to focus or cracked.	', 10, 77),
(397, 'Dead', 299, 'PROXIMITY SENSOR.png', 'If your phone is not responding at all (Not able to S witch on)	', 10, 77),
(398, 'Aux Jack', 899, 'AUX JACK.png', 'AUX Jack is the port on a phone which is used to connect wired headphones or other audio cables to the phone.', 10, 77),
(400, 'Touch And Lcd	', 5899, 'SCREEN.png', 'If your device Touch/LCD is damaged (Cracked) and has a destroyed image, no image or touch is not responding properly/ Only Half Display works.	', 10, 78),
(401, 'Battery ', 899, 'BATTERY.png', 'If battery is drying faster or not holding the charge.	', 10, 78),
(402, 'Front Camera', 1699, 'FRONT CAMERA.png', 'If the front camera is blank / blurred / Not able to focus or cracked.	', 10, 78),
(403, 'Charging', 999, 'CHARGING JACK.png', 'If your device is not charging at all, slow charging or Power down after changing charger also that means there is a fault with charging Kit/Port of your device and require immediate replacement.	', 10, 78),
(404, 'Ear Speaker', 799, 'SPEAKER.png', 'If you hear cracking/disturbing /Low Voice or no voi ce at all during a phone call.	', 10, 78),
(405, 'Mic', 1099, 'MIC.png', 'While talking to other person and they are not able t o hear you at all	', 10, 78),
(406, 'Volume', 1299, 'RECEIVER.png', 'If Volume/Power button is not responding while increa sing and decreasing the volume	', 10, 78),
(407, 'Back Camera', 1599, 'BACK CAMERA.png', 'If the back camera is blank / blurred / Not able to focus or cracked.	', 10, 78),
(408, 'Dead', 299, 'PROXIMITY SENSOR.png', 'If your phone is not responding at all (Not able to S witch on)	', 10, 78),
(409, 'Aux Jack', 1399, 'AUX JACK.png', 'AUX Jack is the port on a phone which is used to connect wired headphones or other audio cables to the phone.', 10, 78),
(411, 'Loud Speaker', 1399, 'SPEAKER.png', 'If you can not hear the ringing or music sound.	', 10, 78),
(412, 'Touch And Lcd	', 5299, 'SCREEN.png', 'If your device Touch/LCD is damaged (Cracked) and has a destroyed image, no image or touch is not responding properly/ Only Half Display works.	', 10, 79),
(413, 'Battery ', 899, 'BATTERY.png', 'If battery is drying faster or not holding the charge.	', 10, 79),
(414, 'Front Camera', 1699, 'FRONT CAMERA.png', 'If the front camera is blank / blurred / Not able to focus or cracked.	', 10, 79),
(416, 'Charging', 1299, 'CHARGING JACK.png', 'If your device is not charging at all, slow charging or Power down after changing charger also that means there is a fault with charging Kit/Port of your device and require immediate replacement.	', 10, 79),
(417, 'Ear Speaker', 899, 'SPEAKER.png', 'If you hear cracking/disturbing /Low Voice or no voi ce at all during a phone call.	', 10, 79),
(418, 'Mic', 899, 'MIC.png', 'While talking to other person and they are not able t o hear you at all	', 10, 79),
(419, 'Loud Speaker', 1499, 'SPEAKER.png', 'If you can not hear the ringing or music sound.	', 10, 79),
(420, 'Volume', 899, 'RECEIVER.png', 'If Volume/Power button is not responding while increa sing and decreasing the volume	', 10, 79),
(421, 'Back Camera', 1599, 'BACK CAMERA.png', 'If the back camera is blank / blurred / Not able to focus or cracked.	', 10, 79),
(422, 'Dead', 299, 'PROXIMITY SENSOR.png', 'If your phone is not responding at all (Not able to S witch on)	', 10, 79),
(423, 'Aux Jack', 999, 'AUX JACK.png', 'AUX Jack is the port on a phone which is used to connect wired headphones or other audio cables to the phone.', 10, 79),
(425, 'Touch And Lcd	', 4899, 'SCREEN.png', 'If your device Touch/LCD is damaged (Cracked) and has a destroyed image, no image or touch is not responding properly/ Only Half Display works.	', 10, 80),
(426, 'Battery', 899, 'BATTERY.png', 'If battery is drying faster or not holding the charge.	', 10, 80),
(427, 'Front Camera', 1799, 'FRONT CAMERA.png', 'If the front camera is blank / blurred / Not able to focus or cracked.	', 10, 80),
(428, 'Charging', 1399, 'CHARGING JACK.png', 'If your device is not charging at all, slow charging or Power down after changing charger also that means there is a fault with charging Kit/Port of your device and require immediate replacement.	', 10, 80),
(429, 'Ear Speaker', 899, 'SPEAKER.png', 'If you hear cracking/disturbing /Low Voice or no voi ce at all during a phone call.	', 10, 80),
(430, 'Mic', 1099, 'MIC.png', 'While talking to other person and they are not able t o hear you at all	', 10, 80),
(431, 'Loud Speaker', 1299, 'SPEAKER.png', 'If you can not hear the ringing or music sound.	', 10, 80),
(432, 'Volume', 1299, 'RECEIVER.png', 'If Volume/Power button is not responding while increa sing and decreasing the volume	', 10, 80),
(433, 'Back Camera', 1699, 'BACK CAMERA.png', 'If the back camera is blank / blurred / Not able to focus or cracked.', 10, 80),
(434, 'Dead', 299, 'PROXIMITY SENSOR.png', 'If your phone is not responding at all (Not able to S witch on)	', 10, 80),
(435, 'Aux Jack', 899, 'AUX JACK.png', 'AUX Jack is the port on a phone which is used to connect wired headphones or other audio cables to the phone.	', 10, 80),
(437, 'Touch And Lcd	', 4799, 'SCREEN.png', 'If your device Touch/LCD is damaged (Cracked) and has a destroyed image, no image or touch is not responding properly/ Only Half Display works.	', 10, 81),
(438, 'Battery ', 999, 'BATTERY.png', 'If battery is drying faster or not holding the charge.	', 10, 81),
(439, 'Front Camera', 1699, 'FRONT CAMERA.png', 'If the front camera is blank / blurred / Not able to focus or cracked.	', 10, 81),
(440, 'Charging', 899, 'CHARGING JACK.png', 'If your device is not charging at all, slow charging or Power down after changing charger also that means there is a fault with charging Kit/Port of your device and require immediate replacement.	', 10, 81),
(441, 'Ear Speaker', 799, 'SPEAKER.png', 'If you hear cracking/disturbing /Low Voice or no voi ce at all during a phone call.	', 10, 81),
(442, 'Mic', 1099, 'MIC.png', 'While talking to other person and they are not able t o hear you at all	', 10, 81),
(443, 'Loud Speaker', 999, 'SPEAKER.png', 'If you can not hear the ringing or music sound.	', 10, 81),
(444, 'Volume', 699, 'RECEIVER.png', 'If Volume/Power button is not responding while increa sing and decreasing the volume	', 10, 81),
(445, 'Back Camera', 1599, 'BACK CAMERA.png', 'If the back camera is blank / blurred / Not able to focus or cracked.	', 10, 81),
(446, 'Dead', 299, 'PROXIMITY SENSOR.png', 'If your phone is not responding at all (Not able to S witch on)	', 10, 81),
(447, 'Aux Jack', 999, 'AUX JACK.png', 'AUX Jack is the port on a phone which is used to connect wired headphones or other audio cables to the phone.	', 10, 81),
(449, 'Touch And Lcd	', 4099, 'SCREEN.png', 'If your device Touch/LCD is damaged (Cracked) and has a destroyed image, no image or touch is not responding properly/ Only Half Display works.	', 11, 34),
(450, 'Battery ', 899, 'BATTERY.png', 'If battery is drying faster or not holding the charge.	', 11, 34),
(451, 'Front Camera', 1699, 'FRONT CAMERA.png', 'If the front camera is blank / blurred / Not able to focus or cracked.	', 11, 34),
(452, 'Charging', 999, 'CHARGING JACK.png', 'If your device is not charging at all, slow charging or Power down after changing charger also that means there is a fault with charging Kit/Port of your device and require immediate replacement.	', 11, 34),
(453, 'Ear Speaker', 799, 'SPEAKER.png', 'If you hear cracking/disturbing /Low Voice or no voi ce at all during a phone call.	', 11, 34),
(454, 'Mic', 1099, 'MIC.png', 'While talking to other person and they are not able t o hear you at all	', 11, 34),
(455, 'Loud Speaker', 1499, 'SPEAKER.png', 'If you can not hear the ringing or music sound.	', 11, 34),
(456, 'Volume', 899, 'RECEIVER.png', 'If Volume/Power button is not responding while increa sing and decreasing the volume	', 11, 34),
(457, 'Back Camera', 1299, 'BACK CAMERA.png', 'If the back camera is blank / blurred / Not able to focus or cracked.	', 11, 34),
(458, 'Dead', 299, 'PROXIMITY SENSOR.png', 'If your phone is not responding at all (Not able to S witch on)	', 11, 34),
(459, 'Aux Jack', 999, 'AUX JACK.png', 'AUX Jack is the port on a phone which is used to connect wired headphones or other audio cables to the phone.	', 11, 34),
(461, 'Touch And Lcd	', 5099, 'SCREEN.png', 'If your device Touch/LCD is damaged (Cracked) and has a destroyed image, no image or touch is not responding properly/ Only Half Display works.	', 11, 35),
(462, 'Battery ', 899, 'BATTERY.png', 'If battery is drying faster or not holding the charge.	', 11, 35),
(463, 'Front Camera', 1599, 'FRONT CAMERA.png', 'If the front camera is blank / blurred / Not able to focus or cracked.	', 11, 35),
(464, 'Charging', 999, 'CHARGING JACK.png', 'If your device is not charging at all, slow charging or Power down after changing charger also that means there is a fault with charging Kit/Port of your device and require immediate replacement.	', 11, 35),
(465, 'Ear Speaker', 999, 'SPEAKER.png', 'If you hear cracking/disturbing /Low Voice or no voi ce at all during a phone call.	', 11, 35),
(466, 'Mic', 799, 'MIC.png', 'While talking to other person and they are not able t o hear you at all	', 11, 35),
(467, 'Loud Speaker', 1499, 'SPEAKER.png', 'If you can not hear the ringing or music sound.	', 11, 35),
(468, 'Volume', 899, 'RECEIVER.png', 'If Volume/Power button is not responding while increa sing and decreasing the volume	', 11, 35),
(469, 'Back Camera', 1699, 'BACK CAMERA.png', 'If the back camera is blank / blurred / Not able to focus or cracked.	', 11, 35),
(470, 'Dead', 299, 'PROXIMITY SENSOR.png', 'If your phone is not responding at all (Not able to S witch on)	', 11, 35),
(471, 'Aux Jack', 799, 'AUX JACK.png', 'AUX Jack is the port on a phone which is used to connect wired headphones or other audio cables to the phone.	', 11, 35),
(473, 'Touch And Lcd	', 4599, 'SCREEN.png', 'If your device Touch/LCD is damaged (Cracked) and has a destroyed image, no image or touch is not responding properly/ Only Half Display works.	', 11, 36),
(474, 'Battery', 999, 'BATTERY.png', 'If battery is drying faster or not holding the charge.	', 11, 36),
(475, 'Front Camera', 1799, 'FRONT CAMERA.png', 'If the front camera is blank / blurred / Not able to focus or cracked.	', 11, 36),
(476, 'Charging', 1299, 'CHARGING JACK.png', 'If your device is not charging at all, slow charging or Power down after changing charger also that means there is a fault with charging Kit/Port of your device and require immediate replacement.	', 11, 36),
(477, 'Ear Speaker', 1299, 'SPEAKER.png', 'If you hear cracking/disturbing /Low Voice or no voi ce at all during a phone call.	', 11, 36),
(478, 'Mic', 599, 'MIC.png', 'While talking to other person and they are not able t o hear you at all	', 11, 36),
(479, 'Loud Speaker', 999, 'SPEAKER.png', 'If you can not hear the ringing or music sound.	', 11, 36),
(480, 'Volume', 899, 'RECEIVER.png', 'If Volume/Power button is not responding while increa sing and decreasing the volume	', 11, 36),
(481, 'Back Camera', 1599, 'BACK CAMERA.png', 'If the back camera is blank / blurred / Not able to focus or cracked.', 11, 36),
(482, 'Dead', 299, 'PROXIMITY SENSOR.png', 'If your phone is not responding at all (Not able to S witch on)	', 11, 36),
(483, 'Aux Jack', 699, 'AUX JACK.png', 'AUX Jack is the port on a phone which is used to connect wired headphones or other audio cables to the phone.	', 11, 36),
(485, 'Touch And Lcd	', 4699, 'SCREEN.png', 'If your device Touch/LCD is damaged (Cracked) and has a destroyed image, no image or touch is not responding properly/ Only Half Display works.	', 11, 37),
(486, 'Battery ', 899, 'BATTERY.png', 'If battery is drying faster or not holding the charge.	', 11, 37),
(487, 'Front Camera', 3599, 'FRONT CAMERA.png', 'If the front camera is blank / blurred / Not able to focus or cracked.	', 11, 37),
(488, 'Charging', 899, 'CHARGING JACK.png', 'If your device is not charging at all, slow charging or Power down after changing charger also that means there is a fault with charging Kit/Port of your device and require immediate replacement.	', 11, 37),
(489, 'Ear Speaker', 999, 'SPEAKER.png', 'If you hear cracking/disturbing /Low Voice or no voi ce at all during a phone call.	', 11, 37),
(490, 'Mic', 899, 'MIC.png', 'While talking to other person and they are not able t o hear you at all	', 11, 37),
(491, 'Loud Speaker', 899, 'SPEAKER.png', 'If you can not hear the ringing or music sound.	', 11, 37),
(492, 'Volume', 1099, 'RECEIVER.png', 'If Volume/Power button is not responding while increa sing and decreasing the volume	', 11, 37),
(493, 'Back Camera', 1599, 'BACK CAMERA.png', 'If the back camera is blank / blurred / Not able to focus or cracked.	', 11, 37),
(494, 'Dead', 299, 'PROXIMITY SENSOR.png', 'If your phone is not responding at all (Not able to S witch on)	', 11, 37),
(495, 'Aux Jack', 799, 'AUX JACK.png', 'AUX Jack is the port on a phone which is used to connect wired headphones or other audio cables to the phone.	', 11, 37),
(497, 'Touch And Lcd', 2899, 'SCREEN.png', 'If your device Touch/LCD is damaged (Cracked) and has a destroyed image, no image or touch is not responding properly/ Only Half Display works.', 9, 46),
(498, ' Battry', 1499, 'BATTERY.png', 'If battery is drying faster or not holding the charge.', 9, 46),
(499, 'Front Camera', 1699, 'FRONT CAMERA.png', 'If the front camera is blank / blurred / Not able to focus or cracked.', 9, 46),
(500, 'Charging', 899, 'CHARGING JACK.png', 'If your device is not charging at all, slow charging or Power down after changing charger also that means there is a fault with charging Kit/Port of your device and require immediate replacement.', 9, 46),
(501, 'Ear Speaker', 899, 'SPEAKER.png', 'If you hear cracking/disturbing /Low Voice or no voi ce at all during a phone call.', 9, 46),
(502, ' Mic', 999, 'RECEIVER.png', 'While talking to other person and they are not able t o hear you at all.', 9, 46),
(503, 'Loud Speaker', 599, 'SPEAKER.png', 'If you can not hear the ringing or music sound.', 9, 46),
(504, 'Volume', 1199, 'RECEIVER.png', 'If Volume/Power button is not responding while increa sing and decreasing the volume', 9, 46),
(505, 'Back Camera', 1499, 'BACK CAMERA.png', 'If the back camera is blank / blurred / Not able to focus or cracked.', 9, 46),
(506, 'Dead', 1699, 'PROXIMITY SENSOR.png', 'If your phone is not responding at all (Not able to S witch on.', 9, 46),
(507, 'Aux Jack', 1499, 'AUX JACK.png', 'AUX Jack is the port on a phone which is used to connect wired headphones or other audio cables to the phone.', 9, 46),
(509, 'Touch And Lcd', 599, 'SCREEN.png', 'If your device Touch/LCD is damaged (Cracked) and has a destroyed image, no image or touch is not responding properly/ Only Half Display works.', 9, 47),
(512, 'Battry', 999, 'BATTERY.png', 'If battery is drying faster or not holding the charge.', 9, 47),
(513, 'Front Camera', 1499, 'FRONT CAMERA.png', 'If the front camera is blank / blurred / Not able to focus or cracked.', 9, 47),
(514, 'Charging', 1699, 'CHARGING JACK.png', 'If your device is not charging at all, slow charging or Power down after changing charger also that means there is a fault with charging Kit/Port of your device and require immediate replacement.', 9, 47),
(515, 'Ear Speaker', 799, 'SPEAKER.png', 'If you hear cracking/disturbing /Low Voice or no voi ce at all during a phone call.', 9, 47),
(516, 'Mic', 599, 'MIC.png', 'If you hear cracking/disturbing /Low Voice or no voi ce at all during a phone call.', 9, 47),
(517, 'Loud Speaker', 499, 'SPEAKER.png', 'While talking to other person and they are not able t o hear you at all.', 9, 47),
(518, 'Back Camera', 1799, 'BACK CAMERA.png', 'If the back camera is blank / blurred / Not able to focus or cracked.', 9, 47),
(520, 'Touch And Lcd', 799, 'SCREEN.png', 'If your device Touch/LCD is damaged (Cracked) and has a destroyed image, no image or touch is not responding properly/ Only Half Display works.', 9, 48),
(521, 'Front Camera', 799, 'FRONT CAMERA.png', 'If the front camera is blank / blurred / Not able to focus or cracked.', 9, 48),
(522, 'Charging', 1499, 'CHARGING JACK.png', 'If your device is not charging at all, slow charging or Power down after changing charger also that means there is a fault with charging Kit/Port of your device and require immediate replacement.', 9, 48),
(523, 'Ear Speaker', 1199, 'SPEAKER.png', 'While talking to other person and they are not able t o hear you at all.', 9, 47),
(524, 'Loud Speaker', 899, 'SPEAKER.png', 'While talking to other person and they are not able t o hear you at all.', 9, 48),
(525, 'Back Camera', 799, 'BACK CAMERA.png', 'If the back camera is blank / blurred / Not able to focus or cracked.', 9, 48),
(526, 'Aux Jack', 1499, 'AUX JACK.png', 'AUX Jack is the port on a phone which is used to connect wired headphones or other audio cables to the phone.', 9, 48),
(528, 'Touch And Lcd', 1499, 'SCREEN.png', 'If your device Touch/LCD is damaged (Cracked) and has a destroyed image, no image or touch is not responding properly/ Only Half Display works.', 9, 49),
(529, 'Front Camera', 899, 'FRONT CAMERA.png', 'If the front camera is blank / blurred / Not able to focus or cracked.', 9, 49),
(530, 'Charging', 799, 'CHARGING JACK.png', 'If your device is not charging at all, slow charging or Power down after changing charger also that means there is a fault with charging Kit/Port of your device and require immediate replacement.', 9, 49),
(531, 'Ear Speaker', 1699, 'SPEAKER.png', 'If you hear cracking/disturbing /Low Voice or no voi ce at all during a phone call.', 9, 49),
(532, 'Mic', 899, 'MIC.png', 'While talking to other person and they are not able t o hear you at all.', 9, 49),
(533, 'Volume', 999, 'RECEIVER.png', '	If Volume/Power button is not responding while increa sing and decreasing the volume', 9, 49),
(534, 'Back Camera', 799, 'BACK CAMERA.png', 'If the back camera is blank / blurred / Not able to focus or cracked.', 9, 49),
(535, 'Dead', 999, 'SCREEN.png', '	If your phone is not responding at all (Not able to S witch on).', 9, 49),
(537, 'Touch And Lcd', 899, 'SCREEN.png', 'If your device Touch/LCD is damaged (Cracked) and has a destroyed image, no image or touch is not responding properly/ Only Half Display works.', 10, 70),
(538, 'Front Camera', 999, 'FRONT CAMERA.png', 'If the front camera is blank / blurred / Not able to focus or cracked.', 10, 70),
(539, 'Charging', 1699, 'CHARGING JACK.png', 'If your device is not charging at all, slow charging or Power down after changing charger also that means there is a fault with charging Kit/Port of your device and require immediate replacement.', 10, 70),
(540, 'Ear Speaker', 799, 'SPEAKER.png', 'While talking to other person and they are not able t o hear you at all.', 10, 70),
(541, 'Mic', 599, 'MIC.png', 'While talking to other person and they are not able t o hear you at all', 10, 70),
(542, 'Dead', 1499, 'PROXIMITY SENSOR.png', 'If your phone is not responding at all (Not able to S witch on)', 10, 70),
(543, 'Aux Jack', 69, 'AUX JACK.png', '	AUX Jack is the port on a phone which is used to connect wired headphones or other audio cables to the phone.', 10, 70),
(545, 'Touch And Lcd', 1499, 'SCREEN.png', 'If your device Touch/LCD is damaged (Cracked) and has a destroyed image, no image or touch is not responding properly/ Only Half Display works.', 10, 71),
(546, 'Front Camera', 799, 'FRONT CAMERA.png', 'If the front camera is blank / blurred / Not able to focus or cracked.', 10, 71),
(547, 'Charging', 999, 'CHARGING JACK.png', 'If your device is not charging at all, slow charging or Power down after changing charger also that means there is a fault with charging Kit/Port of your device and require immediate replacement.', 10, 71),
(548, 'Ear Speaker', 599, 'SPEAKER.png', 'If you hear cracking/disturbing /Low Voice or no voi ce at all during a phone call.', 10, 71),
(549, 'Aux Jack', 1699, 'AUX JACK.png', 'AUX Jack is the port on a phone which is used to connect wired headphones or other audio cables to the phone.', 10, 71),
(550, 'Volume', 599, 'RECEIVER.png', '	If Volume is not responding while increa sing and decreasing the volume', 10, 71),
(552, 'Touch And Lcd', 1499, 'SCREEN.png', 'If your device Touch/LCD is damaged (Cracked) and has a destroyed image, no image or touch is not responding properly/ Only Half Display works.', 10, 72),
(553, 'Front Camera', 899, 'FRONT CAMERA.png', 'If the front camera is blank / blurred / Not able to focus or cracked.', 10, 72),
(554, 'Ear Speaker', 999, 'SPEAKER.png', 'If you hear cracking/disturbing /Low Voice or no voi ce at all during a phone call.', 10, 72),
(555, 'Charging', 599, 'CHARGING JACK.png', 'If your device is not charging at all, slow charging or Power down after changing charger also that means there is a fault with charging Kit/Port of your device and require immediate replacement.', 10, 72),
(556, 'Dead', 999, 'PROXIMITY SENSOR.png', 'If your phone is not responding at all (Not able to S witch on)', 10, 72),
(557, 'Volume', 899, 'RECEIVER.png', 'While talking to other person and they are not able t o hear you at all.', 10, 72),
(559, 'Touch And Lcd', 999, 'SCREEN.png', 'If your device Touch/LCD is damaged (Cracked) and has a destroyed image, no image or touch is not responding properly/ Only Half Display works.', 10, 73),
(560, 'Front Camera', 899, 'FRONT CAMERA.png', 'If the front camera is blank / blurred / Not able to focus or cracked.', 10, 73),
(561, 'Charging', 799, 'CHARGING JACK.png', 'If your device is not charging at all, slow charging or Power down after changing charger also that means there is a fault with charging Kit/Port of your device and require immediate replacement.', 10, 73),
(562, 'Ear Speaker', 1699, 'SPEAKER.png', 'If you hear cracking/disturbing /Low Voice or no voi ce at all during a phone call.', 10, 73),
(563, 'Volume', 1699, 'RECEIVER.png', 'If you hear cracking/disturbing /Low Voice or no voi ce at all during a phone call.', 10, 73),
(568, 'Touch And Lcd', 1499, 'SCREEN.png', 'If your device Touch/LCD is damaged (Cracked) and has a destroyed image, no image or touch is not responding properly/ Only Half Display works.', 12, 58),
(569, 'Front Camera', 899, 'FRONT CAMERA.png', 'If the front camera is blank / blurred / Not able to focus or cracked.', 12, 58),
(570, 'Ear Speaker', 999, 'SPEAKER.png', 'While talking to other person and they are not able t o hear you at all.', 12, 58),
(571, 'Volume', 1699, 'RECEIVER.png', 'While talking to other person and they are not able t o hear you at all.', 12, 58),
(572, 'Aux Jack', 1799, 'AUX JACK.png', 'AUX Jack is the port on a phone which is used to connect wired headphones or other audio cables to the phone.', 12, 58),
(573, 'Mic', 399, 'MIC.png', '	While talking to other person and they are not able t o hear you at all.', 12, 58),
(575, 'Touch And Lcd', 899, 'SCREEN.png', 'If your device Touch/LCD is damaged (Cracked) and has a destroyed image, no image or touch is not responding properly/ Only Half Display works.', 12, 59),
(576, 'Front Camera', 999, 'FRONT CAMERA.png', 'If the front camera is blank / blurred / Not able to focus or cracked.', 12, 59),
(577, 'Battery', 449, 'BATTERY.png', 'If battery is drying faster or not holding the charge.', 12, 59),
(578, 'Dead', 599, 'SCREEN.png', 'If your phone is not responding at all (Not able to S witch on.', 12, 59),
(579, 'Volume', 1499, 'RECEIVER.png', 'If you hear cracking/disturbing /Low Voice or no voi ce at all during a phone call.', 12, 59),
(580, 'Loud Speaker', 549, 'SPEAKER.png', 'If you hear cracking/disturbing /Low Voice or no voi ce at all during a phone call.', 12, 59),
(582, 'Touch And Lcd', 1499, 'SCREEN.png', 'If your device Touch/LCD is damaged (Cracked) and has a destroyed image, no image or touch is not responding properly/ Only Half Display works.', 12, 60),
(583, 'Front Camera', 999, 'FRONT CAMERA.png', 'If the front camera is blank / blurred / Not able to focus or cracked.', 12, 60),
(584, 'Charging', 599, 'CHARGING JACK.png', 'If your device is not charging at all, slow charging or Power down after changing charger also that means there is a fault with charging Kit/Port of your device and require immediate replacement.', 12, 60),
(585, 'Ear Speaker', 799, 'RECEIVER.png', 'While talking to other person and they are not able t o hear you at all.', 12, 60),
(586, 'Volume', 799, 'SPEAKER.png', 'While talking to other person and they are not able t o hear you at all.', 12, 60),
(587, 'Mic', 1299, 'MIC.png', 'If you hear cracking/disturbing /Low Voice or no voi ce at all during a phone call.', 12, 60),
(589, 'Touch And Lcd', 1799, 'SCREEN.png', 'If your device Touch/LCD is damaged (Cracked) and has a destroyed image, no image or touch is not responding properly/ Only Half Display works.', 12, 61),
(590, 'Front Camera', 799, 'FRONT CAMERA.png', 'If the front camera is blank / blurred / Not able to focus or cracked.', 12, 61),
(591, 'Charging', 899, 'CHARGING JACK.png', 'If your device is not charging at all, slow charging or Power down after changing charger also that means there is a fault with charging Kit/Port of your device and require immediate replacement.', 12, 61),
(592, 'Ear Speaker', 799, 'RECEIVER.png', 'If you hear cracking/disturbing /Low Voice or no voi ce at all during a phone call.', 12, 61),
(594, 'Touch And Lcd', 799, 'SCREEN.png', 'If your device Touch/LCD is damaged (Cracked) and has a destroyed image, no image or touch is not responding properly/ Only Half Display works.', 13, 101),
(595, 'Front Camera', 599, 'FRONT CAMERA.png', 'If the front camera is blank / blurred / Not able to focus or cracked.', 13, 101),
(596, 'Battry', 1699, 'BATTERY.png', 'If battery is drying faster or not holding the charge.', 13, 101),
(597, 'Charging', 899, 'CHARGING JACK.png', 'If your device is not charging at all, slow charging or Power down after changing charger also that means there is a fault with charging Kit/Port of your device and require immediate replacement.', 13, 101),
(598, 'Ear Speaker', 999, 'SPEAKER.png', 'If you hear cracking/disturbing /Low Voice or no voi ce at all during a phone call.', 13, 101),
(599, 'Mic', 799, 'MIC.png', 'While talking to other person and they are not able t o hear you at all.', 13, 101),
(600, 'Loud Speaker', 1499, 'SPEAKER.png', 'If you hear cracking/disturbing /Low Voice or no voi ce at all during a phone call.', 13, 101),
(601, 'Volume', 1399, 'RECEIVER.png', 'If Volume/Power button is not responding while increa sing and decreasing the volume.', 13, 101),
(602, 'Back Camera', 699, 'BACK CAMERA.png', '	If the back camera is blank / blurred / Not able to focus or cracked.', 13, 101),
(603, 'Aux Jack', 799, 'AUX JACK.png', 'AUX Jack is the port on a phone which is used to connect wired headphones or other audio cables to the phone.', 13, 101),
(605, 'Touch And Lcd', 1499, 'SCREEN.png', 'If your device Touch/LCD is damaged (Cracked) and has a destroyed image, no image or touch is not responding properly/ Only Half Display works.', 13, 102),
(606, 'Front Camera', 799, 'FRONT CAMERA.png', 'If the front camera is blank / blurred / Not able to focus or cracked.', 13, 102),
(607, 'Charging', 699, 'CHARGING JACK.png', 'If your device is not charging at all, slow charging or Power down after changing charger also that means there is a fault with charging Kit/Port of your device and require immediate replacement.', 13, 102),
(608, 'Ear Speaker', 799, 'SPEAKER.png', 'If you hear cracking/disturbing /Low Voice or no voi ce at all during a phone call.', 13, 102),
(609, 'Mic', 999, 'MIC.png', 'While talking to other person and they are not able to hear you at all.', 13, 102),
(610, 'Loud Speaker', 499, 'SPEAKER.png', 'If Volume is not responding while increa sing and decreasing the volume.', 13, 102),
(611, 'Volume', 1199, 'RECEIVER.png', 'If you hear cracking/disturbing /Low Voice or no voice at all during a phone call.', 13, 102),
(612, 'Back Camera', 1199, 'BACK CAMERA.png', 'If the back camera is blank / blurred / Not able to focus or cracked.', 13, 102),
(615, 'Touch And Lcd', 1599, 'SCREEN.png', 'If your device Touch/LCD is damaged (Cracked) and has a destroyed image, no image or touch is not responding properly/ Only Half Display works.', 13, 103),
(616, 'Front Camera', 799, 'FRONT CAMERA.png', 'If the front camera is blank / blurred / Not able to focus or cracked.', 13, 103),
(617, 'Charging', 899, 'CHARGING JACK.png', 'If your device is not charging at all, slow charging or Power down after changing charger also that means there is a fault with charging Kit/Port of your device and require immediate replacement.', 13, 103),
(618, 'Ear Speaker', 999, 'SPEAKER.png', 'If you hear cracking/disturbing /Low Voice or no voi ce at all during a phone call.', 13, 103),
(619, 'Volume', 1299, 'RECEIVER.png', '	If Volume is not responding while increa sing and decreasing the volume.', 13, 103),
(620, 'Mic', 799, 'MIC.png', 'While talking to other person and they are not able t o hear you at all.', 13, 103),
(621, 'Volume', 1149, 'RECEIVER.png', 'If Volume is not responding while increa sing and decreasing the volume', 13, 103),
(623, 'Touch And Lcd', 1499, 'SCREEN.png', 'If your device Touch/LCD is damaged (Cracked) and has a destroyed image, no image or touch is not responding properly/ Only Half Display works.', 13, 104),
(624, 'Front Camera', 999, 'FRONT CAMERA.png', 'If the front camera is blank / blurred / Not able to focus or cracked.', 13, 104),
(625, 'Charging', 599, 'CHARGING JACK.png', 'If your device is not charging at all, slow charging or Power down after changing charger also that means there is a fault with charging Kit/Port of your device and require immediate replacement.', 13, 104),
(626, ' Dead', 999, 'PROXIMITY SENSOR.png', '	If your phone is not responding at all (Not able to S witch on).', 13, 104),
(627, 'Volume', 599, 'RECEIVER.png', 'While talking to other person and they are not able to hear you at all.', 13, 104),
(629, 'Touch And Lcd', 999, 'SCREEN.png', 'If your device Touch/LCD is damaged (Cracked) and has a destroyed image, no image or touch is not responding properly/ Only Half Display works.', 15, 112),
(630, 'Battry', 899, 'BATTERY.png', 'If battery is drying faster or not holding the charge.', 15, 112),
(631, 'Front Camera', 1499, 'FRONT CAMERA.png', 'If the front camera is blank / blurred / Not able to focus or cracked.', 15, 112),
(632, 'Charging', 1399, 'CHARGING JACK.png', 'If your device is not charging at all, slow charging or Power down after changing charger also that means there is a fault with charging Kit/Port of your device and require immediate replacement.', 15, 112),
(633, 'Ear Speaker', 799, 'RECEIVER.png', 'While talking to other person and they are not able t o hear you at all.', 15, 112),
(634, 'Mic', 799, 'MIC.png', 'While talking to other person and they are not able t o hear you at all.', 15, 112),
(635, 'Loud Speaker', 399, 'SPEAKER.png', 'If you can not hear the ringing or music sound.', 15, 112),
(636, 'Volume', 1699, 'RECEIVER.png', 'If Volume/Power button is not responding while increa sing and decreasing the volume.', 15, 112),
(637, 'Back Camera', 999, 'BACK CAMERA.png', 'If the back camera is blank / blurred / Not able to focus or cracked.', 15, 112),
(638, 'Dead', 2499, 'SCREEN.png', 'If your phone is not responding at all (Not able to S witch on).', 15, 112);
INSERT INTO `service` (`service_id`, `service_name`, `service_price`, `service_img`, `service_desc`, `com_id`, `mod_id`) VALUES
(640, 'Touch And Lcd', 999, 'SCREEN.png', 'If your device Touch/LCD is damaged (Cracked) and has a destroyed image, no image or touch is not responding properly/ Only Half Display works.', 15, 113),
(641, 'Battry', 899, 'BATTERY.png', 'If battery is drying faster or not holding the charge.', 15, 113),
(642, 'Front Camera', 599, 'FRONT CAMERA.png', 'If the front camera is blank / blurred / Not able to focus or cracked.', 15, 113),
(643, 'Charging', 799, 'CHARGING JACK.png', 'If your device is not charging at all, slow charging or Power down after changing charger also that means there is a fault with charging Kit/Port of your device and require immediate replacement.', 15, 113),
(644, 'Ear Speaker', 1199, 'RECEIVER.png', 'If you hear cracking/disturbing /Low Voice or no voi ce at all during a phone call.', 15, 113),
(645, 'Volume', 699, 'SPEAKER.png', 'While talking to other person and they are not able to hear you at all.', 15, 113),
(646, 'Aux Jack', 499, 'AUX JACK.png', 'AUX Jack is the port on a phone which is used to connect wired headphones or other audio cables to the phone.', 15, 113),
(647, 'Loud Speaker', 1499, 'SPEAKER.png', 'If you can not hear the ringing or music sound.', 15, 113),
(648, 'Back Camera', 999, 'BACK CAMERA.png', 'If the back camera is blank / blurred / Not able to focus or cracked.', 15, 113),
(649, 'Dead', 799, 'SCREEN.png', 'If your phone is not responding at all (Not able to S witch on).', 15, 113),
(651, 'Touch And Lcd', 899, 'SCREEN.png', 'If your device Touch/LCD is damaged (Cracked) and has a destroyed image, no image or touch is not responding properly/ Only Half Display works.', 15, 114),
(652, 'Front Camera', 999, 'FRONT CAMERA.png', 'If the front camera is blank / blurred / Not able to focus or cracked.', 15, 114),
(653, 'Charging', 999, 'CHARGING JACK.png', 'If your device is not charging at all, slow charging or Power down after changing charger also that means there is a fault with charging Kit/Port of your device and require immediate replacement.', 15, 114),
(654, 'Aux Jack', 999, 'AUX JACK.png', 'AUX Jack is the port on a phone which is used to connect wired headphones or other audio cables to the phone.', 15, 114),
(655, 'Mic', 699, 'MIC.png', 'While talking to other person and they are not able t o hear you at all.', 15, 114),
(656, 'Ear Speaker', 899, 'SPEAKER.png', 'If you can not hear the ringing or music sound.', 15, 114),
(658, 'Touch And Lcd', 899, 'SCREEN.png', 'If your device Touch/LCD is damaged (Cracked) and has a destroyed image, no image or touch is not responding properly/ Only Half Display works.', 15, 115),
(659, 'Battery', 799, 'BATTERY.png', 'If battery is drying faster or not holding the charge.', 15, 115),
(660, 'Ear Speaker', 999, 'SPEAKER.png', 'While talking to other person and they are not able t o hear you at all.', 15, 115),
(661, 'Mic', 499, 'MIC.png', 'While talking to other person and they are not able t o hear you at all.', 15, 115),
(662, 'Volume', 799, 'RECEIVER.png', 'If you can not hear the ringing or music sound.', 15, 115),
(663, 'font-camera', 899, 'FRONT CAMERA.png', 'If the front camera is blank / blurred / Not able to focus or cracked.', 15, 115),
(664, 'Dead', 1499, 'SCREEN.png', 'If your phone is not responding at all (Not able to S witch on).', 15, 115),
(666, 'Touch And Lcd', 899, 'SCREEN.png', 'If your device Touch/LCD is damaged (Cracked) and has a destroyed image, no image or touch is not responding properly/ Only Half Display works.', 16, 89),
(667, 'Charging', 899, 'CHARGING JACK.png', 'If your device is not charging at all, slow charging or Power down after changing charger also that means there is a fault with charging Kit/Port of your device and require immediate replacement.', 16, 89),
(668, 'Front Camera', 999, 'FRONT CAMERA.png', 'If the front camera is blank / blurred / Not able to focus or cracked.', 16, 89),
(669, 'Ear Speaker', 899, 'SPEAKER.png', 'If you hear cracking/disturbing /Low Voice or no voi ce at all during a phone call.', 16, 89),
(670, 'Aux Jack', 1499, 'AUX JACK.png', 'AUX Jack is the port on a phone which is used to connect wired headphones or other audio cables to the phone.', 16, 89),
(671, 'Battery', 899, 'BATTERY.png', 'If battery is drying faster or not holding the charge.', 16, 89),
(672, 'Mic', 1699, 'MIC.png', 'While talking to other person and they are not able t o hear you at all.', 16, 89),
(673, 'volume', 599, 'SPEAKER.png', 'If Volume/Power button is not responding while increa sing and decreasing the volume', 16, 89),
(675, 'Touch And Lcd', 1499, 'SCREEN.png', 'If your device Touch/LCD is damaged (Cracked) and has a destroyed image, no image or touch is not responding properly/ Only Half Display works.', 16, 90),
(676, 'Front Camera', 1499, 'FRONT CAMERA.png', 'If the front camera is blank / blurred / Not able to focus or cracked.', 16, 90),
(677, 'Charging', 1699, 'CHARGING JACK.png', 'If your device is not charging at all, slow charging or Power down after changing charger also that means there is a fault with charging Kit/Port of your device and require immediate replacement.', 16, 90),
(678, 'Ear Speaker', 799, 'RECEIVER.png', 'If you hear cracking/disturbing /Low Voice or no voi ce at all during a phone call.', 16, 90),
(679, 'Volume', 999, 'SPEAKER.png', 'If Volume/Power button is not responding while increa sing and decreasing the volume.', 16, 90),
(680, 'Mic', 899, 'MIC.png', 'While talking to other person and they are not able t o hear you at all.', 16, 90),
(681, 'Battery', 899, 'BATTERY.png', 'If battery is drying faster or not holding the charge.', 16, 90),
(682, 'Aux Jack', 1499, 'AUX JACK.png', 'AUX Jack is the port on a phone which is used to connect wired headphones or other audio cables to the phone.', 16, 90),
(684, 'Touch And Lcd', 1499, 'SCREEN.png', 'If your device Touch/LCD is damaged (Cracked) and has a destroyed image, no image or touch is not responding properly/ Only Half Display works.', 16, 91),
(685, 'Front Camera', 999, 'FRONT CAMERA.png', 'If the front camera is blank / blurred / Not able to focus or cracked.', 16, 91),
(686, 'Battery', 899, 'BATTERY.png', 'If battery is drying faster or not holding the charge.', 16, 91),
(687, 'Charging', 899, 'CHARGING JACK.png', 'If your device is not charging at all, slow charging or Power down after changing charger also that means there is a fault with charging Kit/Port of your device and require immediate replacement.', 16, 91),
(688, 'Ear Speaker', 799, 'SPEAKER.png', 'If you hear cracking/disturbing /Low Voice or no voi ce at all during a phone call.', 16, 91),
(690, 'Back Camera', 799, 'FRONT CAMERA.png', 'If the front camera is blank / blurred / Not able to focus or cracked.', 16, 91),
(691, 'Aux Jack', 799, 'AUX JACK.png', 'AUX Jack is the port on a phone which is used to connect wired headphones or other audio cables to the phone.', 16, 91),
(692, 'Dead', 699, 'PROXIMITY SENSOR.png', 'If your phone is not responding at all (Not able to S witch on).', 16, 91),
(694, 'Touch And Lcd', 899, 'SCREEN.png', 'If your device Touch/LCD is damaged (Cracked) and has a destroyed image, no image or touch is not responding properly/ Only Half Display works.', 16, 92),
(695, 'Front Camera', 1499, 'FRONT CAMERA.png', 'If the front camera is blank / blurred / Not able to focus or cracked.', 16, 92),
(696, 'Charging', 999, 'CHARGING JACK.png', 'If your device is not charging at all, slow charging or Power down after changing charger also that means there is a fault with charging Kit/Port of your device and require immediate replacement.', 16, 92),
(697, 'Battery', 899, 'BATTERY.png', '	If battery is drying faster or not holding the charge.', 16, 92),
(698, 'Ear Speaker', 1299, 'SPEAKER.png', 'If you hear cracking/disturbing /Low Voice or no voi ce at all during a phone call.', 16, 92),
(699, 'Mic', 699, 'MIC.png', 'While talking to other person and they are not able t o hear you at all.', 16, 92),
(700, 'Dead', 499, 'PROXIMITY SENSOR.png', 'If your phone is not responding at all (Not able to S witch on)', 16, 92),
(701, ' Aux Jack', 1099, 'AUX JACK.png', 'AUX Jack is the port on a phone which is used to connect wired headphones or other audio cables to the phone.', 16, 92),
(702, 'Touch And Lcd', 1499, 'SCREEN.png', 'If your device Touch/LCD is damaged (Cracked) and has a destroyed image, no image or touch is not responding properly/ Only Half Display works.', 18, 82),
(703, 'Front Camera', 1099, 'FRONT CAMERA.png', 'If the front camera is blank / blurred / Not able to focus or cracked.', 18, 82),
(704, 'Charging', 599, 'CHARGING JACK.png', 'If your device is not charging at all, slow charging or Power down after changing charger also that means there is a fault with charging Kit/Port of your device and require immediate replacement.', 18, 82),
(705, 'Battery', 899, 'BATTERY.png', 'If battery is drying faster or not holding the charge.', 18, 82),
(706, 'Ear Speaker', 999, 'SPEAKER.png', 'If you hear cracking/disturbing /Low Voice or no voi ce at all during a phone call.', 18, 82),
(707, 'Mic', 999, 'MIC.png', 'While talking to other person and they are not able t o hear you at all.', 18, 82),
(708, 'Loud Speaker', 1399, 'SPEAKER.png', 'If you can not hear the ringing or music sound.', 18, 82),
(709, ' Back Camera', 899, 'BACK CAMERA.png', 'If the Back camera is blank / blurred / Not able to focus or cracked.', 18, 82),
(710, 'Aux Jack', 899, 'AUX JACK.png', 'AUX Jack is the port on a phone which is used to connect wired headphones or other audio cables to the phone.', 18, 82),
(711, 'Touch And Lcd', 1499, 'SCREEN.png', 'If your device Touch/LCD is damaged (Cracked) and has a destroyed image, no image or touch is not responding properly/ Only Half Display works.', 18, 83),
(712, 'Front Camera', 999, 'FRONT CAMERA.png', 'If the front camera is blank / blurred / Not able to focus or cracked.', 18, 83),
(713, 'Battery', 999, 'BATTERY.png', 'If battery is drying faster or not holding the charge.', 18, 83),
(714, 'Charging', 699, 'CHARGING JACK.png', 'If your device is not charging at all, slow charging or Power down after changing charger also that means there is a fault with charging Kit/Port of your device and require immediate replacement.', 18, 83),
(715, 'Ear Speaker', 699, 'SPEAKER.png', 'If you hear cracking/disturbing /Low Voice or no voi ce at all during a phone call.', 18, 83),
(716, 'mic', 1099, 'MIC.png', 'While talking to other person and they are not able to hear you at all.', 18, 83),
(717, ' Volume', 1099, 'RECEIVER.png', 'If Volume/Power button is not responding while increa sing and decreasing the volume.', 18, 83),
(718, 'Dead', 599, 'PROXIMITY SENSOR.png', 'If your phone is not responding at all (Not able to S witch on).', 18, 83),
(719, 'Aux Jack', 1099, 'AUX JACK.png', 'AUX Jack is the port on a phone which is used to connect wired headphones or other audio cables to the phone.', 18, 83),
(720, 'Touch And Lcd', 1599, 'SCREEN.png', 'If your device Touch/LCD is damaged (Cracked) and has a destroyed image, no image or touch is not responding properly/ Only Half Display works.', 18, 84),
(721, 'Front Camera', 1199, 'FRONT CAMERA.png', 'If the front camera is blank / blurred / Not able to focus or cracked.', 18, 84),
(723, 'Battery', 1499, 'BATTERY.png', 'If battery is drying faster or not holding the charge.', 18, 84),
(724, 'Charging', 799, 'CHARGING JACK.png', 'If your device is not charging at all, slow charging or Power down after changing charger also that means there is a fault with charging Kit/Port of your device and require immediate replacement.', 18, 84),
(725, 'Mic', 899, 'MIC.png', 'While talking to other person and they are not able to hear you at all', 18, 84),
(726, 'Volume', 999, 'SPEAKER.png', 'If your phone is not responding at all (Not able to S witch on).', 18, 84),
(727, 'Aux Jack', 1299, 'AUX JACK.png', 'AUX Jack is the port on a phone which is used to connect wired headphones or other audio cables to the phone.', 18, 84),
(728, 'Loud Speaker', 999, 'SPEAKER.png', 'If you can not hear the ringing or music sound.', 18, 84),
(729, 'Touch And Lcd', 1499, 'SCREEN.png', 'If your device Touch/LCD is damaged (Cracked) and has a destroyed image, no image or touch is not responding properly/ Only Half Display works.', 18, 85),
(730, 'Battery', 999, 'BATTERY.png', 'If battery is drying faster or not holding the charge.', 18, 85),
(731, 'Front Camera', 799, 'FRONT CAMERA.png', 'If the front camera is blank / blurred / Not able to focus or cracked.', 18, 85),
(732, 'Ear Speaker', 1499, 'SPEAKER.png', 'If you hear cracking/disturbing /Low Voice or no voi ce at all during a phone call.', 18, 85),
(733, 'mic', 899, 'MIC.png', 'While talking to other person and they are not able t o hear you at all.', 18, 85),
(734, ' Dead', 599, 'PROXIMITY SENSOR.png', 'If your phone is not responding at all (Not able to S witch on).', 18, 85),
(735, 'Back Camera', 999, 'BACK CAMERA.png', 'If the Back camera is blank / blurred / Not able to focus or cracked.', 18, 85),
(736, 'Aux Jack', 799, 'AUX JACK.png', 'AUX Jack is the port on a phone which is used to connect wired headphones or other audio cables to the phone.', 18, 85),
(737, 'Touch And Lcd', 1499, 'SCREEN.png', 'If your device Touch/LCD is damaged (Cracked) and has a destroyed image, no image or touch is not responding properly/ Only Half Display works.', 19, 125),
(738, 'Front Camera', 899, 'FRONT CAMERA.png', 'If the front camera is blank / blurred / Not able to focus or cracked.', 19, 125),
(739, 'Charging', 799, 'CHARGING JACK.png', 'If your device is not charging at all, slow charging or Power down after changing charger also that means there is a fault with charging Kit/Port of your device and require immediate replacement.', 19, 125),
(740, 'Battery', 1099, 'BATTERY.png', 'If battery is drying faster or not holding the charge.', 19, 125),
(741, 'Mic', 899, 'MIC.png', 'While talking to other person and they are not able t o hear you at all.', 19, 125),
(742, 'Loud Speaker', 799, 'SPEAKER.png', 'If you can not hear the ringing or music sound.', 19, 125),
(743, 'Volume', 1299, 'RECEIVER.png', 'If Volume/Power button is not responding while increa sing and decreasing the volume', 19, 125),
(744, 'Dead', 699, 'PROXIMITY SENSOR.png', 'If your phone is not responding at all (Not able to S witch on).', 19, 125),
(745, 'Aux Jack', 1399, 'AUX JACK.png', 'AUX Jack is the port on a phone which is used to connect wired headphones or other audio cables to the phone.', 19, 125),
(746, 'Touch And Lcd', 1499, 'SCREEN.png', 'If your device Touch/LCD is damaged (Cracked) and has a destroyed image, no image or touch is not responding properly/ Only Half Display works.', 19, 126),
(747, 'Front Camera', 899, 'FRONT CAMERA.png', 'If the front camera is blank / blurred / Not able to focus or cracked.', 19, 126),
(748, 'Charging', 599, 'CHARGING JACK.png', 'If your device is not charging at all, slow charging or Power down after changing charger also that means there is a fault with charging Kit/Port of your device and require immediate replacement.', 19, 126),
(749, 'Ear Speaker', 899, 'SPEAKER.png', 'While talking to other person and they are not able to hear you at all.', 19, 126),
(750, 'mic', 1299, 'MIC.png', 'While talking to other person and they are not able t o hear you at all', 19, 126),
(751, 'Volume', 1199, 'RECEIVER.png', 'If Volume/Power button is not responding while increa sing and decreasing the volume.', 19, 126),
(752, 'Back Camera', 899, 'BACK CAMERA.png', 'If the back camera is blank / blurred / Not able to focus or cracked.', 19, 126),
(753, 'Dead', 1399, 'PROXIMITY SENSOR.png', 'If your phone is not responding at all (Not able to S witch on).', 19, 126),
(754, 'Loud Speaker', 799, 'SPEAKER.png', 'If you can not hear the ringing or music sound.', 19, 126),
(755, 'Touch And Lcd', 1499, 'SCREEN.png', 'If your device Touch/LCD is damaged (Cracked) and has a destroyed image, no image or touch is not responding properly/ Only Half Display works.', 19, 127),
(756, 'Front Camera', 1399, 'FRONT CAMERA.png', 'If the front camera is blank / blurred / Not able to focus or cracked.', 19, 127),
(757, 'Battery', 899, 'BATTERY.png', 'If the front camera is blank / blurred / Not able to focus or cracked.', 19, 127),
(758, 'Charging', 899, 'CHARGING JACK.png', 'If your device is not charging at all, slow charging or Power down after changing charger also that means there is a fault with charging Kit/Port of your device and require immediate replacement.', 19, 127),
(759, 'Volume', 899, 'RECEIVER.png', 'While talking to other person and they are not able to hear you at all.', 19, 127),
(760, 'Ear Speaker', 999, 'SPEAKER.png', 'If you hear cracking/disturbing /Low Voice or no voi ce at all during a phone call.', 19, 127),
(761, 'Dead', 1399, 'PROXIMITY SENSOR.png', 'If your phone is not responding at all (Not able to S witch on).', 19, 127),
(762, 'Back Camera', 699, 'BACK CAMERA.png', 'If the back camera is blank / blurred / Not able to focus or cracked.', 19, 127),
(763, 'Touch And Lcd', 1499, 'SCREEN.png', 'If your device Touch/LCD is damaged (Cracked) and has a destroyed image, no image or touch is not responding properly/ Only Half Display works.', 19, 128),
(764, 'Front Camera', 899, 'FRONT CAMERA.png', 'If the front camera is blank / blurred / Not able to focus or cracked.', 19, 128),
(765, 'Charging', 799, 'CHARGING JACK.png', 'If your device is not charging at all, slow charging or Power down after changing charger also that means there is a fault with charging Kit/Port of your device and require immediate replacement.', 19, 128),
(766, 'Battery', 999, 'BATTERY.png', 'If battery is drying faster or not holding the charge.', 19, 128),
(767, 'Mic', 899, 'MIC.png', 'While talking to other person and they are not able t o hear you at all.', 19, 128),
(768, 'Loud Speaker', 999, 'SPEAKER.png', 'If you can not hear the ringing or music sound.', 19, 128),
(769, 'Volume', 899, 'RECEIVER.png', 'If Volume/Power button is not responding while increa sing and decreasing the volume.', 19, 128),
(770, 'Touch And Lcd', 1499, 'SCREEN.png', 'If your device Touch/LCD is damaged (Cracked) and has a destroyed image, no image or touch is not responding properly/ Only Half Display works.', 21, 137),
(771, 'Front Camera', 899, 'FRONT CAMERA.png', 'If the front camera is blank / blurred / Not able to focus or cracked.', 21, 137),
(772, 'Charging', 899, 'CHARGING JACK.png', 'If your device is not charging at all, slow charging or Power down after changing charger also that means there is a fault with charging Kit/Port of your device and require immediate replacement.', 21, 137),
(773, 'Ear Speaker', 899, 'SPEAKER.png', 'While talking to other person and they are not able to hear you at all.', 21, 139),
(774, 'Battery', 799, 'BATTERY.png', 'If your device is not charging at all, slow charging or Power down after changing charger also that means there is a fault with charging Kit/Port of your device and require immediate replacement.', 21, 137),
(776, 'Mic', 899, 'MIC.png', 'While talking to other person and they are not able t o hear you at all.', 21, 137),
(777, 'Ear Speaker', 899, 'SPEAKER.png', 'If you hear cracking/disturbing /Low Voice or no voi ce at all during a phone call.', 21, 137),
(778, 'Loud Speaker', 999, 'SPEAKER.png', 'While talking to other person and they are not able to hear you at all.', 21, 137),
(779, 'Touch And Lcd', 1499, 'SCREEN.png', 'If your device Touch/LCD is damaged (Cracked) and has a destroyed image, no image or touch is not responding properly/ Only Half Display works.', 21, 139),
(780, 'Front Camera', 999, 'FRONT CAMERA.png', 'If the front camera is blank / blurred / Not able to focus or cracked.', 21, 139);

-- --------------------------------------------------------

--
-- Table structure for table `serviceprovider`
--

CREATE TABLE `serviceprovider` (
  `sp_id` int(20) NOT NULL,
  `sp_name` varchar(30) DEFAULT NULL,
  `sp_email` varchar(50) DEFAULT NULL,
  `sp_mob_num` varchar(11) DEFAULT NULL,
  `sp_address` varchar(255) DEFAULT NULL,
  `sp_gender` varchar(10) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL,
  `status` enum('Block','Unblock') NOT NULL DEFAULT 'Unblock',
  `sp_img` varchar(255) NOT NULL,
  `created_date` date DEFAULT NULL,
  `updated_date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `serviceprovider`
--

INSERT INTO `serviceprovider` (`sp_id`, `sp_name`, `sp_email`, `sp_mob_num`, `sp_address`, `sp_gender`, `password`, `status`, `sp_img`, `created_date`, `updated_date`) VALUES
(1, 'divya rathod', 'divyarathod2292002@gmail.com', '9909879421', 'hari-coloni', 'female', '202cb962ac59075b964b07152d234b70', 'Unblock', '', NULL, NULL),
(13, 'priyank satani ', 'priyanksatani1234@gmail.com', '7894561230', 'Mumbai ', 'male', '202cb962ac59075b964b07152d234b70', 'Unblock', 'IMG_3759.jpg', NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `add_cart`
--
ALTER TABLE `add_cart`
  ADD PRIMARY KEY (`cart_id`),
  ADD KEY `cust_id` (`cust_id`),
  ADD KEY `service_id` (`service_id`);

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `booking`
--
ALTER TABLE `booking`
  ADD PRIMARY KEY (`booking_id`),
  ADD KEY `cust_id` (`cust_id`),
  ADD KEY `service_id` (`service_id`);

--
-- Indexes for table `company`
--
ALTER TABLE `company`
  ADD PRIMARY KEY (`com_id`);

--
-- Indexes for table `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`contact_id`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`cust_id`);

--
-- Indexes for table `feedback`
--
ALTER TABLE `feedback`
  ADD PRIMARY KEY (`feedback_id`);

--
-- Indexes for table `location`
--
ALTER TABLE `location`
  ADD PRIMARY KEY (`location_id`);

--
-- Indexes for table `model`
--
ALTER TABLE `model`
  ADD PRIMARY KEY (`mod_id`),
  ADD KEY `com_id` (`com_id`);

--
-- Indexes for table `service`
--
ALTER TABLE `service`
  ADD PRIMARY KEY (`service_id`),
  ADD KEY `com_id` (`com_id`),
  ADD KEY `mod_id` (`mod_id`);

--
-- Indexes for table `serviceprovider`
--
ALTER TABLE `serviceprovider`
  ADD PRIMARY KEY (`sp_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `add_cart`
--
ALTER TABLE `add_cart`
  MODIFY `cart_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=64;

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `admin_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `booking`
--
ALTER TABLE `booking`
  MODIFY `booking_id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;

--
-- AUTO_INCREMENT for table `company`
--
ALTER TABLE `company`
  MODIFY `com_id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `contact`
--
ALTER TABLE `contact`
  MODIFY `contact_id` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `cust_id` int(25) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `feedback`
--
ALTER TABLE `feedback`
  MODIFY `feedback_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `location`
--
ALTER TABLE `location`
  MODIFY `location_id` int(15) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `model`
--
ALTER TABLE `model`
  MODIFY `mod_id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=146;

--
-- AUTO_INCREMENT for table `service`
--
ALTER TABLE `service`
  MODIFY `service_id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=781;

--
-- AUTO_INCREMENT for table `serviceprovider`
--
ALTER TABLE `serviceprovider`
  MODIFY `sp_id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `add_cart`
--
ALTER TABLE `add_cart`
  ADD CONSTRAINT `add_cart_ibfk_1` FOREIGN KEY (`cust_id`) REFERENCES `customer` (`cust_id`),
  ADD CONSTRAINT `add_cart_ibfk_2` FOREIGN KEY (`service_id`) REFERENCES `service` (`service_id`);

--
-- Constraints for table `booking`
--
ALTER TABLE `booking`
  ADD CONSTRAINT `booking_ibfk_1` FOREIGN KEY (`cust_id`) REFERENCES `customer` (`cust_id`),
  ADD CONSTRAINT `booking_ibfk_2` FOREIGN KEY (`service_id`) REFERENCES `service` (`service_id`);

--
-- Constraints for table `model`
--
ALTER TABLE `model`
  ADD CONSTRAINT `model_ibfk_1` FOREIGN KEY (`com_id`) REFERENCES `company` (`com_id`);

--
-- Constraints for table `service`
--
ALTER TABLE `service`
  ADD CONSTRAINT `service_ibfk_1` FOREIGN KEY (`com_id`) REFERENCES `company` (`com_id`),
  ADD CONSTRAINT `service_ibfk_2` FOREIGN KEY (`mod_id`) REFERENCES `model` (`mod_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
