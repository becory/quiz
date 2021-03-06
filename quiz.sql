-- phpMyAdmin SQL Dump
-- version 4.5.2
-- http://www.phpmyadmin.net
--
-- 主機: 127.0.0.1
-- 產生時間： 2016-06-08 03:37:47
-- 伺服器版本: 5.7.9
-- PHP 版本： 5.6.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- 資料庫： `quiz`
--

-- --------------------------------------------------------

--
-- 資料表結構 `anshistory`
--

DROP TABLE IF EXISTS `anshistory`;
CREATE TABLE IF NOT EXISTS `anshistory` (
  `his_id` int(11) NOT NULL AUTO_INCREMENT,
  `qus_id` int(11) NOT NULL,
  `his_million` tinyint(1) NOT NULL,
  `his_qusno` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `his_ans` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `his_money` int(11) NOT NULL DEFAULT '0',
  `his_pass` tinyint(1) NOT NULL DEFAULT '0',
  `his_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`his_id`)
) ENGINE=MyISAM AUTO_INCREMENT=223 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- 資料表的匯出資料 `anshistory`
--

INSERT INTO `anshistory` (`his_id`, `qus_id`, `his_million`, `his_qusno`, `user_id`, `his_ans`, `his_money`, `his_pass`, `his_date`) VALUES
(1, 5, 1, 1, 1, '胡適', 0, 1, '2016-06-07 19:45:24'),
(2, 28, 1, 2, 1, '宋代的“交子”', 0, 1, '2016-06-07 19:45:26'),
(3, 13, 1, 3, 1, '白令海峽', 0, 1, '2016-06-07 19:45:29'),
(4, 4, 1, 4, 1, '葡萄牙', 0, 1, '2016-06-07 19:45:31'),
(5, 9, 1, 5, 1, '鹹味調料', 0, 1, '2016-06-07 19:45:33'),
(6, 15, 1, 6, 1, '《嬌紅記》', 0, 1, '2016-06-07 19:45:50'),
(7, 14, 1, 7, 1, '60年', 0, 1, '2016-06-07 19:46:01'),
(8, 27, 1, 8, 1, '醋', 0, 1, '2016-06-07 19:46:03'),
(9, 7, 1, 9, 1, '王妃', 0, 1, '2016-06-07 19:46:14'),
(10, 8, 1, 10, 1, '法國人', 0, 1, '2016-06-07 19:46:17'),
(11, 24, 1, 11, 1, '搗米', 0, 1, '2016-06-07 19:46:21'),
(12, 20, 1, 12, 1, '巴黎', 0, 1, '2016-06-07 19:46:27'),
(13, 25, 1, 13, 1, '1999年1月1日', 0, 1, '2016-06-07 19:46:29'),
(14, 23, 1, 14, 1, '豆仁', 0, 1, '2016-06-07 19:46:32'),
(15, 29, 1, 15, 1, '太陽', 0, 1, '2016-06-07 19:46:34'),
(16, 17, 0, 1, 1, '歐陽修', 0, 0, '2016-06-07 19:46:52'),
(17, 17, 0, 1, 1, '陶淵明', 100000, 0, '2016-06-07 19:46:52'),
(18, 17, 0, 1, 1, '白居易', 400000, 1, '2016-06-07 19:46:52'),
(19, 22, 0, 2, 1, '元朝', 100000, 0, '2016-06-07 19:47:07'),
(20, 22, 0, 2, 1, '唐朝', 300000, 1, '2016-06-07 19:47:07'),
(21, 22, 0, 2, 1, '宋朝', 0, 0, '2016-06-07 19:47:07'),
(22, 19, 0, 3, 1, '29位', 300000, 1, '2016-06-07 19:47:10'),
(23, 19, 0, 3, 1, '22位', 0, 0, '2016-06-07 19:47:10'),
(24, 19, 0, 3, 1, '19位', 0, 0, '2016-06-07 19:47:10'),
(25, 23, 0, 4, 1, '豆夾', 0, 0, '2016-06-07 19:47:24'),
(26, 23, 0, 4, 1, '豆仁', 300000, 1, '2016-06-07 19:47:24'),
(27, 23, 0, 4, 1, '樹葉', 0, 0, '2016-06-07 19:47:24'),
(28, 12, 0, 5, 1, '麻六甲海峽', 0, 0, '2016-06-07 19:47:30'),
(29, 12, 0, 5, 1, '對馬海峽', 0, 0, '2016-06-07 19:47:30'),
(30, 12, 0, 5, 1, '保克海峽', 250000, 1, '2016-06-07 19:47:30'),
(31, 16, 0, 1, 1, '雪代巴', 0, 0, '2016-06-07 19:48:21'),
(32, 16, 0, 1, 1, '雪代巴的未婚夫', 50000, 1, '2016-06-07 19:48:21'),
(33, 16, 0, 1, 1, '雪代緣', 0, 0, '2016-06-07 19:48:21'),
(34, 1, 0, 2, 1, '鐵柱磨成針', 0, 1, '2016-06-07 19:48:28'),
(35, 1, 0, 2, 1, '點石可成金', 0, 0, '2016-06-07 19:48:28'),
(36, 1, 0, 2, 1, '必定有錢剩', 50000, 0, '2016-06-07 19:48:28'),
(37, 13, 0, 1, 1, '馬六甲海峽', 0, 0, '2016-06-07 19:48:40'),
(38, 13, 0, 1, 1, '對馬海峽', 0, 0, '2016-06-07 19:48:40'),
(39, 13, 0, 1, 1, '白令海峽', 50000, 1, '2016-06-07 19:48:40'),
(40, 3, 0, 2, 1, '英國', 0, 0, '2016-06-07 19:48:51'),
(41, 3, 0, 2, 1, '德國', 20000, 0, '2016-06-07 19:48:51'),
(42, 3, 0, 2, 1, '法國', 30000, 1, '2016-06-07 19:48:51'),
(43, 14, 0, 3, 1, '40年', 30000, 0, '2016-06-07 19:48:57'),
(44, 14, 0, 3, 1, '60年', 0, 1, '2016-06-07 19:48:57'),
(45, 14, 0, 3, 1, '50年', 0, 0, '2016-06-07 19:48:57'),
(46, 9, 1, 1, 1, '鮮味調料', 0, 0, '2016-06-07 19:49:12'),
(47, 29, 0, 1, 1, '月亮', 0, 0, '2016-06-07 19:49:48'),
(48, 29, 0, 1, 1, '金星', 0, 0, '2016-06-07 19:49:48'),
(49, 29, 0, 1, 1, '太陽', 300000, 1, '2016-06-07 19:49:48'),
(50, 22, 0, 2, 1, '元朝', 0, 0, '2016-06-07 19:50:08'),
(51, 22, 0, 2, 1, '宋朝', 200000, 0, '2016-06-07 19:50:08'),
(52, 22, 0, 2, 1, '唐朝', 100000, 1, '2016-06-07 19:50:08'),
(53, 30, 0, 3, 1, '龍貓', 0, 0, '2016-06-07 19:50:12'),
(54, 30, 0, 3, 1, '貓頭鷹守護神', 0, 1, '2016-06-07 19:50:12'),
(55, 30, 0, 3, 1, '神隱少女', 100000, 0, '2016-06-07 19:50:12'),
(56, 20, 0, 1, 2, '紐約', 0, 0, '2016-06-07 19:50:46'),
(57, 20, 0, 1, 2, '倫敦', 200000, 0, '2016-06-07 19:50:46'),
(58, 20, 0, 1, 2, '巴黎', 250000, 1, '2016-06-07 19:50:46'),
(59, 15, 0, 2, 2, '《漢宮秋》', 0, 0, '2016-06-07 19:50:49'),
(60, 15, 0, 2, 2, '《嬌紅記》', 250000, 1, '2016-06-07 19:50:49'),
(61, 15, 0, 2, 2, '《趙氏孤兒》', 0, 0, '2016-06-07 19:50:49'),
(62, 13, 0, 3, 2, '白令海峽', 0, 1, '2016-06-07 19:50:52'),
(63, 13, 0, 3, 2, '馬六甲海峽', 0, 0, '2016-06-07 19:50:52'),
(64, 13, 0, 3, 2, '對馬海峽', 250000, 0, '2016-06-07 19:50:52'),
(65, 18, 0, 1, 2, '視覺', 0, 0, '2016-06-07 19:51:55'),
(66, 18, 0, 1, 2, '嗅覺', 500000, 0, '2016-06-07 19:51:55'),
(67, 18, 0, 1, 2, '味覺', 0, 1, '2016-06-07 19:51:55'),
(68, 24, 0, 1, 2, '搗米', 300000, 1, '2016-06-07 19:52:31'),
(69, 24, 0, 1, 2, '打水', 0, 0, '2016-06-07 19:52:31'),
(70, 24, 0, 1, 2, '打水', 0, 0, '2016-06-07 19:52:31'),
(71, 28, 0, 2, 2, '元代的“寶鈔”', 0, 0, '2016-06-07 19:52:34'),
(72, 28, 0, 2, 2, '宋代的“寶鈔”', 200000, 0, '2016-06-07 19:52:34'),
(73, 28, 0, 2, 2, '宋代的“交子”', 0, 1, '2016-06-07 19:52:34'),
(74, 9, 1, 1, 2, '鹹味調料', 0, 1, '2016-06-07 20:21:44'),
(75, 6, 1, 2, 2, '提供電子商務', 0, 1, '2016-06-07 20:21:47'),
(76, 25, 1, 3, 2, '1999年7月1日', 0, 0, '2016-06-07 20:21:49'),
(77, 20, 1, 1, 2, '巴黎', 0, 1, '2016-06-07 20:21:59'),
(78, 14, 1, 2, 2, '50年', 0, 0, '2016-06-07 20:22:02'),
(79, 13, 1, 1, 2, '白令海峽', 0, 1, '2016-06-07 20:22:26'),
(80, 2, 1, 2, 2, '蒲松齡', 0, 1, '2016-06-07 20:22:29'),
(81, 29, 1, 3, 2, '太陽', 0, 1, '2016-06-07 20:22:30'),
(82, 4, 1, 4, 2, '葡萄牙', 0, 1, '2016-06-07 20:22:32'),
(83, 23, 1, 5, 2, '豆仁', 0, 1, '2016-06-07 20:22:34'),
(84, 1, 1, 6, 2, '必定有錢剩', 0, 0, '2016-06-07 20:22:37'),
(85, 18, 1, 1, 2, '((逃離戰場))', 0, 0, '2016-06-07 20:23:57'),
(86, 2, 1, 1, 2, '((逃離戰場))', 0, 0, '2016-06-07 20:23:59'),
(87, 16, 0, 1, 1, '雪代巴的未婚夫', 0, 1, '2016-06-07 20:27:14'),
(88, 16, 0, 1, 1, '雪代巴', 500000, 0, '2016-06-07 20:27:14'),
(89, 16, 0, 1, 1, '雪代緣', 0, 0, '2016-06-07 20:27:14'),
(166, 7, 0, 1, 6, '((逃離戰場))', 0, 0, '2016-06-07 20:40:13'),
(91, 8, 0, 1, 3, '美國人', 0, 0, '2016-06-07 20:28:27'),
(92, 8, 0, 1, 3, '法國人', 400000, 1, '2016-06-07 20:28:27'),
(93, 8, 0, 1, 3, '英國人', 0, 0, '2016-06-07 20:28:27'),
(94, 7, 0, 2, 3, '女將軍', 0, 0, '2016-06-07 20:28:30'),
(95, 7, 0, 2, 3, '王妃', 400000, 1, '2016-06-07 20:28:30'),
(96, 7, 0, 2, 3, '農家婦女', 0, 0, '2016-06-07 20:28:30'),
(97, 22, 0, 3, 3, '元朝', 0, 0, '2016-06-07 20:28:33'),
(98, 22, 0, 3, 3, '唐朝', 400000, 1, '2016-06-07 20:28:33'),
(99, 22, 0, 3, 3, '宋朝', 0, 0, '2016-06-07 20:28:33'),
(100, 19, 0, 4, 3, '29位', 400000, 1, '2016-06-07 20:28:36'),
(101, 19, 0, 4, 3, '22位', 0, 0, '2016-06-07 20:28:36'),
(102, 19, 0, 4, 3, '19位', 0, 0, '2016-06-07 20:28:36'),
(103, 30, 0, 5, 3, '神隱少女', 0, 0, '2016-06-07 20:28:39'),
(104, 30, 0, 5, 3, '貓頭鷹守護神', 400000, 1, '2016-06-07 20:28:39'),
(105, 30, 0, 5, 3, '龍貓', 0, 0, '2016-06-07 20:28:39'),
(106, 2, 0, 1, 4, '施耐庵', 0, 0, '2016-06-07 20:29:10'),
(107, 2, 0, 1, 4, '蒲松齡', 0, 1, '2016-06-07 20:29:10'),
(108, 2, 0, 1, 4, '曹雪芹', 0, 0, '2016-06-07 20:29:10'),
(109, 11, 1, 1, 4, '1912年', 0, 1, '2016-06-07 20:29:41'),
(110, 1, 1, 2, 4, '鐵柱磨成針', 0, 1, '2016-06-07 20:29:44'),
(111, 14, 1, 3, 4, '50年', 0, 0, '2016-06-07 20:29:46'),
(112, 16, 1, 1, 4, '雪代緣', 0, 0, '2016-06-07 20:29:51'),
(113, 13, 1, 1, 4, '對馬海峽', 0, 0, '2016-06-07 20:29:55'),
(114, 13, 1, 1, 4, '對馬海峽', 0, 0, '2016-06-07 20:29:58'),
(115, 5, 1, 1, 4, '胡適', 0, 1, '2016-06-07 20:30:01'),
(116, 26, 1, 2, 4, '肝', 0, 1, '2016-06-07 20:30:03'),
(117, 23, 1, 3, 4, '豆仁', 0, 1, '2016-06-07 20:30:05'),
(118, 12, 1, 4, 4, '保克海峽', 0, 1, '2016-06-07 20:30:09'),
(119, 11, 1, 5, 4, '1912年', 0, 1, '2016-06-07 20:30:13'),
(120, 17, 1, 6, 4, '白居易', 0, 1, '2016-06-07 20:30:16'),
(121, 21, 1, 7, 4, '法國', 0, 0, '2016-06-07 20:30:17'),
(122, 22, 1, 1, 4, '唐朝', 0, 1, '2016-06-07 20:30:24'),
(123, 26, 1, 2, 4, '脾', 0, 0, '2016-06-07 20:30:26'),
(124, 20, 1, 1, 4, '紐約', 0, 0, '2016-06-07 20:30:35'),
(125, 29, 1, 1, 4, '太陽', 0, 1, '2016-06-07 20:30:42'),
(126, 2, 1, 2, 4, '蒲松齡', 0, 1, '2016-06-07 20:30:45'),
(127, 8, 1, 3, 4, '法國人', 0, 1, '2016-06-07 20:30:50'),
(128, 3, 1, 4, 4, '法國', 0, 1, '2016-06-07 20:30:53'),
(129, 5, 1, 5, 4, '胡適', 0, 1, '2016-06-07 20:30:55'),
(130, 13, 1, 6, 4, '對馬海峽', 0, 0, '2016-06-07 20:30:58'),
(131, 11, 1, 1, 4, '1912年', 0, 1, '2016-06-07 20:31:02'),
(132, 7, 1, 2, 4, '王妃', 0, 1, '2016-06-07 20:31:04'),
(133, 28, 1, 3, 4, '宋代的“交子”', 0, 1, '2016-06-07 20:31:07'),
(134, 19, 1, 4, 4, '29位', 0, 1, '2016-06-07 20:31:08'),
(135, 13, 1, 5, 4, '白令海峽', 0, 1, '2016-06-07 20:31:11'),
(136, 26, 1, 6, 4, '肝', 0, 1, '2016-06-07 20:31:14'),
(137, 29, 1, 7, 4, '太陽', 0, 1, '2016-06-07 20:31:15'),
(138, 25, 1, 8, 4, '1999年1月1日', 0, 1, '2016-06-07 20:31:18'),
(139, 12, 1, 9, 4, '保克海峽', 0, 1, '2016-06-07 20:31:21'),
(140, 16, 1, 10, 4, '雪代巴的未婚夫', 0, 1, '2016-06-07 20:31:23'),
(141, 4, 1, 11, 4, '葡萄牙', 0, 1, '2016-06-07 20:31:27'),
(142, 1, 1, 12, 4, '鐵柱磨成針', 0, 1, '2016-06-07 20:31:29'),
(143, 8, 1, 13, 4, '法國人', 0, 1, '2016-06-07 20:31:32'),
(144, 20, 1, 14, 4, '巴黎', 0, 1, '2016-06-07 20:31:37'),
(145, 22, 1, 15, 4, '唐朝', 0, 1, '2016-06-07 20:31:40'),
(146, 20, 1, 1, 5, '倫敦', 0, 0, '2016-06-07 20:33:59'),
(147, 21, 1, 1, 5, '義大利', 0, 1, '2016-06-07 20:34:01'),
(148, 22, 1, 2, 5, '唐朝', 0, 1, '2016-06-07 20:34:03'),
(149, 5, 1, 3, 5, '胡適', 0, 1, '2016-06-07 20:34:04'),
(150, 4, 1, 4, 5, '葡萄牙', 0, 1, '2016-06-07 20:34:07'),
(151, 9, 1, 5, 5, '鹹味調料', 0, 1, '2016-06-07 20:34:09'),
(152, 18, 1, 6, 5, '味覺', 0, 1, '2016-06-07 20:34:12'),
(153, 26, 1, 7, 5, '肝', 0, 1, '2016-06-07 20:34:14'),
(154, 8, 1, 8, 5, '法國人', 0, 1, '2016-06-07 20:34:17'),
(155, 17, 1, 9, 5, '白居易', 0, 1, '2016-06-07 20:34:20'),
(156, 6, 1, 10, 5, '提供電子商務', 0, 1, '2016-06-07 20:34:23'),
(157, 13, 1, 11, 5, '白令海峽', 0, 1, '2016-06-07 20:34:26'),
(158, 28, 1, 12, 5, '宋代的“交子”', 0, 1, '2016-06-07 20:34:28'),
(159, 12, 1, 13, 5, '保克海峽', 0, 1, '2016-06-07 20:34:31'),
(160, 14, 1, 14, 5, '60年', 0, 1, '2016-06-07 20:34:36'),
(161, 23, 1, 15, 5, '樹葉', 0, 0, '2016-06-07 20:34:43'),
(162, 26, 1, 1, 6, '肝', 0, 1, '2016-06-07 20:35:32'),
(163, 5, 1, 2, 6, '胡適', 0, 1, '2016-06-07 20:35:33'),
(164, 2, 1, 3, 6, '蒲松齡', 0, 1, '2016-06-07 20:35:36'),
(165, 23, 1, 4, 6, '豆夾', 0, 0, '2016-06-07 20:35:38'),
(167, 18, 0, 1, 6, '((逃離戰場))', 0, 0, '2016-06-07 20:40:17'),
(168, 2, 0, 1, 6, '施耐庵', 0, 0, '2016-06-07 20:41:45'),
(169, 2, 0, 1, 6, '蒲松齡', 500000, 1, '2016-06-07 20:41:45'),
(170, 2, 0, 1, 6, '曹雪芹', 0, 0, '2016-06-07 20:41:45'),
(171, 21, 0, 2, 6, '((逃離戰場))', 0, 0, '2016-06-07 20:41:50'),
(172, 22, 0, 1, 6, '宋朝', 0, 0, '2016-06-07 20:43:22'),
(173, 22, 0, 1, 6, '元朝', 500000, 0, '2016-06-07 20:43:22'),
(174, 22, 0, 1, 6, '唐朝', 0, 1, '2016-06-07 20:43:22'),
(175, 11, 1, 1, 1, '1912年', 0, 1, '2016-06-07 20:44:47'),
(176, 1, 1, 2, 1, '((逾時作答))', 0, 0, '2016-06-07 20:44:53'),
(177, 25, 1, 1, 6, '((逾時作答))', 0, 0, '2016-06-07 20:45:17'),
(178, 6, 1, 1, 6, '提供電子商務', 0, 1, '2016-06-07 20:45:20'),
(179, 6, 1, 1, 6, '((逾時作答))', 0, 0, '2016-06-07 20:45:20'),
(180, 25, 0, 1, 4, '1999年7月1日', 50000, 0, '2016-06-08 01:34:03'),
(181, 25, 0, 1, 4, '1999年12月1日', 200000, 0, '2016-06-08 01:34:03'),
(182, 25, 0, 1, 4, '1999年1月1日', 30000, 1, '2016-06-08 01:34:03'),
(183, 22, 0, 2, 4, '元朝', 0, 0, '2016-06-08 01:34:12'),
(184, 22, 0, 2, 4, '宋朝', 0, 0, '2016-06-08 01:34:12'),
(185, 22, 0, 2, 4, '唐朝', 30000, 1, '2016-06-08 01:34:12'),
(186, 14, 0, 3, 4, '50年', 10000, 0, '2016-06-08 01:34:18'),
(187, 14, 0, 3, 4, '60年', 10000, 1, '2016-06-08 01:34:18'),
(188, 14, 0, 3, 4, '40年', 10000, 0, '2016-06-08 01:34:18'),
(189, 30, 0, 4, 4, '神隱少女', 0, 0, '2016-06-08 01:34:23'),
(190, 30, 0, 4, 4, '貓頭鷹守護神', 10000, 1, '2016-06-08 01:34:23'),
(191, 30, 0, 4, 4, '龍貓', 0, 0, '2016-06-08 01:34:23'),
(192, 4, 0, 5, 4, '南斯拉夫', 0, 0, '2016-06-08 01:34:27'),
(193, 4, 0, 5, 4, '葡萄牙', 10000, 1, '2016-06-08 01:34:27'),
(194, 4, 0, 5, 4, '西班牙', 0, 0, '2016-06-08 01:34:27'),
(195, 19, 1, 1, 4, '29位', 0, 1, '2016-06-08 01:34:38'),
(196, 8, 1, 2, 4, '法國人', 0, 1, '2016-06-08 01:34:45'),
(197, 11, 1, 3, 4, '1912年', 0, 1, '2016-06-08 01:34:52'),
(198, 12, 1, 4, 4, '((逾時作答))', 0, 0, '2016-06-08 01:35:14'),
(199, 12, 1, 1, 4, '((逃離戰場))', 0, 0, '2016-06-08 01:36:26'),
(200, 17, 0, 1, 2, '((逃離戰場))', 0, 0, '2016-06-08 01:37:25'),
(201, 2, 0, 1, 2, '((逃離戰場))', 0, 0, '2016-06-08 01:40:48'),
(202, 9, 1, 1, 1, '鹹味調料', 0, 1, '2016-06-08 01:58:00'),
(203, 17, 1, 2, 1, '白居易', 0, 1, '2016-06-08 01:58:10'),
(204, 18, 1, 3, 1, '味覺', 0, 1, '2016-06-08 01:58:15'),
(205, 22, 1, 4, 1, '唐朝', 0, 1, '2016-06-08 01:58:21'),
(206, 27, 1, 5, 1, '醋', 0, 1, '2016-06-08 01:58:26'),
(207, 21, 1, 6, 1, '法國', 0, 0, '2016-06-08 01:58:30'),
(208, 29, 1, 1, 4, '太陽', 0, 1, '2016-06-08 03:06:06'),
(209, 21, 1, 2, 4, '法國', 0, 0, '2016-06-08 03:06:11'),
(210, 5, 1, 1, 4, '胡適', 0, 1, '2016-06-08 03:06:31'),
(211, 16, 1, 2, 4, '((逾時作答))', 0, 0, '2016-06-08 03:06:52'),
(212, 10, 0, 1, 4, '水果', 400000, 1, '2016-06-08 03:07:36'),
(213, 10, 0, 1, 4, '奶及奶制品', 50000, 0, '2016-06-08 03:07:36'),
(214, 10, 0, 1, 4, '骨頭湯', 50000, 0, '2016-06-08 03:07:36'),
(215, 15, 0, 2, 4, '《趙氏孤兒》', 50000, 0, '2016-06-08 03:07:57'),
(216, 15, 0, 2, 4, '《漢宮秋》', 0, 0, '2016-06-08 03:07:57'),
(217, 15, 0, 2, 4, '《嬌紅記》', 0, 1, '2016-06-08 03:07:57'),
(218, 19, 0, 1, 2, '22位', 0, 0, '2016-06-08 03:08:58'),
(219, 19, 0, 1, 2, '29位', 400000, 1, '2016-06-08 03:08:58'),
(220, 19, 0, 1, 2, '19位', 0, 0, '2016-06-08 03:08:58'),
(221, 14, 0, 2, 2, '((逃離戰場))', 0, 0, '2016-06-08 03:09:17'),
(222, 10, 0, 1, 2, '((逃離戰場))', 0, 0, '2016-06-08 03:09:39');

-- --------------------------------------------------------

--
-- 資料表結構 `award`
--

DROP TABLE IF EXISTS `award`;
CREATE TABLE IF NOT EXISTS `award` (
  `award_id` int(11) NOT NULL AUTO_INCREMENT,
  `award_money` int(11) NOT NULL,
  PRIMARY KEY (`award_id`)
) ENGINE=MyISAM AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- 資料表的匯出資料 `award`
--

INSERT INTO `award` (`award_id`, `award_money`) VALUES
(1, 0),
(2, 1000),
(3, 2000),
(4, 3000),
(5, 4000),
(6, 5000),
(7, 6000),
(8, 7000),
(9, 8000),
(10, 16000),
(11, 32000),
(12, 64000),
(13, 125000),
(14, 250000),
(15, 500000),
(16, 1000000);

-- --------------------------------------------------------

--
-- 資料表結構 `moneyhistory`
--

DROP TABLE IF EXISTS `moneyhistory`;
CREATE TABLE IF NOT EXISTS `moneyhistory` (
  `money_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `money_subject` int(11) NOT NULL,
  `money_inout` tinyint(1) NOT NULL,
  `money_total` int(11) NOT NULL,
  `money_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`money_id`)
) ENGINE=MyISAM AUTO_INCREMENT=67 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- 資料表的匯出資料 `moneyhistory`
--

INSERT INTO `moneyhistory` (`money_id`, `user_id`, `money_subject`, `money_inout`, `money_total`, `money_date`) VALUES
(1, 1, 1, 1, 1000000, '2016-06-07 19:46:35'),
(2, 1, 2, 0, 250000, '2016-06-07 19:46:42'),
(3, 1, 2, 1, 250000, '2016-06-07 19:47:30'),
(4, 1, 2, 0, 250000, '2016-06-07 19:48:13'),
(5, 1, 2, 1, 0, '2016-06-07 19:48:28'),
(6, 1, 2, 0, 250000, '2016-06-07 19:48:31'),
(7, 1, 2, 1, 0, '2016-06-07 19:48:57'),
(8, 1, 1, 1, 0, '2016-06-07 19:49:13'),
(9, 1, 2, 0, 250000, '2016-06-07 19:49:28'),
(10, 1, 2, 1, 0, '2016-06-07 19:50:12'),
(11, 2, 2, 0, 250000, '2016-06-07 19:50:41'),
(12, 2, 2, 1, 0, '2016-06-07 19:50:52'),
(13, 2, 3, 1, 250000, '2016-06-07 19:51:29'),
(14, 2, 2, 0, 250000, '2016-06-07 19:51:48'),
(15, 2, 2, 1, 0, '2016-06-07 19:51:55'),
(16, 2, 3, 1, 250000, '2016-06-07 19:51:59'),
(17, 2, 2, 0, 250000, '2016-06-07 19:52:25'),
(18, 2, 2, 1, 0, '2016-06-07 19:52:35'),
(19, 2, 1, 1, 1000, '2016-06-07 20:21:49'),
(20, 2, 1, 1, 500, '2016-06-07 20:22:02'),
(21, 2, 1, 1, 2500, '2016-06-07 20:22:37'),
(22, 1, 2, 0, 250000, '2016-06-07 20:27:08'),
(23, 1, 2, 1, 0, '2016-06-07 20:27:14'),
(24, 3, 2, 0, 250000, '2016-06-07 20:27:29'),
(25, 3, 2, 0, 250000, '2016-06-07 20:28:18'),
(26, 3, 2, 1, 400000, '2016-06-07 20:28:39'),
(27, 4, 2, 0, 250000, '2016-06-07 20:29:05'),
(28, 4, 2, 1, 0, '2016-06-07 20:29:10'),
(29, 4, 1, 1, 1000, '2016-06-07 20:29:47'),
(30, 4, 1, 1, 0, '2016-06-07 20:29:52'),
(31, 4, 1, 1, 0, '2016-06-07 20:29:56'),
(32, 4, 1, 1, 0, '2016-06-07 20:29:59'),
(33, 4, 1, 1, 3000, '2016-06-07 20:30:18'),
(34, 4, 1, 1, 500, '2016-06-07 20:30:27'),
(35, 4, 1, 1, 0, '2016-06-07 20:30:35'),
(36, 4, 1, 1, 2500, '2016-06-07 20:30:59'),
(37, 4, 1, 1, 1000000, '2016-06-07 20:31:41'),
(38, 5, 1, 1, 0, '2016-06-07 20:34:00'),
(39, 5, 1, 1, 250000, '2016-06-07 20:34:44'),
(40, 6, 1, 1, 1500, '2016-06-07 20:35:39'),
(41, 6, 2, 0, 250000, '2016-06-07 20:40:11'),
(42, 6, 2, 0, 250000, '2016-06-07 20:40:15'),
(43, 6, 3, 1, 250000, '2016-06-07 20:41:10'),
(44, 6, 2, 0, 250000, '2016-06-07 20:41:41'),
(45, 6, 3, 1, 250000, '2016-06-07 20:43:02'),
(46, 6, 2, 0, 250000, '2016-06-07 20:43:18'),
(47, 6, 2, 1, 0, '2016-06-07 20:43:22'),
(48, 6, 3, 1, 250000, '2016-06-07 20:43:24'),
(49, 1, 1, 1, 500, '2016-06-07 20:44:54'),
(50, 6, 1, 1, 0, '2016-06-07 20:45:18'),
(51, 6, 1, 1, 0, '2016-06-07 20:45:21'),
(52, 4, 2, 0, 250000, '2016-06-08 01:33:43'),
(53, 4, 2, 1, 10000, '2016-06-08 01:34:27'),
(54, 4, 1, 1, 1500, '2016-06-08 01:35:19'),
(55, 2, 2, 0, 250000, '2016-06-08 01:37:20'),
(56, 2, 3, 1, 250000, '2016-06-08 01:37:31'),
(57, 2, 2, 0, 250000, '2016-06-08 01:40:45'),
(58, 2, 3, 1, 250000, '2016-06-08 01:40:49'),
(59, 1, 1, 1, 2500, '2016-06-08 01:58:32'),
(60, 4, 1, 1, 500, '2016-06-08 03:06:20'),
(61, 4, 1, 1, 500, '2016-06-08 03:06:58'),
(62, 4, 2, 0, 250000, '2016-06-08 03:07:25'),
(63, 4, 2, 1, 0, '2016-06-08 03:07:57'),
(64, 2, 2, 0, 250000, '2016-06-08 03:08:48'),
(65, 2, 3, 1, 250000, '2016-06-08 03:09:25'),
(66, 2, 2, 0, 250000, '2016-06-08 03:09:37');

-- --------------------------------------------------------

--
-- 資料表結構 `question`
--

DROP TABLE IF EXISTS `question`;
CREATE TABLE IF NOT EXISTS `question` (
  `qus_id` int(11) NOT NULL AUTO_INCREMENT,
  `qus_subject` varchar(300) COLLATE utf8_unicode_ci NOT NULL,
  `qus_ansA` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `qus_ansB` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `qus_ansC` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `qus_bestAns` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`qus_id`),
  UNIQUE KEY `qus_subject` (`qus_subject`)
) ENGINE=MyISAM AUTO_INCREMENT=31 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- 資料表的匯出資料 `question`
--

INSERT INTO `question` (`qus_id`, `qus_subject`, `qus_ansA`, `qus_ansB`, `qus_ansC`, `qus_bestAns`) VALUES
(1, ' “只要有恆心”的下一句是什麼？', '必定有錢剩', '鐵柱磨成針', '點石可成金', '鐵柱磨成針'),
(2, '《聊齋志異》的作者是誰？　', '曹雪芹', '蒲松齡', '施耐庵', '蒲松齡'),
(3, '提出著名的韋達公式的數學家韋達，是哪國人？', '英國', '法國', '德國', '法國'),
(4, '尤西比奧是哪個國家的球星？', '南斯拉夫', '西班牙', '葡萄牙', '葡萄牙'),
(5, '《嘗試集》的作者是誰？', '魯迅', '朱志清', '胡適', '胡適'),
(6, 'Windows .Net技術的核心是什麼？', '提供電子商務', '提供額外的網絡安全性', '實現分布式計算', '提供電子商務'),
(7, '我們常稱風韻猶存的中年婦女為“半老徐娘”，這個“徐娘”原是指一位？', '王妃', '農家婦女', '女將軍', '王妃'),
(8, '“法律面前人人平等”是什麼人最先提出來的：', '美國人', '法國人', '英國人', '法國人'),
(9, '魚露是一種：', '鹹味調料', '甜味調料', '鮮味調料', '鹹味調料'),
(10, '下列食品中，哪個含鈣量最高？', '水果', '骨頭湯', '奶及奶制品', '水果'),
(11, '鐵達尼號游輪是哪一年沉沒的？', '1913年', '1911年', '1912年', '1912年'),
(12, '世界最著名的十大海峽中，位於印度南端和斯裡蘭卡島北部之間的是什麼海峽？', '保克海峽', '麻六甲海峽', '對馬海峽', '保克海峽'),
(13, '世界最著名的十大海峽中，位於前蘇聯東部與美國西部之間的是什麼海峽？', '白令海峽', '馬六甲海峽', '對馬海峽', '白令海峽'),
(14, '歌德寫《浮士德》用了多長時間？', '40年', '50年', '60年', '60年'),
(15, '以下哪部戲劇的作者是明朝人？', '《漢宮秋》', '《趙氏孤兒》', '《嬌紅記》', '《嬌紅記》'),
(16, '《浪客劍心》中緋村劍心臉上豎著的傷疤是誰劃上的？', '雪代巴', '雪代緣', '雪代巴的未婚夫', '雪代巴的未婚夫'),
(17, '四大名亭中的陶然亭是因為誰的詩句得名的？', '歐陽修', '白居易', '陶淵明', '白居易'),
(18, '人的五感中那個感覺反應最快？', '嗅覺', '視覺', '味覺', '味覺'),
(19, '十歲以下的小娃娃就當了皇帝的，在中國歷史上共有幾個？', '19位', '22位', '29位', '29位'),
(20, '有“世界花城”（花都）之稱的是那個城市？', '紐約', '倫敦', '巴黎', '巴黎'),
(21, '世界上最早的銀行始建於哪個國家？', '義大利', '瑞士', '法國', '義大利'),
(22, '“垂簾聽政”始於何時？', '宋朝', '元朝', '唐朝', '唐朝'),
(23, '古時代，地中海沿岸地區以一種豆角樹上的一部分作為計量黃金重量的測量標准。請問：其所用的是豆角樹的哪一部分？', '樹葉', '豆夾', '豆仁', '豆仁'),
(24, '“杵臼交”多用來指不計身份而結交的朋友。這裡的“杵臼”在古代是用來做什麼的？', '搗米', '打水', '打水', '搗米'),
(25, '歐元什麼時候正式誕生？', '1999年1月1日', '1999年7月1日', '1999年12月1日', '1999年1月1日'),
(26, '人體最大的解毒器官是：', '腎', '肝', '脾', '肝'),
(27, '古人說的“酢”指的是今天的：', '醬油', '醋', '酒', '醋'),
(28, '我國最先出現的紙幣是：', '元代的“寶鈔”', '宋代的“寶鈔”', '宋代的“交子”', '宋代的“交子”'),
(29, '古人所謂“黃道”是哪種天體運行周年的軌道？', '金星', '月亮', '太陽', '太陽'),
(30, '以下哪些作品不是宮崎駿的作品？', '神隱少女', '貓頭鷹守護神', '龍貓', '貓頭鷹守護神');

-- --------------------------------------------------------

--
-- 資料表結構 `user`
--

DROP TABLE IF EXISTS `user`;
CREATE TABLE IF NOT EXISTS `user` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_username` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `user_password` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `user_nickname` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `user_money` int(11) NOT NULL,
  `user_admin` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`user_id`),
  UNIQUE KEY `user_username` (`user_username`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- 資料表的匯出資料 `user`
--

INSERT INTO `user` (`user_id`, `user_username`, `user_password`, `user_nickname`, `user_money`, `user_admin`) VALUES
(1, 'admin', 'admin1234', '管理員', 503000, 1),
(2, 'ming', 'ming1234', '大明', 4000, 0),
(3, 'sming', 'sming1234', '小明', 400000, 0),
(4, 'jh', 'jh1234', '建賀', 769500, 1),
(5, 'cit', 'cit1234', '中天', 750000, 0),
(6, 'ttv', 'ttv1234', '台視', 251500, 0);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
