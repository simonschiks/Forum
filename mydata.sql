-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Gegenereerd op: 27 jun 2019 om 11:51
-- Serverversie: 10.1.36-MariaDB
-- PHP-versie: 7.2.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mydata`
--

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `comments`
--

CREATE TABLE `comments` (
  `comment_id` int(10) NOT NULL,
  `post_id_c` int(10) NOT NULL,
  `user_id_c` int(10) NOT NULL,
  `comment` text NOT NULL,
  `comment_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Gegevens worden geëxporteerd voor tabel `comments`
--

INSERT INTO `comments` (`comment_id`, `post_id_c`, `user_id_c`, `comment`, `comment_time`) VALUES
(2, 0, 0, 'DSKJAHFIUADS', '2017-06-10 20:46:12'),
(3, 3, 1, 'ASUDYFU', '2017-06-10 20:46:46'),
(4, 2, 1, 'DSKAYFUI', '2017-06-10 20:46:54'),
(6, 3, 1, 'dskjfhasdk', '2017-06-10 20:50:11'),
(8, 3, 1, 'xzkcvhkz', '2017-06-10 20:52:11'),
(10, 3, 1, 'vccbcxvb', '2017-06-10 20:59:25'),
(11, 25, 13, 'CVDVS', '2017-06-11 08:39:49'),
(13, 3, 13, 'shkjcdsh', '2017-06-11 08:41:59'),
(14, 3, 2, 'kjashka', '2017-06-11 08:43:18'),
(15, 2, 2, 'jahk', '2017-06-11 08:43:39'),
(17, 5, 1, 'oidfugioudsi', '2017-06-11 22:21:58'),
(18, 5, 2, 'kjchvuds', '2017-06-11 22:23:11'),
(19, 7, 2, 'lfjgkldflsg kjdhgkjhk kjfdshgkjjf', '2017-06-12 02:03:51'),
(20, 8, 2, 'fdhgkfjds', '2017-06-12 02:04:49'),
(21, 8, 2, 'kjkghtrkjh jrhtgkjtrk', '2017-06-12 02:05:34'),
(22, 8, 2, 'ksjfdgkjhs', '2017-06-12 02:07:17'),
(23, 2, 2, 'kcxzhkjbhv zxciuvhui kjzxchiuv', '2017-06-12 02:08:07'),
(24, 10, 1, 'kjdsahfkj kjhdfs dgafa jdahsfj ', '2017-06-12 02:08:59'),
(25, 10, 1, 'ksdhgkjf fdhgui kjfdh', '2017-06-12 02:09:07'),
(26, 9, 1, 'kdfhgkj jfdhg fgds', '2017-06-12 02:09:13'),
(27, 10, 1, 'kjdhvkjsdh', '2017-06-12 02:24:22'),
(28, 10, 1, 'dskjhfdkj', '2017-06-12 02:29:12'),
(29, 0, 2, 'dskjhvfkjds', '2017-06-12 03:37:25'),
(30, 0, 2, 'dskjhfkjdah', '2017-06-12 03:47:28'),
(31, 10, 6, 'hhhhhhhhhhhhhhhhhhhhhhhhh', '2017-06-12 09:58:04'),
(32, 10, 6, 'aaaaaaaaaaaaaaaaaaaaaaaaaa', '2017-06-12 09:58:17'),
(33, 7, 6, 'luliuououoiuo', '2017-06-12 09:59:34'),
(34, 12, 8, 'hhh', '2019-06-12 08:00:01'),
(35, 12, 8, 'hhh', '2019-06-12 08:00:48'),
(36, 13, 9, 'Test', '2019-06-26 06:51:12'),
(37, 14, 18, 'jknmklnn', '2019-06-26 15:06:58'),
(38, 14, 18, 'adsa', '2019-06-26 15:14:48'),
(39, 14, 18, 'nnkn', '2019-06-26 15:15:32'),
(40, 14, 1, 'homoooo', '2019-06-26 15:16:04'),
(41, 15, 18, 'tesy', '2019-06-27 07:47:57'),
(42, 15, 18, 'fff', '2019-06-27 07:56:45'),
(43, 15, 18, 'ggg', '2019-06-27 08:13:37');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `notification`
--

