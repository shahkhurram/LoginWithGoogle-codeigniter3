-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 05, 2023 at 07:00 AM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cidb`
--

-- --------------------------------------------------------

--
-- Table structure for table `google_users`
--

CREATE TABLE `google_users` (
  `google_id` int(11) NOT NULL,
  `login_oauth_uid` varchar(100) NOT NULL,
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `google_email` varchar(255) NOT NULL,
  `gender` varchar(255) NOT NULL,
  `picture_link` varchar(255) NOT NULL,
  `updated_at` datetime NOT NULL DEFAULT current_timestamp(),
  `created_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `relevantlaw_user`
--

CREATE TABLE `relevantlaw_user` (
  `id` int(11) NOT NULL,
  `location_id` int(11) NOT NULL,
  `prefix` varchar(10) NOT NULL,
  `first_name` varchar(100) NOT NULL,
  `middle_name` varchar(100) NOT NULL,
  `last_name` varchar(100) NOT NULL,
  `company_name` varchar(100) NOT NULL,
  `email` varchar(50) NOT NULL,
  `email_type` varchar(100) NOT NULL,
  `phone` varchar(30) NOT NULL,
  `phone_type` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `street_address` varchar(200) NOT NULL,
  `city` varchar(30) NOT NULL,
  `zip` varchar(10) NOT NULL,
  `state` varchar(30) NOT NULL,
  `country` varchar(30) NOT NULL,
  `street_address_type` varchar(100) NOT NULL,
  `cc_date` varchar(6) NOT NULL,
  `cc_code` int(11) NOT NULL,
  `credit_no` varchar(20) NOT NULL,
  `name_card` varchar(20) NOT NULL,
  `type` varchar(10) NOT NULL COMMENT '1 =>"admin", 2=>"person",3=>"company",4=>"admin user"',
  `status` int(11) NOT NULL DEFAULT 1 COMMENT '1=>"active", 0=>"inactive"',
  `appove_type` int(11) NOT NULL COMMENT '1=>appoved,2=>disapproved',
  `billing_address` varchar(200) NOT NULL,
  `billing_address_type` varchar(100) NOT NULL,
  `billing_city` varchar(100) NOT NULL,
  `billing_zip` varchar(100) NOT NULL,
  `billing_state` varchar(100) NOT NULL,
  `billing_country` varchar(100) NOT NULL,
  `img` varchar(200) NOT NULL,
  `clio_id` bigint(20) NOT NULL,
  `log` timestamp NOT NULL DEFAULT current_timestamp(),
  `forgot_password` int(11) NOT NULL,
  `password_key` varchar(200) NOT NULL,
  `user_permission` longtext NOT NULL,
  `login_auth_id` text NOT NULL,
  `profile_update_status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `relevantlaw_user`
--

INSERT INTO `relevantlaw_user` (`id`, `location_id`, `prefix`, `first_name`, `middle_name`, `last_name`, `company_name`, `email`, `email_type`, `phone`, `phone_type`, `password`, `street_address`, `city`, `zip`, `state`, `country`, `street_address_type`, `cc_date`, `cc_code`, `credit_no`, `name_card`, `type`, `status`, `appove_type`, `billing_address`, `billing_address_type`, `billing_city`, `billing_zip`, `billing_state`, `billing_country`, `img`, `clio_id`, `log`, `forgot_password`, `password_key`, `user_permission`, `login_auth_id`, `profile_update_status`) VALUES
(14, 0, '', '', '', '', '', 'shadab_rauf@yahoo.com', '', '', '', 'e10adc3949ba59abbe56e057f20f883e', '', '', '', '', '', '', '', 0, '', '', '1', 1, 1, '', '', '', '', '', '', '', 0, '2019-11-20 15:46:44', 0, '', '', '', 0),
(16, 14, '', 'Mayank', '', 'Aggarwal', '', 'mayank@letuscode1.com', 'work', '(111) 111 - 1111', '', 'bc4e13e2da31dff4e5b994a9d18efcb0', '', '', '', '', '', '0', '', 0, '', '', '2', 1, 1, '', '', '', '', '', '', '', 1435945441, '2020-04-18 13:53:14', 1, '6c064991804d87c01d8b40e19b3136b6a312aacf7e', '14', '', 0),
(18, 0, '', '', '', '', '', 'mbold@relevantlaw.com', '', '', '', '6f035c4afb5ae178f8f240c66e7e05b6', '', '', '', '', '', '', '', 0, '', '', '1', 1, 1, '', '', '', '', '', '', '', 0, '2020-05-16 15:46:44', 1, 'a9d9510c983011a3862c4c2760765f93c8cd9fa4f0', '', '', 0),
(19, 14, '', 'Shadab', '', 'Rauf', '', 'shadab@etechlogix.com', 'work', '', '0', 'dcf8e90e0afe922b879ea0c3aad08217', '', '', '', '', '', '0', '', 0, '', '', '2', 1, 1, '', '', '', '', '', '', '', 0, '2020-05-23 16:38:50', 0, '', '', '', 0),
(20, 14, '', 'Mark', '', 'Bold', '', 'kmbold@msn.com', 'home', '(434) 200 - 9567', 'work', 'd87e78398291127974ddc60e6562b2b4', '102 Northwynd Cir. Suite A', 'Lynchburg', '24502', 'VA', 'United States', 'work', '', 0, '', '', '2', 1, 1, '', '', '', '', '', '', '', 0, '2020-05-23 16:41:21', 0, '', '', '', 0),
(22, 0, '', 'Mayank', '', 'Aggarwal', '', 'mayankaggarwal@live.in', '', '(123) 456 - 7890', '', 'f799732cd2169422de9bb66144a8e713', '', '', '', '', '', '', '', 0, '', '', '4', 1, 1, '', '', '', '', '', '', '', 0, '2020-07-18 16:04:28', 0, '', '14', '', 0),
(23, 0, '', '', '', '', '', 'kristin@relevantlaw.com', '', '', '', 'f4b4b5378db9a03b14617f072b1864fd', '', '', '', '', '', '', '', 0, '', '', '1', 1, 1, '', '', '', '', '', '', '', 0, '2021-04-24 07:38:48', 0, '', '', '', 0),
(24, 14, '', 'naresh', '', 'dagla', '', 'nareshkumar.dagla74@gmail.com', '', '7014536812', '', 'b8ce8f4ab0a3334b16daef414c29d51a', '', '', '', '', '', '', '', 0, '', '', '2', 1, 1, '', '', '', '', '', '', '', 0, '2021-08-14 07:45:48', 0, '', '', '', 0),
(25, 14, '', 'Mayank', '', 'Aggarwal', '', 'mayank1@letuscode.com', 'work', '07665555644', '0', 'b709764da8b68d6c755c7bf2c5c719a7', '', '', '', '', '', '0', '', 0, '', '', '2', 1, 0, '', '', '', '', '', '', '', 0, '2021-08-14 07:55:57', 0, '', '', '', 0),
(26, 14, '', 'Kristin', '', 'Floridia', '', 'kfloridia@relevantlaw.com', '', '6314288867', '', '9822790f3cad8e0acc27637e73f44178', '', '', '', '', '', '', '', 0, '', '', '2', 1, 1, '', '', '', '', '', '', '', 0, '2021-08-31 21:01:10', 0, '', '', '', 0),
(27, 14, '', 'Kumar', '', 'Ravi', '', 'ravireswal92@gmail.com', '', '1234567890', '', 'c7f9e9284c9d779f9fa470ea86b7e3b2', '', '', '', '', '', '', '', 0, '', '', '2', 1, 1, '', '', '', '', '', '', '', 0, '2022-06-08 12:08:12', 0, '', '', '', 0),
(29, 14, '', 'Partika', 'Kumar ', 'Singh', '', 'partika@gmail.com', '', '9874563210', '', 'fd4506fa3cb6d083d21cc811a10dc273', '', '', '', '', '', '', '', 0, '', '', '2', 1, 1, '', '', '', '', '', '', '', 0, '2022-07-12 05:39:39', 0, '', '', '', 0),
(30, 14, '', 'Priyanshsingh', 'Kumar', 'Singh', '', 'sanjaysinghbxr542@gmail.com', 'Home', '9174152464', 'Work', '0efc9e48388b91f3114e953a255b2e02', 'M.G Road Jaipur', 'Jaipur', '302011', 'Rajsthan', 'India', 'Home', '', 0, '', '', '2', 1, 1, '', '', '', '', '', '', '', 0, '2022-07-26 11:29:10', 1, 'ed49439b5461fbcf4a391790ea2881a7d37dae33b3', '', '', 1),
(31, 14, '', 'Srivansh', 'Kumar', 'Singh', '', 'userbxr@gmail.com', '', '9174152464', '', '1864f86a4fadc1e3fb41473c426c2fa4', '', '', '', '', '', '', '', 0, '', '', '2', 1, 1, '', '', '', '', '', '', '', 0, '2022-08-02 12:17:21', 0, '', '', '', 0),
(32, 14, '', 'test', '', 'test', '', 'kristin.mihailovich@gmail.com', '', '12312341234', '', '1bc2d154561874a24eb938afa2555b88', '', '', '', '', '', '', '', 0, '', '', '2', 1, 1, '', '', '', '', '', '', '', 0, '2022-08-02 18:25:07', 0, '', '', '', 0),
(33, 14, '', 'Mayank', '', 'Aggarwal', '', 'mayank@etechlogix.com', '', '07665555644', '', '5308a99d813a341153195cd58788327d', '', '', '', '', '', '', '', 0, '', '', '2', 1, 1, '', '', '', '', '', '', '', 0, '2022-08-05 10:17:32', 0, '', '', '', 0),
(34, 14, '', 'Kristin', '', 'Floridia', '', 'kristin.floridia@gmail.com', '', '2112222222', '', '71da693da604e9725ac1036df0692e3f', '', '', '', '', '', '', '', 0, '', '', '2', 1, 1, '', '', '', '', '', '', '', 0, '2022-08-05 12:33:25', 0, '', '', '', 0),
(35, 14, '', 'Mayank', '', 'Aggarwal', '', 'mayank@letuscode.com', '', '07665555644', '', 'cf7d84aa332c2f9d399def411ddf7f55', '', '', '', '', '', '', '', 0, '', '', '2', 1, 1, '', '', '', '', '', '', '', 0, '2022-08-17 08:20:15', 0, '', '', '', 0),
(36, 14, '', 'Aaradhya', 'Kumari', 'Singh', '', 'sanjayletuscode@gmail.com', 'Work', '9174152464', 'Mobile', '45567cf90604c69d3203006fe3327285', '53/8, Magadi Main Road, Kamakshipalya', 'Bangalore', '560079', 'Karnataka', 'India', 'Work', '', 0, '', '', '2', 1, 1, '', '', '', '', '', '', '', 0, '2022-08-17 12:22:15', 0, '', '', '', 1),
(37, 14, '', 'Vijyashita', 'Kumari', 'Singh', '', 'qyezqwmpblivrtloxa@nvhrw.com', '', '9874584584', '', 'c197df50825fa6aa9178a42c3d641e71', '', '', '', '', '', '', '', 0, '', '', '2', 1, 1, '', '', '', '', '', '', '', 0, '2022-08-23 10:44:46', 0, '', '', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `tblusers`
--

CREATE TABLE `tblusers` (
  `id` int(11) NOT NULL,
  `FirstName` varchar(150) DEFAULT NULL,
  `LastName` varchar(150) DEFAULT NULL,
  `Email` varchar(150) DEFAULT NULL,
  `Password` varchar(255) DEFAULT NULL,
  `PostingDate` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `image` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `image`) VALUES
(0, 'Shah Khurram', 'khurramgaur8@gmail.com', '', 'https://lh3.googleusercontent.com/a/AGNmyxaQ9NgpGQHo8ncoyVk663FVeR8q51fyfx28PggB9Q=s96-c'),
(0, 'Khurram Gaur', 'khurramgaur436@gmail.com', '', 'https://lh3.googleusercontent.com/a/AGNmyxaXveJs-K9lZwJ4_S_ZDDIH2sk9cLgrITQpCRFb=s96-c'),
(0, 'Khurram Gaur', 'khurramgaur350@gmail.com', '', 'https://lh3.googleusercontent.com/a/AGNmyxZFXXArj5pXwqjQtGzKtSbMNUolqp2z-Ck-giAM=s96-c'),
(0, 'khurram', 'khurramgaur88@gmail.com', '12345', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `google_users`
--
ALTER TABLE `google_users`
  ADD PRIMARY KEY (`google_id`);

--
-- Indexes for table `relevantlaw_user`
--
ALTER TABLE `relevantlaw_user`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblusers`
--
ALTER TABLE `tblusers`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `google_users`
--
ALTER TABLE `google_users`
  MODIFY `google_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `relevantlaw_user`
--
ALTER TABLE `relevantlaw_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT for table `tblusers`
--
ALTER TABLE `tblusers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
