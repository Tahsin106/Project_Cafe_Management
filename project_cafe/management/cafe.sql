-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 23, 2019 at 09:47 PM
-- Server version: 10.1.28-MariaDB
-- PHP Version: 7.1.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cafe`
--

-- --------------------------------------------------------

--
-- Table structure for table `bill`
--

CREATE TABLE `bill` (
  `BillId` int(11) NOT NULL,
  `TotalBill` double(7,2) NOT NULL,
  `Vat` int(11) NOT NULL,
  `TotalBillVat` double(7,2) NOT NULL,
  `OrderId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bill`
--

INSERT INTO `bill` (`BillId`, `TotalBill`, `Vat`, `TotalBillVat`, `OrderId`) VALUES
(1, 1690.00, 15, 253.50, 1),
(2, 800.00, 15, 120.00, 2),
(3, 1140.00, 15, 1311.00, 3),
(4, 2400.00, 15, 2760.00, 4),
(5, 2750.00, 15, 3162.50, 5),
(6, 1404.00, 15, 1614.60, 6),
(7, 1333.00, 15, 1532.95, 7),
(8, 2022.00, 15, 2325.30, 8),
(9, 2520.00, 15, 2898.00, 9),
(10, 1640.00, 15, 1886.00, 10),
(11, 4800.00, 15, 5520.00, 11),
(12, 5750.00, 15, 6612.50, 12),
(13, 622.00, 15, 715.30, 13),
(14, 1872.00, 15, 2152.80, 14),
(15, 1466.00, 15, 1685.90, 15),
(16, 672.00, 15, 772.80, 16);

-- --------------------------------------------------------

--
-- Table structure for table `chef`
--

CREATE TABLE `chef` (
  `ChefId` int(11) NOT NULL,
  `ChefName` varchar(100) DEFAULT NULL,
  `Chef_Category` varchar(100) DEFAULT NULL,
  `Age` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `CustomerId` int(11) NOT NULL,
  `CustomerName` varchar(100) DEFAULT NULL,
  `OrderId` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `item`
--

CREATE TABLE `item` (
  `ItemNo` int(11) NOT NULL,
  `Item_Name` varchar(500) DEFAULT NULL,
  `Item_Price` decimal(10,4) DEFAULT NULL,
  `Item_Category` varchar(100) DEFAULT NULL,
  `Item_Stock` int(11) DEFAULT NULL,
  `Item_Ingredients` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `item`
--

INSERT INTO `item` (`ItemNo`, `Item_Name`, `Item_Price`, `Item_Category`, `Item_Stock`, `Item_Ingredients`) VALUES
(2, 'Pasta Europa', '320.0000', 'Pasta', 100, 'Beef , cheese , Chicken '),
(3, 'Naga Pasta', '270.0000', 'Pasta', 100, 'Chicken , Cheese, Bombay chilli'),
(4, 'BBQ Chicken Pasta', '300.0000', 'Pasta', 200, 'BBQ chicken , Olive '),
(5, 'Mushroom Burger', '111.0000', 'Burger', 100, 'Beef , Mushroom , mozarella'),
(6, 'Pasta Marley', '300.0000', 'Pasta', 90, 'Chicken , Cheese'),
(7, 'Pizza BBQ', '800.0000', 'Pizza', 100, ''),
(8, 'Pasta American', '250.0000', 'Pasta', 18, 'Chicken , Mozarella, Olive , Chilli'),
(9, 'Pasta Darbar', '350.0000', 'Pasta', 100, ''),
(10, 'Pasta Emoji', '500.0000', 'Pasta', 10, 'Chicken, Beef, Mushroom , Garlic'),
(13, 'Pizza Barcelona', '400.0000', 'Pizza', 100, 'Chicken, Beef, Mushroom'),
(14, 'Mint Lemon', '100.0000', 'Beverage', 100, 'Lemon, Soda'),
(15, 'Chicken Burger', '200.0000', 'Burger', 100, 'Chicken, Mayo'),
(18, 'Garlic Mayo Burger', '250.0000', 'Burger', 100, 'Chicken, Garlic, Cheese'),
(19, 'Twin Cheese Burger', '275.0000', 'Burger', 30, 'Chicken, Double patty cheese'),
(20, 'Double Patty Burger', '400.0000', 'Burger', 10, 'Chicken, Cheese, 2 Patty'),
(21, 'Pizza Madrid', '700.0000', 'Pizza', 30, 'Chicken, Cheese'),
(22, 'Pasta Basta', '250.0000', 'Pasta', 10, 'Chicken');

-- --------------------------------------------------------

--
-- Table structure for table `order`
--

CREATE TABLE `order` (
  `OrderId` int(11) NOT NULL,
  `CustomerId` int(11) NOT NULL,
  `Date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `order`
