-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 06, 2019 at 06:31 PM
-- Server version: 10.3.16-MariaDB
-- PHP Version: 7.3.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_northwind`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id_categoryid` varchar(20) DEFAULT NULL,
  `categoryname` varchar(40) DEFAULT NULL,
  `description` char(40) DEFAULT NULL,
  `picture` char(40) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id_categoryid`, `categoryname`, `description`, `picture`) VALUES
('001', 'candy', 'candy', 'candy'),
('003', 'water', 'water', 'water'),
('004', 'Sextoy', 'Sextoy', 'Sextoy'),
('005', 'guitar', 'guitar', 'guitar');

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `customerid` int(11) DEFAULT NULL,
  `companyname` varchar(40) DEFAULT NULL,
  `contactname` varchar(40) DEFAULT NULL,
  `contacttitle` varchar(40) DEFAULT NULL,
  `address` varchar(40) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`customerid`, `companyname`, `contactname`, `contacttitle`, `address`) VALUES
(12301, 'nation', 'Nana', 'manager', '123/66'),
(12302, 'NTU', 'non', 'manager', '333/110'),
(12303, 'NU', 'non', 'manager', '444/014');

-- --------------------------------------------------------

--
-- Table structure for table `employees`
--

CREATE TABLE `employees` (
  `id_employeeid` int(11) DEFAULT NULL,
  `firstname` varchar(40) DEFAULT NULL,
  `lastname` varchar(40) DEFAULT NULL,
  `title` varchar(40) DEFAULT NULL,
  `birthdate` varchar(40) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `employees`
--

INSERT INTO `employees` (`id_employeeid`, `firstname`, `lastname`, `title`, `birthdate`) VALUES
(111101, 'Jo', 'Nut', 'sale', '1/01/6562'),
(111102, 'Jorn', 'Nut', 'sale', '2/01/2562'),
(111103, 'Noy', 'Dy', 'sale', '3/01/2562');

-- --------------------------------------------------------

--
-- Table structure for table `orderdetails`
--

CREATE TABLE `orderdetails` (
  `orderid` int(11) DEFAULT NULL,
  `productid` varchar(40) DEFAULT NULL,
  `unitprice` char(40) DEFAULT NULL,
  `quantity` char(40) DEFAULT NULL,
  `discount` char(40) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `orderdetails`
--

INSERT INTO `orderdetails` (`orderid`, `productid`, `unitprice`, `quantity`, `discount`) VALUES
(1111101, '1101', '30', '3', '0'),
(1111102, '1102', '10', '1', '0'),
(1111103, '1103', '10', '2', '0'),
(1111104, '1104', '599', '1', '50%'),
(1111105, '1105', '5999', '1', '30%'),
(1111106, '1101', '30', '5', '10%'),
(1111107, '1104', '599', '2', '50%'),
(1111108, '1105', '5999', '1', '10%'),
(1111109, '1103', '10', '2', '0'),
(1111110, '1102', '10', '2', '0');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `orderid` int(11) DEFAULT NULL,
  `customerid` char(40) DEFAULT NULL,
  `employeeid` char(40) DEFAULT NULL,
  `orderdate` varchar(40) DEFAULT NULL,
  `requireddate` varchar(40) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`orderid`, `customerid`, `employeeid`, `orderdate`, `requireddate`) VALUES
(1111101, '12301', '111101', '06/11/62', '08/111/62'),
(1111102, '12301', '111101', '07/11/62', '09/111/62'),
(1111103, '12301', '111101', '08/11/62', '10/11/62'),
(1111104, '12302', '111102', '08/11/62', '10/11/62'),
(1111105, '12302', '111102', '13/11/62', '15/11/62'),
(1111106, '12303', '111103', '13/11/62', '15/11/62'),
(1111107, '12302', '111102', '20/11/62', '23/11/62'),
(1111108, '12303', '111103', '23/11/62', '25/11/62'),
(1111109, '12301', '111103', '25/11/62', '28/11/62'),
(1111110, '12301', '111101', '28/11/62', '30/11/62');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id_productid` int(11) DEFAULT NULL,
  `productname` varchar(40) DEFAULT NULL,
  `supplierid` char(40) DEFAULT NULL,
  `categoryid` char(40) DEFAULT NULL,
  `quantityperunit` char(40) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id_productid`, `productname`, `supplierid`, `categoryid`, `quantityperunit`) VALUES
(1101, 'candy', '1001', '001', '30'),
(1102, 'Milk', '1002', '002', '10'),
(1103, 'water', '1003', '003', '10'),
(1104, 'sextoy', '1004', '004', '599'),
(1105, 'guitar', '1005', '005', '5999');

-- --------------------------------------------------------

--
-- Table structure for table `shippers`
--

CREATE TABLE `shippers` (
  `shipperid` int(11) DEFAULT NULL,
  `companyname` varchar(40) DEFAULT NULL,
  `phone` char(40) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `shippers`
--

INSERT INTO `shippers` (`shipperid`, `companyname`, `phone`) VALUES
(7701, 'Kerry', '0903162178'),
(7702, 'SCG', '0622590202'),
(7703, 'Ninjavan', '0622590220');

-- --------------------------------------------------------

--
-- Table structure for table `suppliers`
--

CREATE TABLE `suppliers` (
  `supplierid` int(11) DEFAULT NULL,
  `companyname` varchar(40) DEFAULT NULL,
  `contactname` char(40) DEFAULT NULL,
  `contacttitle` char(40) DEFAULT NULL,
  `address` char(40) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `suppliers`
--

INSERT INTO `suppliers` (`supplierid`, `companyname`, `contactname`, `contacttitle`, `address`) VALUES
(10101, 'DC', 'warn', 'manager', '444/14'),
(10102, 'BL', 'fon', 'manager', '444/13'),
(10103, 'Mawal', 'Johny', 'manager', '444/2');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
