-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 15, 2024 at 09:29 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `shop_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` int(100) NOT NULL,
  `name` varchar(20) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `name`, `password`) VALUES
(1, 'admin', '6216f8a75fd5bb3d5f22b6f9958cdede3fc086c2');

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `id` int(100) NOT NULL,
  `user_id` int(100) NOT NULL,
  `pid` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `price` int(10) NOT NULL,
  `quantity` int(10) NOT NULL,
  `image` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

CREATE TABLE `messages` (
  `id` int(100) NOT NULL,
  `user_id` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `number` varchar(12) NOT NULL,
  `message` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(100) NOT NULL,
  `user_id` int(100) NOT NULL,
  `name` varchar(20) NOT NULL,
  `number` varchar(10) NOT NULL,
  `email` varchar(50) NOT NULL,
  `method` varchar(50) NOT NULL,
  `address` varchar(500) NOT NULL,
  `total_products` varchar(1000) NOT NULL,
  `total_price` int(100) NOT NULL,
  `placed_on` date NOT NULL DEFAULT current_timestamp(),
  `payment_status` varchar(20) NOT NULL DEFAULT 'pending'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `details` varchar(500) NOT NULL,
  `price` int(10) NOT NULL,
  `image_01` varchar(100) NOT NULL,
  `image_02` varchar(100) NOT NULL,
  `image_03` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `details`, `price`, `image_01`, `image_02`, `image_03`) VALUES
(5, 'Hp 15s Laptop', 'Introducing the HP 15s: a sleek and reliable laptop designed for everyday productivity. Featuring a vibrant 15.6-inch display, powerful Intel Core processor, and ample storage options, the HP 15s delivers smooth performance for work and entertainment. With its lightweight design and long-lasting battery life, stay productive on the go. Experience versatility and performance with the HP 15s.', 50000, '64ccb2559d908f42222b598a-hp-pavilion-13-3-fhd-intel-core-i3.jpg', 'HP-Pavilion-eh3055AU-493838238-i-2-1200Wx1200H.jpg', 'hp.jpeg'),
(6, 'Realme C21 SmartPhone', 'Introducing the Realme C21: Your Reliable Everyday Companion\r\n\r\nElevate your smartphone experience with the Realme C21, designed to provide exceptional performance and reliability without breaking the bank. Packed with innovative features and a sleek design, this budget-friendly device is perfect for those who demand quality without compromise.', 15000, 'smartphone-1.webp', 'smartphone-2.webp', 'smartphone-3.webp'),
(7, 'Analogue Watch New', 'Introducing Analogue: a timeless analogue watch designed for sophistication and style. With its sleek design and precision movement, Analogue ensures accurate timekeeping for any occasion. Crafted with quality materials and water resistance, this watch is both durable and elegant. Elevate your wristwear with Analogue.', 5499, 'watch-1.webp', 'watch-2.webp', 'watch-3.webp'),
(8, 'Oneplus Y21 TV', 'Introducing the OnePlus Y21 Series TV: A cutting-edge entertainment experience redefined. Featuring stunning 4K resolution and Dolby Vision, immerse yourself in lifelike visuals. With seamless connectivity and a sleek design, elevate your home entertainment setup effortlessly. Transform your viewing experience with the OnePlus Y21 Series TV.', 21399, 'tv-01.webp', 'tv-02.webp', 'tv-03.webp'),
(9, 'Swift Glide Mouse', 'Introducing the SwiftGlide Mouse: a sleek and ergonomic peripheral engineered for precise control and comfort. With its advanced optical sensor and customizable DPI settings, SwiftGlide ensures smooth and accurate tracking for gaming or productivity tasks. Designed with a contoured grip and durable construction, this mouse offers hours of comfortable use. Elevate your computing experience with the SwiftGlide Mouse.', 600, 'mouse-1.webp', 'mouse-2.webp', 'mouse-3.webp'),
(10, 'Lens Pro Canon Camera', 'Introducing the LensMaster Pro: a versatile camera built for professional photography and videography. Equipped with advanced features such as high-resolution imaging, 4K video recording, and adjustable aperture settings, the LensMaster Pro delivers stunning visuals in any environment. With its compact design and intuitive controls, capturing your moments has never been easier. Unleash your creativity with the LensMaster Pro camera.', 78599, 'camera-1.webp', 'camera-2.webp', 'camera-3.webp'),
(11, 'Arctic Chill Fridge', '\r\nIntroducing the ArcticChill Fridge: a stylish and spacious refrigerator designed to keep your food fresh and organized. With advanced cooling technology and customizable storage options, ArcticChill ensures optimal preservation for all your groceries. Upgrade your kitchen with the ArcticChill Fridge for convenience and freshness', 40899, 'fridge-1.webp', 'fridge-2.webp', 'fridge-3.webp'),
(12, 'Aqua Wash Pro WashingMachine', 'Introducing the AquaWash Pro: a high-performance washing machine designed for efficient cleaning and convenience. With its advanced wash cycles and large capacity, AquaWash Pro tackles laundry with ease, while its sleek design complements any modern home. Experience superior cleaning and reliability with AquaWash Pro.', 65799, 'washing machine-1.webp', 'washing machine-2.webp', 'washing machine-3.webp');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(100) NOT NULL,
  `name` varchar(20) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wishlist`
--

CREATE TABLE `wishlist` (
  `id` int(100) NOT NULL,
  `user_id` int(100) NOT NULL,
  `pid` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `price` int(100) NOT NULL,
  `image` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wishlist`
--
ALTER TABLE `wishlist`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `messages`
--
ALTER TABLE `messages`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `wishlist`
--
ALTER TABLE `wishlist`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