--

INSERT INTO `order` (`OrderId`, `CustomerId`, `Date`) VALUES
(1, 1, '2018-02-09 17:24:58'),
(2, 2, '2018-02-09 17:27:23'),
(3, 3, '2018-02-10 02:58:51'),
(4, 4, '2018-02-10 03:00:36'),
(5, 5, '2018-02-10 03:51:21'),
(6, 6, '2018-02-10 03:56:37'),
(7, 7, '2018-02-10 05:23:24'),
(8, 8, '2018-02-10 10:59:21'),
(9, 9, '2018-02-10 17:05:29'),
(10, 10, '2018-02-10 17:10:17'),
(11, 11, '2018-02-10 18:37:10'),
(12, 12, '2018-02-10 18:46:22'),
(13, 13, '2018-07-29 18:50:11'),
(14, 14, '2018-07-29 18:59:00'),
(15, 15, '2018-07-30 05:04:15'),
(16, 16, '2018-07-30 06:33:18');

-- --------------------------------------------------------

--
-- Table structure for table `order_item`
--

CREATE TABLE `order_item` (
  `OrderId` int(11) NOT NULL,
  `ItemNo` int(11) NOT NULL,
  `Quantity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `order_item`
--

INSERT INTO `order_item` (`OrderId`, `ItemNo`, `Quantity`) VALUES
(1, 1, 2),
(1, 2, 3),
(1, 3, 4),
(1, 4, 3),
(1, 6, 4),
(1, 8, 5),
(2, 1, 2),
(2, 4, 1),
(3, 1, 2),
(3, 2, 2),
(4, 7, 2),
(4, 13, 2),
(5, 1, 3),
(5, 13, 5),
(6, 5, 4),
(6, 2, 3),
(7, 14, 5),
(7, 1, 2),
(7, 5, 3),
(8, 6, 4),
(8, 8, 2),
(8, 14, 1),
(8, 5, 2),
(9, 1, 3),
(9, 2, 3),
(9, 3, 3),
(10, 1, 2),
(10, 2, 2),
(10, 8, 2),
(11, 7, 2),
(11, 13, 3),
(11, 6, 5),
(11, 8, 2),
(12, 13, 2),
(12, 7, 3),
(12, 21, 2),
(12, 6, 3),
(12, 8, 1),
(13, 5, 2),
(13, 15, 2),
(14, 1, 3),
(14, 7, 1),
(14, 5, 2),
(14, 14, 1),
(15, 5, 6),
(15, 15, 4),
(16, 5, 2),
(16, 15, 1),
(16, 8, 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bill`
--
ALTER TABLE `bill`
  ADD PRIMARY KEY (`BillId`);

--
-- Indexes for table `chef`
--
ALTER TABLE `chef`
  ADD PRIMARY KEY (`ChefId`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`CustomerId`);

--
-- Indexes for table `item`
--
ALTER TABLE `item`
  ADD PRIMARY KEY (`ItemNo`);

--
-- Indexes for table `order`
--
ALTER TABLE `order`
  ADD PRIMARY KEY (`OrderId`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `bill`
--
ALTER TABLE `bill`
  MODIFY `BillId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `chef`
--
ALTER TABLE `chef`
  MODIFY `ChefId` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `CustomerId` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `item`
--
ALTER TABLE `item`
  MODIFY `ItemNo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `order`
--
ALTER TABLE `order`
  MODIFY `OrderId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
