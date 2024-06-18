-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Aug 19, 2023 at 05:34 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `finalproject`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `admin_id` int(11) NOT NULL,
  `admin_nama` varchar(100) NOT NULL,
  `admin_username` varchar(100) NOT NULL,
  `admin_password` varchar(100) NOT NULL,
  `admin_foto` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`admin_id`, `admin_nama`, `admin_username`, `admin_password`, `admin_foto`) VALUES
(1, 'Ryan Ibrahim Pratama', 'admin', '21232f297a57a5a743894a0e4a801fc3', '');

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `customer_id` int(11) NOT NULL,
  `customer_nama` varchar(255) NOT NULL,
  `customer_email` varchar(255) NOT NULL,
  `customer_hp` varchar(20) NOT NULL,
  `customer_alamat` text NOT NULL,
  `customer_password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`customer_id`, `customer_nama`, `customer_email`, `customer_hp`, `customer_alamat`, `customer_password`) VALUES
(2, 'Felix', 'abc@gmail.com', '081231231', 'Jakarta', '900150983cd24fb0d6963f7d28e17f72'),
(3, 'Miko', 'miko@gmail.com', '0812444343434', 'Bekasi', 'fc5fbf966616910d86c802adca6f5cc3');

-- --------------------------------------------------------

--
-- Table structure for table `fasilitas_hotel`
--

CREATE TABLE `fasilitas_hotel` (
  `fh_id` int(11) NOT NULL,
  `fh_icon` varchar(20) DEFAULT NULL,
  `fh_nama` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `fasilitas_kamar`
--

CREATE TABLE `fasilitas_kamar` (
  `fk_id` int(11) NOT NULL,
  `fk_icon` varchar(20) DEFAULT NULL,
  `fk_nama` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `fasilitas_kamar`
--

INSERT INTO `fasilitas_kamar` (`fk_id`, `fk_icon`, `fk_nama`) VALUES
(1, 'fa-circle', 'Bathub'),
(2, 'fa-circle', 'AC'),
(3, 'fa-circle', 'Breakfast'),
(4, 'fa-circle', 'Minibar'),
(5, 'fa-circle', 'TV'),
(6, 'fa-circle', 'Wifi'),
(7, 'fa-circle', 'Lunch'),
(8, 'fa-circle', 'Dinner'),
(9, 'fa-circle', 'Refrigerator'),
(10, 'fa-circle', 'Balcony');

-- --------------------------------------------------------

--
-- Table structure for table `invoice`
--

CREATE TABLE `invoice` (
  `invoice_id` int(11) NOT NULL,
  `invoice_tanggal` date NOT NULL,
  `invoice_customer` int(11) NOT NULL,
  `invoice_nama` varchar(255) NOT NULL,
  `invoice_hp` varchar(255) NOT NULL,
  `invoice_kamar` int(11) NOT NULL,
  `invoice_jumlah_kamar` int(11) NOT NULL,
  `invoice_dari` date NOT NULL,
  `invoice_sampai` date NOT NULL,
  `invoice_harga` int(11) NOT NULL,
  `invoice_total_bayar` int(11) NOT NULL,
  `invoice_status` int(11) NOT NULL,
  `invoice_bukti` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `invoice`
--

INSERT INTO `invoice` (`invoice_id`, `invoice_tanggal`, `invoice_customer`, `invoice_nama`, `invoice_hp`, `invoice_kamar`, `invoice_jumlah_kamar`, `invoice_dari`, `invoice_sampai`, `invoice_harga`, `invoice_total_bayar`, `invoice_status`, `invoice_bukti`) VALUES
(1, '2023-08-19', 2, 'Miko', '081818181822', 3, 2, '2023-08-24', '2023-08-26', 750000, 3200000, 0, ''),
(2, '2023-08-19', 2, 'Miko', '0818181818', 1, 1, '2023-08-25', '2023-08-26', 350000, 550000, 0, '');

-- --------------------------------------------------------

--
-- Table structure for table `invoice_layanan_tambahan`
--

CREATE TABLE `invoice_layanan_tambahan` (
  `ilt_invoice` int(11) NOT NULL,
  `ilt_layanan` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `invoice_layanan_tambahan`
--

INSERT INTO `invoice_layanan_tambahan` (`ilt_invoice`, `ilt_layanan`) VALUES
(1, 5),
(1, 1),
(2, 5),
(3, 5),
(4, 5),
(8, 5),
(9, 5),
(10, 5),
(10, 4),
(11, 5),
(11, 1),
(13, 5),
(13, 1),
(1, 5),
(2, 1),
(2, 3);

-- --------------------------------------------------------

--
-- Table structure for table `kamar`
--

CREATE TABLE `kamar` (
  `kamar_id` int(11) NOT NULL,
  `kamar_nama` varchar(255) NOT NULL,
  `kamar_ranjang` varchar(255) NOT NULL,
  `kamar_ukuran` int(11) NOT NULL,
  `kamar_kategori` int(11) NOT NULL,
  `kamar_jumlah` int(11) NOT NULL,
  `kamar_keterangan` text NOT NULL,
  `kamar_harga` int(11) NOT NULL,
  `kamar_foto1` varchar(255) NOT NULL,
  `kamar_foto2` varchar(255) NOT NULL,
  `kamar_foto3` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `kamar`
--

INSERT INTO `kamar` (`kamar_id`, `kamar_nama`, `kamar_ranjang`, `kamar_ukuran`, `kamar_kategori`, `kamar_jumlah`, `kamar_keterangan`, `kamar_harga`, `kamar_foto1`, `kamar_foto2`, `kamar_foto3`) VALUES
(1, 'Double Economic', 'Double', 12, 3, 15, '<p>\r\n\r\nThe Double Economic room is an affordable and cozy option for couples or solo travelers seeking a comfortable stay without breaking the bank. Designed with simplicity and functionality in mind, this room offers everything you need for a relaxing and enjoyable stay.\r\n\r\n</p>', 350000, '634256402_eco2.jpg', '634256402_ecodouble4.jpg', '634256402_economy double3.jpg'),
(2, 'Economic (twin)', 'Twin', 12, 3, 12, '<p>\r\n\r\nThe Economic Twin room offers a comfortable and budget-friendly accommodation option for travelers. Featuring two twin beds, this cozy room is perfect for friends or colleagues traveling together. The room is thoughtfully designed with essential amenities to ensure a pleasant stay.\r\n\r\n</p>', 200000, '1545745825_eco1.jpeg', '491541948_ecotwin 3.jpg', '1321656632_twinbed2.jpg'),
(3, 'Deluxe (Twin)', 'Twin', 40, 10, 15, '<p>\r\n\r\nThe Deluxe Twin Bed Room is tastefully decorated with modern furnishings and soothing color schemes. It offers ample space for you to unwind and rest after a long day of exploration or business activities.\r\n\r\n</p>', 750000, '1457828453_deluxetwin1.jpg', '1457828453_deluxetwin 2.jpg', '1457828453_deluxetwin3.jpeg'),
(4, 'Double Deluxe', 'Double', 40, 10, 15, '', 760000, '', '', ''),
(5, 'Grand Luxury', 'King', 80, 11, 5, '<p>\r\n\r\nStep into a world of unparalleled elegance and refinement with our exquisite Grand Luxury Suite. Every facet of this resplendent haven has been meticulously crafted to transport you to a realm of absolute indulgence. From the moment you cross the threshold, you will be enveloped in an atmosphere of grandeur that is sure to leave a lasting impression.\r\n\r\n<br></p>', 5000000, '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `kamar_fasilitas`
--

CREATE TABLE `kamar_fasilitas` (
  `kf_id` int(11) NOT NULL,
  `kf_kamar` int(11) NOT NULL,
  `kf_fasilitas` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `kamar_fasilitas`
--

INSERT INTO `kamar_fasilitas` (`kf_id`, `kf_kamar`, `kf_fasilitas`) VALUES
(15, 0, 2),
(16, 0, 1),
(17, 0, 3),
(18, 0, 4),
(19, 0, 5),
(77, 3, 2),
(78, 3, 1),
(79, 3, 3),
(80, 3, 4),
(81, 3, 5),
(84, 2, 2),
(85, 2, 4),
(86, 1, 2),
(87, 1, 4),
(88, 4, 2),
(89, 4, 1),
(90, 4, 3),
(91, 4, 8),
(92, 4, 7),
(93, 4, 4),
(94, 4, 5),
(95, 4, 6),
(96, 5, 2),
(97, 5, 10),
(98, 5, 1),
(99, 5, 3),
(100, 5, 8),
(101, 5, 7),
(102, 5, 4),
(103, 5, 9),
(104, 5, 5),
(105, 5, 6);

-- --------------------------------------------------------

--
-- Table structure for table `kategori`
--

CREATE TABLE `kategori` (
  `kategori_id` int(11) NOT NULL,
  `kategori_nama` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `kategori`
--

INSERT INTO `kategori` (`kategori_id`, `kategori_nama`) VALUES
(1, 'Uncategorized'),
(3, 'Standard'),
(10, 'Deluxe'),
(11, 'Luxury');

-- --------------------------------------------------------

--
-- Table structure for table `layanan_tambahan`
--

CREATE TABLE `layanan_tambahan` (
  `lt_id` int(11) NOT NULL,
  `lt_nama` varchar(255) NOT NULL,
  `lt_harga` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `layanan_tambahan`
--

INSERT INTO `layanan_tambahan` (`lt_id`, `lt_nama`, `lt_harga`) VALUES
(1, 'Extra Bed', 100000),
(3, 'Laundry', 100000),
(4, 'SPA', 200000),
(5, 'Airport Transfer', 200000);

-- --------------------------------------------------------

--
-- Table structure for table `rating`
--

CREATE TABLE `rating` (
  `rating_id` int(11) NOT NULL,
  `rating_tanggal` date NOT NULL,
  `rating_invoice` int(11) NOT NULL,
  `rating` int(11) NOT NULL,
  `rating_review` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`customer_id`);

--
-- Indexes for table `fasilitas_hotel`
--
ALTER TABLE `fasilitas_hotel`
  ADD PRIMARY KEY (`fh_id`);

--
-- Indexes for table `fasilitas_kamar`
--
ALTER TABLE `fasilitas_kamar`
  ADD PRIMARY KEY (`fk_id`);

--
-- Indexes for table `invoice`
--
ALTER TABLE `invoice`
  ADD PRIMARY KEY (`invoice_id`);

--
-- Indexes for table `kamar`
--
ALTER TABLE `kamar`
  ADD PRIMARY KEY (`kamar_id`);

--
-- Indexes for table `kamar_fasilitas`
--
ALTER TABLE `kamar_fasilitas`
  ADD PRIMARY KEY (`kf_id`);

--
-- Indexes for table `kategori`
--
ALTER TABLE `kategori`
  ADD PRIMARY KEY (`kategori_id`);

--
-- Indexes for table `layanan_tambahan`
--
ALTER TABLE `layanan_tambahan`
  ADD PRIMARY KEY (`lt_id`);

--
-- Indexes for table `rating`
--
ALTER TABLE `rating`
  ADD PRIMARY KEY (`rating_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `admin_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `customer_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `fasilitas_hotel`
--
ALTER TABLE `fasilitas_hotel`
  MODIFY `fh_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `fasilitas_kamar`
--
ALTER TABLE `fasilitas_kamar`
  MODIFY `fk_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `invoice`
--
ALTER TABLE `invoice`
  MODIFY `invoice_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `kamar`
--
ALTER TABLE `kamar`
  MODIFY `kamar_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `kamar_fasilitas`
--
ALTER TABLE `kamar_fasilitas`
  MODIFY `kf_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=106;

--
-- AUTO_INCREMENT for table `kategori`
--
ALTER TABLE `kategori`
  MODIFY `kategori_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `layanan_tambahan`
--
ALTER TABLE `layanan_tambahan`
  MODIFY `lt_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `rating`
--
ALTER TABLE `rating`
  MODIFY `rating_id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
