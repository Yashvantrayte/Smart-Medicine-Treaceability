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
-- Database: `blockchain`
--

-- --------------------------------------------------------

--
-- Table structure for table `block0`
--

CREATE TABLE IF NOT EXISTS `block0` (
  `mid` int(11) NOT NULL,
  `data` text NOT NULL,
  `hash` text NOT NULL,
  `previousHash` text NOT NULL,
  `timeStamp` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `block0`
--

INSERT INTO `block0` (`mid`, `data`, `hash`, `previousHash`, `timeStamp`) VALUES
(1, 'first block', 'd6b4afe59798d73437edadc97495d00544aebe6d88b75da787d89619b05ecc59', '0', '2024-03-09 11:45:58'),
(2, 'first block', 'c539d8bbdd8dd7f45790edb6c347a3055f025c4423c3fbfca56c7dde2c530445', '0', '2024-03-09 11:45:41');

-- --------------------------------------------------------

--
-- Table structure for table `block1`
--

CREATE TABLE IF NOT EXISTS `block1` (
  `mid` int(11) NOT NULL,
  `data` text NOT NULL,
  `hash` text NOT NULL,
  `previousHash` text NOT NULL,
  `timeStamp` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `block1`
--

INSERT INTO `block1` (`mid`, `data`, `hash`, `previousHash`, `timeStamp`) VALUES
(1, 'second block', '31fb5397c22a3bec352dd5122755d0316a1a1d9dfa08d11bd352b86ed595370d', 'd6b4afe59798d73437edadc97495d00544aebe6d88b75da787d89619b05ecc59', '2024-03-09 11:47:41'),
(2, 'second block', '1ea08a776d8800a23ef224bd165330bb6b67a41e044df7cc9343a4e0f691012c', 'c539d8bbdd8dd7f45790edb6c347a3055f025c4423c3fbfca56c7dde2c530445', '2024-03-09 11:47:11');

-- --------------------------------------------------------

--
-- Table structure for table `block2`
--

CREATE TABLE IF NOT EXISTS `block2` (
  `mid` int(11) NOT NULL,
  `data` text NOT NULL,
  `hash` text NOT NULL,
  `previousHash` text NOT NULL,
  `timeStamp` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `block2`
--

INSERT INTO `block2` (`mid`, `data`, `hash`, `previousHash`, `timeStamp`) VALUES
(1, 'third block', '2c6d2ece33d142c1e4479dd65a8f7607cc1f075a9b9ed5a783100711ac12a2b0', '31fb5397c22a3bec352dd5122755d0316a1a1d9dfa08d11bd352b86ed595370d', '2024-03-09 11:48:45'),
(2, 'third block', '7f7ba770a2b11fe861d51facad457aa43a228096865e3736068b576db94472b5', '1ea08a776d8800a23ef224bd165330bb6b67a41e044df7cc9343a4e0f691012c', '2024-03-09 11:49:36');

-- --------------------------------------------------------

--
-- Table structure for table `block3`
--

CREATE TABLE IF NOT EXISTS `block3` (
  `mid` int(11) NOT NULL,
  `data` text NOT NULL,
  `hash` text NOT NULL,
  `previousHash` text NOT NULL,
  `timeStamp` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `block3`
--

INSERT INTO `block3` (`mid`, `data`, `hash`, `previousHash`, `timeStamp`) VALUES
(1, 'fourth block', 'cba80a3f488479a20c1c479181081793e4f6ed8194a0ec22a29113779153fced', '2c6d2ece33d142c1e4479dd65a8f7607cc1f075a9b9ed5a783100711ac12a2b0', '2024-03-09 11:50:52'),
(2, 'fourth block', 'd3cd700c547974e98196c3e961a92f9defca23c26fae8a9715ffc1d5d1a071ab', '7f7ba770a2b11fe861d51facad457aa43a228096865e3736068b576db94472b5', '2024-03-09 11:50:26');

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
(1, 'gsk', 'abc', 'abc@gmail.com', 8954857945, '123', 'nasik');

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `dealer`
--

INSERT INTO `dealer` (`id`, `name`, `email`, `mobile`, `password`, `address`, `cid`, `did`) VALUES
(1, 'pallavi', 'p@gmail.com', 9836547895, '12345', 'nasik', 0, 0),
(2, 'samadhan ', 'samadhan@gmail.com', 8987767856, '12345', 'nasik', 0, 0),
(3, 'rohan tambe', 'rohan@gmail.com', 8987767856, '987', 'nashik kalwan', 1, 2);

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `distributor`
--

INSERT INTO `distributor` (`id`, `dname`, `email`, `mobile`, `password`, `address`, `cid`) VALUES
(1, 'sunil', 'sj@gmail.com', 9427767567, '123', 'nasik', 1),
(2, 'dipali', 'dipali@gmail.com', 8987767856, '123', 'nasik', 1),
(3, '', 'abc@gmail.com', 3216548, '123', '', 1);

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `medical`
--

INSERT INTO `medical` (`id`, `medicalname`, `ownername`, `email`, `mobile`, `licenceno`, `address`, `password`, `cid`, `did`, `dlid`) VALUES
(4, 'nasikmedical', 'samadhan ', 'samadhan@gmail.com', 8987767856, '13243254435', 'nasik', '234', 1, 2, 3),
(5, '', '', 'abc@gmail.com', 6543156871, '', '', '123', 1, 1, 1);

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `medicineinfo`
--

INSERT INTO `medicineinfo` (`id`, `cid`, `name`, `batchno`, `price`, `quantity`) VALUES
(1, 1, 'DFFHG', 'B123', '12000', 2),
(2, 2, 'PQRS', 'B124', '12000', 2),
(3, 2, 'DDDDDDD', 'B1246546', '300', 4),
(4, 2, 'AAAAA', 'B11111111', '3000', 10),
(5, 2, 'zdfgzdgf', 'Bjhjh', '40', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `block0`
--
ALTER TABLE `block0`
 ADD PRIMARY KEY (`mid`);

--
-- Indexes for table `block1`
--
ALTER TABLE `block1`
 ADD PRIMARY KEY (`mid`);

--
-- Indexes for table `block2`
--
ALTER TABLE `block2`
 ADD PRIMARY KEY (`mid`);

--
-- Indexes for table `block3`
--
ALTER TABLE `block3`
 ADD PRIMARY KEY (`mid`);

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
MODIFY `id` int(10) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `distributor`
--
ALTER TABLE `distributor`
MODIFY `id` int(10) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `medical`
--
ALTER TABLE `medical`
MODIFY `id` int(10) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `medicineinfo`
--
ALTER TABLE `medicineinfo`
MODIFY `id` int(10) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
