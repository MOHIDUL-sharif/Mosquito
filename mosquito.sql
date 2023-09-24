-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 24, 2023 at 04:19 AM
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
-- Database: `mohidula_blog`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `category` varchar(50) NOT NULL,
  `slug` varchar(100) NOT NULL,
  `disabled` tinyint(4) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `category`, `slug`, `disabled`) VALUES
(14, 'Dhaka', 'dhaka', 0),
(15, 'Chattogram', 'chattogram', 0),
(16, 'Khulna', 'khulna', 0),
(17, 'Cumilla', 'cumilla', 0);

-- --------------------------------------------------------

--
-- Table structure for table `complain`
--

CREATE TABLE `complain` (
  `id` int(200) NOT NULL,
  `mobile` varchar(100) DEFAULT NULL,
  `name` varchar(250) DEFAULT NULL,
  `email` varchar(250) DEFAULT NULL,
  `photo` varchar(250) DEFAULT NULL,
  `location` varchar(500) DEFAULT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `complain`
--

INSERT INTO `complain` (`id`, `mobile`, `name`, `email`, `photo`, `location`, `date`) VALUES
(15, '0147896582', 'swaccho', 'swaccho@gmail.com', 'swaccho@gmail.com.jpg', 'Barishal, Zero Point', '2023-09-23 20:31:28'),
(16, '01921717468', 'Nihal', 'nihal@gmail.com', 'nihal@gmail.com.jpg', 'Dhaka, Sayedabad Mor', '2023-09-23 20:33:07'),
(17, '01521717468', 'eazaz', 'mohidulalam450@gmail.com', 'mohidulalam450@gmail.com.', 'Chattogram', '2023-09-23 20:58:01'),
(18, '01521717468', 'Mohidul Alam', 'mohidulalam450@gmail.com', 'mohidulalam450@gmail.com.jpg', 'Chattogram', '2023-09-23 20:58:10'),
(19, '01521717468', 'Mohidul Alam', 'mohidulalam450@gmail.com', 'mohidulalam450@gmail.com.jpg', 'Chattogram', '2023-09-23 21:04:23');

-- --------------------------------------------------------

--
-- Table structure for table `detection`
--

CREATE TABLE `detection` (
  `id` int(200) NOT NULL,
  `reg` varchar(100) DEFAULT NULL,
  `name` varchar(250) NOT NULL,
  `email` varchar(250) NOT NULL,
  `photo` varchar(250) NOT NULL,
  `city` varchar(500) DEFAULT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `detection`
--

INSERT INTO `detection` (`id`, `reg`, `name`, `email`, `photo`, `city`, `date`) VALUES
(13, '', '', '', 'main-qimg-6113ddf77113afbc21dbaad656b871c9-lq.jpg', '', '2023-09-23 20:58:34'),
(14, '', '', '', 'main-qimg-6113ddf77113afbc21dbaad656b871c9-lq.jpg', '', '2023-09-23 21:04:54');

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `category_id` int(11) DEFAULT NULL,
  `title` varchar(100) NOT NULL,
  `content` text DEFAULT NULL,
  `image` varchar(1024) DEFAULT NULL,
  `date` datetime DEFAULT current_timestamp(),
  `slug` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `user_id`, `category_id`, `title`, `content`, `image`, `date`, `slug`) VALUES
(30, 13, 16, 'Khulna 2024', '<h4 style=\"text-align: left;\"><img src=\"//////////uploads/Screenshot 2023-09-23 160848.jpg\" data-filename=\"Screenshot 2023-09-23 160848.jpg\" style=\"width: 1062px;\"><span style=\"font-family: \" times=\"\" new=\"\" roman\";\"=\"\"><br></span></h4><h4 style=\"text-align: left;\"><span style=\"font-family: \" times=\"\" new=\"\" roman\";\"=\"\">Reported Monthly Dengue Cases &amp; Deaths in Bangladesh<br></span><span style=\"font-family: \" times=\"\" new=\"\" roman\";\"=\"\">Date of Reporting: 31 December 2024</span></h4><h4 style=\"text-align: left;\"><br></h4><p><font style=\"background-color: rgb(255, 255, 255);\" color=\"#397b21\"><span style=\"text-align: var(--bs-body-text-align); font-family: \" courier=\"\" new\";\"=\"\">Reference:&nbsp;</span><span style=\"text-align: var(--bs-body-text-align); font-family: \" courier=\"\" new\";\"=\"\">https://old.dghs.gov.bd/index.php/bd/home/5200-daily-dengue-status-reportp</span></font><br></p>', 'uploads/1695467608Architect Linkedin Background (8).jpg', '2023-09-23 16:15:10', 'khulna-2018'),
(31, 13, 15, 'Chattogram 2025', '<p><img src=\"//uploads/Screenshot 2023-09-23 160848.jpg\" data-filename=\"Screenshot 2023-09-23 160848.jpg\" style=\"width: 1062px;\"><br></p><h4 style=\"color: rgb(33, 37, 41); font-family: system-ui, -apple-system, \" segoe=\"\" ui\",=\"\" roboto,=\"\" \"helvetica=\"\" neue\",=\"\" \"noto=\"\" sans\",=\"\" \"liberation=\"\" arial,=\"\" sans-serif,=\"\" \"apple=\"\" color=\"\" emoji\",=\"\" \"segoe=\"\" ui=\"\" symbol\",=\"\" emoji\";\"=\"\"><span times=\"\" new=\"\" roman\";\"=\"\">Reported Monthly Dengue Cases &amp; Deaths in Chattogram<br></span><span times=\"\" new=\"\" roman\";\"=\"\">Date of Reporting: 31 December 2025</span></h4><h4 style=\"color: rgb(33, 37, 41); font-family: system-ui, -apple-system, \" segoe=\"\" ui\",=\"\" roboto,=\"\" \"helvetica=\"\" neue\",=\"\" \"noto=\"\" sans\",=\"\" \"liberation=\"\" arial,=\"\" sans-serif,=\"\" \"apple=\"\" color=\"\" emoji\",=\"\" \"segoe=\"\" ui=\"\" symbol\",=\"\" emoji\";\"=\"\"><br></h4><p style=\"color: rgb(33, 37, 41); font-family: system-ui, -apple-system, \" segoe=\"\" ui\",=\"\" roboto,=\"\" \"helvetica=\"\" neue\",=\"\" \"noto=\"\" sans\",=\"\" \"liberation=\"\" arial,=\"\" sans-serif,=\"\" \"apple=\"\" color=\"\" emoji\",=\"\" \"segoe=\"\" ui=\"\" symbol\",=\"\" emoji\";=\"\" font-size:=\"\" 16px;\"=\"\"><font color=\"#397b21\"><span courier=\"\" new\";\"=\"\" style=\"text-align: var(--bs-body-text-align);\">Reference:&nbsp;</span><span courier=\"\" new\";\"=\"\" style=\"text-align: var(--bs-body-text-align);\">https://old.dghs.gov.bd/index.php/bd/home/5200-daily-dengue-status-reportp</span></font></p>', 'uploads/1695468533Architect Linkedin Background (9).jpg', '2023-09-23 17:28:53', 'chattogram-2020'),
(32, 13, 15, 'Chattogram 2019', '<p><img src=\"uploads/Screenshot 2023-09-23 160848.jpg\" data-filename=\"Screenshot 2023-09-23 160848.jpg\" style=\"font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align); color: rgb(33, 37, 41); font-size: 1.5rem; background-color: var(--bs-body-bg); width: 1062px;\"><br></p><h4 segoe=\"\" ui\",=\"\" roboto,=\"\" \"helvetica=\"\" neue\",=\"\" \"noto=\"\" sans\",=\"\" \"liberation=\"\" arial,=\"\" sans-serif,=\"\" \"apple=\"\" color=\"\" emoji\",=\"\" \"segoe=\"\" ui=\"\" symbol\",=\"\" emoji\";\"=\"\" style=\"color: rgb(33, 37, 41);\"><span times=\"\" new=\"\" roman\";\"=\"\">Reported Monthly Dengue Cases &amp; Deaths in Chattogram<br></span><span times=\"\" new=\"\" roman\";\"=\"\">Date of Reporting: 31 December 2019</span></h4><h4 segoe=\"\" ui\",=\"\" roboto,=\"\" \"helvetica=\"\" neue\",=\"\" \"noto=\"\" sans\",=\"\" \"liberation=\"\" arial,=\"\" sans-serif,=\"\" \"apple=\"\" color=\"\" emoji\",=\"\" \"segoe=\"\" ui=\"\" symbol\",=\"\" emoji\";\"=\"\" style=\"color: rgb(33, 37, 41);\"><span times=\"\" new=\"\" roman\";\"=\"\"><br></span></h4><p segoe=\"\" ui\",=\"\" roboto,=\"\" \"helvetica=\"\" neue\",=\"\" \"noto=\"\" sans\",=\"\" \"liberation=\"\" arial,=\"\" sans-serif,=\"\" \"apple=\"\" color=\"\" emoji\",=\"\" \"segoe=\"\" ui=\"\" symbol\",=\"\" emoji\";=\"\" font-size:=\"\" 16px;\"=\"\" style=\"color: rgb(33, 37, 41);\"><font color=\"#397b21\"><span courier=\"\" new\";\"=\"\" style=\"text-align: var(--bs-body-text-align);\">Reference:&nbsp;</span><span courier=\"\" new\";\"=\"\" style=\"text-align: var(--bs-body-text-align);\">https://old.dghs.gov.bd/index.php/bd/home/5200-daily-dengue-status-reportp</span></font></p>', 'uploads/1695469456Architect Linkedin Background (9).jpg', '2023-09-23 17:44:16', 'chattogram-2019'),
(33, 13, 14, 'Dhaka 2022', '<p><img src=\"uploads/Screenshot 2023-09-23 160848.jpg\" data-filename=\"Screenshot 2023-09-23 160848.jpg\" style=\"width: 1062px;\"></p><p><br></p><h4 segoe=\"\" ui\",=\"\" roboto,=\"\" \"helvetica=\"\" neue\",=\"\" \"noto=\"\" sans\",=\"\" \"liberation=\"\" arial,=\"\" sans-serif,=\"\" \"apple=\"\" color=\"\" emoji\",=\"\" \"segoe=\"\" ui=\"\" symbol\",=\"\" emoji\";\"=\"\" style=\"color: rgb(33, 37, 41); font-family: system-ui, -apple-system, \"Segoe UI\", Roboto, \"Helvetica Neue\", \"Noto Sans\", \"Liberation Sans\", Arial, sans-serif, \"Apple Color Emoji\", \"Segoe UI Emoji\", \"Segoe UI Symbol\", \"Noto Color Emoji\";\"><span times=\"\" new=\"\" roman\";\"=\"\">Reported Monthly Dengue Cases & Deaths in Dhaka<br></span><span times=\"\" new=\"\" roman\";\"=\"\">Date of Reporting: 31 December 2022</span></h4><h4 segoe=\"\" ui\",=\"\" roboto,=\"\" \"helvetica=\"\" neue\",=\"\" \"noto=\"\" sans\",=\"\" \"liberation=\"\" arial,=\"\" sans-serif,=\"\" \"apple=\"\" color=\"\" emoji\",=\"\" \"segoe=\"\" ui=\"\" symbol\",=\"\" emoji\";\"=\"\" style=\"color: rgb(33, 37, 41); font-family: system-ui, -apple-system, \"Segoe UI\", Roboto, \"Helvetica Neue\", \"Noto Sans\", \"Liberation Sans\", Arial, sans-serif, \"Apple Color Emoji\", \"Segoe UI Emoji\", \"Segoe UI Symbol\", \"Noto Color Emoji\";\"><span times=\"\" new=\"\" roman\";\"=\"\"><br></span></h4><p segoe=\"\" ui\",=\"\" roboto,=\"\" \"helvetica=\"\" neue\",=\"\" \"noto=\"\" sans\",=\"\" \"liberation=\"\" arial,=\"\" sans-serif,=\"\" \"apple=\"\" color=\"\" emoji\",=\"\" \"segoe=\"\" ui=\"\" symbol\",=\"\" emoji\";=\"\" font-size:=\"\" 16px;\"=\"\" style=\"color: rgb(33, 37, 41); font-family: system-ui, -apple-system, \"Segoe UI\", Roboto, \"Helvetica Neue\", \"Noto Sans\", \"Liberation Sans\", Arial, sans-serif, \"Apple Color Emoji\", \"Segoe UI Emoji\", \"Segoe UI Symbol\", \"Noto Color Emoji\"; font-size: 16px;\"><font color=\"#397b21\"><span courier=\"\" new\";\"=\"\" style=\"text-align: var(--bs-body-text-align);\">Reference: </span><span courier=\"\" new\";\"=\"\" style=\"text-align: var(--bs-body-text-align);\">https://old.dghs.gov.bd/index.php/bd/home/5200-daily-dengue-status-reportp</span></font></p>', 'uploads/1695470046Architect Linkedin Background (10).jpg', '2023-09-23 17:54:07', 'dhaka-2022'),
(34, 13, 14, 'Dhaka 2021', '<p><img src=\"uploads/Screenshot 2023-09-23 160848.jpg\" data-filename=\"Screenshot 2023-09-23 160848.jpg\" style=\"width: 1062px;\"></p><p><br></p><h4 segoe=\"\" ui\",=\"\" roboto,=\"\" \"helvetica=\"\" neue\",=\"\" \"noto=\"\" sans\",=\"\" \"liberation=\"\" arial,=\"\" sans-serif,=\"\" \"apple=\"\" color=\"\" emoji\",=\"\" \"segoe=\"\" ui=\"\" symbol\",=\"\" emoji\";\"=\"\" style=\"color: rgb(33, 37, 41); font-family: system-ui, -apple-system, &quot;Segoe UI&quot;, Roboto, &quot;Helvetica Neue&quot;, &quot;Noto Sans&quot;, &quot;Liberation Sans&quot;, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, &quot;Noto Color Emoji&quot;;\"><span times=\"\" new=\"\" roman\";\"=\"\">Reported Monthly Dengue Cases &amp; Deaths in Dhaka<br></span><span times=\"\" new=\"\" roman\";\"=\"\">Date of Reporting: 31 December 2021</span></h4><h4 segoe=\"\" ui\",=\"\" roboto,=\"\" \"helvetica=\"\" neue\",=\"\" \"noto=\"\" sans\",=\"\" \"liberation=\"\" arial,=\"\" sans-serif,=\"\" \"apple=\"\" color=\"\" emoji\",=\"\" \"segoe=\"\" ui=\"\" symbol\",=\"\" emoji\";\"=\"\" style=\"color: rgb(33, 37, 41); font-family: system-ui, -apple-system, &quot;Segoe UI&quot;, Roboto, &quot;Helvetica Neue&quot;, &quot;Noto Sans&quot;, &quot;Liberation Sans&quot;, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, &quot;Noto Color Emoji&quot;;\"><span times=\"\" new=\"\" roman\";\"=\"\"><br></span></h4><p segoe=\"\" ui\",=\"\" roboto,=\"\" \"helvetica=\"\" neue\",=\"\" \"noto=\"\" sans\",=\"\" \"liberation=\"\" arial,=\"\" sans-serif,=\"\" \"apple=\"\" color=\"\" emoji\",=\"\" \"segoe=\"\" ui=\"\" symbol\",=\"\" emoji\";=\"\" font-size:=\"\" 16px;\"=\"\" style=\"color: rgb(33, 37, 41); font-family: system-ui, -apple-system, &quot;Segoe UI&quot;, Roboto, &quot;Helvetica Neue&quot;, &quot;Noto Sans&quot;, &quot;Liberation Sans&quot;, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, &quot;Noto Color Emoji&quot;; font-size: 16px;\"><font color=\"#397b21\"><span courier=\"\" new\";\"=\"\" style=\"text-align: var(--bs-body-text-align);\">Reference:&nbsp;</span><span courier=\"\" new\";\"=\"\" style=\"text-align: var(--bs-body-text-align);\">https://old.dghs.gov.bd/index.php/bd/home/5200-daily-dengue-status-reportp</span></font></p>', 'uploads/1695470165Architect Linkedin Background (10).jpg', '2023-09-23 17:56:05', 'dhaka-2021'),
(35, 13, 14, 'Dhaka 2023', '<p><img src=\"uploads/Screenshot 2023-09-23 160848.jpg\" data-filename=\"Screenshot 2023-09-23 160848.jpg\" style=\"width: 1062px;\"></p><p><br></p><h4 segoe=\"\" ui\",=\"\" roboto,=\"\" \"helvetica=\"\" neue\",=\"\" \"noto=\"\" sans\",=\"\" \"liberation=\"\" arial,=\"\" sans-serif,=\"\" \"apple=\"\" color=\"\" emoji\",=\"\" \"segoe=\"\" ui=\"\" symbol\",=\"\" emoji\";\"=\"\" style=\"color: rgb(33, 37, 41); font-family: system-ui, -apple-system, &quot;Segoe UI&quot;, Roboto, &quot;Helvetica Neue&quot;, &quot;Noto Sans&quot;, &quot;Liberation Sans&quot;, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, &quot;Noto Color Emoji&quot;;\"><span times=\"\" new=\"\" roman\";\"=\"\">Reported Monthly Dengue Cases &amp; Deaths in Dhaka<br></span><span times=\"\" new=\"\" roman\";\"=\"\">Date of Reporting: 31 December 2023</span></h4><h4 segoe=\"\" ui\",=\"\" roboto,=\"\" \"helvetica=\"\" neue\",=\"\" \"noto=\"\" sans\",=\"\" \"liberation=\"\" arial,=\"\" sans-serif,=\"\" \"apple=\"\" color=\"\" emoji\",=\"\" \"segoe=\"\" ui=\"\" symbol\",=\"\" emoji\";\"=\"\" style=\"color: rgb(33, 37, 41); font-family: system-ui, -apple-system, &quot;Segoe UI&quot;, Roboto, &quot;Helvetica Neue&quot;, &quot;Noto Sans&quot;, &quot;Liberation Sans&quot;, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, &quot;Noto Color Emoji&quot;;\"><span times=\"\" new=\"\" roman\";\"=\"\"><br></span></h4><p segoe=\"\" ui\",=\"\" roboto,=\"\" \"helvetica=\"\" neue\",=\"\" \"noto=\"\" sans\",=\"\" \"liberation=\"\" arial,=\"\" sans-serif,=\"\" \"apple=\"\" color=\"\" emoji\",=\"\" \"segoe=\"\" ui=\"\" symbol\",=\"\" emoji\";=\"\" font-size:=\"\" 16px;\"=\"\" style=\"color: rgb(33, 37, 41); font-family: system-ui, -apple-system, &quot;Segoe UI&quot;, Roboto, &quot;Helvetica Neue&quot;, &quot;Noto Sans&quot;, &quot;Liberation Sans&quot;, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, &quot;Noto Color Emoji&quot;; font-size: 16px;\"><font color=\"#397b21\"><span courier=\"\" new\";\"=\"\" style=\"text-align: var(--bs-body-text-align);\">Reference:&nbsp;</span><span courier=\"\" new\";\"=\"\" style=\"text-align: var(--bs-body-text-align);\">https://old.dghs.gov.bd/index.php/bd/home/5200-daily-dengue-status-reportp</span></font></p>', 'uploads/1695470227Architect Linkedin Background (10).jpg', '2023-09-23 17:57:07', 'dhaka-2023'),
(36, 13, 14, 'Dhaka 2020', '<p><img src=\"uploads/Screenshot 2023-09-23 160848.jpg\" data-filename=\"Screenshot 2023-09-23 160848.jpg\" style=\"width: 1062px;\"></p><p><br></p><h4 segoe=\"\" ui\",=\"\" roboto,=\"\" \"helvetica=\"\" neue\",=\"\" \"noto=\"\" sans\",=\"\" \"liberation=\"\" arial,=\"\" sans-serif,=\"\" \"apple=\"\" color=\"\" emoji\",=\"\" \"segoe=\"\" ui=\"\" symbol\",=\"\" emoji\";\"=\"\" style=\"color: rgb(33, 37, 41); font-family: system-ui, -apple-system, &quot;Segoe UI&quot;, Roboto, &quot;Helvetica Neue&quot;, &quot;Noto Sans&quot;, &quot;Liberation Sans&quot;, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, &quot;Noto Color Emoji&quot;;\"><span times=\"\" new=\"\" roman\";\"=\"\">Reported Monthly Dengue Cases &amp; Deaths in CDhaka<br></span><span times=\"\" new=\"\" roman\";\"=\"\">Date of Reporting: 31 December 2020</span></h4><h4 segoe=\"\" ui\",=\"\" roboto,=\"\" \"helvetica=\"\" neue\",=\"\" \"noto=\"\" sans\",=\"\" \"liberation=\"\" arial,=\"\" sans-serif,=\"\" \"apple=\"\" color=\"\" emoji\",=\"\" \"segoe=\"\" ui=\"\" symbol\",=\"\" emoji\";\"=\"\" style=\"color: rgb(33, 37, 41); font-family: system-ui, -apple-system, &quot;Segoe UI&quot;, Roboto, &quot;Helvetica Neue&quot;, &quot;Noto Sans&quot;, &quot;Liberation Sans&quot;, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, &quot;Noto Color Emoji&quot;;\"><span times=\"\" new=\"\" roman\";\"=\"\"><br></span></h4><p segoe=\"\" ui\",=\"\" roboto,=\"\" \"helvetica=\"\" neue\",=\"\" \"noto=\"\" sans\",=\"\" \"liberation=\"\" arial,=\"\" sans-serif,=\"\" \"apple=\"\" color=\"\" emoji\",=\"\" \"segoe=\"\" ui=\"\" symbol\",=\"\" emoji\";=\"\" font-size:=\"\" 16px;\"=\"\" style=\"color: rgb(33, 37, 41); font-family: system-ui, -apple-system, &quot;Segoe UI&quot;, Roboto, &quot;Helvetica Neue&quot;, &quot;Noto Sans&quot;, &quot;Liberation Sans&quot;, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, &quot;Noto Color Emoji&quot;; font-size: 16px;\"><font color=\"#397b21\"><span courier=\"\" new\";\"=\"\" style=\"text-align: var(--bs-body-text-align);\">Reference:&nbsp;</span><span courier=\"\" new\";\"=\"\" style=\"text-align: var(--bs-body-text-align);\">https://old.dghs.gov.bd/index.php/bd/home/5200-daily-dengue-status-reportp</span></font></p>', 'uploads/1695470332Architect Linkedin Background (10).jpg', '2023-09-23 17:58:52', 'dhaka-2020'),
(37, 13, 15, 'Chattogram 2021', '<p><img src=\"uploads/Screenshot 2023-09-23 160848.jpg\" data-filename=\"Screenshot 2023-09-23 160848.jpg\" style=\"width: 1062px;\"></p><p><br></p><h4 segoe=\"\" ui\",=\"\" roboto,=\"\" \"helvetica=\"\" neue\",=\"\" \"noto=\"\" sans\",=\"\" \"liberation=\"\" arial,=\"\" sans-serif,=\"\" \"apple=\"\" color=\"\" emoji\",=\"\" \"segoe=\"\" ui=\"\" symbol\",=\"\" emoji\";\"=\"\" style=\"color: rgb(33, 37, 41); font-family: system-ui, -apple-system, &quot;Segoe UI&quot;, Roboto, &quot;Helvetica Neue&quot;, &quot;Noto Sans&quot;, &quot;Liberation Sans&quot;, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, &quot;Noto Color Emoji&quot;;\"><span times=\"\" new=\"\" roman\";\"=\"\">Reported Monthly Dengue Cases &amp; Deaths in Chattogram<br></span><span times=\"\" new=\"\" roman\";\"=\"\">Date of Reporting: 31 December 2021</span></h4><h4 segoe=\"\" ui\",=\"\" roboto,=\"\" \"helvetica=\"\" neue\",=\"\" \"noto=\"\" sans\",=\"\" \"liberation=\"\" arial,=\"\" sans-serif,=\"\" \"apple=\"\" color=\"\" emoji\",=\"\" \"segoe=\"\" ui=\"\" symbol\",=\"\" emoji\";\"=\"\" style=\"color: rgb(33, 37, 41); font-family: system-ui, -apple-system, &quot;Segoe UI&quot;, Roboto, &quot;Helvetica Neue&quot;, &quot;Noto Sans&quot;, &quot;Liberation Sans&quot;, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, &quot;Noto Color Emoji&quot;;\"><span times=\"\" new=\"\" roman\";\"=\"\"><br></span></h4><p segoe=\"\" ui\",=\"\" roboto,=\"\" \"helvetica=\"\" neue\",=\"\" \"noto=\"\" sans\",=\"\" \"liberation=\"\" arial,=\"\" sans-serif,=\"\" \"apple=\"\" color=\"\" emoji\",=\"\" \"segoe=\"\" ui=\"\" symbol\",=\"\" emoji\";=\"\" font-size:=\"\" 16px;\"=\"\" style=\"color: rgb(33, 37, 41); font-family: system-ui, -apple-system, &quot;Segoe UI&quot;, Roboto, &quot;Helvetica Neue&quot;, &quot;Noto Sans&quot;, &quot;Liberation Sans&quot;, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, &quot;Noto Color Emoji&quot;; font-size: 16px;\"><font color=\"#397b21\"><span courier=\"\" new\";\"=\"\" style=\"text-align: var(--bs-body-text-align);\">Reference:&nbsp;</span><span courier=\"\" new\";\"=\"\" style=\"text-align: var(--bs-body-text-align);\">https://old.dghs.gov.bd/index.php/bd/home/5200-daily-dengue-status-reportp</span></font></p>', 'uploads/1695470386Architect Linkedin Background (9).jpg', '2023-09-23 17:59:46', 'chattogram-2021'),
(38, 13, 16, 'Khulna 2023', '<p><img src=\"uploads/Screenshot 2023-09-23 160848.jpg\" data-filename=\"Screenshot 2023-09-23 160848.jpg\" style=\"width: 1062px;\"></p><p><br></p><h4 segoe=\"\" ui\",=\"\" roboto,=\"\" \"helvetica=\"\" neue\",=\"\" \"noto=\"\" sans\",=\"\" \"liberation=\"\" arial,=\"\" sans-serif,=\"\" \"apple=\"\" color=\"\" emoji\",=\"\" \"segoe=\"\" ui=\"\" symbol\",=\"\" emoji\";\"=\"\" style=\"color: rgb(33, 37, 41); font-family: system-ui, -apple-system, &quot;Segoe UI&quot;, Roboto, &quot;Helvetica Neue&quot;, &quot;Noto Sans&quot;, &quot;Liberation Sans&quot;, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, &quot;Noto Color Emoji&quot;;\"><span times=\"\" new=\"\" roman\";\"=\"\">Reported Monthly Dengue Cases &amp; Deaths in Khulna<br></span><span times=\"\" new=\"\" roman\";\"=\"\">Date of Reporting: 31 December 2023</span></h4><h4 segoe=\"\" ui\",=\"\" roboto,=\"\" \"helvetica=\"\" neue\",=\"\" \"noto=\"\" sans\",=\"\" \"liberation=\"\" arial,=\"\" sans-serif,=\"\" \"apple=\"\" color=\"\" emoji\",=\"\" \"segoe=\"\" ui=\"\" symbol\",=\"\" emoji\";\"=\"\" style=\"color: rgb(33, 37, 41); font-family: system-ui, -apple-system, &quot;Segoe UI&quot;, Roboto, &quot;Helvetica Neue&quot;, &quot;Noto Sans&quot;, &quot;Liberation Sans&quot;, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, &quot;Noto Color Emoji&quot;;\"><span times=\"\" new=\"\" roman\";\"=\"\"><br></span></h4><p segoe=\"\" ui\",=\"\" roboto,=\"\" \"helvetica=\"\" neue\",=\"\" \"noto=\"\" sans\",=\"\" \"liberation=\"\" arial,=\"\" sans-serif,=\"\" \"apple=\"\" color=\"\" emoji\",=\"\" \"segoe=\"\" ui=\"\" symbol\",=\"\" emoji\";=\"\" font-size:=\"\" 16px;\"=\"\" style=\"color: rgb(33, 37, 41); font-family: system-ui, -apple-system, &quot;Segoe UI&quot;, Roboto, &quot;Helvetica Neue&quot;, &quot;Noto Sans&quot;, &quot;Liberation Sans&quot;, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, &quot;Noto Color Emoji&quot;; font-size: 16px;\"><font color=\"#397b21\"><span courier=\"\" new\";\"=\"\" style=\"text-align: var(--bs-body-text-align);\">Reference:&nbsp;</span><span courier=\"\" new\";\"=\"\" style=\"text-align: var(--bs-body-text-align);\">https://old.dghs.gov.bd/index.php/bd/home/5200-daily-dengue-status-reportp</span></font></p>', 'uploads/1695470529Architect Linkedin Background (8).jpg', '2023-09-23 18:02:09', 'khulna-2023'),
(39, 13, 17, 'Cumilla 2022', '<p><img src=\"/uploads/Screenshot 2023-09-23 160848.jpg\" data-filename=\"Screenshot 2023-09-23 160848.jpg\" style=\"width: 1062px;\"></p><p><br></p><h4 segoe=\"\" ui\",=\"\" roboto,=\"\" \"helvetica=\"\" neue\",=\"\" \"noto=\"\" sans\",=\"\" \"liberation=\"\" arial,=\"\" sans-serif,=\"\" \"apple=\"\" color=\"\" emoji\",=\"\" \"segoe=\"\" ui=\"\" symbol\",=\"\" emoji\";\"=\"\" style=\"color: rgb(33, 37, 41); font-family: system-ui, -apple-system, \"><span times=\"\" new=\"\" roman\";\"=\"\">Reported Monthly Dengue Cases &amp; Deaths in Cumilla<br></span><span times=\"\" new=\"\" roman\";\"=\"\">Date of Reporting: 31 December 2022</span></h4><h4 segoe=\"\" ui\",=\"\" roboto,=\"\" \"helvetica=\"\" neue\",=\"\" \"noto=\"\" sans\",=\"\" \"liberation=\"\" arial,=\"\" sans-serif,=\"\" \"apple=\"\" color=\"\" emoji\",=\"\" \"segoe=\"\" ui=\"\" symbol\",=\"\" emoji\";\"=\"\" style=\"color: rgb(33, 37, 41); font-family: system-ui, -apple-system, \"><span times=\"\" new=\"\" roman\";\"=\"\"><br></span></h4><p segoe=\"\" ui\",=\"\" roboto,=\"\" \"helvetica=\"\" neue\",=\"\" \"noto=\"\" sans\",=\"\" \"liberation=\"\" arial,=\"\" sans-serif,=\"\" \"apple=\"\" color=\"\" emoji\",=\"\" \"segoe=\"\" ui=\"\" symbol\",=\"\" emoji\";=\"\" font-size:=\"\" 16px;\"=\"\" style=\"color: rgb(33, 37, 41); font-family: system-ui, -apple-system, \"><font color=\"#397b21\"><span courier=\"\" new\";\"=\"\" style=\"text-align: var(--bs-body-text-align);\">Reference:&nbsp;</span><span courier=\"\" new\";\"=\"\" style=\"text-align: var(--bs-body-text-align);\">https://old.dghs.gov.bd/index.php/bd/home/5200-daily-dengue-status-reportp</span></font></p>', 'uploads/1695470970Architect Linkedin Background (12).jpg', '2023-09-23 18:09:30', 'cumilla-2022');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL,
  `image` varchar(1024) DEFAULT NULL,
  `date` datetime DEFAULT current_timestamp(),
  `role` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `email`, `password`, `image`, `date`, `role`) VALUES
(13, 'mohidul', 'mohidul17@cse.pstu.ac.bd', '$2y$10$GL5nTDQKvk7hBRdf4j8Cw.DNISH40Se16w4VwvsdU4BStfBuWb6Ri', NULL, '2023-09-21 14:41:39', 'admin'),
(14, 'eazaz', 'ahammadhossen96@gmail.com', '$2y$10$MWA4GjIojDqAAbg4noZeS.f1fcSkeTCNbmHBpyZwcLYekA4lQHpDO', NULL, '2023-09-23 17:15:12', 'admin');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `slug` (`slug`),
  ADD KEY `category` (`category`);

--
-- Indexes for table `complain`
--
ALTER TABLE `complain`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `detection`
--
ALTER TABLE `detection`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `category_id` (`category_id`),
  ADD KEY `title` (`title`),
  ADD KEY `slug` (`slug`),
  ADD KEY `date` (`date`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `username` (`username`),
  ADD KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `complain`
--
ALTER TABLE `complain`
  MODIFY `id` int(200) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `detection`
--
ALTER TABLE `detection`
  MODIFY `id` int(200) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
