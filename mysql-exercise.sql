-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 25, 2020 at 02:49 AM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.4.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mysql-exercise`
--

-- --------------------------------------------------------

--
-- Table structure for table `countries`
--

CREATE TABLE `countries` (
  `countries_id` int(11) NOT NULL,
  `country_name` varchar(50) NOT NULL,
  `region_id` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `countries`
--

INSERT INTO `countries` (`countries_id`, `country_name`, `region_id`) VALUES
(1, 'Zarqaa', '11948'),
(2, 'Amman ', '11947'),
(3, 'Irbid', '11949'),
(4, 'Alkarak', '11944');

-- --------------------------------------------------------

--
-- Table structure for table `countries8`
--

CREATE TABLE `countries8` (
  `COUNTRY_ID` varchar(2) NOT NULL,
  `COUNTRY_NAME` varchar(40) NOT NULL,
  `REGION_ID` decimal(10,0) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `countries_dup`
--

CREATE TABLE `countries_dup` (
  `country_id` int(6) NOT NULL,
  `country_name` varchar(50) NOT NULL,
  `region_id` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `countries_ex12`
--

CREATE TABLE `countries_ex12` (
  `COUNTRY_ID` varchar(2) NOT NULL,
  `COUNTRY_NAME` varchar(40) NOT NULL,
  `REGION_ID` decimal(10,0) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `countries_ex13`
--

CREATE TABLE `countries_ex13` (
  `COUNTRY_ID` varchar(2) NOT NULL DEFAULT '',
  `COUNTRY_NAME` varchar(40) DEFAULT NULL,
  `REGION_ID` decimal(10,0) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `countries_new`
--

CREATE TABLE `countries_new` (
  `COUNTRY_ID` int(2) NOT NULL,
  `COUNTRY_NAME` varchar(40) NOT NULL,
  `REGION_ID` decimal(10,0) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `dup_countries`
--

CREATE TABLE `dup_countries` (
  `country_id` int(6) NOT NULL,
  `country_name` varchar(50) NOT NULL,
  `region_id` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `JOB_ID` varchar(10) NOT NULL,
  `JOB_TITLE` varchar(35) NOT NULL DEFAULT ' ',
  `MIN_SALARY` decimal(6,0) DEFAULT 8000,
  `MAX_SALARY` decimal(6,0) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `job_history`
--

CREATE TABLE `job_history` (
  `EMPLOYEE_ID` decimal(6,0) NOT NULL,
  `START_DATE` date NOT NULL,
  `END_DATE` date NOT NULL,
  `JOB_ID` varchar(10) NOT NULL,
  `DEPARTMENT_ID` decimal(4,0) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `countries`
--
ALTER TABLE `countries`
  ADD PRIMARY KEY (`countries_id`);

--
-- Indexes for table `countries8`
--
ALTER TABLE `countries8`
  ADD UNIQUE KEY `COUNTRY_ID` (`COUNTRY_ID`);

--
-- Indexes for table `countries_ex12`
--
ALTER TABLE `countries_ex12`
  ADD PRIMARY KEY (`COUNTRY_ID`);

--
-- Indexes for table `countries_ex13`
--
ALTER TABLE `countries_ex13`
  ADD PRIMARY KEY (`COUNTRY_ID`,`REGION_ID`),
  ADD UNIQUE KEY `COUNTRY_ID` (`COUNTRY_ID`);

--
-- Indexes for table `countries_new`
--
ALTER TABLE `countries_new`
  ADD PRIMARY KEY (`COUNTRY_ID`);

--
-- Indexes for table `dup_countries`
--
ALTER TABLE `dup_countries`
  ADD PRIMARY KEY (`country_id`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD UNIQUE KEY `JOB_ID` (`JOB_ID`);

--
-- Indexes for table `job_history`
--
ALTER TABLE `job_history`
  ADD PRIMARY KEY (`EMPLOYEE_ID`),
  ADD KEY `JOB_ID` (`JOB_ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `countries`
--
ALTER TABLE `countries`
  MODIFY `countries_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `countries_new`
--
ALTER TABLE `countries_new`
  MODIFY `COUNTRY_ID` int(2) NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `job_history`
--
ALTER TABLE `job_history`
  ADD CONSTRAINT `job_history_ibfk_1` FOREIGN KEY (`JOB_ID`) REFERENCES `jobs` (`JOB_ID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
