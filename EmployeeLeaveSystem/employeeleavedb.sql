-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 23, 2022 at 06:43 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `employeeleavedb`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `UserName` varchar(100) NOT NULL,
  `Password` varchar(100) NOT NULL,
  `fullname` varchar(255) NOT NULL,
  `email` varchar(55) NOT NULL,
  `updationDate` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `UserName`, `Password`, `fullname`, `email`, `updationDate`) VALUES
(4, 'David-admin', '81dc9bdb52d04dc20036dbd8313ed055', 'David Njoroge', 'davidkamau@gmail.com', '2022-11-22 06:41:08');

-- --------------------------------------------------------

--
-- Table structure for table `tbldepartments`
--

CREATE TABLE `tbldepartments` (
  `id` int(11) NOT NULL,
  `DepartmentName` varchar(150) DEFAULT NULL,
  `DepartmentShortName` varchar(100) NOT NULL,
  `DepartmentCode` varchar(50) DEFAULT NULL,
  `CreationDate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbldepartments`
--

INSERT INTO `tbldepartments` (`id`, `DepartmentName`, `DepartmentShortName`, `DepartmentCode`, `CreationDate`) VALUES
(1, 'Human Resource', 'HR', 'HR160', '2022-11-21 21:00:00'),
(2, 'Information Technology', 'IT', 'IT807', '2022-11-22 14:13:38'),
(3, 'Operations', 'OP', 'OP640', '2022-11-20 21:28:56'),
(4, 'Volunteer', 'VL', 'VL9696', '2022-11-22 14:15:52'),
(5, 'Marketing', 'MK', 'MK369', '2022-11-22 10:53:52'),
(6, 'Finance', 'FI', 'FI123', '2022-11-22 10:54:27'),
(7, 'Sales', 'SS', 'SS469', '2022-11-22 10:55:24'),
(8, 'Research', 'RS', 'RS666', '2022-11-22 16:39:03');

-- --------------------------------------------------------

--
-- Table structure for table `tblemployees`
--

CREATE TABLE `tblemployees` (
  `id` int(11) NOT NULL,
  `EmpId` varchar(100) NOT NULL,
  `FirstName` varchar(150) NOT NULL,
  `LastName` varchar(150) NOT NULL,
  `EmailId` varchar(200) NOT NULL,
  `Password` varchar(180) NOT NULL,
  `Gender` varchar(100) NOT NULL,
  `Dob` varchar(100) NOT NULL,
  `Department` varchar(255) NOT NULL,
  `Address` varchar(255) NOT NULL,
  `City` varchar(200) NOT NULL,
  `Country` varchar(150) NOT NULL,
  `Phonenumber` char(11) NOT NULL,
  `Status` int(1) NOT NULL,
  `RegDate` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblemployees`
--

INSERT INTO `tblemployees` (`id`, `EmpId`, `FirstName`, `LastName`, `EmailId`, `Password`, `Gender`, `Dob`, `Department`, `Address`, `City`, `Country`, `Phonenumber`, `Status`, `RegDate`) VALUES
(9, 'A1234', 'David', 'Njoroge', 'dnjoroged5@gmail.com', '81dc9bdb52d04dc20036dbd8313ed055', 'Male', '2002-01-04', 'Finance', 'Kiambu', 'Thika', 'Kenya', '0704948827', 1, '2022-11-22 06:06:04'),
(10, 'A135', 'Nancy', 'Wanjiku', 'nancywanjiku24@gmail.com', '81dc9bdb52d04dc20036dbd8313ed055', 'Female', '2000-03-31', 'Operations', 'Muthaiga', 'Nairobi', 'Kenaya', '0796230493', 1, '2022-11-22 13:57:01'),
(11, 'A1255', 'Ashley', 'Yigo', 'ashleyyigo1@gmail.com', '81dc9bdb52d04dc20036dbd8313ed055', 'Female', '2001-01-03', 'Human Resource', 'Kamulu', 'Nairobi', 'Kenya', '0706833280', 1, '2022-11-22 13:59:10'),
(12, 'A1586', 'Dee', 'Mutethya', 'deedee34@gmail.com', '81dc9bdb52d04dc20036dbd8313ed055', 'Female', '2002-01-04', 'Information Technology', 'Kasarani', 'Nairobi', 'Kenya', '0745394517', 1, '2022-11-22 14:00:58'),
(13, 'A1250', 'Brian', 'Mutati', 'brianmutati2@gmail.com', '81dc9bdb52d04dc20036dbd8313ed055', 'Male', '2000-05-16', 'Operations', 'Allsops', 'Nairobi', 'Kenya', '0738869246', 1, '2022-11-22 14:02:35'),
(14, 'A1229', 'Kevin ', 'Kiplagat', 'kevinkipk20@gmail.com', '81dc9bdb52d04dc20036dbd8313ed055', 'Male', '1999-07-20', 'Volunteer', 'Bamburi', 'Mombasa', 'Kenya', '0706761643', 1, '2022-11-22 14:04:42'),
(15, 'A1980', 'David', 'Nderitu', 'ndwdavid33@gmail.com', '81dc9bdb52d04dc20036dbd8313ed055', 'Male', '2001-06-20', 'Marketing', 'Donholm', 'Nairobi', 'Kenya', '0714321412', 1, '2022-11-22 14:07:07'),
(16, 'A1278', 'Zawadi', 'Joy', 'zawadijoy98@gmail.com', '81dc9bdb52d04dc20036dbd8313ed055', 'Female', '2002-07-31', 'Sales', 'Umoja', 'Nairobi', 'Kenya', '0757346390', 1, '2022-11-22 14:09:06'),
(17, 'A1269', 'John', 'Kamau', 'jkkamau2@gmail.com', '81dc9bdb52d04dc20036dbd8313ed055', 'Male', '2000-11-24', 'Research', 'Kasarani', 'Nairobi', 'Kenya', '0720126790', 1, '2022-11-22 14:11:59');

-- --------------------------------------------------------

--
-- Table structure for table `tblleaves`
--

CREATE TABLE `tblleaves` (
  `id` int(11) NOT NULL,
  `LeaveType` varchar(110) NOT NULL,
  `ToDate` varchar(120) NOT NULL,
  `FromDate` varchar(120) NOT NULL,
  `Description` mediumtext NOT NULL,
  `PostingDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `AdminRemark` mediumtext DEFAULT NULL,
  `AdminRemarkDate` varchar(120) DEFAULT NULL,
  `Status` int(1) NOT NULL,
  `IsRead` int(1) NOT NULL,
  `empid` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblleaves`
--

INSERT INTO `tblleaves` (`id`, `LeaveType`, `ToDate`, `FromDate`, `Description`, `PostingDate`, `AdminRemark`, `AdminRemarkDate`, `Status`, `IsRead`, `empid`) VALUES
(25, 'Religious holidays', '2022-11-25', '2022-11-30', 'Going for Shiloh2022', '2022-11-22 11:43:17', 'Okay see you soon', '2022-11-22 17:14:22 ', 1, 1, 9);

-- --------------------------------------------------------

--
-- Table structure for table `tblleavetype`
--

CREATE TABLE `tblleavetype` (
  `id` int(11) NOT NULL,
  `LeaveType` varchar(200) DEFAULT NULL,
  `Description` mediumtext DEFAULT NULL,
  `CreationDate` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblleavetype`
--

INSERT INTO `tblleavetype` (`id`, `LeaveType`, `Description`, `CreationDate`) VALUES
(14, ' Casual leave', 'Provides for urgent/unforeseen matters to the employee', '2022-11-22 10:49:07'),
(15, 'Restricted Holiday', 'These are holidays that are optional', '2022-11-22 10:49:43'),
(16, 'Medical leave', 'Related to health issues of the employee', '2022-11-22 10:50:10'),
(17, 'Paternity leave', 'Provided for one to take care of newborns', '2022-11-22 10:51:02'),
(18, 'Bereavement Leave', 'Grieving their loss of  losing loved ones', '2022-11-22 10:52:05'),
(19, 'Compensatory leave', 'For overtime workers', '2022-11-22 10:52:36'),
(20, 'Religious holidays', 'Based on an employee\'s followed religion', '2022-11-22 10:53:14'),
(21, 'Voting Leave', 'For official election day as per the Government Laws', '2022-11-22 10:54:08'),
(22, 'Maternity Leave', 'Taking care of newborn/recoveries', '2022-11-22 10:55:10');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbldepartments`
--
ALTER TABLE `tbldepartments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblemployees`
--
ALTER TABLE `tblemployees`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblleaves`
--
ALTER TABLE `tblleaves`
  ADD PRIMARY KEY (`id`),
  ADD KEY `UserEmail` (`empid`);

--
-- Indexes for table `tblleavetype`
--
ALTER TABLE `tblleavetype`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tbldepartments`
--
ALTER TABLE `tbldepartments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `tblemployees`
--
ALTER TABLE `tblemployees`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `tblleaves`
--
ALTER TABLE `tblleaves`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `tblleavetype`
--
ALTER TABLE `tblleavetype`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
