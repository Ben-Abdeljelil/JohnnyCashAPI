-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le :  jeu. 10 déc. 2020 à 21:48
-- Version du serveur :  5.7.28
-- Version de PHP :  7.3.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `lumendb`
--

-- --------------------------------------------------------

--
-- Structure de la table `johnnyemployee`
--

DROP TABLE IF EXISTS `johnnyemployee`;
CREATE TABLE IF NOT EXISTS `johnnyemployee` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=77 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `johnnyemployee`
--

INSERT INTO `johnnyemployee` (`id`, `name`) VALUES
(1, 'Adrien'),
(2, 'Alexis'),
(3, 'Alicia'),
(4, 'Anaïs'),
(5, 'Andréane'),
(6, 'Annabelle'),
(7, 'Anthony'),
(8, 'Anthony'),
(9, 'Aurore'),
(10, 'Benoît'),
(11, 'Benoit'),
(12, 'Brice'),
(13, 'Caroline'),
(14, 'Chantal'),
(15, 'Claire'),
(16, 'Claudine'),
(17, 'Diane'),
(18, 'Dickson'),
(19, 'Dorine'),
(20, 'Edern'),
(21, 'Eduard'),
(22, 'Enrica'),
(23, 'Étienne'),
(24, 'Fabien'),
(25, 'Félix'),
(26, 'Gaëlle'),
(27, 'Geneviève'),
(28, 'Guillaume'),
(29, 'Guillaume'),
(30, 'Hugo'),
(31, 'Jérémy'),
(32, 'Judith'),
(33, 'Kaitlyn'),
(34, 'Kimberley'),
(35, 'Kim'),
(36, 'Kym'),
(37, 'Lili-Rose'),
(38, 'Lucia'),
(39, 'Lucie'),
(40, 'Lucile'),
(41, 'Mabel'),
(42, 'Maïté'),
(43, 'Marc'),
(44, 'Marc'),
(45, 'Marie-Pier'),
(46, 'Marlène'),
(47, 'Martin'),
(48, 'Martin'),
(49, 'Mathieu'),
(50, 'Mathilde'),
(51, 'Michel'),
(52, 'Mounir'),
(53, 'Nicolas'),
(54, 'Nicolas'),
(55, 'PABirtz'),
(56, 'Paige'),
(57, 'Patrice'),
(58, 'Phil'),
(59, 'Pierre'),
(60, 'Roger'),
(61, 'Romain'),
(62, 'Samuel'),
(63, 'Samuel'),
(64, 'Saira'),
(65, 'Sara'),
(66, 'Sébastien'),
(67, 'Sevan'),
(68, 'Simon'),
(69, 'Simon'),
(70, 'Simon'),
(71, 'Soufana'),
(72, 'Stéphanie'),
(73, 'Valentin'),
(74, 'Valérie'),
(75, 'Victor'),
(76, 'Xavier');

-- --------------------------------------------------------

--
-- Structure de la table `johnnyorderlog`
--

