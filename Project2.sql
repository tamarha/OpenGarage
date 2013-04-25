-- phpMyAdmin SQL Dump
-- version 3.5.1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Apr 18, 2013 at 02:40 AM
-- Server version: 5.5.25
-- PHP Version: 5.4.4

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

--
-- Database: `Project2_development`
--

-- --------------------------------------------------------

--
-- Table structure for table `images`
--

CREATE TABLE `images` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `url` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'default_image.png',
  `image_title` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Garage Sale',
  `garage_id` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `index_images_on_garage_id` (`garage_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=18 ;

--
-- Dumping data for table `images`
--

INSERT INTO `images` (`id`, `url`, `image_title`, `garage_id`, `created_at`, `updated_at`) VALUES
(1, 'garage1.jpg', 'Garage Sale ', 13, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2, 'garage2.jpg', 'Garage Sale ', 12, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(3, 'garage3.jpg', 'Garage Sale', 14, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(4, 'garage4.jpg', 'Garage Sale', 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(5, 'garage5.jpg', 'Garage Sale', 4, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(6, 'garage6.jpg', 'Garage Sale', 5, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(7, 'default_image.png', 'Garage Sale', 6, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(8, 'default_image.png', 'Garage Sale', 7, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(9, 'default_image.png', 'Garage Sale', 8, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(10, 'default_image.png', 'Garage Sale', 9, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(11, 'default_image.png', 'Garage Sale', 10, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(12, 'default_image.png', 'Garage Sale', 11, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(13, 'default_image.png', 'Garage Sale', 15, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(14, 'default_image.png', 'Garage Sale', 16, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(15, 'default_image.png', 'Garage Sale', 17, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(16, 'default_image.png', 'Garage Sale', 18, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(17, 'default_image.png', 'Garage Sale', 19, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
