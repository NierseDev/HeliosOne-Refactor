-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 22, 2024 at 09:58 AM
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
-- Database: `heliosone-flowerbase`
--

-- --------------------------------------------------------

--
-- Table structure for table `flowers`
--

CREATE TABLE `flowers` (
  `FlowerID` int(11) NOT NULL,
  `FlowerName` varchar(26) DEFAULT NULL,
  `FlowerBotanical` varchar(26) DEFAULT NULL COMMENT 'Botanical Name',
  `FlowerDescription` varchar(255) DEFAULT NULL,
  `NativeRegion` varchar(255) DEFAULT NULL,
  `FlowerHeight` varchar(26) DEFAULT NULL,
  `imageURL` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `flowers`
--

INSERT INTO `flowers` (`FlowerID`, `FlowerName`, `FlowerBotanical`, `FlowerDescription`, `NativeRegion`, `FlowerHeight`, `imageURL`) VALUES
(1, 'Borago', 'Borago officinalis', 'Borage is an annual herb with hairy leaves and star-shaped blue flowers.', 'Mediterranean', '1 to 3 feet', 'https://files.catbox.moe/mcm0hd.jpg'),
(2, 'Lavender', 'Lavandula angustifolia', 'Aromatic perennial shrub with narrow, gray-green leaves and spikes of purple flowers.', 'Mediterranean', '2 to 3 feet', 'https://files.catbox.moe/8eskvs.jpg'),
(3, 'Beach Rose', 'Rosa rugosa', 'Shrub with prickly stems and fragrant flowers', 'Northeast Asia', '3-6 feet', 'https://files.catbox.moe/gvgsut.JPG'),
(4, 'Zinnia', 'Zinnia elegans', 'Annual with daisy-like flowers in a variety of colors.', 'Mexico', '1-2 feet', 'https://files.catbox.moe/mkz4ez.jpg'),
(5, 'Marigold', 'Tagetes', 'Annual with daisy-like flowers in a variety of colors.', 'Mexico', '1-2 feet', 'https://files.catbox.moe/kgw8iu.jpg'),
(6, 'Sunflower', 'Helianthus annuus', 'The sunflower is a tall, annual plant with large, yellow flowers. It is native to North America and is a popular garden flower. Sunflowers are a good source of pollen and nectar for bees and other pollinators.', 'North America', '6-12 feet', 'https://files.catbox.moe/odggku.jpg'),
(7, 'Geranium', 'Pelargonium x hortorum', 'Aromatic perennial with showy flowers in a variety of colors.', 'South Africa', '1-2 feet', 'https://files.catbox.moe/b3qib6.jpg'),
(8, 'Sage', 'Salvia officinalis', 'Perennial herb with gray-green leaves and spikes of blue, purple, or white flowers', 'Mediterranean', '2-3 feet', 'https://files.catbox.moe/z3lhh7.jpg'),
(9, 'Scarlet Sage', 'Salvia splendens', 'Scarlet sage is an annual flowering plant with bright red flowers and dark green foliage.', 'Brazil', '1-3 feet', 'https://files.catbox.moe/a5h0vb.JPG'),
(10, 'Lobelia ', 'Lobelia erinus', 'Lobelia is a low-growing annual flower with delicate blue, purple, or white blooms.', 'South Africa', '6-12 inches', 'https://files.catbox.moe/4cp2an.jpg'),
(11, 'Yarrow', 'Achillea millefolium', 'Yarrow is a herbaceous perennial with clusters of small, aromatic flowers..', 'Northern Hemisphere', '1 to 3 feet', 'https://files.catbox.moe/ow75n1.jpg'),
(12, 'Anise Hyssop', 'Agastache foeniculum', 'Anise Hyssop is a perennial herb with purple flower spikes and a licorice-like aroma.', 'North America', '2 to 4 feet', 'https://files.catbox.moe/xvcsnc.jpg'),
(13, 'Butterfly Weed', 'Asclepias tuberosa', 'Butterfly Weed is a perennial flower with bright orange or yellow clusters of flowers.', 'North America', '1 - 2 feet', 'https://files.catbox.moe/mybxqd.jpg'),
(14, 'Spider Flower', 'Cleome hassleriana', 'Spider Flower is an annual or perennial plant with clusters of delicate, spidery flowers', 'North America', '2 to 3 feet', 'https://files.catbox.moe/zti3em.jpg'),
(15, 'Lanceleaf Coreopsis', 'Coreopsis lanceolata', 'Lanceleaf Coreopsis is a perennial flower with bright yellow, daisy-like blooms.', 'North America', '1 to 3 feet', 'https://files.catbox.moe/23dmj8.jpg'),
(16, 'Garden Cosmos', 'Cosmos bipinnatus', 'Cosmos is an annual flower with feathery foliage and colorful daisy-like flowers.', 'Mexico', '2 to 6 feet', 'https://files.catbox.moe/5rub1t.jpg'),
(17, 'Florist\'s Daisy', 'Chrysanthemum × morifolium', 'Florist\'s Daisy are bushy perennials with distinctive, aromatic, lobed leaves. They bloom in a wide range of colors when days shorten.', 'Asia and Northeastern Europe', '12 to 36 inches', 'https://files.catbox.moe/135hoz.JPG'),
(18, 'Rose', 'Rose', 'Roses are typically deciduous shrubs with pinnate leaves and fragrant flowers in various shades of pink, white, red, and yellow. They bear sharp prickles along their stems and produce rose hips, which are rich in vitamin C.', 'Asia and North America', '8 Inches to 50 feet', 'https://files.catbox.moe/iprx0k.jpg'),
(19, 'Roselle', 'Hibiscus sabdariffa', 'Roselle is a shrubby plant with deeply lobed leaves and large, showy flowers. The flowers have a prominent, red calyx that becomes fleshy and edible as the fruit matures.', 'West Africa', '7 to 8 feet', 'https://files.catbox.moe/6kag8v.JPG');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `flowers`
--
ALTER TABLE `flowers`
  ADD PRIMARY KEY (`FlowerID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `flowers`
--
ALTER TABLE `flowers`
  MODIFY `FlowerID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
