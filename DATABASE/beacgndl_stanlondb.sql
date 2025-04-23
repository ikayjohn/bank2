-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Apr 16, 2024 at 04:15 AM
-- Server version: 10.6.17-MariaDB-cll-lve-log
-- PHP Version: 7.4.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `beacgndl_stanlondb`
--

-- --------------------------------------------------------

--
-- Table structure for table `accounts`
--

CREATE TABLE `accounts` (
  `id` int(11) NOT NULL,
  `firstname` varchar(200) DEFAULT NULL,
  `lastname` varchar(200) DEFAULT NULL,
  `acct_image` varchar(255) DEFAULT 'user.png',
  `internetid` varchar(50) DEFAULT NULL,
  `current_acctno` varchar(255) DEFAULT NULL,
  `savings_acctno` varchar(255) DEFAULT NULL,
  `acct_currency` varchar(55) DEFAULT '$',
  `savings_balance` varchar(255) DEFAULT '0',
  `loan_balance` varchar(255) DEFAULT '0',
  `current_balance` varchar(255) DEFAULT '0',
  `acct_status` varchar(50) DEFAULT 'hold' COMMENT 'active, hold',
  `kyc_status` int(11) DEFAULT 0 COMMENT '1=Approved, 2=processing, 0=Pending',
  `kyc_pending` int(11) NOT NULL DEFAULT 1 COMMENT '1 = approved, 0 = pending',
  `phoneverify` int(11) NOT NULL DEFAULT 1 COMMENT '1 = verified, 0 = unverified',
  `acct_email` varchar(200) DEFAULT NULL,
  `acct_phone` varchar(20) DEFAULT NULL,
  `acct_gender` text DEFAULT NULL,
  `acct_dob` varchar(255) DEFAULT NULL,
  `state` text DEFAULT NULL,
  `acct_ssn` varchar(255) DEFAULT NULL,
  `acct_address` text DEFAULT NULL,
  `acct_password` text DEFAULT NULL,
  `resettoken` varchar(50) DEFAULT NULL,
  `resettokenexp` date DEFAULT NULL,
  `billing_code` int(11) DEFAULT 0,
  `transfer` int(11) DEFAULT 1,
  `idfront` varchar(255) DEFAULT NULL,
  `idBack` varchar(255) DEFAULT NULL,
  `id_no` varchar(255) DEFAULT NULL,
  `proofaddress` varchar(255) DEFAULT NULL,
  `acct_pin` varchar(6) DEFAULT '123456',
  `acct_otp` varchar(6) DEFAULT '876545',
  `manager_name` varchar(255) DEFAULT NULL,
  `manager_email` varchar(255) DEFAULT NULL,
  `createdAt` datetime NOT NULL DEFAULT current_timestamp(),
  `developer_name` varchar(255) DEFAULT '''rrrrrrr''',
  `Developer_phone` varchar(255) DEFAULT '''2222222222'''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `accounts`
--

INSERT INTO `accounts` (`id`, `firstname`, `lastname`, `acct_image`, `internetid`, `current_acctno`, `savings_acctno`, `acct_currency`, `savings_balance`, `loan_balance`, `current_balance`, `acct_status`, `kyc_status`, `kyc_pending`, `phoneverify`, `acct_email`, `acct_phone`, `acct_gender`, `acct_dob`, `state`, `acct_ssn`, `acct_address`, `acct_password`, `resettoken`, `resettokenexp`, `billing_code`, `transfer`, `idfront`, `idBack`, `id_no`, `proofaddress`, `acct_pin`, `acct_otp`, `manager_name`, `manager_email`, `createdAt`, `developer_name`, `Developer_phone`) VALUES
(9, 'bryte', 'david', '1202201822man.jpg', '1202201822', '36378158839', '67392204462', '$', '37559', '0', '1633', 'active', 0, 1, 1, 'brytedree@gmail.com', '23452345234', '', '', '', NULL, '', '$2y$10$VqHzDlGDb/F9btAmlPqN7e9Xa6efN12CbyEgqdJwqaAIcwmRIh1hu', NULL, NULL, 1, 1, NULL, NULL, NULL, NULL, '1234', '876545', NULL, NULL, '2024-04-08 07:11:31', '\'Ofofonobs\'', '\'2348114313795\''),
(10, 'Arthurzqza', 'Gee', 'user.png', '1202807633', '36378138192', '67392992473', '$', '0', '0', '0', 'active', 0, 1, 1, 'Arthurzqza007@gmail.com', '44884993', NULL, NULL, NULL, NULL, NULL, '$2y$10$xiJ.mRR1tA2qYR5.aw2eeufiu0PuhUPzW0cOrgZA4NGm/T0zI4c22', NULL, NULL, 0, 1, NULL, NULL, NULL, NULL, '123456', '876545', NULL, NULL, '2024-04-11 16:45:09', '\'rrrrrrr\'', '\'2222222222\''),
(11, 'Food', 'Rice', 'user.png', '1202280407', '36378201328', '67392962284', '$', '0', '0', '0', 'active', 0, 1, 1, 'tituskingsley1999@gmail.com', '123456789', NULL, NULL, NULL, NULL, NULL, '$2y$10$fYzkDZYszhml.3lSz3406OAlIJW/QOZCrHExzivDIWeqmRLc1UXB6', NULL, NULL, 0, 1, NULL, NULL, NULL, NULL, '111111', '876545', NULL, NULL, '2024-04-12 03:40:40', '\'rrrrrrr\'', '\'2222222222\''),
(12, 'Nurudeen', 'Musa', 'user.png', '1202315195', '36378150265', '67392161980', '$', '0', '0', '0', 'active', 0, 1, 1, 'musanurudeen224@gmail.com', '+2347042051420', NULL, NULL, NULL, NULL, NULL, '$2y$10$INza6BNOILFMJjqrFsxmyu7PeEEWp0MM.tysNf1HZHVprrJSigfDS', NULL, NULL, 0, 1, NULL, NULL, NULL, NULL, '832394', '876545', NULL, NULL, '2024-04-12 06:34:39', '\'rrrrrrr\'', '\'2222222222\''),
(13, 'William ', 'Schultz', 'user.png', '1202292871', '36378238173', '67392312293', '$', '0', '0', '0', 'active', 0, 1, 1, 'williamshultz94@gmail.com', '+2347080153904', NULL, NULL, NULL, NULL, NULL, '$2y$10$5H8vWUdj16D5vRoM4Vl09OiqHvyDFWTPB7CvnlT8krnwERiX...ea', NULL, NULL, 0, 1, NULL, NULL, NULL, NULL, '432107', '876545', NULL, NULL, '2024-04-13 02:43:21', '\'rrrrrrr\'', '\'2222222222\''),
(14, 'Tim', 'Williams ', 'user.png', '1202311551', '36378522490', '67392133093', '$', '0', '0', '0', 'active', 0, 1, 1, 'Bms.cardozo@yahoo.com', '+19786084151', NULL, NULL, NULL, NULL, NULL, '$2y$10$EfCfzdEOKyju6RFHY4D62uUOz5yQh3rKBGY8secj4fF.6fCpPyfCC', NULL, NULL, 0, 1, NULL, NULL, NULL, NULL, '186320', '876545', NULL, NULL, '2024-04-13 04:23:29', '\'rrrrrrr\'', '\'2222222222\''),
(15, 'Miracle Lawrence ', 'Mbaogu', 'user.png', '1202249764', '36378380509', '67392300794', '$', '0', '0', '0', 'active', 0, 1, 1, 'miraclelawrencembaogu@gmail.com', '+2347089807010', NULL, NULL, NULL, NULL, NULL, '$2y$10$rSxCASbB8AghrpDdOfFwGueZK5zoKJImamZmAQS3qAguOZjdL3kpe', NULL, NULL, 0, 1, NULL, NULL, NULL, NULL, '441115', '876545', NULL, NULL, '2024-04-13 05:06:38', '\'rrrrrrr\'', '\'2222222222\''),
(16, 'Jose ', 'Garcia ', 'user.png', '1202130989', '36378267174', '67392254842', '$', '0', '0', '0', 'active', 0, 1, 1, 'josenono619@gmail.com', '+15779843345', NULL, NULL, NULL, NULL, NULL, '$2y$10$Lxqt7El.r3bMeCrPpqVHf.bCXhOKmB.7JRFE8fGNLKi042GFwhpIm', NULL, NULL, 0, 1, NULL, NULL, NULL, NULL, '196996', '876545', NULL, NULL, '2024-04-13 11:00:47', '\'rrrrrrr\'', '\'2222222222\''),
(17, 'Lauren', 'Stanford ', 'user.png', '1202294834', '36378108180', '67392618851', '$', '0', '0', '0', 'active', 0, 1, 1, 'stanfordmendy9@gmail.com', '12345678', NULL, NULL, NULL, NULL, NULL, '$2y$10$njvm4npGiT2rFArcy.GtEeTfqwlRvBGAui8/bIP1K7iVTFRCiiMbS', NULL, NULL, 0, 1, NULL, NULL, NULL, NULL, '211730', '876545', NULL, NULL, '2024-04-15 17:51:33', '\'rrrrrrr\'', '\'2222222222\'');

-- --------------------------------------------------------

--
-- Table structure for table `activities`
--

CREATE TABLE `activities` (
  `id` int(11) NOT NULL,
  `internetid` varchar(255) NOT NULL,
  `details` varchar(255) NOT NULL,
  `createdAt` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `activities`
--

INSERT INTO `activities` (`id`, `internetid`, `details`, `createdAt`) VALUES
(1, '1202201822', 'Login into dashboard', '2024-04-08 09:34:51'),
(2, '1202201822', 'Login into dashboard', '2024-04-08 10:43:25'),
(3, '1202201822', 'Login into dashboard', '2024-04-08 10:48:19'),
(4, '1202201822', 'Login into dashboard', '2024-04-08 11:06:07'),
(5, '1202201822', 'Login into dashboard', '2024-04-08 11:06:21'),
(6, '1202201822', 'New Wire Transfer', '2024-04-08 11:07:31'),
(7, '1202201822', 'Login into dashboard', '2024-04-10 04:22:11'),
(8, '1202201822', 'Login into dashboard', '2024-04-10 04:24:03'),
(9, '1202201822', 'New Wire Transfer', '2024-04-10 04:26:27'),
(10, '1202201822', 'Login into dashboard', '2024-04-10 04:33:24'),
(11, '1202201822', 'New Wire Transfer', '2024-04-10 04:36:02'),
(12, '1202807633', 'New Registration', '2024-04-11 16:45:09'),
(13, '1202201822', 'Login into dashboard', '2024-04-12 02:06:06'),
(14, '1202201822', 'Login into dashboard', '2024-04-12 02:21:30'),
(15, '1202201822', 'Login into dashboard', '2024-04-12 02:23:09'),
(16, '1202201822', 'New Self Transfer', '2024-04-12 02:25:57'),
(17, '1202201822', 'Login into dashboard', '2024-04-12 02:31:42'),
(18, '1202201822', 'Login into dashboard', '2024-04-12 02:39:34'),
(19, '1202201822', 'New Domestic Transfer', '2024-04-12 02:42:31'),
(20, '1202201822', 'Login into dashboard', '2024-04-12 02:51:15'),
(21, '1202201822', 'Login into dashboard', '2024-04-12 02:56:50'),
(22, '1202201822', 'Login into dashboard', '2024-04-12 03:05:01'),
(23, '1202201822', 'Login into dashboard', '2024-04-12 03:06:28'),
(24, '1202201822', 'Login into dashboard', '2024-04-12 03:08:01'),
(25, '1202201822', 'Login into dashboard', '2024-04-12 03:19:24'),
(26, '1202201822', 'Login into dashboard', '2024-04-12 03:33:21'),
(27, '1202280407', 'New Registration', '2024-04-12 03:40:40'),
(28, '1202201822', 'Login into dashboard', '2024-04-12 03:42:16'),
(29, '1202201822', 'Login into dashboard', '2024-04-12 03:47:14'),
(30, '1202201822', 'Login into dashboard', '2024-04-12 04:09:47'),
(31, '1202201822', 'Login into dashboard', '2024-04-12 04:30:40'),
(32, '1202201822', 'Login into dashboard', '2024-04-12 06:02:56'),
(33, '1202201822', 'Card Application', '2024-04-12 06:04:22'),
(34, '1202201822', 'Login into dashboard', '2024-04-12 06:14:18'),
(35, '1202315195', 'New Registration', '2024-04-12 06:34:39'),
(36, '1202201822', 'Login into dashboard', '2024-04-12 06:35:30'),
(37, '1202201822', 'Login into dashboard', '2024-04-12 06:38:17'),
(38, '1202201822', 'Login into dashboard', '2024-04-12 06:40:55'),
(39, '1202201822', 'Login into dashboard', '2024-04-12 06:41:36'),
(40, '1202201822', 'Login into dashboard', '2024-04-12 06:42:10'),
(41, '1202201822', 'Loan Request', '2024-04-12 06:43:32'),
(42, '1202201822', 'Login into dashboard', '2024-04-12 06:44:46'),
(43, '1202201822', 'Login into dashboard', '2024-04-12 06:44:52'),
(44, '1202201822', 'Login into dashboard', '2024-04-12 06:44:57'),
(45, '1202201822', 'Login into dashboard', '2024-04-12 06:45:05'),
(46, '1202201822', 'Login into dashboard', '2024-04-12 06:50:34'),
(47, '1202201822', 'Login into dashboard', '2024-04-12 06:53:55'),
(48, '1202201822', 'Login into dashboard', '2024-04-12 06:54:27'),
(49, '1202201822', 'New Domestic Transfer', '2024-04-12 06:56:03'),
(50, '1202201822', 'New Wire Transfer', '2024-04-12 06:57:55'),
(51, '1202201822', 'Login into dashboard', '2024-04-12 07:08:23'),
(52, '1202201822', 'Login into dashboard', '2024-04-12 07:10:35'),
(53, '1202201822', 'Login into dashboard', '2024-04-12 07:23:59'),
(54, '1202201822', 'Login into dashboard', '2024-04-12 07:24:17'),
(55, '1202201822', 'Login into dashboard', '2024-04-12 07:27:19'),
(56, '1202201822', 'Login into dashboard', '2024-04-12 07:29:41'),
(57, '1202201822', 'New Domestic Transfer', '2024-04-12 07:31:44'),
(58, '1202201822', 'Login into dashboard', '2024-04-12 07:33:25'),
(59, '1202201822', 'New Domestic Transfer', '2024-04-12 07:35:24'),
(60, '1202201822', 'Login into dashboard', '2024-04-12 07:38:55'),
(61, '1202201822', 'Login into dashboard', '2024-04-12 07:39:50'),
(62, '1202201822', 'Login into dashboard', '2024-04-12 07:39:55'),
(63, '1202201822', 'Login into dashboard', '2024-04-12 07:47:01'),
(64, '1202201822', 'New Self Transfer', '2024-04-12 07:47:36'),
(65, '1202201822', 'New Domestic Transfer', '2024-04-12 07:49:22'),
(66, '1202201822', 'Login into dashboard', '2024-04-12 07:59:56'),
(67, '1202201822', 'Login into dashboard', '2024-04-12 08:01:11'),
(68, '1202201822', 'Login into dashboard', '2024-04-12 08:02:03'),
(69, '1202201822', 'Profile Picture Upadate', '2024-04-12 08:03:30'),
(70, '1202201822', 'Profile Picture Upadate', '2024-04-12 08:05:50'),
(71, '1202201822', 'Login into dashboard', '2024-04-12 08:11:45'),
(72, '1202201822', 'Login into dashboard', '2024-04-12 08:15:03'),
(73, '1202201822', 'Login into dashboard', '2024-04-12 08:15:16'),
(74, '1202201822', 'New Wire Transfer', '2024-04-12 08:19:31'),
(75, '1202201822', 'New Wire Transfer', '2024-04-12 08:20:09'),
(76, '1202201822', 'Login into dashboard', '2024-04-12 08:29:28'),
(77, '1202201822', 'Login into dashboard', '2024-04-12 08:29:33'),
(78, '1202201822', 'Login into dashboard', '2024-04-12 08:29:40'),
(79, '1202201822', 'Login into dashboard', '2024-04-12 08:29:45'),
(80, '1202201822', 'Login into dashboard', '2024-04-12 08:30:02'),
(81, '1202201822', 'Login into dashboard', '2024-04-12 08:38:23'),
(82, '1202201822', 'Login into dashboard', '2024-04-12 08:53:52'),
(83, '1202201822', 'New Wire Transfer', '2024-04-12 08:55:57'),
(84, '1202201822', 'Login into dashboard', '2024-04-12 09:01:10'),
(85, '1202201822', 'New Wire Transfer', '2024-04-12 09:03:37'),
(86, '1202201822', 'New Wire Transfer', '2024-04-12 09:03:44'),
(87, '1202201822', 'Login into dashboard', '2024-04-12 09:05:51'),
(88, '1202201822', 'Loan Request', '2024-04-12 09:06:51'),
(89, '1202201822', 'Login into dashboard', '2024-04-12 09:07:49'),
(90, '1202201822', 'Login into dashboard', '2024-04-12 09:08:52'),
(91, '1202201822', 'Login into dashboard', '2024-04-12 09:16:46'),
(92, '1202201822', 'Login into dashboard', '2024-04-12 09:25:59'),
(93, '1202201822', 'Login into dashboard', '2024-04-12 09:35:41'),
(94, '1202201822', 'Login into dashboard', '2024-04-12 09:37:51'),
(95, '1202201822', 'Login into dashboard', '2024-04-12 09:39:35'),
(96, '1202201822', 'Login into dashboard', '2024-04-12 09:42:08'),
(97, '1202201822', 'Login into dashboard', '2024-04-12 09:44:31'),
(98, '1202201822', 'Login into dashboard', '2024-04-12 09:55:04'),
(99, '1202201822', 'Login into dashboard', '2024-04-12 09:58:04'),
(100, '1202201822', 'New Wire Transfer', '2024-04-12 09:59:03'),
(101, '1202201822', 'Login into dashboard', '2024-04-12 10:01:07'),
(102, '1202201822', 'Login into dashboard', '2024-04-12 10:01:37'),
(103, '1202201822', 'Login into dashboard', '2024-04-12 10:02:42'),
(104, '1202201822', 'Login into dashboard', '2024-04-12 10:25:49'),
(105, '1202201822', 'New Wire Transfer', '2024-04-12 10:27:13'),
(106, '1202201822', 'Login into dashboard', '2024-04-12 10:28:31'),
(107, '1202201822', 'Login into dashboard', '2024-04-12 10:52:03'),
(108, '1202201822', 'New Wire Transfer', '2024-04-12 10:53:46'),
(109, '1202201822', 'Login into dashboard', '2024-04-12 10:57:07'),
(110, '1202201822', 'New Wire Transfer', '2024-04-12 10:57:25'),
(111, '1202201822', 'Login into dashboard', '2024-04-12 11:00:55'),
(112, '1202201822', 'Login into dashboard', '2024-04-12 11:01:00'),
(113, '1202201822', 'Login into dashboard', '2024-04-12 11:01:07'),
(114, '1202201822', 'Login into dashboard', '2024-04-12 11:01:12'),
(115, '1202201822', 'Login into dashboard', '2024-04-12 11:15:57'),
(116, '1202201822', 'Login into dashboard', '2024-04-12 11:22:55'),
(117, '1202201822', 'Login into dashboard', '2024-04-12 12:05:17'),
(118, '1202201822', 'Login into dashboard', '2024-04-12 12:06:42'),
(119, '1202201822', 'Login into dashboard', '2024-04-12 12:13:03'),
(120, '1202201822', 'Login into dashboard', '2024-04-12 12:19:40'),
(121, '1202201822', 'Login into dashboard', '2024-04-12 12:24:03'),
(122, '1202201822', 'Login into dashboard', '2024-04-12 12:35:47'),
(123, '1202201822', 'Login into dashboard', '2024-04-12 12:43:37'),
(124, '1202201822', 'Login into dashboard', '2024-04-12 12:43:55'),
(125, '1202201822', 'New Wire Transfer', '2024-04-12 12:46:17'),
(126, '1202201822', 'Login into dashboard', '2024-04-12 12:48:13'),
(127, '1202201822', 'Login into dashboard', '2024-04-12 12:52:13'),
(128, '1202201822', 'Login into dashboard', '2024-04-12 13:01:30'),
(129, '1202201822', 'Login into dashboard', '2024-04-12 13:03:56'),
(130, '1202201822', 'New Domestic Transfer', '2024-04-12 13:14:58'),
(131, '1202201822', 'Login into dashboard', '2024-04-12 13:35:40'),
(132, '1202201822', 'Login into dashboard', '2024-04-12 13:50:28'),
(133, '1202201822', 'Login into dashboard', '2024-04-12 13:54:22'),
(134, '1202201822', 'Login into dashboard', '2024-04-12 13:54:26'),
(135, '1202201822', 'Login into dashboard', '2024-04-12 14:18:00'),
(136, '1202201822', 'Login into dashboard', '2024-04-12 14:54:15'),
(137, '1202201822', 'Login into dashboard', '2024-04-12 16:07:36'),
(138, '1202201822', 'Login into dashboard', '2024-04-12 17:13:21'),
(139, '1202201822', 'Login into dashboard', '2024-04-12 17:28:02'),
(140, '1202201822', 'Login into dashboard', '2024-04-12 17:29:01'),
(141, '1202201822', 'Profile Picture Upadate', '2024-04-12 17:41:57'),
(142, '1202201822', 'Login into dashboard', '2024-04-12 19:13:15'),
(143, '1202201822', 'Profile Picture Upadate', '2024-04-12 19:15:19'),
(144, '1202201822', 'Profile Picture Upadate', '2024-04-12 19:28:24'),
(145, '1202201822', 'Profile Picture Upadate', '2024-04-12 19:30:48'),
(146, '1202201822', 'Login into dashboard', '2024-04-12 21:13:53'),
(147, '1202201822', 'Profile Picture Upadate', '2024-04-12 21:14:37'),
(148, '1202201822', 'Login into dashboard', '2024-04-12 23:03:28'),
(149, '1202201822', 'Login into dashboard', '2024-04-12 23:06:57'),
(150, '1202201822', 'Login into dashboard', '2024-04-12 23:21:32'),
(151, '1202201822', 'New Wire Transfer', '2024-04-12 23:27:11'),
(152, '1202201822', 'Login into dashboard', '2024-04-12 23:53:10'),
(153, '1202201822', 'Login into dashboard', '2024-04-13 01:16:35'),
(154, '1202201822', 'Login into dashboard', '2024-04-13 01:39:32'),
(155, '1202201822', 'Login into dashboard', '2024-04-13 02:38:19'),
(156, '1202201822', 'Login into dashboard', '2024-04-13 02:40:02'),
(157, '1202292871', 'New Registration', '2024-04-13 02:43:21'),
(158, '1202201822', 'Login into dashboard', '2024-04-13 02:44:39'),
(159, '1202201822', 'Login into dashboard', '2024-04-13 02:45:17'),
(160, '1202201822', 'Login into dashboard', '2024-04-13 03:02:52'),
(161, '1202201822', 'Login into dashboard', '2024-04-13 03:46:07'),
(162, '1202201822', 'Login into dashboard', '2024-04-13 03:46:52'),
(163, '1202201822', 'Login into dashboard', '2024-04-13 04:02:36'),
(164, '1202201822', 'New Wire Transfer', '2024-04-13 04:04:32'),
(165, '1202201822', 'Login into dashboard', '2024-04-13 04:07:12'),
(166, '1202201822', 'Login into dashboard', '2024-04-13 04:07:17'),
(167, '1202201822', 'Login into dashboard', '2024-04-13 04:07:23'),
(168, '1202201822', 'Login into dashboard', '2024-04-13 04:07:31'),
(169, '1202201822', 'Login into dashboard', '2024-04-13 04:12:44'),
(170, '1202201822', 'Login into dashboard', '2024-04-13 04:17:01'),
(171, '1202201822', 'Login into dashboard', '2024-04-13 04:22:07'),
(172, '1202311551', 'New Registration', '2024-04-13 04:23:29'),
(173, '1202201822', 'Login into dashboard', '2024-04-13 04:48:47'),
(174, '1202201822', 'Profile Picture Upadate', '2024-04-13 04:50:16'),
(175, '1202249764', 'New Registration', '2024-04-13 05:06:38'),
(176, '1202249764', 'Login into dashboard', '2024-04-13 05:12:29'),
(177, '1202249764', 'Login into dashboard', '2024-04-13 05:16:09'),
(178, '1202201822', 'Login into dashboard', '2024-04-13 05:55:22'),
(179, '1202201822', 'Login into dashboard', '2024-04-13 07:39:59'),
(180, '1202201822', 'Login into dashboard', '2024-04-13 07:43:49'),
(181, '1202201822', 'Login into dashboard', '2024-04-13 09:05:28'),
(182, '1202201822', 'Profile Picture Upadate', '2024-04-13 09:06:53'),
(183, '1202201822', 'Profile Picture Upadate', '2024-04-13 09:08:12'),
(184, '1202201822', 'Profile Picture Upadate', '2024-04-13 09:17:24'),
(185, '1202201822', 'Login into dashboard', '2024-04-13 10:08:55'),
(186, '1202201822', 'Login into dashboard', '2024-04-13 10:19:11'),
(187, '1202130989', 'New Registration', '2024-04-13 11:00:47'),
(188, '1202201822', 'Login into dashboard', '2024-04-13 11:25:40'),
(189, '1202201822', 'Login into dashboard', '2024-04-13 12:17:53'),
(190, '1202201822', 'New Wire Transfer', '2024-04-13 12:21:57'),
(191, '1202201822', 'Login into dashboard', '2024-04-13 14:55:27'),
(192, '1202201822', 'Login into dashboard', '2024-04-13 14:55:32'),
(193, '1202201822', 'Login into dashboard', '2024-04-13 15:51:24'),
(194, '1202201822', 'Login into dashboard', '2024-04-13 16:02:04'),
(195, '1202201822', 'Login into dashboard', '2024-04-13 16:15:58'),
(196, '1202201822', 'Profile Picture Upadate', '2024-04-13 16:16:34'),
(197, '1202201822', 'Profile Picture Upadate', '2024-04-13 16:18:30'),
(198, '1202201822', 'Login into dashboard', '2024-04-13 16:23:42'),
(199, '1202201822', 'Profile Picture Upadate', '2024-04-13 16:32:16'),
(200, '1202201822', 'Profile Picture Upadate', '2024-04-13 16:38:35'),
(201, '1202201822', 'Profile Picture Upadate', '2024-04-13 16:41:33'),
(202, '1202201822', 'Profile Picture Upadate', '2024-04-13 16:45:58'),
(203, '1202201822', 'Login into dashboard', '2024-04-13 17:28:47'),
(204, '1202201822', 'New Wire Transfer', '2024-04-13 17:33:25'),
(205, '1202201822', 'New Wire Transfer', '2024-04-13 17:40:42'),
(206, '1202201822', 'New Wire Transfer', '2024-04-13 17:44:36'),
(207, '1202201822', 'Login into dashboard', '2024-04-13 18:24:07'),
(208, '1202201822', 'New Wire Transfer', '2024-04-13 18:27:17'),
(209, '1202201822', 'Login into dashboard', '2024-04-13 18:38:55'),
(210, '1202201822', 'Profile Picture Upadate', '2024-04-13 18:39:36'),
(211, '1202201822', 'Login into dashboard', '2024-04-13 18:43:35'),
(212, '1202201822', 'Profile Picture Upadate', '2024-04-13 18:45:21'),
(213, '1202201822', 'Profile Picture Upadate', '2024-04-13 18:50:01'),
(214, '1202201822', 'Profile Picture Upadate', '2024-04-13 18:51:01'),
(215, '1202201822', 'Profile Picture Upadate', '2024-04-13 18:51:49'),
(216, '1202201822', 'Login into dashboard', '2024-04-13 19:46:55'),
(217, '1202201822', 'New Wire Transfer', '2024-04-13 19:50:09'),
(218, '1202201822', 'Login into dashboard', '2024-04-13 19:57:54'),
(219, '1202201822', 'Login into dashboard', '2024-04-13 22:14:51'),
(220, '1202201822', 'Login into dashboard', '2024-04-14 00:14:06'),
(221, '1202201822', 'Login into dashboard', '2024-04-14 00:55:22'),
(222, '1202201822', 'Login into dashboard', '2024-04-14 01:07:29'),
(223, '1202201822', 'Login into dashboard', '2024-04-14 01:10:29'),
(224, '1202201822', 'Profile Picture Upadate', '2024-04-14 01:11:27'),
(225, '1202201822', 'Login into dashboard', '2024-04-14 03:58:51'),
(226, '1202201822', 'Login into dashboard', '2024-04-14 04:21:54'),
(227, '1202201822', 'Login into dashboard', '2024-04-14 04:33:18'),
(228, '1202201822', 'Login into dashboard', '2024-04-14 04:48:37'),
(229, '1202201822', 'Login into dashboard', '2024-04-14 04:59:16'),
(230, '1202201822', 'Login into dashboard', '2024-04-14 05:05:39'),
(231, '1202201822', 'Login into dashboard', '2024-04-14 06:19:40'),
(232, '1202201822', 'Login into dashboard', '2024-04-14 07:00:07'),
(233, '1202201822', 'Login into dashboard', '2024-04-14 07:00:17'),
(234, '1202201822', 'Login into dashboard', '2024-04-14 07:12:32'),
(235, '1202201822', 'Login into dashboard', '2024-04-14 08:21:44'),
(236, '1202201822', 'Login into dashboard', '2024-04-14 10:32:50'),
(237, '1202201822', 'New Domestic Transfer', '2024-04-14 10:34:22'),
(238, '1202201822', 'Login into dashboard', '2024-04-14 11:21:52'),
(239, '1202201822', 'New Domestic Transfer', '2024-04-14 11:22:49'),
(240, '1202201822', 'Login into dashboard', '2024-04-14 12:24:32'),
(241, '1202201822', 'Login into dashboard', '2024-04-14 12:54:35'),
(242, '1202201822', 'Login into dashboard', '2024-04-14 13:05:34'),
(243, '1202201822', 'Login into dashboard', '2024-04-14 13:08:36'),
(244, '1202201822', 'New Domestic Transfer', '2024-04-14 13:10:56'),
(245, '1202201822', 'Login into dashboard', '2024-04-14 13:19:14'),
(246, '1202201822', 'Login into dashboard', '2024-04-14 13:19:24'),
(247, '1202201822', 'Login into dashboard', '2024-04-14 13:41:06'),
(248, '1202201822', 'Profile Picture Upadate', '2024-04-14 13:41:58'),
(249, '1202201822', 'Profile Picture Upadate', '2024-04-14 13:46:32'),
(250, '1202201822', 'Profile Picture Upadate', '2024-04-14 13:57:10'),
(251, '1202201822', 'Profile Picture Upadate', '2024-04-14 14:01:16'),
(252, '1202201822', 'Profile Picture Upadate', '2024-04-14 14:09:44'),
(253, '1202201822', 'Profile Picture Upadate', '2024-04-14 14:12:41'),
(254, '1202201822', 'Profile Picture Upadate', '2024-04-14 14:13:00'),
(255, '1202201822', 'Login into dashboard', '2024-04-14 15:02:59'),
(256, '1202201822', 'Login into dashboard', '2024-04-14 15:04:30'),
(257, '1202201822', 'Login into dashboard', '2024-04-14 17:52:16'),
(258, '1202201822', 'Login into dashboard', '2024-04-14 19:01:14'),
(259, '1202201822', 'Login into dashboard', '2024-04-14 19:03:10'),
(260, '1202201822', 'Loan Request', '2024-04-14 19:05:13'),
(261, '1202201822', 'Login into dashboard', '2024-04-15 04:15:16'),
(262, '1202201822', 'Login into dashboard', '2024-04-15 05:39:35'),
(263, '1202201822', 'Profile Picture Upadate', '2024-04-15 05:44:11'),
(264, '1202201822', 'Profile Picture Upadate', '2024-04-15 05:44:35'),
(265, '1202201822', 'Profile Picture Upadate', '2024-04-15 05:45:54'),
(266, '1202201822', 'Login into dashboard', '2024-04-15 05:51:03'),
(267, '1202201822', 'Profile Picture Upadate', '2024-04-15 05:56:40'),
(268, '1202201822', 'Profile Picture Upadate', '2024-04-15 05:57:35'),
(269, '1202201822', 'Profile Picture Upadate', '2024-04-15 05:58:30'),
(270, '1202201822', 'Profile Picture Upadate', '2024-04-15 05:58:50'),
(271, '1202201822', 'Login into dashboard', '2024-04-15 06:14:06'),
(272, '1202201822', 'Login into dashboard', '2024-04-15 07:20:11'),
(273, '1202201822', 'Login into dashboard', '2024-04-15 08:26:30'),
(274, '1202201822', 'Login into dashboard', '2024-04-15 09:32:21'),
(275, '1202201822', 'Login into dashboard', '2024-04-15 09:48:13'),
(276, '1202201822', 'Login into dashboard', '2024-04-15 11:46:38'),
(277, '1202201822', 'Login into dashboard', '2024-04-15 11:49:34'),
(278, '1202201822', 'Login into dashboard', '2024-04-15 12:12:46'),
(279, '1202201822', 'Login into dashboard', '2024-04-15 12:15:54'),
(280, '1202201822', 'Login into dashboard', '2024-04-15 12:26:00'),
(281, '1202201822', 'Login into dashboard', '2024-04-15 12:26:06'),
(282, '1202201822', 'Login into dashboard', '2024-04-15 12:26:49'),
(283, '1202201822', 'Login into dashboard', '2024-04-15 14:08:00'),
(284, '1202201822', 'New Wire Transfer', '2024-04-15 14:09:28'),
(285, '1202201822', 'Login into dashboard', '2024-04-15 14:10:08'),
(286, '1202201822', 'New Wire Transfer', '2024-04-15 14:11:31'),
(287, '1202201822', 'Loan Request', '2024-04-15 14:18:25'),
(288, '1202201822', 'Login into dashboard', '2024-04-15 15:53:11'),
(289, '1202201822', 'Login into dashboard', '2024-04-15 17:24:45'),
(290, '1202294834', 'New Registration', '2024-04-15 17:51:33'),
(291, '1202201822', 'Login into dashboard', '2024-04-16 01:54:17'),
(292, '1202201822', 'Login into dashboard', '2024-04-16 03:39:04'),
(293, '1202201822', 'Login into dashboard', '2024-04-16 03:44:03'),
(294, '1202201822', 'New Crypto Deposit', '2024-04-16 03:47:00'),
(295, '1202201822', 'New Domestic Transfer', '2024-04-16 03:50:26'),
(296, '1202201822', 'New Wire Transfer', '2024-04-16 03:53:15'),
(297, '1202201822', 'New Self Transfer', '2024-04-16 04:00:01'),
(298, '1202201822', 'Loan Request', '2024-04-16 04:02:37'),
(299, '1202201822', 'Profile Picture Upadate', '2024-04-16 04:11:29');

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `firstname` varchar(200) NOT NULL,
  `lastname` varchar(200) NOT NULL,
  `adminimage` text DEFAULT NULL,
  `admin_email` varchar(200) NOT NULL,
  `admin_password` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `firstname`, `lastname`, `adminimage`, `admin_email`, `admin_password`) VALUES
(1, 'Admin', 'Admin', 'user.png', 'admin@mail.com', 'HYlQW2/YrrIqU');

-- --------------------------------------------------------

--
-- Table structure for table `audit_logs`
--

CREATE TABLE `audit_logs` (
  `id` int(11) NOT NULL,
  `internetid` varchar(255) DEFAULT NULL,
  `device` text CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `ipAddress` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `datenow` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `audit_logs`
--

INSERT INTO `audit_logs` (`id`, `internetid`, `device`, `ipAddress`, `datenow`) VALUES
(1, '1202201822', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', '197.210.53.187', '2024-04-08 13:34:51'),
(2, '1202201822', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:124.0) Gecko/20100101 Firefox/124.0', '105.112.222.25', '2024-04-08 14:43:25'),
(3, '1202201822', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', '105.112.222.25', '2024-04-08 14:48:19'),
(4, '1202201822', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', '197.210.53.187', '2024-04-08 15:06:07'),
(5, '1202201822', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', '197.210.53.187', '2024-04-08 15:06:21'),
(6, '1202201822', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Mobile Safari/537.36', '102.89.34.127', '2024-04-10 08:22:11'),
(7, '1202201822', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Mobile Safari/537.36', '102.89.34.141', '2024-04-10 08:24:03'),
(8, '1202201822', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', '102.89.34.158', '2024-04-10 08:33:24'),
(9, '1202807633', 'Mozilla/5.0 (iPhone; CPU iPhone OS 16_5 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/16.5 Mobile/15E148 Safari/604.1', '102.90.58.230', '2024-04-11 20:45:09'),
(10, '1202201822', 'Mozilla/5.0 (iPhone; CPU iPhone OS 15_7 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) CriOS/119.0.6045.109 Mobile/15E148 Safari/604.1', '197.210.226.143', '2024-04-12 06:06:06'),
(11, '1202201822', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Mobile Safari/537.36', '197.211.61.142', '2024-04-12 06:21:30'),
(12, '1202201822', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Mobile Safari/537.36', '197.211.61.142', '2024-04-12 06:23:09'),
(13, '1202201822', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36', '102.88.70.97', '2024-04-12 06:31:42'),
(14, '1202201822', 'Mozilla/5.0 (Linux; Android 11; TECNO PR651E) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Mobile Safari/537.36', '197.210.85.221', '2024-04-12 06:39:34'),
(15, '1202201822', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/122.0.0.0 Safari/537.36', '197.210.54.50', '2024-04-12 06:51:15'),
(16, '1202201822', 'Mozilla/5.0 (iPhone; CPU iPhone OS 17_4_1 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/17.4.1 Mobile/15E148 Safari/604.1', '102.90.49.223', '2024-04-12 06:56:50'),
(17, '1202201822', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/122.0.0.0 Mobile Safari/537.36', '197.210.85.219', '2024-04-12 07:05:01'),
(18, '1202201822', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Mobile Safari/537.36', '197.210.226.90', '2024-04-12 07:06:28'),
(19, '1202201822', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) SamsungBrowser/24.0 Chrome/117.0.0.0 Mobile Safari/537.36', '197.210.226.238', '2024-04-12 07:08:01'),
(20, '1202201822', 'Mozilla/5.0 (iPhone; CPU iPhone OS 16_7 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) CriOS/121.0.6167.171 Mobile/15E148 Safari/604.1', '197.210.55.174', '2024-04-12 07:19:24'),
(21, '1202201822', 'Mozilla/5.0 (Linux; Android 13; 23106RN0DA) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.6099.280 Mobile Safari/537.36 OPR/80.6.4244.78244', '129.205.124.176', '2024-04-12 07:33:21'),
(22, '1202280407', 'Mozilla/5.0 (iPhone; CPU iPhone OS 16_0 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/16.0 Mobile/15E148 Safari/604.1', '197.211.59.160', '2024-04-12 07:40:40'),
(23, '1202201822', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/122.0.0.0 Mobile Safari/537.36', '41.190.2.39', '2024-04-12 07:42:16'),
(24, '1202201822', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/122.0.0.0 Mobile Safari/537.36 EdgA/122.0.0.0', '105.120.128.225', '2024-04-12 07:47:14'),
(25, '1202201822', 'Mozilla/5.0 (iPhone; CPU iPhone OS 16_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/16.3 Mobile/15E148 Safari/604.1', '102.88.82.112', '2024-04-12 08:09:47'),
(26, '1202201822', 'Mozilla/5.0 (iPhone; CPU iPhone OS 16_6 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/16.6 Mobile/15E148 Safari/604.1', '197.210.85.23', '2024-04-12 08:30:40'),
(27, '1202201822', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/122.0.0.0 Mobile Safari/537.36', '129.0.79.245', '2024-04-12 10:02:56'),
(28, '1202201822', 'Mozilla/5.0 (iPhone; CPU iPhone OS 17_2_1 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/17.2 Mobile/15E148 Safari/604.1', '102.88.82.159', '2024-04-12 10:14:18'),
(29, '1202315195', 'Mozilla/5.0 (iPhone; CPU iPhone OS 17_4_1 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/17.4.1 Mobile/15E148 Safari/604.1', '102.91.52.75', '2024-04-12 10:34:39'),
(30, '1202201822', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/17.4.1 Safari/605.1.15', '105.113.85.128', '2024-04-12 10:35:30'),
(31, '1202201822', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Mobile Safari/537.36', '154.161.28.16', '2024-04-12 10:38:17'),
(32, '1202201822', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Mobile Safari/537.36', '102.90.65.89', '2024-04-12 10:40:55'),
(33, '1202201822', 'Mozilla/5.0 (Linux; Android 11; 2209116AG) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.98 Mobile Safari/537.36', '105.112.210.48', '2024-04-12 10:41:36'),
(34, '1202201822', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Mobile Safari/537.36', '102.91.52.187', '2024-04-12 10:42:10'),
(35, '1202201822', 'Mozilla/5.0 (iPhone; CPU iPhone OS 17_3_1 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/17.3.1 Mobile/15E148 Safari/604.1', '129.205.113.172', '2024-04-12 10:44:46'),
(36, '1202201822', 'Mozilla/5.0 (iPhone; CPU iPhone OS 17_3_1 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/17.3.1 Mobile/15E148 Safari/604.1', '129.205.113.172', '2024-04-12 10:44:52'),
(37, '1202201822', 'Mozilla/5.0 (iPhone; CPU iPhone OS 17_3_1 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/17.3.1 Mobile/15E148 Safari/604.1', '129.205.113.172', '2024-04-12 10:44:57'),
(38, '1202201822', 'Mozilla/5.0 (iPhone; CPU iPhone OS 17_3_1 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/17.3.1 Mobile/15E148 Safari/604.1', '129.205.113.172', '2024-04-12 10:45:05'),
(39, '1202201822', 'Mozilla/5.0 (Linux; Android 13; CPH2159) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Mobile Safari/537.36', '102.89.42.254', '2024-04-12 10:50:34'),
(40, '1202201822', 'Mozilla/5.0 (iPhone; CPU iPhone OS 17_1_1 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/17.1.1 Mobile/15E148 Safari/604.1', '197.210.54.148', '2024-04-12 10:53:55'),
(41, '1202201822', 'Mozilla/5.0 (iPhone; CPU iPhone OS 16_7_7 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/16.6 Mobile/15E148 Safari/604.1', '41.85.163.82', '2024-04-12 10:54:27'),
(42, '1202201822', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Mobile Safari/537.36', '129.205.124.176', '2024-04-12 11:08:23'),
(43, '1202201822', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Mobile Safari/537.36', '102.88.43.22', '2024-04-12 11:10:35'),
(44, '1202201822', 'Mozilla/5.0 (iPhone; CPU iPhone OS 17_3_1 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/17.3.1 Mobile/15E148 Safari/604.1', '104.28.88.89', '2024-04-12 11:23:59'),
(45, '1202201822', 'Mozilla/5.0 (iPhone; CPU iPhone OS 17_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) CriOS/123.0.6312.52 Mobile/15E148 Safari/604.1', '105.113.41.40', '2024-04-12 11:24:17'),
(46, '1202201822', 'Mozilla/5.0 (iPhone; CPU iPhone OS 16_2 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) CriOS/105.0.5195.129 Mobile/15E148 Safari/604.1', '197.211.61.136', '2024-04-12 11:27:19'),
(47, '1202201822', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Mobile Safari/537.36', '197.211.58.120', '2024-04-12 11:29:41'),
(48, '1202201822', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36 OPR/107.0.0.0', '77.111.246.43', '2024-04-12 11:33:25'),
(49, '1202201822', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/118.0.0.0 Mobile Safari/537.36', '129.205.113.176', '2024-04-12 11:38:55'),
(50, '1202201822', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Mobile Safari/537.36', '105.113.102.212', '2024-04-12 11:39:50'),
(51, '1202201822', 'Mozilla/5.0 (Linux; Android 12; TECNO KI5k) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/105.0.0.0 Mobile Safari/537.36', '129.205.124.177', '2024-04-12 11:39:55'),
(52, '1202201822', 'Mozilla/5.0 (iPhone; CPU iPhone OS 17_1_1 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/17.1.1 Mobile/15E148 Safari/604.1', '102.90.43.50', '2024-04-12 11:47:01'),
(53, '1202201822', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Mobile Safari/537.36', '197.210.226.131', '2024-04-12 11:59:56'),
(54, '1202201822', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Mobile Safari/537.36', '197.210.226.131', '2024-04-12 12:01:11'),
(55, '1202201822', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Mobile Safari/537.36', '193.160.100.55', '2024-04-12 12:02:03'),
(56, '1202201822', 'Mozilla/5.0 (Linux; Android 10; TECNO KE5) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.99 Mobile Safari/537.36', '154.16.192.80', '2024-04-12 12:11:45'),
(57, '1202201822', 'Mozilla/5.0 (iPhone; CPU iPhone OS 16_2 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) CriOS/105.0.5195.129 Mobile/15E148 Safari/604.1', '197.211.61.141', '2024-04-12 12:15:03'),
(58, '1202201822', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', '102.135.200.174', '2024-04-12 12:15:16'),
(59, '1202201822', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36', '102.22.222.45', '2024-04-12 12:29:28'),
(60, '1202201822', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36', '102.22.222.45', '2024-04-12 12:29:33'),
(61, '1202201822', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36', '102.22.222.45', '2024-04-12 12:29:40'),
(62, '1202201822', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36', '102.22.222.45', '2024-04-12 12:29:45'),
(63, '1202201822', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Mobile Safari/537.36', '102.90.44.40', '2024-04-12 12:30:02'),
(64, '1202201822', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', '105.112.221.96', '2024-04-12 12:38:23'),
(65, '1202201822', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/17.2 Safari/605.1.15', '105.113.71.69', '2024-04-12 12:53:52'),
(66, '1202201822', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36 Edg/123.0.0.0', '105.113.71.69', '2024-04-12 13:01:10'),
(67, '1202201822', 'Mozilla/5.0 (Linux; Android 7.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.5112.81 Mobile Safari/537.36', '105.112.117.61', '2024-04-12 13:05:51'),
(68, '1202201822', 'Mozilla/5.0 (iPhone; CPU iPhone OS 17_3_1 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/17.3.1 Mobile/15E148 Safari/604.1', '102.90.65.104', '2024-04-12 13:07:49'),
(69, '1202201822', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', '197.210.78.73', '2024-04-12 13:08:52'),
(70, '1202201822', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/17.2 Safari/605.1.15', '105.113.71.69', '2024-04-12 13:16:46'),
(71, '1202201822', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Mobile Safari/537.36', '102.90.57.148', '2024-04-12 13:25:59'),
(72, '1202201822', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', '129.205.124.180', '2024-04-12 13:35:41'),
(73, '1202201822', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36', '102.90.66.232', '2024-04-12 13:37:51'),
(74, '1202201822', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Mobile Safari/537.36', '102.89.43.126', '2024-04-12 13:39:35'),
(75, '1202201822', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) SamsungBrowser/24.0 Chrome/117.0.0.0 Mobile Safari/537.36', '197.210.55.135', '2024-04-12 13:42:08'),
(76, '1202201822', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Mobile Safari/537.36', '197.210.85.249', '2024-04-12 13:44:31'),
(77, '1202201822', 'Mozilla/5.0 (iPhone; CPU iPhone OS 16_1_1 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/16.1 Mobile/15E148 Safari/604.1', '105.113.89.86', '2024-04-12 13:55:04'),
(78, '1202201822', 'Mozilla/5.0 (iPhone; CPU iPhone OS 15_7_8 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/15.6.6 Mobile/15E148 Safari/604.1', '155.94.216.9', '2024-04-12 13:58:04'),
(79, '1202201822', 'Mozilla/5.0 (iPhone; CPU iPhone OS 16_2 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) EdgiOS/117.0.2045.33 Version/16.0 Mobile/15E148 Safari/604.1', '102.90.64.252', '2024-04-12 14:01:07'),
(80, '1202201822', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Mobile Safari/537.36', '197.211.58.112', '2024-04-12 14:01:37'),
(81, '1202201822', 'Mozilla/5.0 (iPhone; CPU iPhone OS 17_3_1 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/17.3.1 Mobile/15E148 Safari/604.1', '104.28.87.70', '2024-04-12 14:02:42'),
(82, '1202201822', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Mobile Safari/537.36', '105.112.190.10', '2024-04-12 14:25:49'),
(83, '1202201822', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Mobile Safari/537.36', '102.89.47.69', '2024-04-12 14:28:31'),
(84, '1202201822', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Mobile Safari/537.36', '105.112.217.69', '2024-04-12 14:52:03'),
(85, '1202201822', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Mobile Safari/537.36', '173.239.204.62', '2024-04-12 14:57:07'),
(86, '1202201822', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/117.0.0.0 Mobile Safari/537.36', '197.210.227.0', '2024-04-12 15:00:55'),
(87, '1202201822', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/117.0.0.0 Mobile Safari/537.36', '197.210.227.0', '2024-04-12 15:01:00'),
(88, '1202201822', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/117.0.0.0 Mobile Safari/537.36', '197.210.227.0', '2024-04-12 15:01:07'),
(89, '1202201822', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Mobile Safari/537.36', '197.210.54.39', '2024-04-12 15:01:12'),
(90, '1202201822', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36 OPR/107.0.0.0', '41.217.85.61', '2024-04-12 15:15:57'),
(91, '1202201822', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/122.0.0.0 Mobile Safari/537.36', '102.90.65.121', '2024-04-12 15:22:55'),
(92, '1202201822', 'Mozilla/5.0 (iPhone; CPU iPhone OS 17_4 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) CriOS/123.0.6312.52 Mobile/15E148 Safari/604.1', '102.90.42.243', '2024-04-12 16:05:17'),
(93, '1202201822', 'Mozilla/5.0 (iPhone; CPU iPhone OS 16_6 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/16.6 Mobile/15E148 Safari/604.1', '197.210.79.14', '2024-04-12 16:06:42'),
(94, '1202201822', 'Mozilla/5.0 (iPhone; CPU iPhone OS 17_4 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/17.4 Mobile/15E148 Safari/604.1', '102.176.94.123', '2024-04-12 16:13:03'),
(95, '1202201822', 'Mozilla/5.0 (Linux; Android 10; Infinix X657B) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Mobile Safari/537.36', '105.113.13.63', '2024-04-12 16:19:40'),
(96, '1202201822', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Mobile Safari/537.36', '102.91.52.91', '2024-04-12 16:24:03'),
(97, '1202201822', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Mobile Safari/537.36', '193.160.100.66', '2024-04-12 16:35:47'),
(98, '1202201822', 'Mozilla/5.0 (Android 13; Mobile; rv:123.0) Gecko/123.0 Firefox/123.0', '102.91.47.154', '2024-04-12 16:43:37'),
(99, '1202201822', 'Mozilla/5.0 (iPhone; CPU iPhone OS 17_3_1 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/17.3.1 Mobile/15E148 Safari/604.1', '102.89.34.77', '2024-04-12 16:43:55'),
(100, '1202201822', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Mobile Safari/537.36', '197.211.59.154', '2024-04-12 16:48:13'),
(101, '1202201822', 'Mozilla/5.0 (iPhone; CPU iPhone OS 16_1 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/16.1 Mobile/15E148 Safari/604.1', '102.89.22.200', '2024-04-12 16:52:13'),
(102, '1202201822', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/117.0.0.0 Mobile Safari/537.36', '129.205.124.179', '2024-04-12 17:01:30'),
(103, '1202201822', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', '105.112.210.49', '2024-04-12 17:03:56'),
(104, '1202201822', 'Mozilla/5.0 (iPhone; CPU iPhone OS 17_0 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/17.0 Mobile/15E148 Safari/604.1', '102.90.66.27', '2024-04-12 17:35:40'),
(105, '1202201822', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/122.0.0.0 Mobile Safari/537.36', '197.210.55.141', '2024-04-12 17:50:28'),
(106, '1202201822', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Mobile Safari/537.36', '102.90.65.133', '2024-04-12 17:54:22'),
(107, '1202201822', 'Mozilla/5.0 (iPhone; CPU iPhone OS 17_4_1 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/17.4.1 Mobile/15E148 Safari/604.1', '41.113.98.200', '2024-04-12 17:54:26'),
(108, '1202201822', 'Mozilla/5.0 (iPhone; CPU iPhone OS 17_4_1 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/17.4.1 Mobile/15E148 Safari/604.1', '41.113.98.200', '2024-04-12 18:18:00'),
(109, '1202201822', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Mobile Safari/537.36', '102.88.63.42', '2024-04-12 18:54:15'),
(110, '1202201822', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/122.0.0.0 Mobile Safari/537.36', '197.210.79.97', '2024-04-12 20:07:36'),
(111, '1202201822', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/122.0.0.0 Mobile Safari/537.36', '197.210.71.250', '2024-04-12 21:13:21'),
(112, '1202201822', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Mobile Safari/537.36', '41.190.2.136', '2024-04-12 21:28:02'),
(113, '1202201822', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Mobile Safari/537.36', '41.190.2.136', '2024-04-12 21:29:01'),
(114, '1202201822', 'Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101 Firefox/102.0', '197.211.61.136', '2024-04-12 23:13:15'),
(115, '1202201822', 'Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101 Firefox/102.0', '197.211.61.136', '2024-04-13 01:13:53'),
(116, '1202201822', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', '102.215.57.157', '2024-04-13 03:03:28'),
(117, '1202201822', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/122.0.0.0 Mobile Safari/537.36', '197.211.53.1', '2024-04-13 03:06:57'),
(118, '1202201822', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36', '146.70.99.210', '2024-04-13 03:21:32'),
(119, '1202201822', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/122.0.0.0 Mobile Safari/537.36', '102.90.66.231', '2024-04-13 03:53:10'),
(120, '1202201822', 'Mozilla/5.0 (iPhone; CPU iPhone OS 17_1_2 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/17.1.2 Mobile/15E148 Safari/604.1', '197.210.54.138', '2024-04-13 05:16:35'),
(121, '1202201822', 'Mozilla/5.0 (iPhone; CPU iPhone OS 17_1_2 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/17.1.2 Mobile/15E148 Safari/604.1', '197.210.55.70', '2024-04-13 05:39:32'),
(122, '1202201822', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Mobile Safari/537.36', '197.211.61.137', '2024-04-13 06:38:19'),
(123, '1202201822', 'Mozilla/5.0 (iPhone; CPU iPhone OS 16_6_1 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/16.6 Mobile/15E148 Safari/604.1', '84.239.27.9', '2024-04-13 06:40:02'),
(124, '1202292871', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Mobile Safari/537.36', '105.120.129.41', '2024-04-13 06:43:21'),
(125, '1202201822', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Mobile Safari/537.36', '197.210.70.18', '2024-04-13 06:44:39'),
(126, '1202201822', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/122.0.0.0 Safari/537.36 OPR/108.0.0.0', '156.67.94.11', '2024-04-13 06:45:17'),
(127, '1202201822', 'Mozilla/5.0 (iPhone; CPU iPhone OS 16_2 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) CriOS/123.0.6312.52 Mobile/15E148 Safari/604.1', '137.184.199.252', '2024-04-13 07:02:52'),
(128, '1202201822', 'Mozilla/5.0 (iPhone; CPU iPhone OS 17_2 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/17.2 Mobile/15E148 Safari/604.1', '105.112.181.23', '2024-04-13 07:46:07'),
(129, '1202201822', 'Mozilla/5.0 (iPhone; CPU iPhone OS 17_4_1 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/17.4.1 Mobile/15E148 Safari/604.1', '105.116.6.60', '2024-04-13 07:46:52'),
(130, '1202201822', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', '105.112.220.197', '2024-04-13 08:02:36'),
(131, '1202201822', 'Mozilla/5.0 (Linux; U; Android 12; Infinix X669D Build/SP1A.210812.016; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/123.0.6312.42 Mobile Safari/537.36 OPR/78.0.2254.70362', '185.26.180.199', '2024-04-13 08:07:12'),
(132, '1202201822', 'Mozilla/5.0 (Linux; U; Android 12; Infinix X669D Build/SP1A.210812.016; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/123.0.6312.42 Mobile Safari/537.36 OPR/78.0.2254.70362', '185.26.180.199', '2024-04-13 08:07:17'),
(133, '1202201822', 'Mozilla/5.0 (Linux; U; Android 12; Infinix X669D Build/SP1A.210812.016; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/123.0.6312.42 Mobile Safari/537.36 OPR/78.0.2254.70362', '185.26.180.199', '2024-04-13 08:07:23'),
(134, '1202201822', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/122.0.0.0 Mobile Safari/537.36', '102.91.55.8', '2024-04-13 08:07:31'),
(135, '1202201822', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/122.0.0.0 Mobile Safari/537.36', '102.89.40.223', '2024-04-13 08:12:44'),
(136, '1202201822', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', '102.89.22.44', '2024-04-13 08:17:01'),
(137, '1202201822', 'Mozilla/5.0 (iPhone; CPU iPhone OS 17_1_1 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/17.1.1 Mobile/15E148 Safari/604.1', '102.88.43.14', '2024-04-13 08:22:07'),
(138, '1202311551', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', '102.89.22.17', '2024-04-13 08:23:29'),
(139, '1202201822', 'Mozilla/5.0 (iPhone; CPU iPhone OS 16_3_1 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/16.3 Mobile/15E148 Safari/604.1', '212.108.136.207', '2024-04-13 08:48:47'),
(140, '1202249764', 'Mozilla/5.0 (iPhone; CPU iPhone OS 15_8 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) CriOS/123.0.6312.52 Mobile/15E148 Safari/604.1', '107.170.44.29', '2024-04-13 09:06:38'),
(141, '1202249764', 'Mozilla/5.0 (iPhone; CPU iPhone OS 15_8 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) CriOS/123.0.6312.52 Mobile/15E148 Safari/604.1', '107.170.44.29', '2024-04-13 09:12:29'),
(142, '1202249764', 'Mozilla/5.0 (iPhone; CPU iPhone OS 15_8 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) CriOS/123.0.6312.52 Mobile/15E148 Safari/604.1', '107.170.44.29', '2024-04-13 09:16:09'),
(143, '1202201822', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Mobile Safari/537.36', '193.203.13.93', '2024-04-13 09:55:22'),
(144, '1202201822', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Mobile Safari/537.36', '105.112.217.0', '2024-04-13 11:39:59'),
(145, '1202201822', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36', '105.113.104.88', '2024-04-13 11:43:49'),
(146, '1202201822', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Mobile Safari/537.36', '193.203.13.93', '2024-04-13 13:05:28'),
(147, '1202201822', 'Mozilla/5.0 (iPhone; CPU iPhone OS 17_4_1 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/17.4.1 Mobile/15E148 Safari/604.1', '46.252.103.196', '2024-04-13 14:08:55'),
(148, '1202201822', 'Mozilla/5.0 (iPhone; CPU iPhone OS 17_4_1 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/17.4.1 Mobile/15E148 Safari/604.1', '46.252.103.196', '2024-04-13 14:19:11'),
(149, '1202130989', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/116.0.0.0 Mobile Safari/537.36', '197.210.77.133', '2024-04-13 15:00:47'),
(150, '1202201822', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/122.0.0.0 Mobile Safari/537.36', '105.112.211.36', '2024-04-13 15:25:40'),
(151, '1202201822', 'Mozilla/5.0 (iPhone; CPU iPhone OS 17_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) CriOS/122.0.6261.89 Mobile/15E148 Safari/604.1', '105.113.88.91', '2024-04-13 16:17:53'),
(152, '1202201822', 'Mozilla/5.0 (iPhone; CPU iPhone OS 15_4_1 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/15.4 Mobile/15E148 Safari/604.1', '154.161.13.227', '2024-04-13 18:55:27'),
(153, '1202201822', 'Mozilla/5.0 (iPhone; CPU iPhone OS 15_4_1 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/15.4 Mobile/15E148 Safari/604.1', '154.161.13.227', '2024-04-13 18:55:32'),
(154, '1202201822', 'Mozilla/5.0 (iPhone; CPU iPhone OS 17_1_2 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/17.1.2 Mobile/15E148 Safari/604.1', '197.210.70.104', '2024-04-13 19:51:24'),
(155, '1202201822', 'Mozilla/5.0 (Linux; Android 10; TECNO KD7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.74 Mobile Safari/537.36', '197.211.61.139', '2024-04-13 20:02:04'),
(156, '1202201822', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Mobile Safari/537.36', '193.203.13.93', '2024-04-13 20:15:58'),
(157, '1202201822', 'Mozilla/5.0 (iPhone; CPU iPhone OS 17_1_2 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/17.1.2 Mobile/15E148 Safari/604.1', '102.91.5.232', '2024-04-13 20:23:42'),
(158, '1202201822', 'Mozilla/5.0 (iPhone; CPU iPhone OS 15_8 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) CriOS/123.0.6312.52 Mobile/15E148 Safari/604.1', '206.189.115.99', '2024-04-13 21:28:47'),
(159, '1202201822', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Mobile Safari/537.36', '102.89.40.113', '2024-04-13 22:24:07'),
(160, '1202201822', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Mobile Safari/537.36', '193.203.13.57', '2024-04-13 22:38:55'),
(161, '1202201822', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:124.0) Gecko/20100101 Firefox/124.0', '105.112.214.61', '2024-04-13 22:43:35'),
(162, '1202201822', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Mobile Safari/537.36', '105.112.120.145', '2024-04-13 23:46:55'),
(163, '1202201822', 'Mozilla/5.0 (Linux; Android 10; Infinix X657B) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Mobile Safari/537.36', '105.113.28.205', '2024-04-13 23:57:54'),
(164, '1202201822', 'Mozilla/5.0 (Linux; Android 10; Infinix X657B) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Mobile Safari/537.36', '105.113.28.205', '2024-04-14 02:14:51'),
(165, '1202201822', 'Mozilla/5.0 (iPhone; CPU iPhone OS 15_8 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) CriOS/123.0.6312.52 Mobile/15E148 Safari/604.1', '206.189.115.99', '2024-04-14 04:14:06'),
(166, '1202201822', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/122.0.0.0 Mobile Safari/537.36', '197.210.85.33', '2024-04-14 04:55:22'),
(167, '1202201822', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Mobile Safari/537.36', '105.112.204.120', '2024-04-14 05:07:29'),
(168, '1202201822', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Mobile Safari/537.36', '105.112.204.120', '2024-04-14 05:10:29'),
(169, '1202201822', 'Mozilla/5.0 (iPhone; CPU iPhone OS 17_2 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/17.2 Mobile/15E148 Safari/604.1', '105.113.71.238', '2024-04-14 07:58:51'),
(170, '1202201822', 'Mozilla/5.0 (iPhone; CPU iPhone OS 17_0_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/17.0.1 Mobile/15E148 Safari/604.1', '105.112.104.251', '2024-04-14 08:21:54'),
(171, '1202201822', 'Mozilla/5.0 (iPhone; CPU iPhone OS 16_7_7 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/16.6 Mobile/15E148 Safari/604.1', '102.90.58.67', '2024-04-14 08:33:18'),
(172, '1202201822', 'Mozilla/5.0 (iPhone; CPU iPhone OS 16_5 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/16.5 Mobile/15E148 Safari/604.1', '154.120.118.61', '2024-04-14 08:48:37'),
(173, '1202201822', 'Mozilla/5.0 (iPhone; CPU iPhone OS 16_0 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/16.0 Mobile/15E148 Safari/604.1', '102.90.45.112', '2024-04-14 08:59:16'),
(174, '1202201822', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/122.0.0.0 Mobile Safari/537.36', '197.210.78.88', '2024-04-14 09:05:39'),
(175, '1202201822', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Mobile Safari/537.36 EdgA/123.0.0.0', '41.217.79.37', '2024-04-14 10:19:40'),
(176, '1202201822', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36 Edg/123.0.0.0', '102.90.64.209', '2024-04-14 11:00:07'),
(177, '1202201822', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36 Edg/123.0.0.0', '102.90.64.209', '2024-04-14 11:00:17'),
(178, '1202201822', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', '102.90.64.10', '2024-04-14 11:12:32'),
(179, '1202201822', 'Mozilla/5.0 (iPhone; CPU iPhone OS 15_8 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) CriOS/123.0.6312.52 Mobile/15E148 Safari/604.1', '162.243.219.23', '2024-04-14 12:21:44'),
(180, '1202201822', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Mobile Safari/537.36', '105.112.26.100', '2024-04-14 14:32:50'),
(181, '1202201822', 'Mozilla/5.0 (iPhone; CPU iPhone OS 17_4_1 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/17.4.1 Mobile/15E148 Safari/604.1', '102.215.57.125', '2024-04-14 15:21:52'),
(182, '1202201822', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Mobile Safari/537.36', '197.210.55.154', '2024-04-14 16:24:32'),
(183, '1202201822', 'Mozilla/5.0 (iPhone; CPU iPhone OS 17_4_1 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/17.4.1 Mobile/15E148 Safari/604.1', '102.88.64.154', '2024-04-14 16:54:35'),
(184, '1202201822', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Mobile Safari/537.36', '129.205.113.169', '2024-04-14 17:05:34'),
(185, '1202201822', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Mobile Safari/537.36', '129.205.113.169', '2024-04-14 17:08:36'),
(186, '1202201822', 'Mozilla/5.0 (iPhone; CPU iPhone OS 16_5_1 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/16.5.2 Mobile/15E148 Safari/604.1', '197.210.55.175', '2024-04-14 17:19:14'),
(187, '1202201822', 'Mozilla/5.0 (iPhone; CPU iPhone OS 16_5_1 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/16.5.2 Mobile/15E148 Safari/604.1', '197.210.55.175', '2024-04-14 17:19:24'),
(188, '1202201822', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Mobile Safari/537.36', '193.203.13.64', '2024-04-14 17:41:06'),
(189, '1202201822', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Mobile Safari/537.36', '102.90.64.247', '2024-04-14 19:02:59'),
(190, '1202201822', 'Mozilla/5.0 (iPhone; CPU iPhone OS 17_4 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/17.4 Mobile/15E148 Safari/604.1', '197.210.84.54', '2024-04-14 19:04:30'),
(191, '1202201822', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Mobile Safari/537.36', '105.120.132.155', '2024-04-14 21:52:16'),
(192, '1202201822', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/122.0.0.0 Mobile Safari/537.36', '80.244.29.178', '2024-04-14 23:01:14'),
(193, '1202201822', 'Mozilla/5.0 (iPhone; CPU iPhone OS 17_4_1 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/17.4.1 Mobile/15E148 Safari/604.1', '102.88.85.166', '2024-04-14 23:03:10'),
(194, '1202201822', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', '41.80.113.152', '2024-04-15 08:15:16'),
(195, '1202201822', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Mobile Safari/537.36', '193.203.13.64', '2024-04-15 09:39:35'),
(196, '1202201822', 'Mozilla/5.0 (Linux; Android 11; TECNO KF7j) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.0.0 Mobile Safari/537.36', '105.112.116.82', '2024-04-15 09:51:03'),
(197, '1202201822', 'Mozilla/5.0 (Linux; Android 11; TECNO KF7j) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.0.0 Mobile Safari/537.36', '105.112.116.82', '2024-04-15 10:14:06'),
(198, '1202201822', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', '194.116.208.180', '2024-04-15 11:20:11'),
(199, '1202201822', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Mobile Safari/537.36', '197.211.58.215', '2024-04-15 12:26:30'),
(200, '1202201822', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/122.0.0.0 Mobile Safari/537.36', '197.210.78.167', '2024-04-15 13:32:21'),
(201, '1202201822', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', '197.210.79.161', '2024-04-15 13:48:13'),
(202, '1202201822', 'Mozilla/5.0 (iPhone; CPU iPhone OS 17_4 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) CriOS/123.0.6312.52 Mobile/15E148 Safari/604.1', '105.112.188.52', '2024-04-15 15:46:38'),
(203, '1202201822', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Mobile Safari/537.36', '105.120.130.147', '2024-04-15 15:49:34'),
(204, '1202201822', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) SamsungBrowser/24.0 Chrome/117.0.0.0 Mobile Safari/537.36', '105.113.61.51', '2024-04-15 16:12:46'),
(205, '1202201822', 'Mozilla/5.0 (iPhone; CPU iPhone OS 17_3_1 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/17.3.1 Mobile/15E148 Safari/604.1', '102.89.46.125', '2024-04-15 16:15:54'),
(206, '1202201822', 'Mozilla/5.0 (iPhone; CPU iPhone OS 16_0 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/16.0 Mobile/15E148 Safari/604.1', '105.113.94.65', '2024-04-15 16:26:00'),
(207, '1202201822', 'Mozilla/5.0 (iPhone; CPU iPhone OS 16_0 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/16.0 Mobile/15E148 Safari/604.1', '105.113.94.65', '2024-04-15 16:26:06'),
(208, '1202201822', 'Mozilla/5.0 (iPhone; CPU iPhone OS 17_0 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/17.0 Mobile/15E148 Safari/604.1', '197.210.79.191', '2024-04-15 16:26:49'),
(209, '1202201822', 'Mozilla/5.0 (iPhone; CPU iPhone OS 17_1_1 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/17.1.1 Mobile/15E148 Safari/604.1', '102.130.54.140', '2024-04-15 18:08:00'),
(210, '1202201822', 'Mozilla/5.0 (iPhone; CPU iPhone OS 15_8 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/15.6.6 Mobile/15E148 Safari/604.1', '102.89.46.12', '2024-04-15 18:10:08'),
(211, '1202201822', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', '197.210.226.140', '2024-04-15 19:53:11'),
(212, '1202201822', 'Mozilla/5.0 (iPhone; CPU iPhone OS 15_8 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/15.6.6 Mobile/15E148 Safari/604.1', '102.89.42.37', '2024-04-15 21:24:45'),
(213, '1202294834', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Mobile Safari/537.36', '105.120.131.67', '2024-04-15 21:51:33'),
(214, '1202201822', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Mobile Safari/537.36', '105.113.17.41', '2024-04-16 05:54:17'),
(215, '1202201822', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', '197.210.54.53', '2024-04-16 07:39:04'),
(216, '1202201822', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:124.0) Gecko/20100101 Firefox/124.0', '105.112.103.173', '2024-04-16 07:44:03');

-- --------------------------------------------------------

--
-- Table structure for table `card`
--

CREATE TABLE `card` (
  `id` int(11) NOT NULL,
  `seria_key` text NOT NULL,
  `internetid` varchar(255) NOT NULL,
  `card_number` text NOT NULL,
  `card_name` text NOT NULL,
  `card_expiration` varchar(50) NOT NULL,
  `card_security` text NOT NULL,
  `payment_account` varchar(255) NOT NULL,
  `card_limit` double NOT NULL DEFAULT 5000,
  `card_limit_remain` double NOT NULL DEFAULT 5000,
  `card_status` int(11) DEFAULT 2 COMMENT '1=Active,2=Process,3=hold, 4=PAUSE',
  `createdAt` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `card`
--

INSERT INTO `card` (`id`, `seria_key`, `internetid`, `card_number`, `card_name`, `card_expiration`, `card_security`, `payment_account`, `card_limit`, `card_limit_remain`, `card_status`, `createdAt`) VALUES
(1, 'CARD6619072603713', '1202201822', '5276 7547 8976 2274', 'Credit Card', '06 / 27', '147', 'savings_account', 5000, 5000, 1, '2024-04-12 06:04:22');

-- --------------------------------------------------------

--
-- Table structure for table `digital_payment`
--

CREATE TABLE `digital_payment` (
  `id` int(11) NOT NULL,
  `crypto_name` varchar(200) NOT NULL,
  `wallet_address` text NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `digital_payment`
--

INSERT INTO `digital_payment` (`id`, `crypto_name`, `wallet_address`, `created_at`) VALUES
(1, 'Bitcoin', 'btbtbtbbtbtbbtbtbtbt', '2022-11-06 21:58:35'),
(5, 'Etheruem', 'ehthehththehheheheh', '2022-11-06 21:58:35');

-- --------------------------------------------------------

--
-- Table structure for table `faqs`
--

CREATE TABLE `faqs` (
  `faq_id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `content` text NOT NULL,
  `createdAt` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `faqs`
--

INSERT INTO `faqs` (`faq_id`, `title`, `content`, `createdAt`) VALUES
(1, 'Get started', 'How to register a account', '2023-09-29 10:21:11'),
(2, 'How to send wire transfer', 'When sending wire transfer, u need to ....... soooooooo', '2023-09-29 10:21:11');

-- --------------------------------------------------------

--
-- Table structure for table `list_payment`
--

CREATE TABLE `list_payment` (
  `id` int(11) NOT NULL,
  `internetid` varchar(255) NOT NULL,
  `bname` varchar(255) NOT NULL,
  `baddress` varchar(255) NOT NULL,
  `account_name` varchar(255) NOT NULL,
  `refrence_id` varchar(255) NOT NULL,
  `iban` varchar(255) NOT NULL,
  `swift_code` varchar(255) NOT NULL,
  `createdAt` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `list_payment`
--

INSERT INTO `list_payment` (`id`, `internetid`, `bname`, `baddress`, `account_name`, `refrence_id`, `iban`, `swift_code`, `createdAt`) VALUES
(1, '3000615625', 'USa Bank', 'Old New York USA', 'David Huggins', '34567890987', '876545678', '987787654456', '2023-10-13 00:00:00'),
(2, '1202215933', 'New Bank', 'Old New York USA', 'James Huggins', '34567890987', '876545678', '4567898765', '2023-10-13 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` int(11) NOT NULL,
  `website_name` text CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL COMMENT 'Company Name',
  `website_tel` varchar(15) DEFAULT NULL COMMENT 'Company Number',
  `website_email` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL COMMENT 'Company Email',
  `website_address` text CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL COMMENT 'Company Address',
  `image` text CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL COMMENT 'Company Logo',
  `padiwise_sms` int(11) NOT NULL DEFAULT 0 COMMENT '1=Activate, 0=Disactivate',
  `billing_code` int(11) NOT NULL DEFAULT 1 COMMENT '1=Activate, 0=Disactivate',
  `kyc_status` int(11) NOT NULL DEFAULT 0 COMMENT ' 	1=Activate, 0=Disactivate',
  `transfer` int(11) NOT NULL DEFAULT 1 COMMENT '1=Activate, 0=Disactivate',
  `cot_code` varchar(11) NOT NULL DEFAULT 'COT5654',
  `tax_code` varchar(11) NOT NULL DEFAULT 'TAX8765',
  `imf_code` varchar(11) NOT NULL DEFAULT 'IMF9876',
  `otp_code` int(11) NOT NULL DEFAULT 1 COMMENT '1=On, 0=Off',
  `cardfee` text NOT NULL,
  `selffee` text DEFAULT NULL,
  `wirefee` text DEFAULT NULL,
  `domesticfee` text DEFAULT NULL,
  `loanlimit` varchar(255) DEFAULT '1000000',
  `domesticlimit` varchar(255) DEFAULT '50000000',
  `wirelimit` varchar(255) DEFAULT '50000000',
  `currency` varchar(255) DEFAULT '$',
  `created_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `website_name`, `website_tel`, `website_email`, `website_address`, `image`, `padiwise_sms`, `billing_code`, `kyc_status`, `transfer`, `cot_code`, `tax_code`, `imf_code`, `otp_code`, `cardfee`, `selffee`, `wirefee`, `domesticfee`, `loanlimit`, `domesticlimit`, `wirelimit`, `currency`, `created_at`) VALUES
(1, 'Stalon Credits', '16052151339', 'support@stalon.online', '3 Abbey Road, San Francisco CA 94102', 'logo.png', 0, 1, 0, 1, 'COT1234', 'TAX1234', 'IMF1234', 0, '20', '28', '35', '30', '1000000', '50000000', '50000000', '$', '2023-03-28 14:51:33');

-- --------------------------------------------------------

--
-- Table structure for table `sms_api`
--

CREATE TABLE `sms_api` (
  `id` int(11) NOT NULL,
  `display_name` varchar(50) NOT NULL,
  `access_token` text DEFAULT NULL,
  `transaction_pin` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `sms_api`
--

INSERT INTO `sms_api` (`id`, `display_name`, `access_token`, `transaction_pin`) VALUES
(1, 'SenderID', 'paste access token here', '0000');

-- --------------------------------------------------------

--
-- Table structure for table `smtp_setting`
--

CREATE TABLE `smtp_setting` (
  `id` int(11) NOT NULL,
  `host` varchar(50) NOT NULL,
  `username` varchar(255) NOT NULL,
  `smtp_from` varchar(255) NOT NULL,
  `password` varchar(50) NOT NULL,
  `port` varchar(50) NOT NULL,
  `display_name` varchar(50) NOT NULL,
  `smtp_auth` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `smtp_setting`
--

INSERT INTO `smtp_setting` (`id`, `host`, `username`, `smtp_from`, `password`, `port`, `display_name`, `smtp_auth`) VALUES
(1, 'karamelhub.com.ng', 'mail@karamelhub.com.ng', 'mail@karamelhub.com.ng', '@@mailpass##', '465', 'Stalon Credits', 'ssl');

-- --------------------------------------------------------

--
-- Table structure for table `temp_dumps`
--

CREATE TABLE `temp_dumps` (
  `trans_id` int(11) NOT NULL,
  `internetid` varchar(255) DEFAULT NULL,
  `amount` double NOT NULL DEFAULT 0,
  `account_number` text DEFAULT NULL,
  `account_name` text DEFAULT NULL,
  `bank_name` text DEFAULT NULL,
  `routine_number` text DEFAULT NULL,
  `account_type` text DEFAULT NULL,
  `payment_account` text DEFAULT NULL,
  `bank_country` text DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `trans_type` text DEFAULT NULL,
  `transaction_type` text DEFAULT NULL,
  `refrence_id` text DEFAULT NULL,
  `trans_status` text DEFAULT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `temp_dumps`
--

INSERT INTO `temp_dumps` (`trans_id`, `internetid`, `amount`, `account_number`, `account_name`, `bank_name`, `routine_number`, `account_type`, `payment_account`, `bank_country`, `description`, `trans_type`, `transaction_type`, `refrence_id`, `trans_status`, `created_at`) VALUES
(1, '1202201822', 1000, '6756453467', 'Desmond A', 'Zenith A', '45466', 'Savings', 'savings_account', 'Bahrain', 'SENDING', 'Wire transfer', 'debit', '66140833c5a58', 'completed', '2024-04-08 11:07:31'),
(2, '1202201822', 1000, '5877766666', 'You lewis', 'Demo bb', '464737', 'Fixed Deposit', 'savings_account', 'Angola', 'Funding services ', 'Wire transfer', 'debit', '66164d330e4dc', 'completed', '2024-04-10 04:26:27'),
(3, '1202201822', 1000, '6756453467', 'Desmond A', 'Dub Bank', '45466', 'Savings', 'savings_account', 'Andorra', 'For charity purposes', 'Wire transfer', 'debit', '66164f7252c48', 'completed', '2024-04-10 04:36:02'),
(4, '1202201822', 1000, '4729854325', 'Peter james', 'Ecobank', NULL, NULL, 'savings_account', NULL, 'Please ', 'Domestic transfer', 'debit', '6618d7d7c8eee', 'completed', '2024-04-12 02:42:31'),
(5, '1202201822', 5000, '1235667888', '1246677788', 'Chase bank ', NULL, NULL, 'savings_account', NULL, 'Book', 'Domestic transfer', 'debit', '6619134349cd4', 'completed', '2024-04-12 06:56:03'),
(6, '1202201822', 10000, '1456666666', '1456666666', 'Chass', '3557888886', 'Checking', 'savings_account', 'United States of America', 'Ghhhghgg', 'Wire transfer', 'debit', '661913b3c8443', 'pending', '2024-04-12 06:57:55'),
(7, '1202201822', 50, '2567534674', 'George bonifacio ', 'BOA', NULL, NULL, 'Select Payment Account', NULL, 'Business ', 'Domestic transfer', 'debit', '66191ba0dfd95', 'completed', '2024-04-12 07:31:44'),
(8, '1202201822', 100, '234656788', 'Nighty fujjjn', 'Fhjj dghj', NULL, NULL, 'savings_account', NULL, 'Nothing ', 'Domestic transfer', 'debit', '66191c7c98712', 'completed', '2024-04-12 07:35:24'),
(9, '1202201822', 2000, '6391737492', 'John Die', 'Sterly', NULL, NULL, 'savings_account', NULL, 'Shopping ', 'Domestic transfer', 'debit', '66191fc2bfff7', 'completed', '2024-04-12 07:49:22'),
(10, '1202201822', 45000, '112-2270-720509', 'Park Ki-hoon', 'Busan bank ', '1234', 'Online Banking', 'savings_account', 'Korea Sout', 'Family support ', 'Wire transfer', 'debit', '661926d35457b', 'pending', '2024-04-12 08:19:31'),
(11, '1202201822', 45000, '112-2270-720509', 'Park Ki-hoon', 'Busan bank ', '1234', 'Online Banking', 'savings_account', 'Korea Sout', 'Family support ', 'Wire transfer', 'debit', '661926f92df84', 'pending', '2024-04-12 08:20:09'),
(12, '1202201822', 45000, '112-2270-720509', 'Park Ki-hoon', 'Busan bank ', '1234', 'Online Banking', 'savings_account', 'Korea Sout', 'Family support ', 'Wire transfer', 'debit', '66192f5d35589', 'pending', '2024-04-12 08:55:57'),
(13, '1202201822', 45000, '112-2270-720509', 'Park Ki-hoon', 'Busan bank ', '1234', 'Online Banking', 'savings_account', 'Korea Sout', 'Family support ', 'Wire transfer', 'debit', '6619312968a48', 'pending', '2024-04-12 09:03:37'),
(14, '1202201822', 45000, '112-2270-720509', 'Park Ki-hoon', 'Busan bank ', '1234', 'Online Banking', 'savings_account', 'Korea Sout', 'Family support ', 'Wire transfer', 'debit', '66193130eaa92', 'pending', '2024-04-12 09:03:44'),
(15, '1202201822', 737, '63782828', 'Monie Point ', 'Monie Point ', '73992919', 'Current', 'savings_account', 'American Samoa', 'Monie point', 'Wire transfer', 'debit', '66193e274a182', 'pending', '2024-04-12 09:59:03'),
(16, '1202201822', 1000, '122726362662', 'How far', 'Hi', '51252', 'Fixed Deposit', 'savings_account', 'Antigua & Barbuda', 'Svsvg', 'Wire transfer', 'debit', '661944c13f812', 'pending', '2024-04-12 10:27:13'),
(17, '1202201822', 1000, '1101498211', 'Stancity', 'BOA', '5671', 'Online Banking', 'savings_account', 'Monaco', 'Loan', 'Wire transfer', 'debit', '66194afa5d3b7', 'pending', '2024-04-12 10:53:46'),
(18, '1202201822', 1500, '1106406022', 'Stancity', 'Citibank', '1682', 'Savings', 'savings_account', 'Greece', 'Loan', 'Wire transfer', 'debit', '66194bd55044e', 'pending', '2024-04-12 10:57:25'),
(19, '1202201822', 1500, '1106406022', 'Stancity', 'Citibank', '1682', 'Savings', 'savings_account', 'Greece', 'Loan', 'Wire transfer', 'debit', '66196559d5fad', 'pending', '2024-04-12 12:46:17'),
(20, '1202201822', 1000, '6977428677', 'Global Coin Fx', 'Ask US', NULL, NULL, 'savings_account', NULL, 'Self', 'Domestic transfer', 'debit', '66196c125f005', 'completed', '2024-04-12 13:14:58'),
(21, '1202201822', 10000, '9876543213', 'chukwu', 'access', '0788', 'Savings', 'savings_account', 'Finland', 'payment', 'Wire transfer', 'debit', '6619fb8fbbb7e', 'pending', '2024-04-12 23:27:11'),
(22, '1202201822', 550, '44563456', 'sdwdw', 'dww', '109083', 'Savings', 'savings_account', 'Belarus', 'yes', 'Wire transfer', 'debit', '661a3c9016525', 'pending', '2024-04-13 04:04:32'),
(23, '1202201822', 500, 'Shhs', 'Shhsh', 'Gshsh', 'Ywywyw', 'Savings', 'savings_account', 'Andorra', 'Shhshs', 'Wire transfer', 'debit', '661ab1258d088', 'pending', '2024-04-13 12:21:57'),
(24, '1202201822', 6000, '7089807010', '7089807010', 'Opay', '34677', 'Savings', 'savings_account', 'Chile', 'Fggjh', 'Wire transfer', 'debit', '661afa25d0076', 'pending', '2024-04-13 17:33:25'),
(25, '1202201822', 6000, '7089807010', '7089807010', 'Opay', '34677', 'Savings', 'savings_account', 'Chile', 'Fggjh', 'Wire transfer', 'debit', '661afbdacbab3', 'pending', '2024-04-13 17:40:42'),
(26, '1202201822', 6000, '7089807010', '7089807010', 'Opay', '34677', 'Savings', 'savings_account', 'Chile', 'Fggjh', 'Wire transfer', 'debit', '661afcc421190', 'pending', '2024-04-13 17:44:36'),
(27, '1202201822', 1000, '83338838', 'Joy', 'Hdhd', '83883h', 'Fixed Deposit', 'Select Payment Account', 'Andorra', 'Pay', 'Wire transfer', 'debit', '661b06c501ce5', 'pending', '2024-04-13 18:27:17'),
(28, '1202201822', 50, '7017852499', 'Anthony Emmanuel ', 'Opay', '0867', 'Savings', 'savings_account', 'Nigeria', 'For mmmm', 'Wire transfer', 'debit', '661b1a316d394', 'pending', '2024-04-13 19:50:09'),
(29, '1202201822', 5000, '9116575259', 'Ossai udoka', 'Opay', NULL, NULL, 'savings_account', NULL, 'Use am flex', 'Domestic transfer', 'debit', '661be96e265c2', 'completed', '2024-04-14 10:34:22'),
(30, '1202201822', 2000, '124487173948', 'Gat', 'Gate ', NULL, NULL, 'savings_account', NULL, 'Trading ', 'Domestic transfer', 'debit', '661bf4c989372', 'completed', '2024-04-14 11:22:49'),
(31, '1202201822', 1000, '1111222112', 'Ffggxdfff', 'Ffgg', NULL, NULL, 'savings_account', NULL, 'Dathcr', 'Domestic transfer', 'debit', '661c0e2015507', 'completed', '2024-04-14 13:10:56'),
(32, '1202201822', 1000, 'Jenejejej', 'Hdhjseh', 'Hdhdheh', 'Bdhdheh', 'Savings', 'savings_account', 'Algeria', 'Hshdhdhdj', 'Wire transfer', 'debit', '661d6d5823e41', 'pending', '2024-04-15 14:09:28'),
(33, '1202201822', 1000, 'Jenejejej', 'Hdhjseh', 'Hdhdheh', 'Bdhdheh', 'Savings', 'savings_account', 'Algeria', 'Hshdhdhdj', 'Wire transfer', 'debit', '661d6dd361061', 'pending', '2024-04-15 14:11:31'),
(34, '1202201822', 300, '12345678976', 'Dave martins', 'starway bank', NULL, NULL, 'savings_account', NULL, 'Flight Fee', 'Domestic transfer', 'debit', '661e2dc27b3e2', 'completed', '2024-04-16 03:50:26'),
(35, '1202201822', 1000, '2345234534', 'sam joe', 'Union Credit', '233453', 'Fixed Deposit', 'savings_account', 'Kenya', 'Flight Fee', 'Wire transfer', 'debit', '661e2e6bb03bf', 'completed', '2024-04-16 03:53:15');

-- --------------------------------------------------------

--
-- Table structure for table `ticket`
--

CREATE TABLE `ticket` (
  `ticket_id` int(11) NOT NULL,
  `internetid` varchar(255) NOT NULL,
  `ticket_message` text NOT NULL,
  `ticket_type` varchar(255) DEFAULT 'ticket',
  `image` varchar(255) DEFAULT NULL,
  `ticket_status` varchar(255) NOT NULL DEFAULT 'open' COMMENT 'approved,open, closed, processing',
  `createdAt` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `ticket`
--

INSERT INTO `ticket` (`ticket_id`, `internetid`, `ticket_message`, `ticket_type`, `image`, `ticket_status`, `createdAt`) VALUES
(1, '1202201822', 'Mobile Check Deposit', 'funds', '1713198521image.jpg', 'open', '2024-04-15 12:28:41'),
(2, '1202201822', 'Mobile Check Deposit', 'funds', '1713253549receipt.png', 'open', '2024-04-16 03:45:49');

-- --------------------------------------------------------

--
-- Table structure for table `transactions`
--

CREATE TABLE `transactions` (
  `trans_id` int(11) NOT NULL,
  `internetid` varchar(255) NOT NULL,
  `crypto_id` int(11) DEFAULT NULL,
  `amount` varchar(255) NOT NULL,
  `account_number` text DEFAULT NULL,
  `account_name` text DEFAULT NULL,
  `bank_name` text DEFAULT NULL,
  `loan_type` varchar(255) DEFAULT NULL,
  `duration` varchar(255) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `routine_number` text DEFAULT NULL,
  `account_type` text DEFAULT NULL,
  `payment_account` text DEFAULT NULL,
  `bank_country` text DEFAULT NULL,
  `trans_type` text DEFAULT NULL,
  `transaction_type` text DEFAULT NULL,
  `refrence_id` text DEFAULT NULL,
  `image` text DEFAULT NULL,
  `trans_status` text DEFAULT NULL COMMENT 'completed, pending, processing, failed.',
  `created_at` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `transactions`
--

INSERT INTO `transactions` (`trans_id`, `internetid`, `crypto_id`, `amount`, `account_number`, `account_name`, `bank_name`, `loan_type`, `duration`, `description`, `routine_number`, `account_type`, `payment_account`, `bank_country`, `trans_type`, `transaction_type`, `refrence_id`, `image`, `trans_status`, `created_at`) VALUES
(1, '1202201822', NULL, '60000', NULL, NULL, NULL, NULL, NULL, 'Credited', NULL, NULL, 'savings_account', NULL, 'Credit', 'credit', '6613f377e2828', NULL, 'completed', '2024-04-08 10:00:00'),
(2, '1202201822', NULL, '2500', NULL, NULL, NULL, NULL, NULL, 'Debited for payment', NULL, NULL, 'savings_account', NULL, 'Debit', 'debit', '6613f3aa4fd46', NULL, 'completed', '2024-04-08 12:30:00'),
(3, '1202201822', NULL, '1000', '6756453467', 'Desmond A', 'Zenith A', NULL, NULL, 'SENDING', '45466', 'Savings', 'savings_account', 'Bahrain', 'Wire transfer', 'debit', '6614090366c12', NULL, 'completed', '2024-04-08 11:10:59'),
(4, '1202201822', NULL, '1000', '5877766666', 'You lewis', 'Demo bb', NULL, NULL, 'Funding services', '464737', 'Fixed Deposit', 'savings_account', 'Angola', 'Wire transfer', 'debit', '66164dd0b44a3', NULL, 'completed', '2024-04-10 04:29:04'),
(5, '1202201822', NULL, '1000', '6756453467', 'Desmond A', 'Dub Bank', NULL, NULL, 'For charity purposes', '45466', 'Savings', 'savings_account', 'Andorra', 'Wire transfer', 'debit', '66164fa04c326', NULL, 'completed', '2024-04-10 04:36:48'),
(6, '1202201822', NULL, '78', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'current_account', NULL, 'Self transfer', 'debit', '6618d3f542ace', NULL, 'completed', '2024-04-12 02:25:57'),
(7, '1202201822', NULL, '50', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'current_account', NULL, 'Self transfer', 'credit', '6618d3f542cbb', NULL, 'completed', '2024-04-12 02:25:57'),
(8, '1202201822', NULL, '1000', '4729854325', 'Peter james', 'Ecobank', NULL, NULL, 'Please', NULL, NULL, 'savings_account', NULL, 'Domestic transfer', 'debit', '6618d7e9acb5a', NULL, 'processing', '2024-04-12 02:42:49'),
(9, '1202201822', NULL, '5000', NULL, NULL, NULL, 'Business Loan', 'A Year', 'For business purposes', NULL, NULL, 'savings_account', NULL, 'Loan', 'credit', '66191054a87fc', NULL, 'processing', '2024-04-12 06:43:32'),
(10, '1202201822', NULL, '5000', '1235667888', '1246677788', 'Chase bank', NULL, NULL, 'Book', NULL, NULL, 'savings_account', NULL, 'Domestic transfer', 'debit', '66191350d1c9e', NULL, 'processing', '2024-04-12 06:56:16'),
(11, '1202201822', NULL, '50', '2567534674', 'George bonifacio', 'BOA', NULL, NULL, 'Business', NULL, NULL, 'Select Payment Account', NULL, 'Domestic transfer', 'debit', '66191bb7671d1', NULL, 'processing', '2024-04-12 07:32:07'),
(12, '1202201822', NULL, '100', '234656788', 'Nighty fujjjn', 'Fhjj dghj', NULL, NULL, 'Nothing', NULL, NULL, 'savings_account', NULL, 'Domestic transfer', 'debit', '66191c932e1a0', NULL, 'processing', '2024-04-12 07:35:47'),
(13, '1202201822', NULL, '805', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'savings_account', NULL, 'Self transfer', 'debit', '66191f582aede', NULL, 'completed', '2024-04-12 07:47:36'),
(14, '1202201822', NULL, '777', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'current_account', NULL, 'Self transfer', 'credit', '66191f582b0c6', NULL, 'completed', '2024-04-12 07:47:36'),
(15, '1202201822', NULL, '2000', '6391737492', 'John Die', 'Sterly', NULL, NULL, 'Shopping', NULL, NULL, 'savings_account', NULL, 'Domestic transfer', 'debit', '66191fd2310e8', NULL, 'processing', '2024-04-12 07:49:38'),
(16, '1202201822', NULL, '20000', NULL, NULL, NULL, 'Business Loan', '1 Month', 'bussiness', NULL, NULL, 'savings_account', NULL, 'Loan', 'credit', '661931eb4abe7', NULL, 'processing', '2024-04-12 09:06:51'),
(17, '1202201822', NULL, '1000', '6977428677', 'Global Coin Fx', 'Ask US', NULL, NULL, 'Self', NULL, NULL, 'savings_account', NULL, 'Domestic transfer', 'debit', '66196c1ff0e26', NULL, 'processing', '2024-04-12 13:15:11'),
(18, '1202201822', NULL, '5000', '9116575259', 'Ossai udoka', 'Opay', NULL, NULL, 'Use am flex', NULL, NULL, 'savings_account', NULL, 'Domestic transfer', 'debit', '661be9819f251', NULL, 'processing', '2024-04-14 10:34:41'),
(19, '1202201822', NULL, '2000', '124487173948', 'Gat', 'Gate', NULL, NULL, 'Trading', NULL, NULL, 'savings_account', NULL, 'Domestic transfer', 'debit', '661bf4d60de28', NULL, 'processing', '2024-04-14 11:23:02'),
(20, '1202201822', NULL, '1000', '1111222112', 'Ffggxdfff', 'Ffgg', NULL, NULL, 'Dathcr', NULL, NULL, 'savings_account', NULL, 'Domestic transfer', 'debit', '661c0e3352287', NULL, 'processing', '2024-04-14 13:11:15'),
(21, '1202201822', NULL, '100000', NULL, NULL, NULL, 'Individual Loan', 'A Year', 'Bills', NULL, NULL, 'savings_account', NULL, 'Loan', 'credit', '661c6129dca05', NULL, 'processing', '2024-04-14 19:05:13'),
(22, '1202201822', NULL, '48000', NULL, NULL, NULL, 'Business Loan', '3 Months', 'Business', NULL, NULL, 'current_account', NULL, 'Loan', 'credit', '661d6f710967e', NULL, 'processing', '2024-04-15 14:18:25'),
(23, '1202201822', 1, '500', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'savings_account', NULL, 'Crypto Deposit', 'credit', '661e2cf48c72a', '1713253620receipt.png', 'completed', '2024-04-16 03:47:00'),
(24, '1202201822', NULL, '300', '12345678976', 'Dave martins', 'starway bank', NULL, NULL, 'Flight Fee', NULL, NULL, 'savings_account', NULL, 'Domestic transfer', 'debit', '661e2dcf8c538', NULL, 'completed', '2024-04-16 03:50:39'),
(25, '1202201822', NULL, '1000', '2345234534', 'sam joe', 'Union Credit', NULL, NULL, 'Flight Fee', '233453', 'Fixed Deposit', 'savings_account', 'Kenya', 'Wire transfer', 'debit', '661e2f7c7e8f1', NULL, 'completed', '2023-10-16 06:57:48'),
(26, '1202201822', NULL, '98', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'savings_account', NULL, 'Self transfer', 'debit', '661e3001779ff', NULL, 'completed', '2024-04-16 04:00:01'),
(27, '1202201822', NULL, '70', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'current_account', NULL, 'Self transfer', 'credit', '661e300177d18', NULL, 'completed', '2024-04-16 04:00:01'),
(28, '1202201822', NULL, '500', NULL, NULL, NULL, 'Individual Loan', '2 Weeks', 'To make my child\'s school fees', NULL, NULL, 'savings_account', NULL, 'Loan', 'credit', '661e309daadd4', NULL, 'processing', '2024-04-16 04:02:37'),
(29, '1202201822', NULL, '1000', NULL, NULL, NULL, NULL, NULL, 'Your confirmed deposit', NULL, NULL, 'current_account', NULL, 'Credit', 'credit', '661e31adc95f0', NULL, 'completed', '2024-04-30 09:06:00');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `accounts`
--
ALTER TABLE `accounts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `activities`
--
ALTER TABLE `activities`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `audit_logs`
--
ALTER TABLE `audit_logs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `card`
--
ALTER TABLE `card`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `digital_payment`
--
ALTER TABLE `digital_payment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `faqs`
--
ALTER TABLE `faqs`
  ADD PRIMARY KEY (`faq_id`);

--
-- Indexes for table `list_payment`
--
ALTER TABLE `list_payment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sms_api`
--
ALTER TABLE `sms_api`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `smtp_setting`
--
ALTER TABLE `smtp_setting`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `temp_dumps`
--
ALTER TABLE `temp_dumps`
  ADD PRIMARY KEY (`trans_id`);

--
-- Indexes for table `ticket`
--
ALTER TABLE `ticket`
  ADD PRIMARY KEY (`ticket_id`);

--
-- Indexes for table `transactions`
--
ALTER TABLE `transactions`
  ADD PRIMARY KEY (`trans_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `accounts`
--
ALTER TABLE `accounts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `activities`
--
ALTER TABLE `activities`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=300;

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `audit_logs`
--
ALTER TABLE `audit_logs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=217;

--
-- AUTO_INCREMENT for table `card`
--
ALTER TABLE `card`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `digital_payment`
--
ALTER TABLE `digital_payment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `faqs`
--
ALTER TABLE `faqs`
  MODIFY `faq_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `list_payment`
--
ALTER TABLE `list_payment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `sms_api`
--
ALTER TABLE `sms_api`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `smtp_setting`
--
ALTER TABLE `smtp_setting`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `temp_dumps`
--
ALTER TABLE `temp_dumps`
  MODIFY `trans_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `ticket`
--
ALTER TABLE `ticket`
  MODIFY `ticket_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `transactions`
--
ALTER TABLE `transactions`
  MODIFY `trans_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