CREATE TABLE `notification` (
  `noti_id` int(10) NOT NULL,
  `pos_id` int(10) NOT NULL,
  `post_usr` int(10) NOT NULL,
  `comm_user` int(10) NOT NULL,
  `comment` text NOT NULL,
  `status` tinyint(1) NOT NULL,
  `time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Gegevens worden geëxporteerd voor tabel `notification`
--

INSERT INTO `notification` (`noti_id`, `pos_id`, `post_usr`, `comm_user`, `comment`, `status`, `time`) VALUES
(3, 10, 2, 1, 'kjdsahfkj kjhdfs dgafa jdahsfj ', 0, '2017-06-12 02:18:29'),
(4, 10, 2, 1, 'ksdhgkjf fdhgui kjfdh', 0, '2017-06-12 02:18:29'),
(5, 9, 2, 1, 'kdfhgkj jfdhg fgds', 0, '2017-06-12 02:18:29'),
(7, 10, 2, 1, 'dskjhfdkj', 0, '2017-06-12 02:29:12'),
(8, 0, 0, 2, 'dskjhvfkjds', 0, '2017-06-12 03:37:25'),
(9, 10, 2, 6, 'hhhhhhhhhhhhhhhhhhhhhhhhh', 0, '2017-06-12 09:58:04'),
(10, 10, 2, 6, 'aaaaaaaaaaaaaaaaaaaaaaaaaa', 0, '2017-06-12 09:58:17'),
(11, 7, 1, 6, 'luliuououoiuo', 0, '2017-06-12 09:59:35'),
(13, 14, 1, 18, 'adsa', 0, '2019-06-26 15:14:48'),
(14, 14, 1, 18, 'nnkn', 0, '2019-06-26 15:15:32'),
(17, 15, 18, 18, 'fff', 0, '2019-06-27 07:56:45');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `posts`
--

CREATE TABLE `posts` (
  `post_id` int(10) NOT NULL,
  `usr_id_p` int(10) NOT NULL,
  `status_title` varchar(200) NOT NULL,
  `status` varchar(200) NOT NULL,
  `status_image` varchar(200) NOT NULL,
  `status_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Gegevens worden geëxporteerd voor tabel `posts`
--

INSERT INTO `posts` (`post_id`, `usr_id_p`, `status_title`, `status`, `status_image`, `status_time`) VALUES
(2, 1, 'KJDSHKJAFHK', 'AKSUYDUFIU', '', '2017-06-10 20:45:46'),
(3, 1, 'ZXBC', 'DKLSYFIUDSYA', '', '2017-06-10 20:46:03'),
(5, 1, 'kfgkl', 'oifdiogjfsio', '', '2017-06-11 22:21:42'),
(6, 1, 'mknfvkjdf', 'dflijoisfjougo', '', '2017-06-12 00:37:54'),
(7, 1, 'kjdshfguhisad', 'ksadhiufyiusdyaiu', '', '2017-06-12 00:38:04'),
(8, 1, 'lsdhgio', 'sahdgiyosiad', '', '2017-06-12 00:38:17'),
(9, 2, 'kljfgjfdl', 'hdfgsihidfshi', '', '2017-06-12 02:03:09'),
(10, 2, 'kjdhskjfg', 'fdjsiogjodisjgpo', '', '2017-06-12 02:03:23'),
(11, 6, 'jgjgjhg', 'hfgvhfgjgjgj', '', '2017-06-12 09:58:49'),
(12, 8, 'test', 'test', '', '2019-05-29 06:49:36'),
(13, 9, 'Test', 'Test', '', '2019-06-26 06:50:42'),
(14, 1, 'tttttt', 'aaaaaaaa', '', '2019-06-26 15:03:42'),
(15, 18, 'test', 'test', '', '2019-06-27 07:47:48');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `project`
--

CREATE TABLE `project` (
  `p_id` int(11) NOT NULL,
  `Project_name` varchar(100) NOT NULL,
  `Proejct_lang` varchar(100) NOT NULL,
  `user` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Gegevens worden geëxporteerd voor tabel `project`
--

INSERT INTO `project` (`p_id`, `Project_name`, `Proejct_lang`, `user`) VALUES
(1, 'Social network', 'PHP', 'gurtej');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `registration`
--

CREATE TABLE `registration` (
  `usr_id` int(10) NOT NULL,
  `name` varchar(20) NOT NULL,
  `email` varchar(100) NOT NULL,
  `image` varchar(250) NOT NULL,
  `password` varchar(250) NOT NULL,
  `project` varchar(100) NOT NULL,
  `experience` varchar(100) NOT NULL,
  `skill` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Gegevens worden geëxporteerd voor tabel `registration`
--

INSERT INTO `registration` (`usr_id`, `name`, `email`, `image`, `password`, `project`, `experience`, `skill`) VALUES
(1, 'rahul', 'rahul@gmail.com', 'New Doc 2017-02-26_2.jpg', '$2y$10$cWfxoz7jcPlyywqWyhgYL.UHXe0hoFhJbowEZyF9cwVv44hlrbrhG', 'Core Php Project', '1', 'I am experineced Wlordpress develpoer'),
(2, 'shafik', 'shafik@gmail.com', '1888448_898409750258226_6887486239911226423_n.jpg', '123456', 'Social Netwrok, E commerce, Blogs- News portal', '4', 'I am a PHP- Mysqli - wordpress- drupal developer'),
(3, 'bipin', 'bipin@gmail.com', 'rsz_new_doc_2017-02-26_2.jpg', '123456', 'Ecommerce -Shonow.com,Shopingg.com\r\nSocialnetwork- Meetme.com', '4', 'Java PHP Drupal Majento Wordpress'),
(4, 'Gurtej', 'grutejsinghanrwal@gmail.com', 'blog-widget-03.png', '123', 'Social Network', '1', 'PHP JAVA'),
(5, 'shubham sh', 'shubham@gmail.com', 'blog-widget-02.png', '123', '', '', ''),
(6, 'tasneem', 'tasneem@gmail.com', 'Hydrangeas - Copy.jpg', '12345', 'LAW  MANAGEMNET SYSTEM, Online Shopping, dfldjfldjfld\r\n', '5', 'PHP, MySQL, HTML, CSS, JAVASCRIPT................'),
(18, 'Simon Schiks', 'simonschiks@hotmail.nl', 'Ik.png', '$2y$10$cWfxoz7jcPlyywqWyhgYL.UHXe0hoFhJbowEZyF9cwVv44hlrbrhG', 'Geen details ', '2', 'HTML, CSS');

--
-- Indexen voor geëxporteerde tabellen
--

--
-- Indexen voor tabel `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`comment_id`);

--
-- Indexen voor tabel `notification`
--
ALTER TABLE `notification`
  ADD PRIMARY KEY (`noti_id`);

--
-- Indexen voor tabel `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`post_id`);

--
-- Indexen voor tabel `project`
--
ALTER TABLE `project`
  ADD PRIMARY KEY (`p_id`);

--
-- Indexen voor tabel `registration`
--
ALTER TABLE `registration`
  ADD PRIMARY KEY (`usr_id`);

--
-- AUTO_INCREMENT voor geëxporteerde tabellen
--

--
-- AUTO_INCREMENT voor een tabel `comments`
--
ALTER TABLE `comments`
  MODIFY `comment_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT voor een tabel `notification`
--
ALTER TABLE `notification`
  MODIFY `noti_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT voor een tabel `posts`
--
ALTER TABLE `posts`
  MODIFY `post_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT voor een tabel `project`
--
ALTER TABLE `project`
  MODIFY `p_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT voor een tabel `registration`
--
ALTER TABLE `registration`
  MODIFY `usr_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
