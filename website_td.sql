-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 08, 2023 at 04:33 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `website_td`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_brand`
--

CREATE TABLE `tbl_brand` (
  `brand_id` int(11) NOT NULL,
  `cartegory_id` int(11) NOT NULL,
  `brand_name` varchar(255) NOT NULL,
  `cartegory_main_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_brand`
--

INSERT INTO `tbl_brand` (`brand_id`, `cartegory_id`, `brand_name`, `cartegory_main_id`) VALUES
(18, 8, 'iPhone X ', 1),
(19, 8, 'iPhone 11', 1),
(20, 8, 'iPhone 12', 1),
(21, 8, 'iPhone 13', 1),
(22, 8, 'iPhone 14', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_cart`
--

CREATE TABLE `tbl_cart` (
  `cart_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `product_name` varchar(250) NOT NULL,
  `product_price` int(11) NOT NULL,
  `product_color` varchar(50) NOT NULL,
  `product_memory_ram` varchar(50) NOT NULL,
  `product_img` varchar(250) NOT NULL,
  `quantity` int(11) NOT NULL,
  `total` int(11) NOT NULL,
  `product_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_cartegory`
--

CREATE TABLE `tbl_cartegory` (
  `cartegory_id` int(11) NOT NULL,
  `cartegory_name` varchar(255) NOT NULL,
  `cartegory_main_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_cartegory`
--

INSERT INTO `tbl_cartegory` (`cartegory_id`, `cartegory_name`, `cartegory_main_id`) VALUES
(8, 'iPhone', 1),
(9, 'Android', 1),
(10, 'DELL', 2),
(11, 'ASUS', 2),
(12, 'MacBook', 2);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_cartegory_main`
--

CREATE TABLE `tbl_cartegory_main` (
  `cartegory_main_id` int(11) NOT NULL,
  `cartegory_main_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_cartegory_main`
--

INSERT INTO `tbl_cartegory_main` (`cartegory_main_id`, `cartegory_main_name`) VALUES
(1, 'Điện Thoại'),
(2, 'Laptop'),
(3, 'Phụ Kiện'),
(4, 'New And Sale'),
(5, 'Đồ Cũ ');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_color`
--

CREATE TABLE `tbl_color` (
  `color_id` int(11) NOT NULL,
  `color_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_color`
--

INSERT INTO `tbl_color` (`color_id`, `color_name`) VALUES
(1, 'Gold'),
(3, 'Blue'),
(4, 'Black');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_memory_ram`
--

CREATE TABLE `tbl_memory_ram` (
  `memory_ram_id` int(11) NOT NULL,
  `memory_ram_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_memory_ram`
--

INSERT INTO `tbl_memory_ram` (`memory_ram_id`, `memory_ram_name`) VALUES
(7, '64GB'),
(8, '128GB'),
(9, '256GB');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_order`
--

CREATE TABLE `tbl_order` (
  `order_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `order_date` varchar(50) NOT NULL,
  `payment_method` varchar(50) NOT NULL,
  `order_status` varchar(50) NOT NULL,
  `user_info` varchar(400) NOT NULL,
  `total_order` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_order_items`
--

CREATE TABLE `tbl_order_items` (
  `order_item_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `product_img` varchar(250) NOT NULL,
  `product_name` varchar(250) NOT NULL,
  `product_color` varchar(50) NOT NULL,
  `product_memory_ram` varchar(50) NOT NULL,
  `quantity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
-- --------------------------------------------------------

--
-- Table structure for table `user_discounts`
--
CREATE TABLE `user_discounts` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `discount_code` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
-- --------------------------------------------------------

--
-- Table structure for table `discount`
--

CREATE TABLE `discount` (
  `id` int(11) NOT NULL,
  `discount_code` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `discount`
--

INSERT INTO `discount` (`id`, `discount_code`) VALUES
(1, 'tri123'),
(2, 'tri234');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_product`
--

CREATE TABLE `tbl_product` (
  `product_id` int(11) NOT NULL,
  `product_name` varchar(255) NOT NULL,
  `cartegory_id` int(11) NOT NULL,
  `brand_id` int(11) NOT NULL,
  `product_price` varchar(255) NOT NULL,
  `product_price_sale` varchar(255) NOT NULL,
  `product_color` varchar(255) NOT NULL,
  `product_memory_ram` varchar(255) NOT NULL,
  `product_quantity` int(11) NOT NULL,
  `product_intro` varchar(5000) NOT NULL,
  `product_detail` text NOT NULL,
  `product_accessory` text NOT NULL,
  `product_guarantee` text NOT NULL,
  `product_img` varchar(255) NOT NULL,
  `cartegory_main_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_product`
--

INSERT INTO `tbl_product` (`product_id`, `product_name`, `cartegory_id`, `brand_id`, `product_price`, `product_price_sale`, `product_color`, `product_memory_ram`, `product_quantity`, `product_intro`, `product_detail`, `product_accessory`, `product_guarantee`, `product_img`, `cartegory_main_id`) VALUES
(1, 'iPhone X', 8, 18, '70', '1800000', 'Black', '128GB', 10, 'ncc', '', '', '', 'iphone8plus.png', 1),
(3, 'iPhone 13 PRO MAX', 8, 21, '60', '18000000', 'Blue', '128GB', 1, 'ok', '', '', '', 'iphone13promax.jpg', 1),
(4, 'iPhone 14 PRO MAX', 8, 22, '50', '26.490.000', 'Gold', '128GB', 3, 'Good', '', '', '', 'iphone14promax.png', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_product_img_desc`
--

CREATE TABLE `tbl_product_img_desc` (
  `product_id` int(11) NOT NULL,
  `product_img_desc` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_product_img_desc`
--

INSERT INTO `tbl_product_img_desc` (`product_id`, `product_img_desc`) VALUES
(1, 'iphone8plusda.png'),
(1, 'iphone8plusden.png'),
(1, 'iphone8plusminhhoa.png'),
(1, 'iphone8plusminhhoa2.png'),
(3, 'iphone13promax.jpg'),
(3, 'iphone13promaxden.jpg'),
(3, 'iphone13promaxtrang.jpg'),
(3, 'iphone13promaxvang.jpg'),
(4, 'iphone14promax.png'),
(4, 'iphone14promaxtrang.png'),
(4, 'iphone14promaxvang.png'),
(4, 'thongtiniphone14promax.png');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(3) NOT NULL,
  `email` varchar(250) NOT NULL,
  `username` varchar(250) NOT NULL,
  `password` varchar(255) NOT NULL,
  `fullname` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `phone` int(10) NOT NULL,
  `verification_code` int(6) NOT NULL,
  `registration_time` datetime NOT NULL DEFAULT current_timestamp(),
  `role` varchar(255) DEFAULT 'user',
  `is_online` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`id`, `email`, `username`, `password`, `fullname`, `address`, `phone`, `verification_code`, `registration_time`, `role`, `is_online`) VALUES
(95, 'techdiscoverys@gmail.com', 'TechDiscovery', '$2y$10$Eq3ogqWuNsHqkQUPvimUi.09tp0gtFn9TbfUQC86OL7DPqrVqK5rq', 'TECHDISCOVERY', '666/666/666', 901020304, 339147, '2023-08-19 10:47:46', 'admin', 1),
(98, 'phamphudien901@gmail.com', '22', '$2y$10$fD9MU.syKu4lUr2d8FTi2uvozCxJRT2ApFQqwTsMadwOFifP0jvq.', '22', '22', 2147483647, 295591, '2023-08-19 18:02:13', 'user', 1),
(99, 'phamphudien801@gmail.com', '23', '$2y$10$2ntUp93mRFZGaOLM.zUl2eGTPgseJs.YahQQK7B0DNsGo1lHP3HLG', '23', '23', 2147483647, 328019, '2023-08-19 19:44:10', 'user', 1);


--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_brand`
--
ALTER TABLE `tbl_brand`
  ADD PRIMARY KEY (`brand_id`);

--
-- Indexes for table `tbl_cart`
--
ALTER TABLE `tbl_cart`
  ADD PRIMARY KEY (`cart_id`);

--
-- Indexes for table `tbl_cartegory`
--
ALTER TABLE `tbl_cartegory`
  ADD PRIMARY KEY (`cartegory_id`);

--
-- Indexes for table `tbl_cartegory_main`
--
ALTER TABLE `tbl_cartegory_main`
  ADD PRIMARY KEY (`cartegory_main_id`);

--
-- Indexes for table `tbl_color`
--
ALTER TABLE `tbl_color`
  ADD PRIMARY KEY (`color_id`);

--
-- Indexes for table `tbl_memory_ram`
--
ALTER TABLE `tbl_memory_ram`
  ADD PRIMARY KEY (`memory_ram_id`);

--
-- Indexes for table `discount`
--
ALTER TABLE `discount`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_order`
--
ALTER TABLE `tbl_order`
  ADD PRIMARY KEY (`order_id`);

--
-- Indexes for table `tbl_order_items`
--
ALTER TABLE `tbl_order_items`
  ADD PRIMARY KEY (`order_item_id`);

--
-- Indexes for table `user_discounts`
--
ALTER TABLE `user_discounts`
  ADD PRIMARY KEY (`id`),

--
-- Indexes for table `tbl_product`
--
ALTER TABLE `tbl_product`
  ADD PRIMARY KEY (`product_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_brand`
--
ALTER TABLE `tbl_brand`
  MODIFY `brand_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `tbl_cart`
--
ALTER TABLE `tbl_cart`
  MODIFY `cart_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- AUTO_INCREMENT for table `tbl_cartegory`
--
ALTER TABLE `tbl_cartegory`
  MODIFY `cartegory_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `tbl_cartegory_main`
--
ALTER TABLE `tbl_cartegory_main`
  MODIFY `cartegory_main_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `tbl_color`
--
ALTER TABLE `tbl_color`
  MODIFY `color_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tbl_memory_ram`
--
ALTER TABLE `tbl_memory_ram`
  MODIFY `memory_ram_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `discount`
--
ALTER TABLE `discount`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tbl_order`
--
ALTER TABLE `tbl_order`
  MODIFY `order_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=67;

--
-- AUTO_INCREMENT for table `tbl_order_items`
--
ALTER TABLE `tbl_order_items`
  MODIFY `order_item_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=58;

--
-- AUTO_INCREMENT for table `user_discounts`
--
ALTER TABLE `user_discounts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `tbl_product`
--
ALTER TABLE `tbl_product`
  MODIFY `product_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
