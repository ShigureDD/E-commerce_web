-- phpMyAdmin SQL Dump
-- version 4.6.6deb5
-- https://www.phpmyadmin.net/
--
-- Host: sophia
-- Generation Time: Mar 20, 2019 at 08:28 PM
-- Server version: 5.7.25-0ubuntu0.18.04.2
-- PHP Version: 7.2.15-0ubuntu0.18.04.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cylam`
--

-- --------------------------------------------------------

--
-- Table structure for table `catalog`
--

CREATE TABLE `catalog` (
  `itemID` int(11) NOT NULL,
  `itemName` varchar(255) NOT NULL,
  `itemDescription` longtext NOT NULL,
  `itemCategory` varchar(255) NOT NULL,
  `itemImage` varchar(255) NOT NULL,
  `itemPrice` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `catalog`
--

INSERT INTO `catalog` (`itemID`, `itemName`, `itemDescription`, `itemCategory`, `itemImage`, `itemPrice`) VALUES
(1, 'Programming the World Wide Web', 'This book provides a comprehensive introduction to the tools and skills required for both client and server side programming, teaching students how to develop platform independent sites using the most current Web development technology.', 'Books', 'images/1.jpg', 368.5),
(2, 'The C++ Programming Language', 'This book allows programmers to express ideas more clearly, simply, and directly, and to write faster, more efficient code. Bjarne Stroustrup, the designer and original implementer of C++, has reorganized, extended, and completely rewritten his definitive reference and tutorial for programmers who want to use C++ most effectively.', 'Books', 'images/2.jpg', 398.5),
(3, 'Java: Learn Java in One Day and Learn It Well.', 'This book includes a unique project at the end of the book that requires the application of all the concepts taught previously. Working through the project will not only give you an immense sense of achievement.', 'Books', 'images/3.jpg', 91.6),
(4, 'Pilot G2', 'PILOT G2 PENS ARE ON THE BALL: You can rely on our G2, proven to be the longest lasting gel ink pen, with an extra comfortable grip & smooth gliding ink. The roller ball flows consistently for writing notes, a novel long hand, or for pen & ink drawing.', 'Pens', 'images/4.jpg', 121.5),
(5, 'Fisher Space Pen', 'The pen you buy today is exactly the same as the one taken to the moon in 1969.', 'Pens', 'images/5.jpg', 307.8),
(6, 'Zebra F-301 Ballpoint Stainless Steel Retractable Pen', 'The pen features a sophisticated appearance housed in a rugged steel body for lasting performance', 'Pens', 'images/6.jpg', 165.1),
(7, 'AMD Ryzen 5 2600', '6 Cores/12 Threads UNLOCKED.\r\nFrequency: 3.9 GHz Max Boost. Includes Wraith Stealth Cooler.\r\n19MB of Combined Cache. ', 'CPU', 'images/7.jpg', 1295),
(8, 'Intel Core i5-8400', '6 Cores / 6 Threads\n2.80 GHz up to 4.00 GHz Max Turbo Frequency / 9 MB Cache\nIntel Optane Memory Supported\nIntel UHD Graphics 630. Bus speed: 8 GT/s DMI3\nMax Memory Bandwidth 41.6 GB/s', 'CPU', 'images/8.jpg', 1585),
(9, 'AMD Ryzen Threadripper 2950X', '16 Cores and 32 Processing Threads, Updated with 2nd Gen Ryzen Technology Advancements\nIncredible 4.4 GHz Max Boost Frequency, with a huge 40MB Cache.\nUnlocked, with automatic overclocking via the new Precision Boost Overdrive (PBO) feature\nQuad-Channel DDR4 and 64 PCIe lanes, the most bandwidth and I/O you can get on Desktop Processor\n180W TDP, CPU Cooler Not Included.', 'CPU', 'images/9.jpg', 6514.8),
(10, 'Clean code from Uncle Bob', 'This book is a must for any developer, software engineer, project manager, team lead, or systems analyst with an interest in producing better code.', 'Books', 'images/10.jpg', 307.4),
(11, 'Grokking Algorithms', 'This book is designed to be easy to follow.Grokking Algorithms is a fully illustrated, friendly guide that teaches you how to apply common algorithms to the practical problems you face every day as a programme.', 'Books', 'images/11.jpg', 289.2),
(12, 'Test Driven Development: By Examplee', 'This book follows two TDD projects from start to finish, illustrating techniques programmers can use to easily and dramatically increase the quality of their work. The examples are followed by references to the featured TDD patterns and refactorings. With its emphasis on agile methods and fast development strategies, Test-Driven Development is sure to inspire readers to embrace these under-utilized but powerful techniques.', 'Books', 'images/12.jpg', 309.5),
(13, 'Cracking the Coding Interview: 189 Programming Questions and Solutions', 'This book help you learn how to uncover the hints and hidden details in a question, discover how to break down a problem into manageable chunks, develop techniques to unstick yourself when stuck, learn (or re-learn) core computer science concepts, and practice on 189 interview questions and solutions.', 'Books', 'images/13.jpg', 251.2),
(14, 'Seven Languages in Seven Weeks: A Pragmatic Guide to Learning Programming Languages (Pragmatic Programmers)', 'This book is good for you to realise the benefit of knowing several languages. Reading this book will help you to expand the way you think about problem solving.', 'Books', 'images/14.jpg', 168),
(15, 'Go Programming Blueprints', 'This is a book of a specific language, but I recommended because go programming language has a lot of different things like implicit interfaces and a Communicating Sequential Processes concurrency model.', 'Books', 'images/15.jpg', 372.8),
(16, 'MUJI Hexagonal 6-Color Ball Pen', '6 colours pen with hexagonal shaft is an original item from MUJI..', 'Pens', 'images/16.jpg', 45),
(17, 'Pilot Fineliner', 'Fine writing pen with patented multi channel feed\r\nHard-wearing durable plastic tip gives continuous ink flow at all writing angles\r\nBarrel colour indicates ink colour.', 'Pens', 'images/17.jpg', 113.2),
(18, 'Pentel Arts Slicci', 'Bright gel ink is ideal for personalizing paper, cardstock, label tags, chipboard and die-cuts.\r\nAcid-free gel ink is AP Certified and makes the Slicci ideal for scrapbooking and memory books.', 'Pens', 'images/18.jpg', 70.1),
(19, 'Uni-ball Jetstream', 'Delivers fast, clean writing that keeps up with your thoughts\r\nEmbossed grip and stainless steel accents make a stylish statement\r\nFeatures uni Super Ink that protects against water, fading, and fraud.', 'Pens', 'images/19.jpg', 25.8),
(20, 'Staedtler Pigment Liner', 'Excellent for writing, sketching and drawing. Lightfast, waterproof, quickdrying smear free pigment ink.', 'Pens', 'images/20.jpg', 17.9),
(21, 'Sailor Pro Gear Slim', 'It was loved by the people who loves writing, and cares about writing taste. Sailor has been creating fountain pens which matched the life culture of the times. Sailor products are high performance, high quality by a refined design, and they are loved by many people', 'Pens', 'images/21.jpg', 745.9),
(22, 'AMD Ryzen 7 2700X Processor', '8 Cores/16 Threads UNLOCKED,\r\n    Frequency: 4.3 GHz Max Boost,\r\n    20MB of Combined Cache,\r\n    Socket AM4 Motherboard Required', 'CPU', 'images/22.jpg', 2268.5),
(23, 'AMD Ryzen 5 2400G Processor ', 'Built In Radeon Vega RX 11 Graphics\r\n4 Cores/8 Threads UNLOCKED,\r\nFrequency: 3.9 GHz Max Boost. Supported technologies: AMD SenseMI technology, AMD VR ready processors, AMD Ryzen master utility, enmotus FuzeDrive for AMD Ryzen, Radeon software, Radeon FreeSync technology', 'CPU', 'images/23.jpg', 1255.9),
(24, 'Intel Core i9-9900K Desktop Processor ', '8 Cores / 16 Threads\r\n3.60 GHz up to 5.00 GHz / 16 MB Cache\r\nCompatible only with Motherboards based on Intel 300 Series Chipsets\r\nIntel Optane Memory Supported\r\nIntel UHD Graphics 630', 'CPU', 'images/24.jpg', 4159.6),
(25, 'Intel Core i7-9700K Desktop Processor', '8 Cores / 8 Threads\r\n3.60 GHz up to 4.90 GHz / 12 MB Cache\r\nCompatible only with Motherboards based on Intel 300 Series Chipsets\r\nIntel Optane Memory Supported\r\nIntel UHD Graphics 630', 'CPU', 'images/25.jpg', 3218.4),
(26, 'Intel Core i3-8100 Desktop Processor', '4 Cores / 4 Threads\r\n3.60 GHz / 6 MB Cache\r\nCompatible only with Motherboards based on Intel 300 Series Chipsets\r\nIntel Optane Memory Supported\r\nIntel UHD Graphics 630', 'CPU', 'images/26.jpg', 934),
(27, 'Intel Pentium Gold G5500 Desktop Processor ', '2 Cores/ 4 threads\r\nBase frequency 3.8 GHz\r\nCompatible with Intel 300 Series chipset based motherboards\r\nThermal solution included', 'CPU', 'images/27.jpg', 1177.1);

-- --------------------------------------------------------

--
-- Table structure for table `stockList`
--

CREATE TABLE `stockList` (
  `id` int(11) NOT NULL,
  `stockname` varchar(256) DEFAULT NULL,
  `stockcode` varchar(10) DEFAULT NULL,
  `category` varchar(256) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `status` varchar(20) NOT NULL DEFAULT 'RISE'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `stockList`
--

INSERT INTO `stockList` (`id`, `stockname`, `stockcode`, `category`, `date`, `status`) VALUES
(1, 'Microsoft', 'MSFT', 'Internet', '2017-10-05', 'FALL'),
(2, 'Microsoft', 'MSFT', 'Internet', '2017-10-06', 'RISE'),
(3, 'Facebook', 'FB', 'Internet', '2017-10-05', 'RISE'),
(4, 'Facebook', 'FB', 'Internet', '2017-10-06', 'RISE'),
(5, 'JPMorgan', 'JPM', 'Bank', '2017-10-05', 'RISE'),
(6, 'JPMorgan', 'JPM', 'Bank', '2017-10-06', 'RISE'),
(7, 'Goldman Sachs', 'GS', 'Bank', '2017-10-05', 'RISE'),
(8, 'Goldman Sachs', 'GS', 'Bank', '2017-10-06', 'RISE');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `catalog`
--
ALTER TABLE `catalog`
  ADD PRIMARY KEY (`itemID`);

--
-- Indexes for table `stockList`
--
ALTER TABLE `stockList`
  ADD PRIMARY KEY (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
