-- phpMyAdmin SQL Dump
-- version 3.3.9
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jun 30, 2023 at 01:05 PM
-- Server version: 5.5.8
-- PHP Version: 5.3.5

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `clg_insurance`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_entry`
--

CREATE TABLE IF NOT EXISTS `tbl_entry` (
  `eid` int(11) NOT NULL AUTO_INCREMENT,
  `rdate` varchar(12) NOT NULL,
  `people` varchar(10) NOT NULL,
  `age1` int(10) NOT NULL,
  `age2` int(10) NOT NULL,
  `age3` int(10) NOT NULL,
  `age4` int(10) NOT NULL,
  `age5` int(10) NOT NULL,
  `title` varchar(50) NOT NULL,
  `desc` longtext NOT NULL,
  PRIMARY KEY (`eid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `tbl_entry`
--


-- --------------------------------------------------------

--
-- Table structure for table `tbl_entry1`
--

CREATE TABLE IF NOT EXISTS `tbl_entry1` (
  `eeid` int(11) NOT NULL AUTO_INCREMENT,
  `rdate` varchar(12) NOT NULL,
  `uid` int(10) NOT NULL,
  `user` varchar(40) NOT NULL,
  `amt1` varchar(20) NOT NULL,
  `amt2` varchar(20) NOT NULL,
  `totalamt` varchar(20) NOT NULL,
  `cat` int(10) NOT NULL,
  PRIMARY KEY (`eeid`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=12 ;

--
-- Dumping data for table `tbl_entry1`
--

INSERT INTO `tbl_entry1` (`eeid`, `rdate`, `uid`, `user`, `amt1`, `amt2`, `totalamt`, `cat`) VALUES
(1, '2023-04-15', 3, 'Anup Kumar', '2251', '200', '2451', 1001),
(9, '2023-06-09', 5, 'Rupa Khatri', '2251', '30', '2281', 1002),
(10, '2023-06-30', 6, 'Prashant xyz', '2251', '200', '2451', 1001),
(11, '2023-06-30', 6, 'Prashant xyz', '2251', '70', '2181', 1002);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_payment`
--

CREATE TABLE IF NOT EXISTS `tbl_payment` (
  `pay_id` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(10) NOT NULL,
  `uid` int(10) NOT NULL,
  `uname` varchar(50) NOT NULL,
  `pay_date` varchar(12) NOT NULL,
  `month` int(10) NOT NULL,
  `installment` varchar(20) NOT NULL,
  PRIMARY KEY (`pay_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=10 ;

--
-- Dumping data for table `tbl_payment`
--

INSERT INTO `tbl_payment` (`pay_id`, `pid`, `uid`, `uname`, `pay_date`, `month`, `installment`) VALUES
(1, 12, 1, 'Anup Kumar', '2021-11-29', 1, '15458.333333333'),
(2, 12, 1, 'Anup Kumar', '2021-11-29', 2, '15458.333333333'),
(3, 12, 1, 'Anup Kumar', '2021-11-29', 3, '15458.333333333'),
(4, 10, 1, 'Anup Kumar', '2021-11-29', 1, '9250'),
(5, 14, 3, 'Anup Kumar', '2021-12-11', 1, '3138.8888888889'),
(6, 17, 3, 'Anup Kumar', '2022-05-31', 1, '6937.5'),
(7, 18, 3, 'Anup Kumar', '2023-04-15', 1, '3138.8888888889'),
(8, 20, 5, 'Rupa Khatri', '2023-06-09', 1, '3500'),
(9, 22, 6, 'Prashant xyz', '2023-06-30', 1, '4666.6666666667');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_policy`
--

CREATE TABLE IF NOT EXISTS `tbl_policy` (
  `pid` int(11) NOT NULL AUTO_INCREMENT,
  `pdate` varchar(12) NOT NULL,
  `uid` int(10) NOT NULL,
  `uname` varchar(50) NOT NULL,
  `amount` varchar(10) NOT NULL,
  `period` varchar(20) NOT NULL,
  `rate` varchar(10) NOT NULL,
  `rate_amt` varchar(10) NOT NULL,
  `tot_amt` varchar(10) NOT NULL,
  `months` varchar(20) NOT NULL,
  `installments` varchar(20) NOT NULL,
  `status` varchar(20) NOT NULL,
  PRIMARY KEY (`pid`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=23 ;

--
-- Dumping data for table `tbl_policy`
--

INSERT INTO `tbl_policy` (`pid`, `pdate`, `uid`, `uname`, `amount`, `period`, `rate`, `rate_amt`, `tot_amt`, `months`, `installments`, `status`) VALUES
(10, '2021-11-26', 1, 'Anup Kumar', '200000', '2', '11', '22000', '222000', '24', '9250', 'Active'),
(11, '2021-11-27', 1, 'Anup Kumar', '700000', '6', '3', '21000', '721000', '72', '10013.888888889', 'Active'),
(12, '2021-11-27', 1, 'Anup Kumar', '350000', '2', '6', '21000', '371000', '24', '15458.333333333', 'Active'),
(14, '2021-12-11', 3, 'Anup Kumar', '200000', '6', '13', '26000', '226000', '72', '3138.8888888889', 'Active'),
(16, '2021-12-11', 3, 'Anup Kumar', '150000', '2', '11', '16500', '166500', '24', '6937.5', 'Inactive'),
(17, '2022-05-31', 3, 'Anup Kumar', '150000', '2', '11', '16500', '166500', '24', '6937.5', 'Active'),
(18, '2023-04-15', 3, 'Anup Kumar', '200000', '6', '13', '26000', '226000', '72', '3138.8888888889', 'Active'),
(20, '2023-06-09', 5, 'Rupa Khatri', '150000', '4', '12', '18000', '168000', '48', '3500', 'Active'),
(22, '2023-06-30', 6, 'Prashant xyz', '200000', '4', '12', '24000', '224000', '48', '4666.6666666667', 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_profile`
--

CREATE TABLE IF NOT EXISTS `tbl_profile` (
  `pid` int(11) NOT NULL AUTO_INCREMENT,
  `pdate` varchar(12) NOT NULL,
  `cid` varchar(11) NOT NULL,
  `cname` varchar(50) NOT NULL,
  `contact` varchar(12) NOT NULL,
  `email` varchar(100) NOT NULL,
  `address` varchar(300) NOT NULL,
  `company` varchar(40) NOT NULL,
  `caddress` varchar(300) NOT NULL,
  `designation` varchar(20) NOT NULL,
  `income` varchar(20) NOT NULL,
  `assets` varchar(300) NOT NULL,
  `liability` varchar(300) NOT NULL,
  `photo` varchar(500) NOT NULL,
  PRIMARY KEY (`pid`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `tbl_profile`
--

INSERT INTO `tbl_profile` (`pid`, `pdate`, `cid`, `cname`, `contact`, `email`, `address`, `company`, `caddress`, `designation`, `income`, `assets`, `liability`, `photo`) VALUES
(1, '2021-11-25', '1', 'Anup Kumar', '9579047478', 'anup7ask@gmail.com', 'bh hg bgh', 'Radha Enterprize', 'jgh hjg hbh bh', 'Developer', '120000', 'hj jhbhj b', 'bhbh\r\nbhbvh\r\nbhb\r\nhvh', 'eJellyfish.jpg'),
(2, '2023-06-09', '5', 'Rupa Khatri', '9191919', 'rupa@gmail.com', 'g f fg fg fgf gf ', 'My company', 'gf f gfg fgf g', 'marketing', '100000', 'yes gh h ghg ', 'SIP ', 'eChrysanthemum.jpg'),
(3, '2023-06-30', '6', 'Prashant XYZ', '111222', 'prashant@gmail.com', 'gf g fgfg f gf g', 'Software company', 'gf g fg gfhg hy', 'Web developer', '500000', 'house, car', 'NO', 'eHydrangeas.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_profile1`
--

CREATE TABLE IF NOT EXISTS `tbl_profile1` (
  `pid` int(11) NOT NULL AUTO_INCREMENT,
  `pdate` varchar(12) NOT NULL,
  `cid` varchar(11) NOT NULL,
  `cname` varchar(50) NOT NULL,
  `contact` varchar(12) NOT NULL,
  `email` varchar(100) NOT NULL,
  `address` varchar(300) NOT NULL,
  `company` varchar(40) NOT NULL,
  `caddress` varchar(300) NOT NULL,
  `designation` varchar(20) NOT NULL,
  `income` varchar(20) NOT NULL,
  `assets` varchar(300) NOT NULL,
  `liability` varchar(300) NOT NULL,
  `photo` varchar(500) NOT NULL,
  `pan` varchar(100) NOT NULL,
  `aadhar` varchar(100) NOT NULL,
  PRIMARY KEY (`pid`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `tbl_profile1`
--

INSERT INTO `tbl_profile1` (`pid`, `pdate`, `cid`, `cname`, `contact`, `email`, `address`, `company`, `caddress`, `designation`, `income`, `assets`, `liability`, `photo`, `pan`, `aadhar`) VALUES
(1, '2023-06-11', '3', 'Anup Kumar', '9579047478', 'anup7ask@gmail.com', 'v h h', 'Radha Enterprize', 'v h hj', 'Developer', '120000', 'hv gf', 'hgfh', 'eDesert.jpg', 'eHydrangeas.jpg', 'eJellyfish.jpg'),
(2, '2023-06-11', '1', 'Kamla Nehru', '7766776676', 'radha@gmail.co', 'bg h ', 'Skysia Services', ' hg h', 'Legal', '445876', 'j h', 'jhj', 'eChrysanthemum.jpg', 'eHydrangeas.jpg', 'eKoala.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_users`
--

CREATE TABLE IF NOT EXISTS `tbl_users` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `udate` varchar(12) NOT NULL,
  `uname` varchar(50) NOT NULL,
  `contact` varchar(12) NOT NULL,
  `pass` varchar(20) NOT NULL,
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `tbl_users`
--

INSERT INTO `tbl_users` (`uid`, `udate`, `uname`, `contact`, `pass`) VALUES
(1, '2021-11-02', 'Anup Kumar', '9579047478', 'a123'),
(2, '2021-11-06', 'Prem Kumar', '7766776676', 'p123'),
(3, '2021-12-05', 'Anup Kumar1', '1212', 'aa11'),
(4, '2022-11-15', 'Smita', '9518716903', 'Smita@123'),
(5, '2023-06-09', 'Rupa Khatri', '919191', 'rupa123'),
(6, '2023-06-30', 'Prashant xyz', '111222', 'pr123');