DROP TABLE IF EXISTS `johnnyorderlog`;
CREATE TABLE IF NOT EXISTS `johnnyorderlog` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `time_created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `employeeId` int(10) UNSIGNED NOT NULL,
  `skuId` int(10) UNSIGNED NOT NULL,
  `quantity` int(11) NOT NULL DEFAULT '1',
  `totalPrice` int(11) NOT NULL,
  `paidInBox` int(10) UNSIGNED DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `johnnyorderlog_employeeid_foreign` (`employeeId`),
  KEY `johnnyorderlog_skuid_foreign` (`skuId`),
  KEY `johnnyorderlog_paidinbox_foreign` (`paidInBox`)
) ENGINE=MyISAM AUTO_INCREMENT=359 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `johnnyorderlog`
--

INSERT INTO `johnnyorderlog` (`id`, `time_created`, `employeeId`, `skuId`, `quantity`, `totalPrice`, `paidInBox`) VALUES
(100, '2019-09-01 09:30:00', 2, 30, 1, 125, NULL),
(101, '2019-09-01 09:30:00', 51, 17, 1, 50, NULL),
(102, '2019-09-01 09:30:00', 6, 17, 1, 50, NULL),
(103, '2019-09-01 09:30:00', 29, 16, 1, 100, NULL),
(104, '2019-09-01 09:30:00', 28, 17, 1, 50, 104),
(105, '2019-09-01 09:30:00', 22, 43, 1, 75, NULL),
(106, '2019-09-01 09:30:00', 75, 11, 1, 100, NULL),
(107, '2019-09-01 09:30:00', 33, 43, 1, 75, NULL),
(108, '2019-09-01 09:30:00', 48, 20, 1, 50, NULL),
(109, '2019-09-01 09:30:00', 61, 8, 1, 100, 109),
(110, '2019-09-01 09:30:00', 29, 6, 1, 100, 110),
(111, '2019-09-01 09:30:00', 73, 11, 1, 100, NULL),
(112, '2019-09-01 09:30:00', 31, 8, 1, 100, NULL),
(113, '2019-09-01 09:30:00', 2, 32, 1, 125, NULL),
(114, '2019-09-02 09:30:00', 7, 29, 1, 125, NULL),
(115, '2019-09-02 09:30:00', 61, 3, 1, 75, 115),
(116, '2019-09-02 09:30:00', 64, 3, 1, 75, NULL),
(117, '2019-09-02 09:30:00', 29, 3, 1, 75, NULL),
(118, '2019-09-02 09:30:00', 44, 14, 1, 0, NULL),
(119, '2019-09-02 09:30:00', 47, 41, 2, 50, 119),
(120, '2019-09-02 09:30:00', 47, 31, 1, 125, NULL),
(121, '2019-09-02 09:30:00', 24, 31, 1, 125, NULL),
(122, '2019-09-02 09:30:00', 40, 31, 1, 125, NULL),
(123, '2019-09-02 09:30:00', 22, 42, 1, 50, NULL),
(124, '2019-09-02 09:30:00', 29, 3, 1, 75, NULL),
(125, '2019-09-02 09:30:00', 39, 59, 1, 75, NULL),
(126, '2019-09-03 09:30:00', 5, 31, 1, 125, NULL),
(127, '2019-09-03 09:30:00', 54, 14, 1, 150, NULL),
(128, '2019-09-03 09:30:00', 2, 30, 1, 125, NULL),
(129, '2019-09-03 09:30:00', 50, 6, 1, 100, NULL),
(130, '2019-09-03 09:30:00', 44, 17, 6, 50, NULL),
(131, '2019-09-03 09:30:00', 5, 49, 1, 50, NULL),
(132, '2019-09-03 09:30:00', 47, 41, 2, 50, NULL),
(133, '2019-09-03 09:30:00', 29, 16, 1, 100, 133),
(134, '2019-09-03 09:30:00', 15, 40, 1, 0, NULL),
(135, '2019-09-03 09:30:00', 8, 30, 1, 125, NULL),
(136, '2019-09-04 09:30:00', 8, 3, 1, 75, NULL),
(137, '2019-09-04 09:30:00', 2, 30, 1, 125, 137),
(138, '2019-09-04 09:30:00', 73, 30, 1, 125, NULL),
(139, '2019-09-04 09:30:00', 29, 3, 1, 75, NULL),
(140, '2019-09-04 09:30:00', 2, 30, 1, 125, NULL),
(141, '2019-09-04 09:30:00', 15, 17, 1, 50, NULL),
(142, '2019-09-04 09:30:00', 31, 41, 2, 50, NULL),
(143, '2019-09-04 09:30:00', 12, 41, 4, 100, NULL),
(144, '2019-09-04 09:30:00', 39, 54, 1, 50, NULL),
(145, '2019-09-04 09:30:00', 48, 31, 1, 125, NULL),
(146, '2019-09-04 09:30:00', 50, 6, 2, 100, NULL),
(147, '2019-09-04 09:30:00', 17, 10, 1, 125, NULL),
(148, '2019-09-05 09:30:00', 17, 32, 1, 125, NULL),
(149, '2019-09-05 09:30:00', 5, 31, 1, 125, NULL),
(150, '2019-09-05 09:30:00', 51, 16, 1, 100, NULL),
(151, '2019-09-05 09:30:00', 29, 6, 1, 100, NULL),
(152, '2019-09-05 09:30:00', 5, 10, 1, 125, 152),
(153, '2019-09-05 09:30:00', 2, 3, 2, 75, NULL),
(154, '2019-09-05 09:30:00', 19, 20, 1, 50, NULL),
(155, '2019-09-05 09:30:00', 51, 17, 1, 50, NULL),
(156, '2019-09-06 09:30:00', 2, 3, 2, 75, NULL),
(157, '2019-09-07 09:30:00', 33, 35, 1, 150, 157),
(158, '2019-09-07 09:30:00', 73, 60, 1, 100, NULL),
(159, '2019-09-07 09:30:00', 39, 10, 2, 125, 159),
(160, '2019-09-07 09:30:00', 73, 60, 1, 100, NULL),
(161, '2019-09-07 09:30:00', 8, 29, 1, 125, NULL),
(162, '2019-09-07 09:30:00', 9, 29, 1, 125, NULL),
(163, '2019-09-07 09:30:00', 64, 3, 1, 75, 163),
(164, '2019-09-07 09:30:00', 48, 31, 1, 125, NULL),
(165, '2019-09-07 09:30:00', 29, 3, 1, 75, 165),
(166, '2019-09-07 09:30:00', 17, 17, 1, 50, NULL),
(167, '2019-09-08 09:30:00', 8, 9, 1, 100, NULL),
(168, '2019-09-08 09:30:00', 47, 9, 1, 100, NULL),
(169, '2019-09-08 09:30:00', 31, 9, 1, 100, NULL),
(170, '2019-09-08 09:30:00', 48, 20, 4, 50, NULL),
(171, '2019-09-08 09:30:00', 9, 29, 1, 125, NULL),
(172, '2019-09-08 09:30:00', 2, 30, 1, 125, NULL),
(173, '2019-09-08 09:30:00', 19, 30, 1, 125, NULL),
(174, '2019-09-08 09:30:00', 39, 32, 1, 125, NULL),
(175, '2019-09-08 09:30:00', 22, 30, 1, 125, NULL),
(176, '2019-09-08 09:30:00', 44, 17, 6, 50, NULL),
(177, '2019-09-09 09:30:00', 35, 43, 1, 75, 177),
(178, '2019-09-09 09:30:00', 71, 17, 1, 50, NULL),
(179, '2019-09-09 09:30:00', 17, 30, 2, 125, 179),
(180, '2019-09-09 09:30:00', 24, 31, 1, 125, NULL),
(181, '2019-09-09 09:30:00', 51, 17, 1, 50, 181),
(182, '2019-09-09 09:30:00', 2, 43, 2, 75, NULL),
(183, '2019-09-09 09:30:00', 29, 16, 1, 100, 183),
(184, '2019-09-09 09:30:00', 50, 44, 1, 100, NULL),
(185, '2019-09-09 09:30:00', 19, 32, 1, 125, NULL),
(186, '2019-09-09 09:30:00', 19, 9, 1, 100, NULL),
(187, '2019-09-09 09:30:00', 68, 29, 1, 125, NULL),
(188, '2019-09-10 09:30:00', 6, 17, 2, 50, 188),
(189, '2019-09-10 09:30:00', 62, 29, 2, 125, 189),
(190, '2019-09-10 09:30:00', 9, 29, 1, 125, NULL),
(191, '2019-09-10 09:30:00', 17, 32, 1, 125, NULL),
(192, '2019-09-10 09:30:00', 50, 6, 1, 100, NULL),
(193, '2019-09-10 09:30:00', 2, 30, 1, 125, NULL),
(194, '2019-09-10 09:30:00', 40, 30, 1, 125, NULL),
(195, '2019-09-10 09:30:00', 33, 60, 1, 100, NULL),
(196, '2019-09-10 09:30:00', 2, 30, 1, 125, NULL),
(197, '2019-09-11 09:30:00', 7, 29, 1, 125, NULL),
(198, '2019-09-11 09:30:00', 21, 20, 1, 50, NULL),
(199, '2019-09-11 09:30:00', 51, 17, 1, 50, NULL),
(200, '2019-09-11 09:30:00', 51, 58, 1, 125, 200),
(201, '2019-09-11 09:30:00', 39, 54, 1, 50, NULL),
(202, '2019-09-11 09:30:00', 62, 30, 1, 125, NULL),
(203, '2019-09-11 09:30:00', 48, 31, 1, 125, NULL),
(204, '2019-09-11 09:30:00', 50, 17, 1, 50, NULL),
(205, '2019-09-11 09:30:00', 40, 60, 1, 100, NULL),
(206, '2019-09-11 09:30:00', 2, 60, 1, 100, NULL),
(207, '2019-09-12 09:30:00', 6, 43, 1, 75, 207),
(208, '2019-09-12 09:30:00', 29, 60, 1, 100, NULL),
(209, '2019-09-12 09:30:00', 21, 29, 1, 125, NULL),
(210, '2019-09-12 09:30:00', 39, 54, 1, 50, NULL),
(211, '2019-09-12 09:30:00', 39, 30, 1, 125, NULL),
(212, '2019-09-12 09:30:00', 40, 30, 1, 125, NULL),
(213, '2019-09-12 09:30:00', 2, 30, 1, 125, NULL),
(214, '2019-09-12 09:30:00', 50, 43, 1, 75, NULL),
(215, '2019-09-12 09:30:00', 68, 29, 1, 125, 215),
(216, '2019-09-12 09:30:00', 4, 30, 1, 125, NULL),
(217, '2019-09-12 09:30:00', 19, 43, 1, 75, NULL),
(218, '2019-09-12 09:30:00', 21, 43, 1, 75, NULL),
(219, '2019-09-13 09:30:00', 39, 54, 1, 50, 219),
(220, '2019-09-13 09:30:00', 21, 9, 1, 100, NULL),
(221, '2019-09-13 09:30:00', 31, 9, 1, 100, NULL),
(222, '2019-09-13 09:30:00', 20, 6, 1, 100, NULL),
(223, '2019-09-13 09:30:00', 68, 9, 1, 100, 223),
(224, '2019-09-13 09:30:00', 22, 30, 1, 125, 224),
(225, '2019-09-13 09:30:00', 47, 31, 1, 125, 225),
(226, '2019-09-13 09:30:00', 73, 30, 1, 125, NULL),
(227, '2019-09-13 09:30:00', 47, 41, 2, 50, NULL),
(228, '2019-09-13 09:30:00', 32, 11, 1, 100, NULL),
(229, '2019-09-13 09:30:00', 5, 31, 1, 125, NULL),
(230, '2019-09-14 09:30:00', 44, 17, 4, 50, NULL),
(231, '2019-09-14 09:30:00', 24, 31, 1, 125, NULL),
(232, '2019-09-14 09:30:00', 17, 30, 1, 125, 232),
(233, '2019-09-14 09:30:00', 48, 31, 1, 125, NULL),
(234, '2019-09-14 09:30:00', 29, 43, 1, 75, NULL),
(235, '2019-09-14 09:30:00', 2, 30, 2, 125, NULL),
(236, '2019-09-14 09:30:00', 14, 30, 1, 125, 236),
(237, '2019-09-14 09:30:00', 50, 8, 1, 100, 237),
(238, '2019-09-14 09:30:00', 73, 11, 1, 100, NULL),
(239, '2019-09-14 09:30:00', 21, 29, 1, 125, NULL),
(240, '2019-09-14 09:30:00', 17, 30, 1, 125, NULL),
(241, '2019-09-14 09:30:00', 32, 32, 1, 125, NULL),
(242, '2019-09-14 09:30:00', 40, 32, 1, 125, NULL),
(243, '2019-09-14 09:30:00', 22, 36, 1, 0, NULL),
(244, '2019-09-14 09:30:00', 47, 9, 1, 100, NULL),
(245, '2019-09-15 09:30:00', 47, 41, 2, 50, NULL),
(246, '2019-09-15 09:30:00', 2, 29, 1, 125, 246),
(247, '2019-09-15 09:30:00', 62, 29, 1, 125, NULL),
(248, '2019-09-15 09:30:00', 62, 43, 1, 75, NULL),
(249, '2019-09-15 09:30:00', 30, 29, 1, 125, NULL),
(250, '2019-09-15 09:30:00', 2, 29, 1, 125, NULL),
(251, '2019-09-15 09:30:00', 28, 32, 1, 125, NULL),
(252, '2019-09-15 09:30:00', 32, 30, 1, 125, 252),
(253, '2019-09-15 09:30:00', 7, 29, 1, 125, NULL),
(254, '2019-09-15 09:30:00', 15, 2, 1, 0, 254),
(255, '2019-09-15 09:30:00', 31, 30, 1, 125, NULL),
(256, '2019-09-15 09:30:00', 31, 9, 1, 100, NULL),
(257, '2019-09-15 09:30:00', 2, 11, 1, 100, 257),
(258, '2019-09-15 09:30:00', 48, 43, 1, 75, NULL),
(259, '2019-09-15 09:30:00', 62, 1, 2, 50, NULL),
(260, '2019-09-16 09:30:00', 29, 43, 1, 75, NULL),
(261, '2019-09-16 09:30:00', 50, 43, 1, 75, NULL),
(262, '2019-09-16 09:30:00', 22, 11, 1, 100, NULL),
(263, '2019-09-16 09:30:00', 73, 11, 1, 100, NULL),
(264, '2019-09-16 09:30:00', 61, 12, 2, 100, NULL),
(265, '2019-09-16 09:30:00', 30, 6, 1, 100, NULL),
(266, '2019-09-17 09:30:00', 28, 6, 1, 0, NULL),
(267, '2019-09-17 09:30:00', 22, 9, 1, 100, NULL),
(268, '2019-09-17 09:30:00', 40, 30, 1, 125, NULL),
(269, '2019-09-17 09:30:00', 74, 30, 1, 125, NULL),
(270, '2019-09-17 09:30:00', 47, 41, 2, 50, NULL),
(271, '2019-09-18 09:30:00', 31, 31, 1, 125, NULL),
(272, '2019-09-18 09:30:00', 15, 5, 1, 0, NULL),
(273, '2019-09-18 09:30:00', 24, 30, 1, 125, NULL),
(274, '2019-09-18 09:30:00', 19, 32, 1, 125, 274),
(275, '2019-09-18 09:30:00', 51, 17, 1, 50, NULL),
(276, '2019-09-18 09:30:00', 51, 58, 1, 125, NULL),
(277, '2019-09-18 09:30:00', 31, 41, 2, 50, 277),
(278, '2019-09-18 09:30:00', 21, 29, 1, 125, NULL),
(279, '2019-09-18 09:30:00', 47, 29, 1, 125, NULL),
(280, '2019-09-18 09:30:00', 47, 9, 1, 100, NULL),
(281, '2019-09-18 09:30:00', 5, 31, 1, 125, 281),
(282, '2019-09-18 09:30:00', 40, 54, 1, 50, NULL),
(283, '2019-09-18 09:30:00', 51, 6, 1, 100, NULL),
(284, '2019-09-18 09:30:00', 19, 32, 1, 125, NULL),
(285, '2019-09-19 09:30:00', 31, 41, 1, 50, 285),
(286, '2019-09-19 09:30:00', 48, 31, 1, 125, 286),
(287, '2019-09-19 09:30:00', 17, 43, 2, 75, NULL),
(288, '2019-09-19 09:30:00', 21, 11, 1, 100, NULL),
(289, '2019-09-19 09:30:00', 50, 6, 1, 100, NULL),
(290, '2019-09-19 09:30:00', 22, 5, 1, 125, NULL),
(291, '2019-09-19 09:30:00', 22, 41, 2, 50, NULL),
(292, '2019-09-19 09:30:00', 31, 9, 1, 100, NULL),
(293, '2019-09-19 09:30:00', 31, 29, 1, 125, NULL),
(294, '2019-09-19 09:30:00', 47, 31, 1, 125, NULL),
(295, '2019-09-19 09:30:00', 40, 31, 1, 125, NULL),
(296, '2019-09-20 09:30:00', 7, 29, 1, 125, NULL),
(297, '2019-09-20 09:30:00', 24, 10, 1, 125, NULL),
(298, '2019-09-20 09:30:00', 31, 29, 1, 125, NULL),
(299, '2019-09-20 09:30:00', 21, 43, 1, 75, NULL),
(300, '2019-09-20 09:30:00', 21, 9, 1, 100, NULL),
(301, '2019-09-20 09:30:00', 31, 9, 1, 100, 301),
(302, '2019-09-20 09:30:00', 68, 29, 1, 125, NULL),
(303, '2019-09-20 09:30:00', 30, 4, 1, 50, NULL),
(304, '2019-09-20 09:30:00', 7, 29, 1, 125, NULL),
(305, '2019-09-20 09:30:00', 44, 17, 4, 50, NULL),
(306, '2019-09-20 09:30:00', 51, 58, 1, 125, 306),
(307, '2019-09-21 09:30:00', 50, 22, 1, 75, NULL),
(308, '2019-09-21 09:30:00', 61, 9, 1, 100, NULL),
(309, '2019-09-21 09:30:00', 29, 16, 1, 100, NULL),
(310, '2019-09-21 09:30:00', 48, 31, 1, 125, NULL),
(311, '2019-09-21 09:30:00', 14, 30, 1, 125, NULL),
(312, '2019-09-21 09:30:00', 21, 11, 1, 100, NULL),
(313, '2019-09-21 09:30:00', 21, 60, 1, 100, 313),
(314, '2019-09-21 09:30:00', 40, 60, 1, 100, 314),
(315, '2019-09-21 09:30:00', 50, 6, 1, 100, NULL),
(316, '2019-09-21 09:30:00', 73, 60, 2, 100, NULL),
(317, '2019-09-22 09:30:00', 2, 60, 1, 100, NULL),
(318, '2019-09-23 09:30:00', 32, 60, 1, 100, NULL),
(319, '2019-09-24 09:30:00', 30, 29, 1, 125, NULL),
(320, '2019-09-24 09:30:00', 48, 31, 1, 125, NULL),
(321, '2019-09-24 09:30:00', 61, 12, 1, 100, 321),
(322, '2019-09-24 09:30:00', 17, 60, 1, 100, NULL),
(323, '2019-09-24 09:30:00', 76, 30, 1, 125, 323),
(324, '2019-09-24 09:30:00', 44, 17, 1, 50, NULL),
(325, '2019-09-25 09:30:00', 19, 4, 1, 75, NULL),
(326, '2019-09-25 09:30:00', 22, 4, 1, 75, NULL),
(327, '2019-09-25 09:30:00', 9, 29, 1, 125, NULL),
(328, '2019-09-25 09:30:00', 48, 31, 1, 125, NULL),
(329, '2019-09-25 09:30:00', 21, 11, 1, 100, NULL),
(330, '2019-09-25 09:30:00', 61, 12, 1, 100, 330),
(331, '2019-09-25 09:30:00', 20, 6, 7, 100, NULL),
(332, '2019-09-25 09:30:00', 20, 29, 4, 125, 332),
(333, '2019-09-26 09:30:00', 50, 6, 1, 100, NULL),
(334, '2019-09-26 09:30:00', 21, 9, 1, 100, NULL),
(335, '2019-09-27 09:30:00', 24, 29, 1, 125, 335),
(336, '2019-09-27 09:30:00', 21, 11, 1, 100, 336),
(337, '2019-09-27 09:30:00', 19, 31, 1, 125, NULL),
(338, '2019-09-27 09:30:00', 21, 11, 1, 100, NULL),
(339, '2019-09-27 09:30:00', 44, 17, 4, 50, NULL),
(340, '2019-09-27 09:30:00', 47, 16, 1, 100, 340),
(341, '2019-09-27 09:30:00', 47, 1, 1, 50, NULL),
(342, '2019-09-28 09:30:00', 31, 29, 1, 125, NULL),
(343, '2019-09-28 09:30:00', 50, 17, 2, 50, NULL),
(344, '2019-09-28 09:30:00', 6, 17, 1, 50, NULL),
(345, '2019-09-28 09:30:00', 3, 42, 1, 50, NULL),
(346, '2019-09-28 09:30:00', 21, 29, 1, 125, NULL),
(347, '2019-09-28 09:30:00', 29, 31, 1, 125, NULL),
(348, '2019-09-28 09:30:00', 15, 2, 1, 100, NULL),
(349, '2019-09-28 09:30:00', 16, 43, 1, 75, 349),
(350, '2019-09-29 09:30:00', 44, 58, 2, 125, NULL),
(351, '2019-09-29 09:30:00', 2, 54, 2, 50, NULL),
(352, '2019-09-29 09:30:00', 31, 9, 1, 100, NULL),
(353, '2019-09-29 09:30:00', 31, 29, 1, 125, 353),
(354, '2019-09-30 09:30:00', 24, 31, 1, 125, NULL),
(355, '2019-09-30 09:30:00', 22, 41, 2, 50, NULL),
(356, '2019-09-30 09:30:00', 39, 20, 1, 50, NULL),
(357, '2019-09-30 09:30:00', 30, 6, 1, 100, NULL),
(358, '2019-09-30 09:30:00', 22, 4, 1, 75, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `johnnypaymentlog`
--

DROP TABLE IF EXISTS `johnnypaymentlog`;
CREATE TABLE IF NOT EXISTS `johnnypaymentlog` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `time_created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `employeeId` int(10) UNSIGNED NOT NULL,
  `amount` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `johnnypaymentlog_employeeid_foreign` (`employeeId`)
) ENGINE=MyISAM AUTO_INCREMENT=354 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `johnnypaymentlog`
--

