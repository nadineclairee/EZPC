-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 14, 2023 at 01:10 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `electricks`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `user_id` int(11) NOT NULL,
  `firstname` varchar(50) NOT NULL,
  `lastname` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`user_id`, `firstname`, `lastname`, `email`, `username`, `password`) VALUES
(3, 'EZPC', 'ADMIN', 'admin@gmail.com', 'admin', 'a1Bz20ydqelm8m1wql21232f297a57a5a743894a0e4a801fc3');

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `cat_id` int(11) NOT NULL,
  `cat_name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`cat_id`, `cat_name`) VALUES
(1, 'Processor'),
(2, 'Graphics card'),
(3, 'Motherboard');

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `cust_id` int(11) NOT NULL,
  `firstname` varchar(50) NOT NULL,
  `middlename` varchar(50) NOT NULL,
  `lastname` varchar(50) NOT NULL,
  `address` varchar(300) NOT NULL,
  `email` varchar(50) NOT NULL,
  `contact` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `logs`
--

CREATE TABLE `logs` (
  `log_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `action` varchar(100) NOT NULL,
  `date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `logs`
--

INSERT INTO `logs` (`log_id`, `user_id`, `action`, `date`) VALUES
(1, 3, 'added a new product 23 of Radeon RX 7900', '2023-12-13 22:53:39'),
(2, 3, '(Administrator) has logged in the system at ', '2023-12-13 23:00:18'),
(3, 3, '(Administrator) has logged in the system at ', '2023-12-13 23:05:17'),
(4, 11, 'has logged in the system at ', '2023-12-13 23:26:06'),
(5, 3, '(Administrator) has logged in the system at ', '2023-12-13 23:27:13'),
(6, 3, 'added a new product 100 of Radeon RX 7900', '2023-12-13 23:31:02'),
(7, 3, 'added a new product 100 of Radeon RX 7900', '2023-12-13 23:32:23'),
(8, 3, 'added a new product 100 of Radeon RX 7900', '2023-12-13 23:33:56'),
(9, 3, 'added a new product 250 of RX 6900', '2023-12-13 23:38:57'),
(10, 11, 'has logged in the system at ', '2023-12-13 23:39:45'),
(11, 11, 'has logged in the system at ', '2023-12-13 23:40:24'),
(12, 3, '(Administrator) has logged in the system at ', '2023-12-13 23:40:41'),
(13, 11, 'has logged in the system at ', '2023-12-14 01:41:39'),
(14, 11, 'has logged in the system at ', '2023-12-14 02:24:31'),
(15, 13, 'has logged in the system at ', '2023-12-14 02:53:00'),
(16, 18, 'has logged in the system at ', '2023-12-14 02:57:26'),
(17, 19, 'has logged in the system at ', '2023-12-14 02:59:35'),
(18, 19, 'has logged in the system at ', '2023-12-14 03:02:26'),
(19, 18, 'has logged in the system at ', '2023-12-14 03:02:47'),
(20, 18, 'has logged in the system at ', '2023-12-14 03:04:45'),
(21, 18, 'has logged in the system at ', '2023-12-14 03:08:18'),
(22, 18, 'has logged in the system at ', '2023-12-14 03:22:40'),
(23, 3, '(Administrator) has logged in the system at ', '2023-12-14 04:36:17'),
(24, 3, 'added 100 of RX 6900', '2023-12-14 04:37:47'),
(25, 11, 'has logged in the system at ', '2023-12-14 04:40:39'),
(26, 3, '(Administrator) has logged in the system at ', '2023-12-14 05:23:12'),
(27, 18, 'has logged in the system at ', '2023-12-14 06:18:55'),
(28, 18, 'has logged in the system at ', '2023-12-14 06:35:28'),
(29, 3, '(Administrator) has logged in the system at ', '2023-12-14 06:40:44'),
(30, 3, '(Administrator) has logged in the system at ', '2023-12-14 06:43:03'),
(31, 3, 'added 23 of Radeon RX 7900', '2023-12-14 06:55:00'),
(32, 3, '(Administrator) has logged in the system at ', '2023-12-14 07:03:51'),
(33, 3, '(Administrator) has logged in the system at ', '2023-12-14 07:05:13'),
(34, 18, 'has logged in the system at ', '2023-12-14 07:17:41'),
(35, 3, '(Administrator) has logged in the system at ', '2023-12-14 07:18:53'),
(36, 3, '(Administrator) has logged in the system at ', '2023-12-14 07:21:05'),
(37, 18, 'has logged in the system at ', '2023-12-14 07:28:10'),
(38, 18, 'has logged in the system at ', '2023-12-14 07:43:04'),
(39, 11, 'has logged in the system at ', '2023-12-14 08:01:30'),
(40, 11, 'has logged in the system at ', '2023-12-14 08:05:41'),
(41, 3, '(Administrator) has logged in the system at ', '2023-12-14 08:06:20'),
(42, 3, '(Administrator) has logged in the system at ', '2023-12-14 08:06:43'),
(43, 3, '(Administrator) has logged in the system at ', '2023-12-14 08:11:13'),
(44, 11, 'has logged in the system at ', '2023-12-14 08:13:32'),
(45, 18, 'has logged in the system at ', '2023-12-14 17:19:25'),
(46, 18, 'has logged in the system at ', '2023-12-14 17:20:31'),
(47, 18, 'has logged in the system at ', '2023-12-14 17:39:13'),
(48, 11, 'has logged in the system at ', '2023-12-14 17:57:29'),
(49, 21, 'has logged in the system at ', '2023-12-14 18:04:45'),
(50, 3, '(Administrator) has logged in the system at ', '2023-12-14 18:05:42'),
(51, 21, 'has logged in the system at ', '2023-12-14 18:12:29'),
(52, 3, '(Administrator) has logged in the system at ', '2023-12-14 18:12:53'),
(53, 18, 'has logged in the system at ', '2023-12-14 18:50:58'),
(54, 3, '(Administrator) has logged in the system at ', '2023-12-14 18:51:22'),
(55, 3, '(Administrator) has logged in the system at ', '2023-12-14 18:56:23'),
(56, 18, 'has logged in the system at ', '2023-12-14 18:57:22'),
(57, 18, 'has logged in the system at ', '2023-12-14 18:57:51'),
(58, 3, '(Administrator) has logged in the system at ', '2023-12-14 18:58:07'),
(59, 11, 'has logged in the system at ', '2023-12-14 19:03:39'),
(60, 3, '(Administrator) has logged in the system at ', '2023-12-14 19:04:19'),
(61, 3, '(Administrator) has logged in the system at ', '2023-12-14 19:04:55'),
(62, 21, 'has logged in the system at ', '2023-12-14 19:05:26'),
(63, 3, '(Administrator) has logged in the system at ', '2023-12-14 19:06:49'),
(64, 3, 'added a new product 150 of Ryzen 9 5950x', '2023-12-14 19:13:43'),
(65, 3, 'added a new product 200 of AMD Ryzen 5 7600X', '2023-12-14 19:16:47'),
(66, 3, 'added a new product 150 of MSI MAG B550 TOMAHAWK', '2023-12-14 19:21:01'),
(67, 3, 'added a new product 100 of X670E AORUS PRO X', '2023-12-14 19:24:19'),
(68, 3, '(Administrator) has logged in the system at ', '2023-12-14 19:25:00'),
(69, 11, 'has logged in the system at ', '2023-12-14 19:25:14'),
(70, 3, '(Administrator) has logged in the system at ', '2023-12-14 19:25:24'),
(71, 3, 'added a new product 150 of RX6600 XT', '2023-12-14 19:28:34'),
(72, 3, 'added a new product 100 of Fatal1ty X470 Gaming K4', '2023-12-14 19:33:28'),
(73, 3, 'added a new product 120 of AMD Radeon RX 6700 XT', '2023-12-14 19:39:27'),
(74, 3, 'added a new product 110 of AMD Radeon RX Vega 64', '2023-12-14 19:42:41'),
(75, 3, 'added a new product 20 of AMD Ryzen Threadripper PRO 7965WX', '2023-12-14 19:46:20'),
(76, 3, 'added a new product 160 of AMD Ryzen 7 1700', '2023-12-14 19:51:22'),
(77, 3, '(Administrator) has logged in the system at ', '2023-12-14 20:02:19');

-- --------------------------------------------------------

--
-- Table structure for table `order`
--

CREATE TABLE `order` (
  `order_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `track_num` int(11) NOT NULL,
  `firstname` varchar(50) NOT NULL,
  `middlename` varchar(50) NOT NULL,
  `lastname` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `contact` varchar(50) NOT NULL,
  `shipping_add` varchar(500) NOT NULL,
  `order_date` datetime NOT NULL,
  `status` varchar(100) NOT NULL,
  `totalprice` decimal(10,2) NOT NULL,
  `tax` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `order`
