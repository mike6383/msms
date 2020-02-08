-- phpMyAdmin SQL Dump
-- version 4.7.9
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 08, 2020 at 07:04 PM
-- Server version: 10.1.31-MariaDB
-- PHP Version: 7.2.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cms`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `username` varchar(250) NOT NULL,
  `password` varchar(250) NOT NULL,
  `updationDate` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`, `updationDate`, `phone`) VALUES
(1, 'mike', 'f925916e2754e5e03f75dd58a5733251', '18-10-2016 04:18:16', '0701241057');

-- --------------------------------------------------------

--
-- Table structure for table `complaintremark`
--

CREATE TABLE `complaintremark` (
  `id` int(11) NOT NULL,
  `complaintNumber` int(11) NOT NULL,
  `status` varchar(255) NOT NULL,
  `remark` mediumtext NOT NULL,
  `remarkDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `complaintremark`
--

INSERT INTO `complaintremark` (`id`, `complaintNumber`, `status`, `remark`, `remarkDate`) VALUES
(8, 25, 'in process', 'iifohf m frrfrrr', '2019-10-07 11:43:45'),
(9, 26, 'in process', 'rertuue', '2019-10-07 20:44:21');

-- --------------------------------------------------------

--
-- Table structure for table `department`
--

CREATE TABLE `department` (
  `id` int(11) NOT NULL,
  `departmentName` varchar(255) NOT NULL,
  `departmentDescription` longtext NOT NULL,
  `creationDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updationDate` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `department`
--

INSERT INTO `department` (`id`, `departmentName`, `departmentDescription`, `creationDate`, `updationDate`) VALUES
(3, 'Finance', 'Student Finance', '2019-10-07 11:33:18', '11-10-2019 01:34:36 AM'),
(4, 'Library', 'Marambi Library ', '2019-10-07 11:34:39', NULL),
(5, 'Admission', 'Student Admission', '2019-10-07 11:35:21', NULL),
(6, '', 'fff', '2020-02-08 09:05:43', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `school`
--

CREATE TABLE `school` (
  `id` int(11) NOT NULL,
  `SchoolName` varchar(255) NOT NULL,
  `SchoolDescription` tinytext NOT NULL,
  `postingDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updationDate` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `school`
--

INSERT INTO `school` (`id`, `SchoolName`, `SchoolDescription`, `postingDate`, `updationDate`) VALUES
(3, 'Computing', 'Computing', '2016-10-18 11:35:02', ''),
(4, 'Education', 'Education', '2016-10-18 11:35:58', '28-03-2017 03:40:02 PM'),
(5, 'Applied Sciences', 'Applied Sciences', '2017-03-28 07:20:36', ''),
(6, 'Engineering', 'Engineering', '2017-06-11 10:54:12', ''),
(14, 'ddd', '', '2020-02-08 09:06:14', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `subcategory`
--

CREATE TABLE `subcategory` (
  `id` int(11) NOT NULL,
  `categoryid` int(11) NOT NULL,
  `subcategory` varchar(255) NOT NULL,
  `creationDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updationDate` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `subcategory`
--

INSERT INTO `subcategory` (`id`, `categoryid`, `subcategory`, `creationDate`, `updationDate`) VALUES
(1, 1, 'Online SHopping', '2017-03-28 07:11:07', ''),
(2, 1, 'E-wllaet', '2017-03-28 07:11:20', ''),
(3, 3, 'mmmmm', '2020-01-13 17:45:33', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tblcomplaints`
--

CREATE TABLE `tblcomplaints` (
  `complaintNumber` int(11) NOT NULL,
  `userId` int(11) NOT NULL,
  `category` int(11) NOT NULL,
  `subcategory` varchar(255) NOT NULL,
  `complaintType` varchar(255) NOT NULL,
  `state` varchar(255) NOT NULL,
  `noc` varchar(255) NOT NULL,
  `complaintDetails` mediumtext NOT NULL,
  `complaintFile` varchar(255) DEFAULT NULL,
  `regDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `status` varchar(50) DEFAULT NULL,
  `lastUpdationDate` timestamp NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblcomplaints`
--

INSERT INTO `tblcomplaints` (`complaintNumber`, `userId`, `category`, `subcategory`, `complaintType`, `state`, `noc`, `complaintDetails`, `complaintFile`, `regDate`, `status`, `lastUpdationDate`) VALUES
(25, 4, 3, 'Select Subcategory', 'General Query', 'Uttar Pradesh', 'urgent', 'ojbnd nv cnwbdbmwbdefdffegfbav', 'Screenshot_1.png', '2019-10-07 11:42:25', 'in process', '2019-10-07 11:43:45'),
(26, 4, 4, 'Select Subcategory', ' Complaint', 'Punjab', 'urgent', 'mkdnbdcukdcb dcd', '', '2019-10-07 13:03:32', 'in process', '2019-10-07 20:44:22'),
(27, 4, 4, 'Select Subcategory', ' Complaint', 'Punjab', 'urgent', 'mkdnbdcukdcb dcd', '', '2019-10-07 13:04:02', NULL, '0000-00-00 00:00:00'),
(28, 4, 4, 'Select Subcategory', ' Complaint', 'Punjab', 'urgent', 'mkdnbdcukdcb dcd', '', '2019-10-07 13:04:06', NULL, '0000-00-00 00:00:00'),
(29, 4, 5, 'Select Subcategory', ' Complaint', 'Uttar Pradesh', 'urgent', 'ekekvihfhifidfodhqehehkqhkehkedh', '', '2019-10-07 13:10:22', NULL, '0000-00-00 00:00:00'),
(30, 4, 5, 'Select Subcategory', ' Complaint', 'Uttar Pradesh', 'urgent', 'ekekvihfhifidfodhqehehkqhkehkedh', '', '2019-10-07 13:11:29', NULL, '0000-00-00 00:00:00'),
(31, 4, 3, 'Select Subcategory', ' Complaint', 'Punjab', 'urgent', 'dfgfg', '', '2019-10-07 13:29:59', NULL, '0000-00-00 00:00:00'),
(32, 4, 4, 'Select Subcategory', 'General Query', 'Punjab', 'urgent', 'nngulfultfftg', '', '2019-10-07 20:42:03', NULL, '0000-00-00 00:00:00'),
(33, 4, 3, 'Select Subcategory', 'General Query', 'Punjab', 'ddddd', 'fdfht', '', '2019-10-07 20:43:18', NULL, '0000-00-00 00:00:00'),
(34, 5, 4, 'Select Subcategory', 'General Query', '', 'urgent', 'gtfttttutyjj', 'checklist.docx', '2020-01-13 13:40:29', NULL, '0000-00-00 00:00:00'),
(35, 5, 3, 'Select Subcategory', 'General Query', '', 'ddddd', 'derregtt', '', '2020-01-13 17:49:48', NULL, '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `userlog`
--

CREATE TABLE `userlog` (
  `id` int(11) NOT NULL,
  `uid` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `userip` binary(16) NOT NULL,
  `loginTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `logout` varchar(255) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `userlog`
--

INSERT INTO `userlog` (`id`, `uid`, `username`, `userip`, `loginTime`, `logout`, `status`) VALUES
(1, 5, 'mmk@gmail.com', 0x3a3a3100000000000000000000000000, '2020-01-13 13:39:32', '13-01-2020 10:51:50 PM', 1),
(2, 5, 'mmk@gmail.com', 0x3a3a3100000000000000000000000000, '2020-01-13 17:45:54', '', 1),
(3, 0, 'mmki@gmail.com', 0x3a3a3100000000000000000000000000, '2020-01-14 09:45:00', '', 0),
(4, 5, 'mmk@gmail.com', 0x3a3a3100000000000000000000000000, '2020-01-14 09:45:31', '', 1),
(5, 0, 'mike', 0x3a3a3100000000000000000000000000, '2020-02-06 05:26:23', '', 0),
(6, 0, 'mike', 0x3a3a3100000000000000000000000000, '2020-02-06 05:26:30', '', 0),
(7, 0, 'mmm', 0x3a3a3100000000000000000000000000, '2020-02-06 05:48:19', '', 0),
(8, 0, 'mmm', 0x3a3a3100000000000000000000000000, '2020-02-06 05:49:00', '', 0),
(9, 6, 'mike23@gmail.com', 0x3a3a3100000000000000000000000000, '2020-02-06 05:50:28', '06-02-2020 11:20:59 AM', 1),
(10, 7, 'mike5@gmail.com', 0x3a3a3100000000000000000000000000, '2020-02-08 07:30:42', '08-02-2020 01:01:34 PM', 1),
(11, 8, 'lok@gmail.com', 0x3a3a3100000000000000000000000000, '2020-02-08 08:06:31', '08-02-2020 01:38:01 PM', 1),
(12, 8, 'lok@gmail.com', 0x3a3a3100000000000000000000000000, '2020-02-08 08:47:36', '08-02-2020 02:33:53 PM', 1),
(13, 0, 'mike', 0x3a3a3100000000000000000000000000, '2020-02-08 09:09:25', '', 0),
(14, 0, 'lok', 0x3a3a3100000000000000000000000000, '2020-02-08 09:09:44', '', 0),
(15, 8, 'lok@gmail.com', 0x3a3a3100000000000000000000000000, '2020-02-08 09:09:58', '08-02-2020 02:41:38 PM', 1);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `fullName` varchar(255) DEFAULT NULL,
  `userEmail` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `contactNo` bigint(11) DEFAULT NULL,
  `pincode` int(6) DEFAULT NULL,
  `userImage` varchar(255) DEFAULT NULL,
  `regDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updationDate` timestamp NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP,
  `status` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `fullName`, `userEmail`, `password`, `contactNo`, `pincode`, `userImage`, `regDate`, `updationDate`, `status`) VALUES
(2, 'Dangera Mike', 'jumamike12@gmail.com', '18126e7bd3f84b3f3e4df094def5b7de', 70080090, NULL, '36031f8ce0589e30a1cce92a37f255ff.jpg', '2019-09-24 17:29:39', '2019-09-24 17:57:43', 1),
(3, 'mike', 'mike@gmail.com', '18126e7bd3f84b3f3e4df094def5b7de', 9999, NULL, NULL, '2019-10-05 08:07:00', '0000-00-00 00:00:00', 1),
(4, 'ian', 'ian@gmail.com', 'a71a448d3d8474653e831749b8e71fcc', 0, NULL, NULL, '2019-10-07 11:41:12', '0000-00-00 00:00:00', 1),
(5, 'mk', 'mmk@gmail.com', '48b3d8ef4c38ff28b04ee32e1e296658', 9999, NULL, NULL, '2020-01-13 13:39:08', '0000-00-00 00:00:00', 1),
(6, 'mmm', 'mike23@gmail.com', 'fb1eaf2bd9f2a7013602be235c305e7a', 99999, NULL, NULL, '2020-02-06 05:47:58', '0000-00-00 00:00:00', 1),
(7, 'kiimo', 'mike5@gmail.com', '18126e7bd3f84b3f3e4df094def5b7de', 700590090, NULL, NULL, '2020-02-08 07:30:14', '0000-00-00 00:00:00', 1),
(8, 'lok', 'lok@gmail.com', 'f19852e51c1ab671bfd8b9f4a9dc92f9', 700590090, NULL, NULL, '2020-02-08 08:03:28', '0000-00-00 00:00:00', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `complaintremark`
--
ALTER TABLE `complaintremark`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `department`
--
ALTER TABLE `department`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `school`
--
ALTER TABLE `school`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subcategory`
--
ALTER TABLE `subcategory`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblcomplaints`
--
ALTER TABLE `tblcomplaints`
  ADD PRIMARY KEY (`complaintNumber`);

--
-- Indexes for table `userlog`
--
ALTER TABLE `userlog`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `complaintremark`
--
ALTER TABLE `complaintremark`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `department`
--
ALTER TABLE `department`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `school`
--
ALTER TABLE `school`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `subcategory`
--
ALTER TABLE `subcategory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tblcomplaints`
--
ALTER TABLE `tblcomplaints`
  MODIFY `complaintNumber` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `userlog`
--
ALTER TABLE `userlog`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