INSERT INTO `johnnypaymentlog` (`id`, `time_created`, `employeeId`, `amount`) VALUES
(257, '2019-09-15 09:30:00', 2, 100),
(188, '2019-09-10 09:30:00', 6, 50),
(119, '2019-09-02 09:30:00', 47, 50),
(181, '2019-09-09 09:30:00', 51, 50),
(133, '2019-09-03 09:30:00', 29, 100),
(109, '2019-09-01 09:30:00', 61, 100),
(301, '2019-09-20 09:30:00', 31, 100),
(183, '2019-09-09 09:30:00', 29, 100),
(223, '2019-09-13 09:30:00', 68, 100),
(353, '2019-09-29 09:30:00', 31, 125),
(335, '2019-09-27 09:30:00', 24, 125),
(179, '2019-09-09 09:30:00', 17, 125),
(104, '2019-09-01 09:30:00', 28, 50),
(219, '2019-09-13 09:30:00', 39, 50),
(236, '2019-09-14 09:30:00', 14, 125),
(286, '2019-09-19 09:30:00', 48, 125),
(224, '2019-09-13 09:30:00', 22, 125),
(246, '2019-09-15 09:30:00', 2, 125),
(277, '2019-09-18 09:30:00', 31, 50),
(152, '2019-09-05 09:30:00', 5, 125),
(281, '2019-09-18 09:30:00', 5, 125),
(336, '2019-09-27 09:30:00', 21, 100),
(323, '2019-09-24 09:30:00', 76, 125),
(330, '2019-09-25 09:30:00', 61, 100),
(321, '2019-09-24 09:30:00', 61, 100),
(254, '2019-09-15 09:30:00', 15, 0),
(115, '2019-09-02 09:30:00', 61, 75),
(137, '2019-09-04 09:30:00', 2, 125),
(157, '2019-09-07 09:30:00', 33, 150),
(313, '2019-09-21 09:30:00', 21, 100),
(306, '2019-09-20 09:30:00', 51, 125),
(314, '2019-09-21 09:30:00', 40, 100),
(332, '2019-09-25 09:30:00', 20, 125),
(200, '2019-09-11 09:30:00', 51, 125),
(189, '2019-09-10 09:30:00', 62, 125),
(237, '2019-09-14 09:30:00', 50, 100),
(274, '2019-09-18 09:30:00', 19, 125),
(163, '2019-09-07 09:30:00', 64, 75),
(159, '2019-09-07 09:30:00', 39, 125),
(252, '2019-09-15 09:30:00', 32, 125),
(165, '2019-09-07 09:30:00', 29, 75),
(215, '2019-09-12 09:30:00', 68, 125),
(110, '2019-09-01 09:30:00', 29, 100),
(349, '2019-09-28 09:30:00', 16, 75),
(285, '2019-09-19 09:30:00', 31, 50),
(207, '2019-09-12 09:30:00', 6, 75),
(340, '2019-09-27 09:30:00', 47, 100),
(225, '2019-09-13 09:30:00', 47, 125),
(232, '2019-09-14 09:30:00', 17, 125),
(177, '2019-09-09 09:30:00', 35, 75);