--

INSERT INTO `order` (`order_id`, `user_id`, `track_num`, `firstname`, `middlename`, `lastname`, `email`, `contact`, `shipping_add`, `order_date`, `status`, `totalprice`, `tax`) VALUES
(33, 11, 111011, 'randomname', 'randomname', 'randomname', 'email@email', '232332', '328 hsdhaw st Caloocan City', '2023-12-14 05:04:45', 'Pending', 55000.00, 6600.00),
(34, 11, 111011, 'randomname', 'randomname', 'randomname', 'email@email', '232332', '328 hsdhaw st Las Pinas City', '2023-12-14 05:05:22', 'Pending', 45000.00, 5400.00),
(36, 11, 111011, 'randomname', 'randomname', 'randomname', 'email@email', '232332', '328 hsdhaw st Las Pinas City', '2023-12-14 05:08:29', 'Pending', 45000.00, 5400.00),
(38, 11, 111011, 'randomname', 'randomname', 'randomname', 'email@email', '232332', '328 hsdhaw st Caloocan City', '2023-12-14 05:17:42', 'Pending', 135000.00, 16200.00),
(39, 11, 111011, 'randomname', 'randomname', 'randomname', 'email@email', '232332', '328 hsdhaw st Las Pinas City', '2023-12-14 05:20:34', 'Delivered', 315000.00, 37800.00),
(40, 11, 111011, 'randomname', 'randomname', 'randomname', 'email@email', '232332', '328 hsdhaw st Caloocan City', '2023-12-14 05:22:51', 'On going', 55000.00, 6600.00),
(42, 18, 181018, 'dsaasd', 'sadads', 'asdasd', 'we@gmail.com', '232332', '232323 Caloocan City', '2023-12-14 07:18:13', 'Pending', 360000.00, 43200.00),
(43, 18, 181018, 'dsaasd', 'sadads', 'asdasd', 'we@gmail.com', '232332', '232323 Manila City', '2023-12-14 17:46:43', 'Pending', 275000.00, 33000.00),
(44, 18, 181018, 'dsaasd', 'sadads', 'asdasd', 'we@gmail.com', '232332', '232323 Manila City', '2023-12-14 17:49:13', 'Pending', 275000.00, 33000.00),
(46, 11, 111011, 'randomname', 'randomname', 'randomname', 'email@email', '232332', '328 hsdhaw st Las Pinas City', '2023-12-14 18:01:36', 'Pending', 330000.00, 39600.00),
(48, 11, 111011, 'randomname', 'randomname', 'randomname', 'email@email', '232332', '328 hsdhaw st Makati City', '2023-12-14 19:04:06', 'Pending', 270000.00, 32400.00);

