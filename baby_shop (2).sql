-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 03, 2021 at 03:56 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `baby_shop`
--

-- --------------------------------------------------------

--
-- Table structure for table `cat_table`
--

CREATE TABLE `cat_table` (
  `catId` int(11) NOT NULL,
  `catName` varchar(100) NOT NULL,
  `image` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `cat_table`
--

INSERT INTO `cat_table` (`catId`, `catName`, `image`) VALUES
(1, 'Dresh', ''),
(2, 'Food', ''),
(3, 'shoes', ''),
(4, 'Doll', ''),
(5, 'Drugs', '');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_admin`
--

CREATE TABLE `tbl_admin` (
  `adminId` int(11) NOT NULL,
  `adminUser` varchar(200) NOT NULL,
  `adminName` varchar(200) NOT NULL,
  `adminPass` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_admin`
--

INSERT INTO `tbl_admin` (`adminId`, `adminUser`, `adminName`, `adminPass`) VALUES
(1, 'admin', 'admin', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_brand`
--

CREATE TABLE `tbl_brand` (
  `brandId` int(11) NOT NULL,
  `brandName` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_brand`
--

INSERT INTO `tbl_brand` (`brandId`, `brandName`) VALUES
(2, 'batas'),
(3, 'star'),
(6, 'Lotto');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_cart`
--

CREATE TABLE `tbl_cart` (
  `cartId` int(11) NOT NULL,
  `productId` int(11) NOT NULL,
  `productName` varchar(200) NOT NULL,
  `price` varchar(100) NOT NULL,
  `quantity` varchar(200) NOT NULL,
  `image` varchar(300) NOT NULL,
  `sId` varchar(260) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_cart`
--

INSERT INTO `tbl_cart` (`cartId`, `productId`, `productName`, `price`, `quantity`, `image`, `sId`) VALUES
(81, 18, 'Product four', '50', '1', 'images/0019e27c56.jpg', '3almc3ks55cs3vutqs0j3tli77'),
(83, 15, 'Product one', '1500', '1', 'images/e07a3e5c4d.webp', '1ri33ef59d7s149r74snoliasq'),
(84, 20, 'Product six', '250', '2', 'images/c617fdf4f3.jpg', '1ri33ef59d7s149r74snoliasq'),
(85, 20, 'Product six', '250', '2', 'images/c617fdf4f3.jpg', 'dii08qso4l55vqcsgkakpmpj2k');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_catagory`
--

CREATE TABLE `tbl_catagory` (
  `catId` int(11) NOT NULL,
  `catName` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_catagory`
--

INSERT INTO `tbl_catagory` (`catId`, `catName`) VALUES
(1, 'food'),
(2, 'Dress'),
(3, 'Doll'),
(4, 'Shows'),
(5, 'Drugs');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_contact`
--

CREATE TABLE `tbl_contact` (
  `con_id` int(11) NOT NULL,
  `firstname` varchar(266) NOT NULL,
  `lastname` varchar(266) NOT NULL,
  `email` varchar(266) NOT NULL,
  `message` text NOT NULL,
  `subject` varchar(266) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_customer`
--

CREATE TABLE `tbl_customer` (
  `customerId` int(11) NOT NULL,
  `firstName` varchar(255) NOT NULL,
  `lastName` varchar(255) NOT NULL,
  `address` varchar(400) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(200) NOT NULL,
  `password` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_customer`
--

INSERT INTO `tbl_customer` (`customerId`, `firstName`, `lastName`, `address`, `email`, `phone`, `password`) VALUES
(8, 'test', 'test', 'dhaka', 'test@gmail.com', '0170', '12'),
(9, 'dipta', 'dey', 'fasdfdsf', 'dipta@gmail.com', '444545', '1234');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_order`
--

CREATE TABLE `tbl_order` (
  `orderId` int(11) NOT NULL,
  `customerId` int(11) NOT NULL,
  `productId` int(11) NOT NULL,
  `productName` varchar(300) NOT NULL,
  `price` varchar(255) NOT NULL,
  `quantity` int(11) NOT NULL,
  `image` varchar(300) NOT NULL,
  `inday` datetime DEFAULT current_timestamp(),
  `confirm` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_order`
--

INSERT INTO `tbl_order` (`orderId`, `customerId`, `productId`, `productName`, `price`, `quantity`, `image`, `inday`, `confirm`) VALUES
(63, 8, 19, 'Product five', '200', 2, 'images/ddc9990793.webp', '2021-03-22 12:40:03', 1),
(64, 8, 15, 'Product one', '1500', 1, 'images/e07a3e5c4d.webp', '2021-03-22 12:40:03', 1),
(65, 8, 20, 'Product six', '250', 1, 'images/c617fdf4f3.jpg', '2021-03-22 12:56:37', 1),
(66, 8, 16, 'Product two', '100', 1, 'images/5500b02026.webp', '2021-03-22 13:01:07', 1),
(67, 8, 17, 'Product three', '1200', 2, 'images/f33de1f040.jpg', '2021-04-04 14:38:18', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_product`
--

CREATE TABLE `tbl_product` (
  `productId` int(11) NOT NULL,
  `productName` varchar(200) NOT NULL,
  `catId` int(11) NOT NULL,
  `brandId` int(11) NOT NULL,
  `body` text NOT NULL,
  `price` varchar(300) NOT NULL,
  `image` varchar(300) NOT NULL,
  `type` tinyint(4) NOT NULL,
  `quantityId` int(11) NOT NULL,
  `productCode` varchar(300) NOT NULL,
  `admin_id` int(11) NOT NULL,
  `uploadtime` timestamp NOT NULL DEFAULT current_timestamp(),
  `offer` tinyint(4) NOT NULL,
  `total_rat` int(11) NOT NULL,
  `hit` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_product`
--

INSERT INTO `tbl_product` (`productId`, `productName`, `catId`, `brandId`, `body`, `price`, `image`, `type`, `quantityId`, `productCode`, `admin_id`, `uploadtime`, `offer`, `total_rat`, `hit`) VALUES
(15, 'Product one', 4, 6, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', '1500', 'images/e07a3e5c4d.webp', 0, 3, 'f95cf40d', 0, '2021-03-22 06:26:02', 0, 20, 7),
(16, 'Product two', 5, 3, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry.\r\n Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', '100', 'images/5500b02026.webp', 0, 3, '1c815995', 0, '2021-03-22 06:28:29', 0, 3, 1),
(17, 'Product three', 2, 2, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', '1200', 'images/f33de1f040.jpg', 0, 3, 'de0e3477', 0, '2021-03-22 06:31:42', 1, 18, 5),
(18, 'Product four', 3, 3, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', '50', 'images/0019e27c56.jpg', 0, 2, 'cd9f4588', 0, '2021-03-22 06:33:01', 1, 7, 3),
(19, 'Product five', 5, 6, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', '200', 'images/ddc9990793.webp', 0, 2, '0019e27c', 0, '2021-03-22 06:33:25', 1, 0, 0),
(20, 'Product six', 4, 3, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', '250', 'images/c617fdf4f3.jpg', 0, 2, 'ddc99907', 0, '2021-03-22 06:33:51', 0, 0, 0),
(21, 'Product seven', 3, 6, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', '10000', 'images/f9b2214de8.webp', 0, 1, 'c617fdf4', 0, '2021-03-22 06:34:12', 0, 6, 2);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_quantity`
--

CREATE TABLE `tbl_quantity` (
  `quantityId` int(11) NOT NULL,
  `quantity_name` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_quantity`
--

INSERT INTO `tbl_quantity` (`quantityId`, `quantity_name`) VALUES
(1, 'kg'),
(2, 'Litter'),
(3, 'pcs');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cat_table`
--
ALTER TABLE `cat_table`
  ADD PRIMARY KEY (`catId`);

--
-- Indexes for table `tbl_admin`
--
ALTER TABLE `tbl_admin`
  ADD PRIMARY KEY (`adminId`);

--
-- Indexes for table `tbl_brand`
--
ALTER TABLE `tbl_brand`
  ADD PRIMARY KEY (`brandId`);

--
-- Indexes for table `tbl_cart`
--
ALTER TABLE `tbl_cart`
  ADD PRIMARY KEY (`cartId`);

--
-- Indexes for table `tbl_catagory`
--
ALTER TABLE `tbl_catagory`
  ADD PRIMARY KEY (`catId`);

--
-- Indexes for table `tbl_contact`
--
ALTER TABLE `tbl_contact`
  ADD PRIMARY KEY (`con_id`);

--
-- Indexes for table `tbl_customer`
--
ALTER TABLE `tbl_customer`
  ADD PRIMARY KEY (`customerId`);

--
-- Indexes for table `tbl_order`
--
ALTER TABLE `tbl_order`
  ADD PRIMARY KEY (`orderId`);

--
-- Indexes for table `tbl_product`
--
ALTER TABLE `tbl_product`
  ADD PRIMARY KEY (`productId`);

--
-- Indexes for table `tbl_quantity`
--
ALTER TABLE `tbl_quantity`
  ADD PRIMARY KEY (`quantityId`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cat_table`
--
ALTER TABLE `cat_table`
  MODIFY `catId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tbl_admin`
--
ALTER TABLE `tbl_admin`
  MODIFY `adminId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_brand`
--
ALTER TABLE `tbl_brand`
  MODIFY `brandId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `tbl_cart`
--
ALTER TABLE `tbl_cart`
  MODIFY `cartId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=86;

--
-- AUTO_INCREMENT for table `tbl_catagory`
--
ALTER TABLE `tbl_catagory`
  MODIFY `catId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `tbl_contact`
--
ALTER TABLE `tbl_contact`
  MODIFY `con_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_customer`
--
ALTER TABLE `tbl_customer`
  MODIFY `customerId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `tbl_order`
--
ALTER TABLE `tbl_order`
  MODIFY `orderId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=68;

--
-- AUTO_INCREMENT for table `tbl_product`
--
ALTER TABLE `tbl_product`
  MODIFY `productId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `tbl_quantity`
--
ALTER TABLE `tbl_quantity`
  MODIFY `quantityId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
