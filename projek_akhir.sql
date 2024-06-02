-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 28, 2023 at 05:21 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.0.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `projek_akhir`
--

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `user_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `price` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`user_id`, `name`, `price`) VALUES
(2, 'Azarine Sunscreen SPF 45', 49000);

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `product_id` int(9) NOT NULL,
  `name` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `category` int(9) NOT NULL,
  `price` int(11) NOT NULL,
  `product_description` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`product_id`, `name`, `image`, `category`, `price`, `product_description`) VALUES
(1, 'Dior Sauvage', 'img/dior_sauvage.webp', 1, 1300000, 'Sauvage Eau de Parfum adalah wewangian pria Dior dengan jejak yang kuat dan mulia yang terinspirasi oleh padang pasir di saat senja.'),
(2, 'Garden of Mirror', 'https://th.bing.com/th/id/OIP.YiJscgkkl6EpSUbBzQzrMQHaHa?rs=1&pid=ImgDetMain', 1, 99000, 'Ini adalah lini parfum Miniso dengan aroma fougere aromatik untuk pria modern. Ini adalah seri Eau De Parfum yang berkelas, segar, dan mengangkat. Top note bergamot, lavender, dan lada. Note jantung dari Patchouly, amber kering, apel. '),
(3, 'Azarine Sunscreen SPF 45', 'https://images.thekingdomshop.com/image/cache/product/azarine-hydrasoothe-sunscreen-gel-spf-45-pa++++-50ml-800x800.jpg', 2, 49000, 'Tabir surya wajah dalam bentuk gel (water base) yang sangat ringan, dingin dan mudah meresap untuk seluruh jenis kulit termasuk kulit berminyak dan acne prone skin. '),
(4, 'Versace Bright Crystal', 'https://cdn.shopify.com/s/files/1/2009/6859/products/Versace_Bright_Crsytal_1024x1024.png?v=1529065472', 1, 249000, 'Wangi yang berasal dari yuzu dan pomegranate ini menjadi keunikan parfum Versace ini. Bisa jadi pilihan utama untuk Anda yang ingin berikan karakter spesial di hari dan acara yang spesial.'),
(5, 'Gucci Bloom', 'https://th.bing.com/th/id/OIP.UpGcyCTb9_fYIa6E3ycI3AHaHa?rs=1&pid=ImgDetMain', 1, 790000, 'Natural tuberose harvested from India. Jasmine bud extract, obtained through an exclusive method of co-extraction to impart a fresh green and petal scent on the skin'),
(6, 'Avoskin Alpha Arbutin Serum', 'https://th.bing.com/th/id/OIP.pG2W9QgiNA3RuVHsE_u3twHaHa?rs=1&pid=ImgDetMain', 2, 120000, 'Serum yang satu ini memadukan active ingredients Alpha Arbutin 3% dan ekstrak natural dari Grapeseed untuk mencerahkan kulit dan memudarkan noda bekas jerawat.'),
(8, 'Avoskin miraculous refining toner', 'https://th.bing.com/th/id/OIP.JlnBRu962CmLc5M43ONxhAHaHa?rs=1&pid=ImgDetMain', 2, 170000, 'Produk ini memiliki kombinasi kandungan AHA, BHA, dan PHA. AHA (Alpha Hydroxy Acid) adalah exfoliating agent yang cenderung cocok untuk semua jenis kulit termasuk kulit kering.'),
(9, 'Hadalabo Gokujun Toner', 'https://i.ebayimg.com/images/g/9r8AAOSw7j5ffTjK/s-l640.jpg', 2, 69000, 'Lightweight hydrating \"lotion\" with 5 types of Hyaluronic acid.'),
(10, 'Somethinc Ombrella Lip Tint', 'https://images.somethinc.com/uploads/products/thumbs/800x800/Ombrella_Tint_Feed-03.jpg', 3, 63000, 'Somethinc Ombrella Lip Totem Tint merupakan lip tint dengan formulasi yang tahan lama & non-drying, kamu bisa pakai lip tint ini seharian tanpa cemas akan menyebabkan bibir pecah-pecah atau meninggalkan stain yang tidak alami.'),
(11, 'Rollover Reaction Liptint', 'https://th.bing.com/th/id/OIP.Ep1oM9IXO8Ho00hfGptouwHaHa?w=800&h=800&rs=1&pid=ImgDetMain', 3, 127000, 'Heated? Dehydrated? CHAPPED LIPS? Say no more. NOW AVAILABLE, DEWDROP! A hydrating lip and cheek tint rich with naturally-derived nutrients to nourish and protect your lips.'),
(12, 'Sebamed Lip Balm', 'https://i5.walmartimages.com/asr/5ba5430e-5e15-4171-bf87-021d08777171.3faf4130ffba673c62ddb07c71cd543f.jpeg', 2, 49000, 'Sebamed Lip Care Stick SPF 30 merupakan pelembab bibir yang cocok digunakan untuk bibir kering dan pecah-pecah. Perawatan intensif dengan minyak jojoba, dan vitamin E yang mampu melindungi bibir terhadap radikal bebas.'),
(13, 'Somethinc Cushion', 'https://1.bp.blogspot.com/-0HLcMIDBe_g/X3gGTWaAKpI/AAAAAAAACxA/aB3bhR-Th9oqHFmx29yUfKXyC_mJKAXYgCLcBGAsYHQ/s2048/IMG_2206.JPG', 3, 129000, 'HOOMAN menggunakan Breathable Technology yang anti-bakteri & tidak mudah teroksidasi meski dipakai seharian. Memiliki Medium to High Coverage yang mampu menyamarkan pori-pori '),
(14, 'Skin 1004 Ampoule', 'https://kocos.bg/images/2/4a7f2dd6ae40d917dd498b2ce8a31af0/skin1004-ampoule-serum-coming-soon-tea-trica-relief-ampoule-37221009457398-1148x1150-5199.jpg', 2, 210000, 'Skin1004 Madagascar Centella-Asiatica 100 Ampoule terbuat dari 100% ekstrak Centella Asiatica yang aman bagi kulit sensitif dan menjadikan kulit lebih cerah dan muda.');

-- --------------------------------------------------------

--
-- Table structure for table `product_category`
--

CREATE TABLE `product_category` (
  `category_id` int(9) NOT NULL,
  `category_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `product_category`
--

INSERT INTO `product_category` (`category_id`, `category_name`) VALUES
(1, 'parfume'),
(2, 'skincare'),
(3, 'makeup');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `user_id` int(9) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`user_id`, `username`, `password`) VALUES
(1, 'faiz', 123),
(2, 'admin', 123);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`product_id`),
  ADD KEY `fk_category` (`category`);

--
-- Indexes for table `product_category`
--
ALTER TABLE `product_category`
  ADD PRIMARY KEY (`category_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `product_id` int(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `product_category`
--
ALTER TABLE `product_category`
  MODIFY `category_id` int(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `user_id` int(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `fk_category` FOREIGN KEY (`category`) REFERENCES `product_category` (`category_id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
