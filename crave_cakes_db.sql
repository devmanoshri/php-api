-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 12, 2025 at 11:27 PM
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
-- Database: `crave_cakes_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `id` bigint(20) NOT NULL,
  `product_id` int(11) NOT NULL,
  `product_name` varchar(250) NOT NULL,
  `product_price` int(11) NOT NULL,
  `quantity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `id` bigint(20) NOT NULL,
  `name` text NOT NULL,
  `description` text NOT NULL,
  `quantities` int(11) NOT NULL,
  `product_category` text NOT NULL,
  `price` int(11) NOT NULL,
  `tags` varchar(250) NOT NULL,
  `rating` int(11) NOT NULL,
  `no_of_customer_reviewed` int(11) NOT NULL,
  `SKU` varchar(256) NOT NULL,
  `weight` varchar(256) NOT NULL,
  `dimensions` varchar(256) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`id`, `name`, `description`, `quantities`, `product_category`, `price`, `tags`, `rating`, `no_of_customer_reviewed`, `SKU`, `weight`, `dimensions`) VALUES
(1, 'Coconut Tart', 'A delicious tart filled with a creamy coconut filling, perfect for any occasion.', 50, 'Autumn Pies', 6, '[\"Cakes\", \"Tarts\"]', 5, 120, 'CT001', '150 g', '50 × 50 × 10 cm'),
(2, 'Chocolate Truffle', 'Rich and decadent chocolate truffles that melt in your mouth.', 100, 'Truffles', 3, '[\"Truffles\", \"Chocobar\"]', 5, 200, 'CT002', '50 g', '20 × 20 × 5 cm'),
(3, 'Vanilla Cupcake', 'A classic vanilla cupcake topped with creamy vanilla frosting.', 75, 'Cupcakes', 3, '[\"Cupcakes\"]', 5, 150, 'VC001', '100 g', '30 × 30 × 10 cm'),
(4, 'Red Velvet Cake', 'A moist red velvet cake with a rich cream cheese frosting.', 30, 'Cakes', 16, '[\"Cakes\"]', 5, 180, 'RVC001', '500 g', '100 × 100 × 20 cm'),
(5, 'Lemon Tart', 'A tangy lemon tart with a buttery crust, perfect for dessert.', 60, 'Autumn Pies', 5, '[\"Tarts\", \"Pies\"]', 4, 110, 'LT001', '150 g', '50 × 50 × 10 cm'),
(6, 'Chocolate Cupcake', 'A rich chocolate cupcake topped with chocolate ganache.', 80, 'Cupcakes', 4, '[\"Cupcakes\"]', 5, 170, 'CC001', '100 g', '30 × 30 × 10 cm'),
(7, 'Strawberry Cheesecake', 'A creamy cheesecake topped with fresh strawberries.', 40, 'Cakes', 13, '[\"Cakes\"]', 5, 140, 'SC001', '400 g', '80 × 80 × 20 cm'),
(8, 'Pumpkin Pie', 'A classic pumpkin pie with a spiced filling and flaky crust.', 50, 'Autumn Pies', 7, '[\"Pies\"]', 5, 130, 'PP001', '300 g', '70 × 70 × 15 cm'),
(9, 'Blueberry Muffin', 'A moist muffin filled with fresh blueberries.', 90, 'Muffins', 2, '[\"Muffins\"]', 5, 160, 'BM001', '120 g', '40 × 40 × 10 cm'),
(10, 'Chocolate Cannoli', 'A crispy cannoli shell filled with chocolate cream.', 70, 'Pastries', 4, '[\"Cannoli\"]', 5, 140, 'CCN001', '80 g', '30 × 30 × 10 cm'),
(11, 'Carrot Cake', 'A moist carrot cake with cream cheese frosting and walnuts.', 35, 'Cakes', 15, '[\"Cakes\"]', 5, 150, 'CC002', '450 g', '90 × 90 × 20 cm'),
(12, 'Raspberry Tart', 'A tart filled with fresh raspberries and a sweet glaze.', 55, 'Autumn Pies', 5, '[\"Tarts\", \"Pies\"]', 5, 120, 'RT001', '150 g', '50 × 50 × 10 cm'),
(13, 'Vanilla Bean Cupcake', 'A vanilla cupcake made with real vanilla beans and topped with buttercream frosting.', 75, 'Cupcakes', 3, '[\"Cupcakes\"]', 5, 150, 'VBC001', '100 g', '30 × 30 × 10 cm'),
(14, 'Chocolate Eclair', 'A pastry filled with chocolate cream and topped with chocolate glaze.', 60, 'Pastries', 4, '[\"Pastries\"]', 5, 170, 'CE001', '90 g', '30 × 30 × 10 cm'),
(15, 'Lemon Meringue Pie', 'A tart lemon pie topped with fluffy meringue.', 50, 'Autumn Pies', 6, '[\"Pies\"]', 5, 140, 'LMP001', '300 g', '70 × 70 × 15 cm'),
(16, 'Chocolate Chip Muffin', 'A muffin filled with chocolate chips and topped with a crunchy streusel.', 90, 'Muffins', 2, '[\"Muffins\"]', 5, 160, 'CCM001', '120 g', '40 × 40 × 10 cm'),
(17, 'Almond Biscotti', 'A crunchy biscotti with almonds, perfect for dipping in coffee.', 100, 'Pastries', 3, '[\"Pastries\"]', 5, 130, 'AB001', '50 g', '20 × 20 × 5 cm'),
(18, 'Black Forest Cake', 'A rich chocolate cake layered with cherries and whipped cream, topped with chocolate shavings.', 30, 'Cakes', 17, '[\"Cakes\"]', 5, 190, 'BFC001', '500 g', '100 × 100 × 20 cm'),
(19, 'Pistachio Cannoli', 'A crispy cannoli shell filled with creamy pistachio filling.', 70, 'Pastries', 4, '[\"Cannoli\"]', 5, 130, 'PC001', '80 g', '30 × 30 × 10 cm'),
(20, 'Raspberry Cupcake', 'A light and fluffy cupcake with raspberry frosting and a fresh raspberry on top.', 80, 'Cupcakes', 4, '[\"Cupcakes\"]', 5, 140, 'RC001', '100 g', '30 × 30 × 10 cm'),
(21, 'Apple Pie', 'A classic apple pie with a flaky crust and spiced apple filling.', 50, 'Autumn Pies', 8, '[\"Pies\"]', 5, 150, 'AP001', '350 g', '70 × 70 × 15 cm'),
(22, 'Chocolate Mousse Cake', 'A decadent chocolate cake with layers of rich chocolate mousse.', 40, 'Cakes', 19, '[\"Cakes\"]', 5, 200, 'CMC001', '600 g', '100 × 100 × 20 cm'),
(23, 'Blueberry Tart', 'A tart filled with fresh blueberries and a sweet glaze.', 55, 'Autumn Pies', 6, '[\"Tarts\", \"Pies\"]', 5, 130, 'BT001', '150 g', '50 × 50 × 10 cm'),
(24, 'Salted Caramel Cupcake', 'A cupcake with salted caramel frosting and a drizzle of caramel sauce.', 75, 'Cupcakes', 4, '[\"Cupcakes\"]', 5, 160, 'SCC001', '100 g', '30 × 30 × 10 cm'),
(25, 'Espresso Truffle', 'A rich chocolate truffle with a hint of espresso.', 100, 'Truffles', 3, '[\"Truffles\"]', 5, 180, 'ET001', '50 g', '20 × 20 × 5 cm'),
(26, 'Wedding Cake', 'A beautiful multi-tiered wedding cake with intricate designs and flavors of your choice.', 10, 'Wedding cakes', 300, '[\"Cakes\"]', 5, 50, 'WC001', '5000 g', '200 × 200 × 100 cm'),
(27, 'Mint Chocolate Chip Ice Cream', 'A refreshing mint ice cream with chocolate chips.', 100, 'Ice cream', 5, '[\"Ice cream\"]', 5, 170, 'MCCI001', '500 g', '100 × 100 × 20 cm');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