-- --------------------------------------------------------

--
-- Structure de la table `johnnysku`
--

DROP TABLE IF EXISTS `johnnysku`;
CREATE TABLE IF NOT EXISTS `johnnysku` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=61 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `johnnysku`
--

INSERT INTO `johnnysku` (`id`, `name`, `price`) VALUES
(1, 'Fromage', 50),
(2, 'Yogourt', 100),
(3, 'Granola', 75),
(4, 'Jus Oasis', 75),
(5, 'Natura', 75),
(6, 'Perrier', 100),
(7, 'Liqueur (coke..)', 100),
(8, '7up', 100),
(9, 'Coke', 100),
(10, 'Aero', 125),
(11, 'San Pellegrino', 100),
(12, 'San Pellegrino - Citron', 100),
(13, 'San Pellegrino - Pomegranate', 100),
(14, 'Arizona', 150),
(15, 'Vita Coconut', 175),
(16, 'Gatorade', 100),
(17, 'Chips', 50),
(18, 'Chips - Lays', 50),
(19, 'Chips - Ruffles', 50),
(20, 'Chips - Doritos', 50),
(21, 'Ritz snacks', 50),
(22, 'Garder Veggie Snacks', 75),
(23, 'Snapea peas', 75),
(24, 'PopCorners', 75),
(25, 'Amandes Blue Diamond', 125),
(26, 'Ramen Noodles', 150),
(27, 'Barre Quaker Chewy', 50),
(28, 'True to nature', 75),
(29, 'Barres chocolat', 125),
(30, 'KitKat', 125),
(31, 'Coffee Crisp', 125),
(32, 'Smarties', 125),
(33, 'Oh Henry!', 125),
(34, 'Clif Bar', 125),
(35, 'Clif Organic Trail Mix Bar', 150),
(36, 'Clif Builder\'s', 150),
(37, 'Smart for life', 150),
(38, 'Bio Protein', 200),
(39, 'Barre Glutino', 100),
(40, 'Dad\'s Biscuits', 50),
(41, 'Pattes d\'Ours', 50),
(42, 'Quaker Gruau', 50),
(43, 'Fig Bar / Barre aux figues', 75),
(44, 'Mott\'s Fruitsations', 100),
(45, 'Applesnax', 50),
(46, 'Sachet jujubes Maynards', 125),
(47, 'Kinder Suprise', 100),
(48, 'Nutella&GO', 200),
(49, 'Sesame Snaps', 50),
(50, 'Thinsations', 50),
(51, 'Welch Ice (congélateur)', 50),
(52, 'Gommes Excel/Dentyne', 100),
(53, 'Excel Menthes', 200),
(54, 'Compote', 50),
(55, 'Babybel', 50),
(56, 'Smarties', 125),
(57, 'Jus rougemont', 50),
(58, 'pop tarts', 125),
(59, 'Mini Chips Ahoy', 75),
(60, 'Pop Corn', 100);

-- --------------------------------------------------------

--
-- Structure de la table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2020_12_10_153507_create_johnnyemployee_table', 1),
(2, '2020_12_10_155730_create_johnnyorderlog_table', 1),
(3, '2020_12_10_161753_create_johnnypaymentlog_table', 1),
(4, '2020_12_10_161817_create_johnnysku_table', 1);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
