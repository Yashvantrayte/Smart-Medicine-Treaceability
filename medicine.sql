-- phpMyAdmin SQL Dump
-- version 4.2.7.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Mar 13, 2024 at 07:21 AM
-- Server version: 5.5.39
-- PHP Version: 5.4.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `medicine`
--

-- --------------------------------------------------------

--
-- Table structure for table `company`
--

CREATE TABLE IF NOT EXISTS `company` (
`id` int(10) NOT NULL,
  `cname` varchar(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `mobile` bigint(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `address` varchar(100) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `company`
--

INSERT INTO `company` (`id`, `cname`, `name`, `email`, `mobile`, `password`, `address`) VALUES
(1, 'gsk', 'GSK Pharma', 'gsk@gmail.com', 8989565623, '123456', 'Nashik');

-- --------------------------------------------------------

--
-- Table structure for table `dealer`
--

CREATE TABLE IF NOT EXISTS `dealer` (
`id` int(10) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `mobile` bigint(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `address` varchar(100) NOT NULL,
  `cid` int(100) NOT NULL,
  `did` int(100) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `dealer`
--

INSERT INTO `dealer` (`id`, `name`, `email`, `mobile`, `password`, `address`, `cid`, `did`) VALUES
(1, 'Sakshi Dealers', 'sakshi@gmail.com', 8923231478, '123456', 'Nashik', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `distributor`
--

CREATE TABLE IF NOT EXISTS `distributor` (
`id` int(10) NOT NULL,
  `dname` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `mobile` bigint(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `address` varchar(100) NOT NULL,
  `cid` int(100) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `distributor`
--

INSERT INTO `distributor` (`id`, `dname`, `email`, `mobile`, `password`, `address`, `cid`) VALUES
(1, 'Aditya Distributors', 'aditya@gmail.com', 8989451111, '123456', 'Nashik', 1);

-- --------------------------------------------------------

--
-- Table structure for table `medical`
--

CREATE TABLE IF NOT EXISTS `medical` (
`id` int(10) NOT NULL,
  `medicalname` varchar(100) NOT NULL,
  `ownername` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `mobile` bigint(100) NOT NULL,
  `licenceno` varchar(100) NOT NULL,
  `address` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `cid` int(100) NOT NULL,
  `did` int(100) NOT NULL,
  `dlid` int(100) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `medical`
--

INSERT INTO `medical` (`id`, `medicalname`, `ownername`, `email`, `mobile`, `licenceno`, `address`, `password`, `cid`, `did`, `dlid`) VALUES
(1, 'Apurva Medical', 'Apurva', 'apurva@gmail.com', 7474121236, '123456789', 'Nashik', '123456', 1, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `medicineinfo`
--

CREATE TABLE IF NOT EXISTS `medicineinfo` (
`id` int(10) NOT NULL,
  `cid` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `batchno` varchar(100) NOT NULL,
  `price` varchar(100) NOT NULL,
  `quantity` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `company`
--
ALTER TABLE `company`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dealer`
--
ALTER TABLE `dealer`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `distributor`
--
ALTER TABLE `distributor`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `medical`
--
ALTER TABLE `medical`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `medicineinfo`
--
ALTER TABLE `medicineinfo`
 ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `company`
--
ALTER TABLE `company`
MODIFY `id` int(10) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `dealer`
--
ALTER TABLE `dealer`
MODIFY `id` int(10) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `distributor`
--
ALTER TABLE `distributor`
MODIFY `id` int(10) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `medical`
--
ALTER TABLE `medical`
MODIFY `id` int(10) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `medicineinfo`
--
ALTER TABLE `medicineinfo`
MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
