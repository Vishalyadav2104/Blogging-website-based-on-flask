-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 20, 2022 at 12:31 PM
-- Server version: 10.4.25-MariaDB
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `codingvalorant`
--

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `sno` int(50) NOT NULL,
  `name` text NOT NULL,
  `email` varchar(50) NOT NULL,
  `phone_num` varchar(50) NOT NULL,
  `msg` text NOT NULL,
  `date` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `contacts`
--

INSERT INTO `contacts` (`sno`, `name`, `email`, `phone_num`, `msg`, `date`) VALUES
(1, 'first post', 'firstpost@gmail.com', '123456789', 'first post', '2022-12-11 21:22:39'),
(2, 'Vishal Yadav', 'vy199921042gmail.com', '8433170446', 'Connecting to you soon!', '2022-12-11 22:08:14'),
(6, 'Karan', 'karansingh01906@gmail.com', '8433170446', 'wohooo!! I got package of 7.5LPA', '2022-12-13 16:38:06'),
(7, 'shyam', 'def@gmail.com', '7500146536', 'Xenonstack is welcoming you', '2022-12-14 20:16:09'),
(8, 'wahab', 'lmn@gmail.com', '234345', 'what a boring day!!', '2022-12-14 20:18:00');

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `sno` int(11) NOT NULL,
  `title` text NOT NULL,
  `tagline` text NOT NULL,
  `slug` varchar(25) NOT NULL,
  `content` text NOT NULL,
  `img_file` varchar(12) NOT NULL,
  `date` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`sno`, `title`, `tagline`, `slug`, `content`, `img_file`, `date`) VALUES
(1, 'Metaverse', 'The metaverse won\'t exist without creators like you', 'first-post ', '   The  metaverse is a network of virtual places that are linked into a virtual universe. It is often described as a future version of the Internet.\r\n\r\nIn the Metaverse, customizable avatars and dynamic group experiences will enable a new era of social interaction. Weddings, happy hours, and religious ceremonies are increasingly taking place virtually, with individuals participating regardless of their geographic location, especially in the aftermath of COVID. Metaverse members will engage with and purchase digital and real-world apparel, sporting goods, and other items through virtual shopping malls. Virtual try-on software and augmented reality (AR) capabilities that help buyers in various ways are a natural fit for this use case.   ', 'post-bg.jpg', '2022-12-18 17:18:35'),
(2, 'Genomics', 'Genomic Selection in the Era of Next Generation Sequencing', 'second-post', 'Imagine a technology that can study your DNA and use it to improve your health, helping you fight diseases and whatnot! Genomics is precisely that technology that peruses upon the make-up of genes, DNAs, their mapping, structure, etc. Further, this can help quantify your genes and result in finding diseases or any possible problems that can later be a health issue. When it comes to a specialization like Genomics, one can find a variety of technical as well as non-technical roles. Technical jobs in this area are all about designing, analyzing, and diagnostics, while non-technical jobs are concerned with higher levels of research and theoretical analysis.', 'about-bg.jpg', '2022-12-16 00:36:46'),
(3, 'Blockchain ', 'When Traders Come Together', 'third-post', 'Blockchain technology will have a significant impact across a wide range of industries. Blockchain is a distributed database that allows transactions to be safe and transparent without any central authority. Businesses are looking into how blockchain technology might help them streamline their procedures.\r\n\r\nThere has been a lot of hype around this recent new technology in recent years. While it is still in its initial stages, there is a lot of potential for it to disrupt various industries. Blockchain technology is gaining traction in banking, finance, healthcare, supply chain management, etc.', '', '2022-12-17 15:17:15'),
(4, 'Internet of Things (IoT)', 'Thing in Everything', 'fourth-post', 'It is one of the most promising technologies of the decade. Multiple devices or ‘things’ today are wifi-enabled, which means they can be connected to the internet. The Internet of Things is a network of diverse connected devices. Devices within the network can communicate with each other, collect data and transfer it across the network without human intervention.\r\n\r\nThere are hundreds of real-life Internet of Things (IoT) applications - from tracking activity using smart devices that connect to your phone, to remotely monitoring home doors or switching applications on and off. Businesses also use IoT for many things like monitoring activity in remote locations from a central hub and predicting when a device will malfunction so that corrective measures can be taken before it’s too late.\r\n\r\nIt is predicted that by 2030, over 50 billion devices will be connected via the Internet of Things. Global spending on this technology will reach an estimated $1.1 trillion in the next two years. IoT is currently in its initial stages and will advance rapidly in the near future. It requires knowledge of AI and Machine Learning fundamentals, as well as information security and data analytics.', '', '2022-12-17 15:20:29'),
(5, 'DevOps', '“If it isn’t monitored, it isn’t production!', 'fifth-post', 'DevOps combines the development and operations departments within an organisation to help enhance and automate the process of software development. DevOps has two leading applications within an organisation:\r\n\r\nShortening software delivery cycles\r\n\r\nImproving product standards overall\r\n\r\nBy promoting collaboration between operations and development teams, enterprises can provide faster software upgrade and feature delivery to customers. It also means enterprises see reduced errors and enhanced product quality.', '', '2022-12-17 15:22:29'),
(6, 'Quantum Computing', 'Discover the optimal network topologies and hyperparameters automatically without human intervention.”', 'sixth-post', 'Quantum Computing is a type of computing that focuses on developing computer technology based on the principles of quantum theory. This theory explains the behaviour of energy and materials on atomic and subatomic levels. In other words, it performs calculations based on the probability of an object’s state before measurement instead of just 0’s and 1’s.\r\n\r\nQuantum Computing can easily query, analyse and take action based on given data, regardless of the source. It played a major role in preventing COVID-19 and developing new vaccines. These computers are exponentially faster than normal computers. The revenue for the Quantum Computing market is projected to cross $2.5 billion by 2029.\r\n\r\nYou need experience with quantum mechanics, linear algebra, machine learning, and information theory to enter this field.', '', '2022-12-17 15:25:41');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`sno`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`sno`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `sno` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `sno` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