-- --------------------------------------------------------

--
-- Table structure for table `order_details`
--

CREATE TABLE `order_details` (
  `order_details_id` int(11) NOT NULL,
  `prod_id` int(11) NOT NULL,
  `prod_qty` int(11) NOT NULL,
  `total_qty` varchar(30) NOT NULL,
  `total` decimal(10,2) NOT NULL,
  `user_id` int(11) NOT NULL,
  `order_id` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `order_details`
--

INSERT INTO `order_details` (`order_details_id`, `prod_id`, `prod_qty`, `total_qty`, `total`, `user_id`, `order_id`) VALUES
(53, 13, 1, '338', 434.00, 6, '1'),
(54, 13, 3, '335', 1302.00, 6, '1'),
(55, 13, 1, '334', 434.00, 6, '1'),
(56, 11, 1, '149', 125.00, 6, '1'),
(57, 12, 1, '397', 155.00, 6, '1'),
(58, 11, 1, '149', 125.00, 6, '1'),
(59, 13, 1, '329', 434.00, 6, '1'),
(60, 13, 1, '328', 434.00, 6, '1'),
(61, 13, 1, '327', 434.00, 6, '1'),
(62, 12, 2, '395', 310.00, 6, '1'),
(63, 13, 2, '325', 868.00, 6, '1'),
(64, 13, 1, '324', 434.00, 6, '1'),
(65, 11, 1, '148', 125.00, 6, '1'),
(66, 13, 1, '323', 434.00, 6, '1'),
(67, 11, 1, '147', 125.00, 6, '1'),
(68, 12, 1, '394', 155.00, 6, '1'),
(69, 12, 1, '393', 155.00, 6, '1'),
(70, 13, 1, '322', 434.00, 7, '1'),
(71, 11, 1, '146', 125.00, 7, '1'),
(72, 13, 1, '321', 434.00, 7, '1'),
(73, 13, 1, '320', 434.00, 7, '1'),
(74, 13, 1, '319', 434.00, 7, '1'),
(75, 13, 1, '318', 434.00, 6, '1'),
(76, 13, 3, '315', 1302.00, 6, '1'),
(77, 13, 1, '314', 434.00, 6, '1'),
(78, 13, 1, '313', 434.00, 6, '1'),
(79, 14, 1, '233', 760.00, 6, '1'),
(80, 13, 1, '311', 434.00, 6, '1'),
(81, 13, 2, '309', 868.00, 6, '1'),
(83, 14, 1, '233', 760.00, 6, '1'),
(84, 13, 1, '308', 434.00, 6, '1'),
(85, 15, 1, '455', 455.00, 6, '1'),
(86, 11, 1, '145', 125.00, 6, '1'),
(87, 13, 1, '306', 434.00, 6, '1'),
(88, 13, 1, '304', 434.00, 6, '1'),
(89, 13, 1, '303', 434.00, 6, '1'),
(90, 13, 1, '302', 434.00, 6, '1'),
(91, 14, 1, '232', 760.00, 6, '1'),
(92, 13, 1, '300', 434.00, 6, '1'),
(93, 14, 10, '222', 7600.00, 8, '1'),
(94, 13, 200, '0', 86800.00, 8, '1'),
(95, 13, 300, '0', 130200.00, 8, '1'),
(96, 11, 1, '144', 125.00, 6, '1'),
(97, 11, 144, '0', 18000.00, 6, '1'),
(98, 15, 1, '', 455.00, 5, ''),
(99, 15, 1, '', 455.00, 6, ''),
(100, 16, 1, '', 1500.00, 6, ''),
(101, 12, 1, '392', 155.00, 8, '1'),
(102, 12, 1, '391', 155.00, 8, '1'),
(103, 15, 1, '', 455.00, 8, ''),
(104, 11, 10, '22', 1250.00, 10, '1'),
(105, 17, 2, '21', 30000.00, 11, '1'),
(106, 21, 6, '247', 270000.00, 3, ''),
(107, 21, 3, '247', 135000.00, 11, '1'),
(109, 21, 1, '246', 45000.00, 18, '1'),
(110, 21, 1, '246', 45000.00, 18, '1'),
(111, 20, 1, '99', 55000.00, 18, '1'),
(112, 21, 1, '245', 45000.00, 18, '1'),
(113, 21, 1, '244', 45000.00, 18, '1'),
(114, 21, 1, '243', 45000.00, 18, '1'),
(115, 21, 1, '242', 45000.00, 18, '1'),
(116, 21, 1, '241', 45000.00, 18, '1'),
(117, 20, 1, '99', 55000.00, 18, '1'),
(118, 21, 1, '240', 45000.00, 18, '1'),
(119, 21, 10, '230', 450000.00, 18, '1'),
(120, 21, 1, '229', 45000.00, 18, '1'),
(121, 21, 1, '228', 45000.00, 18, '1'),
(122, 21, 4, '224', 180000.00, 18, '1'),
(123, 21, 1, '223', 45000.00, 18, '1'),
(124, 20, 1, '98', 55000.00, 18, '1'),
(125, 21, 1, '222', 45000.00, 18, '1'),
(126, 21, 1, '221', 45000.00, 18, '1'),
(127, 21, 1, '220', 45000.00, 18, '1'),
(128, 20, 1, '97', 55000.00, 18, '1'),
(129, 21, 220, '0', 9900000.00, 18, '1'),
(130, 20, 3, '94', 165000.00, 18, '1'),
(131, 21, 1, '99', 45000.00, 11, '1'),
(132, 21, 1, '98', 45000.00, 11, '1'),
(133, 20, 1, '93', 55000.00, 11, '1'),
(134, 20, 1, '92', 55000.00, 11, '1'),
(135, 21, 1, '97', 45000.00, 11, '1'),
(136, 21, 4, '93', 180000.00, 11, '1'),
(137, 20, 3, '89', 165000.00, 11, '1'),
(138, 21, 1, '92', 45000.00, 11, '1'),
(139, 21, 1, '91', 45000.00, 11, '1'),
(140, 20, 1, '88', 55000.00, 11, '1'),
(141, 21, 1, '90', 45000.00, 11, '1'),
(142, 21, 3, '87', 135000.00, 11, '1'),
(143, 21, 1, '86', 45000.00, 11, '1'),
(144, 21, 3, '83', 135000.00, 11, '1'),
(145, 21, 3, '80', 135000.00, 11, '1'),
(146, 21, 7, '73', 315000.00, 11, '1'),
(147, 20, 1, '87', 55000.00, 11, '1'),
(148, 20, 1, '86', 55000.00, 18, '1'),
(149, 21, 8, '65', 360000.00, 18, '1'),
(150, 20, 1, '108', 55000.00, 18, '1'),
(151, 20, 4, '108', 220000.00, 18, '1'),
(152, 20, 5, '103', 275000.00, 18, '1'),
(154, 20, 17, '86', 935000.00, 11, '1'),
(155, 20, 6, '80', 330000.00, 11, '1'),
(156, 20, 9, '71', 495000.00, 21, '1'),
(157, 21, 6, '59', 270000.00, 11, '1'),
(158, 20, 6, '65', 330000.00, 21, '1');

-- --------------------------------------------------------

--
-- Table structure for table `payment`
--

CREATE TABLE `payment` (
  `payment_id` int(11) NOT NULL,
  `cust_id` int(11) NOT NULL,
  `sales_id` int(11) NOT NULL,
  `payment` decimal(10,2) NOT NULL,
  `payment_date` datetime NOT NULL,
  `user_id` int(11) NOT NULL,
  `due` decimal(10,2) NOT NULL,
  `status` varchar(50) NOT NULL,
  `or_no` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `prod_id` int(11) NOT NULL,
  `prod_name` varchar(50) NOT NULL,
  `prod_desc` varchar(500) NOT NULL,
  `prod_qty` int(11) NOT NULL,
  `prod_cost` decimal(10,2) NOT NULL,
  `prod_price` decimal(10,2) NOT NULL,
  `category` varchar(100) NOT NULL,
  `supplier` varchar(100) NOT NULL,
  `prod_serial` varchar(50) NOT NULL,
  `prod_pic1` varchar(500) NOT NULL,
  `prod_pic2` varchar(500) NOT NULL,
  `prod_pic3` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`prod_id`, `prod_name`, `prod_desc`, `prod_qty`, `prod_cost`, `prod_price`, `category`, `supplier`, `prod_serial`, `prod_pic1`, `prod_pic2`, `prod_pic3`) VALUES
(20, 'Radeon RX 7900', ' Compute Units 84  <br>  Boost Frequency Up to 2400  <br> MHz Game Frequency 2000 MHz   <br> Ray Accelerators 84   <br> AI Accelerators 168  <br>  Peak Pixel Fill-Rate Up to 460 GP/s   <br>  Peak Texture Fill-Rate Up to 810 GT/s   <br>  Peak Half Precision Compute Performance 103 TFLOPs   <br>  Peak Single Precision Compute  Performance 52 TFLOPs ROPs 192   <br> Stream Processors 5376   <br>  Transistor Count 58 B', 65, 55000.00, 55000.00, 'Graphics card', 'Alcatroz, Inc.', 'SN9876-5432-ABC-XYZ', 'Radeon RX 7900 XT.png', 'blogroll-1670634380707.jpg', 'AMD-Press-12.jpg'),
(21, 'RX 6900', 'Compute Units: 80<br> Boost Frequency: Up to 2250 MHz<br> Game Frequency: 2015 MHz<br> Ray Accelerators: 80<br> Peak Pixel Fill-Rate: Up to 288 GP/s<br> Peak Texture Fill-Rate: Up to 720 GT/s<br> Peak Half Precision Compute Performance: 46.08 TFLOPs<br> Peak Single Precision Compute Performance: 23.04 TFLOPs<br> ROPs: 128<br> Stream Processors: 5120<br> Texture Units: 320<br> Transistor Count: 26.8 B', 59, 45000.00, 45000.00, 'Graphics card', 'Alcatroz, Inc.', 'ABCD-9876-EFGH-5432', 'Radeon RX 6900 XT.png', 'radeon.webp', '2020-10-28_21-26-38.png'),
(22, 'Ryzen 9 5950x', 'Platform: Boxed Processor<br> Product Family: AMD Ryzen™ Processors<br> Product Line: AMD Ryzen™ 9 Desktop Processors<br> # of CPU Cores: 16<br> # of Threads: 32<br> Max. Boost Clock: Up to 4.9GHz<br> Base Clock: 3.4GHz<br> L2 Cache: 8MB<br> L3 Cache: 64MB<br> Default TDP: 105W<br> Processor Technology for CPU Cores: TSMC 7nm FinFET<br> Unlocked for Overclocking: Yes<br> CPU Socket: AM4<br> Thermal Solution (PIB): Not included<br> Recommended Cooler: Liquid cooler recommended for optimal perform', 150, 25000.00, 25000.00, 'Processor', 'QuantumForge Technologies Inc.', 'SN7890-1234-DEF-GHI', 'amd-ryzen-9-5950x-3.4ghz-processor-removebg-preview.png', 'amd-ryzen-9-5950x-processor-600px-v2.jpg', 'AMD-Ryzen-9-5950X-3.4-GHz-16-Core-AM4-Deskto-Processor.jpg'),
(23, 'AMD Ryzen 5 7600X', 'Regional Availability: Global<br> Platform: Desktop<br> Product Family: AMD Ryzen™ Processors<br> Product Line: AMD Ryzen™ 5 Processors<br> # of CPU Cores: 6<br> # of Threads: 12<br> Max. Boost Clock: Up to 5.3GHz<br> Base Clock: 4.7GHz<br> L1 Cache: 384KB<br> L2 Cache: 6MB<br> L3 Cache: 32MB<br> Default TDP: 105W<br> Processor Technology for CPU Cores: TSMC 5nm FinFET<br> Unlocked for Overclocking: Yes<br> CPU Socket: AM5<br> Thermal Solution (PIB): Not included<br> Recommended Cooler: Premium ', 200, 13000.00, 13000.00, 'Processor', 'QUEZELCO', 'SN4567-8901-JKL-MNO', 'Ryzen57600X.jpg', '2022-09-25-image-6.jpg', '316674bb-22a4-4a1a-8a23-f9065a2b0751.jpg'),
(24, 'MSI MAG B550 TOMAHAWK', 'SOCKET: AM4<br> CHIPSET: AMD B550 Chipset<br> MEMORY CHANNEL: Dual<br> DIMM SLOTS: 4<br> MAX MEMORY (GB): 128<br> PCI-E X16: 2<br> PCI-E X1: 2<br> SATAIII: 6<br> M.2 SLOT: 2<br> RAID: 0/1/10<br> USB 3.2 PORTS (FRONT): 1(Gen 1, Type C), 2(Gen 1, Type A)<br> USB 3.2 PORTS (REAR): 1(Gen 2, Type C), 1(Gen 2, Type A), 2(Gen 1, Type A)<br> USB 2.0 PORTS (FRONT): 4<br> USB 2.0 PORTS (REAR): 2<br> AUDIO PORTS (REAR): 5+ Optical S/PDIF (Realtek® ALC1200 / ALC1220P Codec)<br> DISPLAYPORT: 1<br> HDMI: 1<br', 150, 10000.00, 10000.00, 'Motherboard', 'Alcatroz, Inc.', 'QWE456-ZXC123-SNP789-PLM890', 'MSI MAG B550 TOMAHAWK.png', 'b550-TOMAHAWK-lighting_img.jpg', '81Nw1r00bL._AC_SL1500_.jpg'),
(25, 'X670E AORUS PRO X', 'AMD Socket AM5?Supports AMD Ryzen™ 7000 Series Processors<br> Digital twin 16+2+2 phases VRM solution<br> Dual Channel DDR5?4*DIMMs with AMD EXPO™ & Intel® XMP Memory Module Support<br> PCIe UD Slot X? PCIe 5.0 x16 slot with 10X strength for graphics card<br> EZ-Latch Click?M.2 heatsinks with screwless design<br> EZ-Latch Plus?M.2 slots with Quick Release & Screwless Design<br> Sensor Panel Link?Onboard video port for hassle-free in-chassis panel setup<br> UC BIOS?User-Centred intuitive UX with ', 100, 20000.00, 2000.00, 'Motherboard', 'Alcatroz, Inc.', 'LX9Y-74ZK-6D8T2', 'X670E AORUS PRO X.png', 'x670e-aorus-pro-x-btz-ph-5.webp', 'x670e-aorus-pro-x-btz-ph-6.webp'),
(26, 'RX6600 XT', 'Compute Units: 32<br> Boost Frequency: Up to 2589 MHz<br> Game Frequency: 2359 MHz<br> Ray Accelerators: 32<br> Peak Pixel Fill-Rate: Up to 165.7 GP/s<br> Peak Texture Fill-Rate: Up to 331.4 GT/s<br> Peak Half Precision Compute Performance: 21.21 TFLOPs<br> Peak Single Precision Compute Performance: 10.6 TFLOPs<br> ROPs: 64<br> Stream Processors: 2048<br> Texture Units: 128<br> Transistor Count: 11.1 B<br>', 150, 15000.00, 15000.00, 'Graphics card', 'QuantumForge Technologies Inc.', 'SX7K-93YB-5Z6D-8T1', 'RX6600 XT.png', 'gsmarena_004.jpg', 'AMD_Radeon_RX6600XT_01.webp'),
(27, 'Fatal1ty X470 Gaming K4', 'Supports AMD AM4 Socket Ryzen™ 2000, 3000, 4000 G-Series, 5000 and 5000 G-Series Desktop Processors<br> Supports DDR4 3466+ (OC)<br> 2 PCIe 3.0 x16, 4 PCIe 2.0 x1<br> NVIDIA® Quad SLI™, AMD Quad CrossFireX™<br> Graphics Output: HDMI<br> 7.1 CH HD Audio (Realtek ALC1220 Audio Codec), Supports Creative Sound Blaster™ Cinema 5<br> 6 SATA3, 1 Ultra M.2 (PCIe Gen3 x4 & SATA3), 1 M.2 (PCIe Gen2 x2 & SATA3)<br> 2 USB 3.1 Gen2 (rear Type-A+C), 10 USB 3.1 Gen1 (4 Front, 6 Rear)<br> Intel® Gigabit LAN<br>', 100, 20000.00, 20000.00, 'Motherboard', 'Alcatroz, Inc.', 'S7K4-X8Y2-D6T9-Z1', 'asrock_x470_gaming_k4_6.jpg', '13-157-836-V80.jpg', 'Fatal1ty X470 Gaming K4_mobile.jpg'),
(28, 'AMD Radeon RX 6700 XT', 'Compute Units: 40<br> Base Frequency: 2321 MHz<br> Boost Frequency: Up to 2581 MHz<br> Game Frequency: 2424 MHz<br> Ray Accelerators: 40<br> Peak Pixel Fill-Rate: Up to 165.2 GP/s<br> Peak Texture Fill-Rate: Up to 413 GT/s<br> Peak Half Precision Compute Performance: 26.43 TFLOPs<br> Peak Single Precision Compute Performance: 13.21 TFLOPs<br> ROPs: 64<br> Stream Processors: 2560<br> Texture Units: 160<br> Transistor Count: 17.2 B<br>', 120, 15000.00, 15000.00, 'Graphics card', 'QuantumForge Technologies Inc.', 'S3M8-L2N7-B6F9-P1', 'Png.png', '700302-amd-radeon-6700xt-1260x709.webp', 'AMD-Radeon-RX-6700-XT.webp'),
(29, 'AMD Radeon RX Vega 64', 'Graphics Engine: AMD Radeon RX Vega 64<br> Compute Units: 64<br> Base Frequency: 1247 MHz<br> Boost Frequency: Up to 1546 MHz<br> Peak Pixel Fill-Rate: Up to 98.8 GP/s<br> Peak Texture Fill-Rate: Up to 387.8 GT/s<br> Peak Half Precision Compute Performance: 25.07 TFLOPs<br> Peak Single Precision Compute Performance: 12.54 TFLOPs<br> ROPs: 64<br> Stream Processors: 4096<br> Texture Units: 256<br> Memory: 8GB HBM2<br> Memory Interface: 2048-bit<br> Memory Frequency: 945 MHz<br> Memory Bandwidth: 4', 110, 20000.00, 20000.00, 'Graphics card', 'QuantumForge Technologies Inc.', 'RXV64SN-9182-GJKL', '18752.png', 'title.jpg', 'AMD-Radeon-RX-Vega-64-Family.png'),
(30, 'AMD Ryzen Threadripper PRO 7965WX', 'Product Line: AMD Ryzen™ Threadripper PRO Processors<br> Model: 7965WX<br> # of CPU Cores: 24<br> # of Threads: 48<br> Max Boost Clock: Up to 4.2GHz<br> Base Clock: 2.7GHz<br> L2 Cache: 12MB<br> L3 Cache: 64MB<br> Default TDP: 280W<br> Processor Technology for CPU Cores: 7nm FinFET<br> Unlocked for Overclocking: Yes<br> CPU Socket: sWRX8<br> Thermal Solution (PIB): Not included<br> Max. Operating Temperature (Tjmax): 68°C<br> Launch Date: 07/14/2020<br> *OS Support: Windows 10 - 64-Bit Edition<b', 20, 120000.00, 12000.00, 'Processor', 'QUEZELCO', 'SNX789-YZ456-ABC123-DEF456', 'banner-4.png', 'threadripper-pro.webp', '51myLcDfemL._AC_UL600_SR600,600_.jpg'),
(31, 'AMD Ryzen 7 1700', 'Product Line: AMD Ryzen™ 7 Processors<br> Model: Ryzen™ 7 1700<br> # of CPU Cores: 8<br> # of Threads: 16<br> Base Clock: 3.0GHz<br> Max Boost Clock: Up to 3.7GHz<br> L2 Cache: 4MB<br> L3 Cache: 16MB<br> Default TDP: 65W<br> Processor Technology for CPU Cores: 14nm FinFET<br> Unlocked for Overclocking: Yes<br> CPU Socket: AM4<br> Thermal Solution (PIB): Wraith Spire (no LED)<br> Max. Operating Temperature (Tjmax): 95°C<br> Launch Date: 03/02/2017<br> *OS Support: Windows 10 - 64-Bit Edition<br> ', 160, 14000.00, 14000.00, 'Processor', 'QUEZELCO', 'R7X9Y-2Z4A6-B8C1D3', '9581958823986-removebg-preview.png', 'amd-ryzen-7-1700.webp', 'untitled-1.png');

-- --------------------------------------------------------

--
-- Table structure for table `sales`
--

CREATE TABLE `sales` (
  `sales_id` int(11) NOT NULL,
  `cust_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `amount_due` decimal(10,2) NOT NULL,
  `date_added` datetime NOT NULL,
  `mode_of_payment` varchar(100) NOT NULL,
  `total` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sales_details`
--

CREATE TABLE `sales_details` (
  `sales_details_id` int(11) NOT NULL,
  `sales_id` int(11) NOT NULL,
  `prod_id` int(11) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `qty` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `supplier`
--

CREATE TABLE `supplier` (
  `supp_id` int(11) NOT NULL,
  `supp_name` varchar(100) NOT NULL,
  `supp_address` varchar(200) NOT NULL,
  `supp_contact` varchar(50) NOT NULL,
  `supp_email` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `supplier`
--

INSERT INTO `supplier` (`supp_id`, `supp_name`, `supp_address`, `supp_contact`, `supp_email`) VALUES
(2, 'QUEZELCO', 'Infanta, Quezon', '45643534567879', 'emal'),
(4, 'Alcatroz, Inc.', 'Sta. Mesa Manila', '9435398928', 'none'),
(5, 'QuantumForge Technologies Inc.', 'Manila, Phils.', '09123283282', 'forgetech@email');

-- --------------------------------------------------------

--
-- Table structure for table `temp_trans`
--

CREATE TABLE `temp_trans` (
  `temp_trans_id` int(11) NOT NULL,
  `prod_id` int(11) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `qty` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `transactions`
--

CREATE TABLE `transactions` (
  `trans_id` int(11) NOT NULL,
  `or_no` int(11) NOT NULL,
  `prod_serial` varchar(50) NOT NULL,
  `prod_name` varchar(100) NOT NULL,
  `trans_qty` int(11) NOT NULL,
  `ppi` decimal(10,0) NOT NULL,
  `cust_fullname` varchar(100) NOT NULL,
  `transdate` datetime NOT NULL,
  `tax` decimal(10,2) NOT NULL,
  `total` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int(11) NOT NULL,
  `firstname` varchar(50) NOT NULL,
  `middlename` varchar(50) NOT NULL,
  `lastname` varchar(50) NOT NULL,
  `address` varchar(300) NOT NULL,
  `email` varchar(50) NOT NULL,
  `contact` varchar(50) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `firstname`, `middlename`, `lastname`, `address`, `email`, `contact`, `username`, `password`) VALUES
(9, 'hahaha', 'hahaha', 'hahaha', 'saddsasdadsa', 'we@gmail.com', '2132', '323223', 'a1Bz20ydqelm8m1wql827ccb0eea8a706c4c34a16891f84e7b'),
(11, 'randomname', 'randomname', 'randomname', '328 hsdhaw st', 'email@email', '232332', 'user', 'a1Bz20ydqelm8m1wqlee11cbb19052e40b07aac0ca060c23ee'),
(12, '3223', '3223', '3232', 'eadsdsads', 'we@gmail.com', '32232323', 'user500', 'a1Bz20ydqelm8m1wqlee11cbb19052e40b07aac0ca060c23ee'),
(13, 'hahaha', 'hahaha', '2232323', 'wqeqwe', 'we@gmail.com', '232323', 'user300', 'a1Bz20ydqelm8m1wqlee11cbb19052e40b07aac0ca060c23ee'),
(14, 'dsadas', 'dsaads', 'saddsa', '322332', 'we@gmail.com', '323223', 'user100', 'a1Bz20ydqelm8m1wqlee11cbb19052e40b07aac0ca060c23ee'),
(15, '3223', '3232', '2332', 'wqeqwe', '3232', '2323', 'user000', 'a1Bz20ydqelm8m1wqlee11cbb19052e40b07aac0ca060c23ee'),
(16, '3223', '3223', '3223', '233232', 'we@gmail.com', '2332', 'user400', 'a1Bz20ydqelm8m1wqlee11cbb19052e40b07aac0ca060c23ee'),
(18, 'dsaasd', 'sadads', 'asdasd', '232323', 'we@gmail.com', '232332', '900', 'a1Bz20ydqelm8m1wqlee11cbb19052e40b07aac0ca060c23ee'),
(19, '3232', '3232', '3232', '323232', '3232', '3232', '123', 'a1Bz20ydqelm8m1wqlee11cbb19052e40b07aac0ca060c23ee'),
(20, 'Mochi', 'Pos', 'Los', '323232sdasadsad', '233232@#3232', '32232', '0419', 'a1Bz20ydqelm8m1wqlee11cbb19052e40b07aac0ca060c23ee'),
(21, 'Mochi', 'HASHSAH', 'Mochi', 'sdsd2332', 'asds@dsds', '323223', 'mochi', 'a1Bz20ydqelm8m1wqlee11cbb19052e40b07aac0ca060c23ee');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`cat_id`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`cust_id`);

--
-- Indexes for table `logs`
--
ALTER TABLE `logs`
  ADD PRIMARY KEY (`log_id`);

--
-- Indexes for table `order`
--
ALTER TABLE `order`
  ADD PRIMARY KEY (`order_id`);

--
-- Indexes for table `order_details`
--
ALTER TABLE `order_details`
  ADD PRIMARY KEY (`order_details_id`);

--
-- Indexes for table `payment`
--
ALTER TABLE `payment`
  ADD PRIMARY KEY (`payment_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`prod_id`);

--
-- Indexes for table `sales`
--
ALTER TABLE `sales`
  ADD PRIMARY KEY (`sales_id`);

--
-- Indexes for table `sales_details`
--
ALTER TABLE `sales_details`
  ADD PRIMARY KEY (`sales_details_id`);

--
-- Indexes for table `supplier`
--
ALTER TABLE `supplier`
  ADD PRIMARY KEY (`supp_id`);

--
-- Indexes for table `temp_trans`
--
ALTER TABLE `temp_trans`
  ADD PRIMARY KEY (`temp_trans_id`);

--
-- Indexes for table `transactions`
--
ALTER TABLE `transactions`
  ADD PRIMARY KEY (`trans_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `cat_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `cust_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `logs`
--
ALTER TABLE `logs`
  MODIFY `log_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=78;

--
-- AUTO_INCREMENT for table `order`
--
ALTER TABLE `order`
  MODIFY `order_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;

--
-- AUTO_INCREMENT for table `order_details`
--
ALTER TABLE `order_details`
  MODIFY `order_details_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=159;

--
-- AUTO_INCREMENT for table `payment`
--
ALTER TABLE `payment`
  MODIFY `payment_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `prod_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `sales`
--
ALTER TABLE `sales`
  MODIFY `sales_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sales_details`
--
ALTER TABLE `sales_details`
  MODIFY `sales_details_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `supplier`
--
ALTER TABLE `supplier`
  MODIFY `supp_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `temp_trans`
--
ALTER TABLE `temp_trans`
  MODIFY `temp_trans_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `transactions`
--
ALTER TABLE `transactions`
  MODIFY `trans_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
