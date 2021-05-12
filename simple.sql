-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 12, 2021 at 02:31 PM
-- Server version: 10.4.18-MariaDB
-- PHP Version: 8.0.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `simple_table`
--

-- --------------------------------------------------------

--
-- Table structure for table `archive`
--

CREATE TABLE `archive` (
  `id` int(11) NOT NULL,
  `Title` varchar(256) NOT NULL,
  `Note` varchar(256) NOT NULL,
  `Old_title` varchar(256) NOT NULL,
  `Old_note` varchar(256) NOT NULL,
  `Created` timestamp NULL DEFAULT NULL,
  `Modified` timestamp NOT NULL DEFAULT current_timestamp(),
  `Deleted` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `archive`
--

INSERT INTO `archive` (`id`, `Title`, `Note`, `Old_title`, `Old_note`, `Created`, `Modified`, `Deleted`) VALUES
(1, 'fdddfg\'\'s', 'fddddfgf\'\'\'\'oiuouioui', 'fdddfg\'\'', 'fddddfgf\'\'\'\'oiuouioui', '2021-05-11 12:00:37', '2021-05-11 15:07:26', NULL),
(1, 'fdddfg\'\'sd', 'fddddfgf\'\'\'\'oiuouioui', 'fdddfg\'\'s', 'fddddfgf\'\'\'\'oiuouioui', '2021-05-11 15:07:26', '2021-05-11 15:07:34', NULL),
(1, '', '', '', '', '2021-05-11 15:07:34', '2021-05-11 15:12:49', 1),
(2, 'asdasasdda', 'dasdasdasdasdasdas', 'asdas', 'dasdasdas', '2021-05-11 15:15:05', '2021-05-11 15:15:15', NULL),
(2, '', '', 'asdasasdda', 'dasdasdasdasdasdas', '2021-05-11 15:15:15', '2021-05-11 15:15:37', 1),
(4, 'h', 'hhh', '', '', '2021-05-11 15:18:47', '2021-05-11 15:33:37', NULL),
(5, 'dasdmmmm', 'sdasdasdammm', 'dasd', 'sdasdasda', '2021-05-11 15:24:15', '2021-05-11 16:11:43', NULL),
(6, 'm,n,mn,mnvbc,mn', 'mnvbbvcbcvbcmnv', 'm,n,mn,mn,mn', 'mnvmnv', '2021-05-11 16:13:10', '2021-05-11 18:19:15', NULL),
(3, '', '', '', '', '2021-05-11 15:18:43', '2021-05-11 18:47:31', 1),
(4, '', '', 'h', 'hhh', '2021-05-11 15:33:37', '2021-05-11 18:47:34', 1),
(5, '', '', 'dasdmmmm', 'sdasdasdammm', '2021-05-11 16:11:43', '2021-05-11 18:47:41', 1),
(6, '', '', 'm,n,mn,mnvbc,mn', 'mnvbbvcbcvbcmnv', '2021-05-11 18:19:15', '2021-05-11 18:47:42', 1),
(7, '', '', 'ccccccccc', 'cccc', '2021-05-11 18:47:48', '2021-05-11 18:48:42', 1),
(8, '', '', 'rrrrrr', 'rrrrrrrrrr', '2021-05-11 18:48:51', '2021-05-11 18:48:54', 1),
(9, 'a', 'b', 'ffffffff', 'fffffffff', '2021-05-11 18:49:01', '2021-05-11 22:31:27', NULL),
(9, '', '', 'a', 'b', '2021-05-11 22:31:27', '2021-05-11 22:32:00', 1),
(10, '', '', 'f', 'd', '2021-05-11 22:31:33', '2021-05-11 22:32:01', 1),
(11, '', '', 'yr', 'rty', '2021-05-11 22:31:43', '2021-05-11 22:32:02', 1),
(12, 'f', 's', 'f', '', '2021-05-11 22:32:06', '2021-05-11 22:36:10', NULL),
(17, '', 'cs', '', 'c', '2021-05-11 22:35:49', '2021-05-11 22:36:16', NULL),
(0, 'sad', 'das', '', '', '2021-05-12 12:07:21', '2021-05-12 12:07:21', NULL),
(0, 'da', 'da', '', '', '2021-05-12 12:08:09', '2021-05-12 12:08:09', NULL),
(0, 'da', 'da', '', '', '2021-05-12 12:09:16', '2021-05-12 12:09:16', NULL),
(23, 'das', 'das', 'da', 'da', '2021-05-12 12:09:16', '2021-05-12 12:09:34', NULL),
(24, 'aaa', 'aaaa', '', '', '2021-05-12 12:10:25', '2021-05-12 12:10:25', NULL),
(12, '', '', 'f', 's', '2021-05-11 22:36:10', '2021-05-12 12:10:40', 1),
(13, '', '', 'a', '', '2021-05-11 22:32:13', '2021-05-12 12:10:40', 1),
(14, '', '', 'b', '', '2021-05-11 22:35:21', '2021-05-12 12:10:40', 1),
(15, '', '', 'd', '', '2021-05-11 22:35:30', '2021-05-12 12:10:40', 1),
(16, '', '', '', 'a', '2021-05-11 22:35:38', '2021-05-12 12:10:40', 1),
(17, '', '', '', 'cs', '2021-05-11 22:36:16', '2021-05-12 12:10:40', 1),
(18, '', '', '', '', '2021-05-11 22:35:51', '2021-05-12 12:10:40', 1),
(19, '', '', '', 'b', '2021-05-11 22:35:55', '2021-05-12 12:10:40', 1),
(20, '', '', 'ss', 'ssss', '2021-05-12 12:00:59', '2021-05-12 12:10:40', 1),
(21, '', '', 'sad', 'das', '2021-05-12 12:07:21', '2021-05-12 12:10:40', 1),
(22, '', '', 'da', 'da', '2021-05-12 12:08:09', '2021-05-12 12:10:40', 1),
(23, '', '', 'das', 'das', '2021-05-12 12:09:34', '2021-05-12 12:10:40', 1),
(24, '', '', 'aaa', 'aaaa', '2021-05-12 12:10:25', '2021-05-12 12:10:40', 1),
(25, '', '', '', '', '2021-05-12 12:15:27', '2021-05-12 12:15:27', NULL),
(25, '', '', '', '', '2021-05-12 12:15:27', '2021-05-12 12:16:22', 1),
(26, 'a', 'aaa', '', '', '2021-05-12 12:20:00', '2021-05-12 12:20:00', NULL),
(27, 'a', 'aaa', '', '', '2021-05-12 12:20:12', '2021-05-12 12:20:12', NULL),
(28, 'a', 'aaa', '', '', '2021-05-12 12:20:23', '2021-05-12 12:20:23', NULL),
(26, 'a', 'ssssssssssssssssssssssssssssssssssssssssssssssssssssssssssss\r\nssssssssssssssssssssssssssssssss\r\nsssssssssssssssssssssssssssssssssssssssss\r\nsssssssssssssssssssssssssssssssssss', 'a', 'aaa', '2021-05-12 12:20:00', '2021-05-12 12:21:36', NULL),
(26, '', '', 'a', 'ssssssssssssssssssssssssssssssssssssssssssssssssssssssssssss\r\nssssssssssssssssssssssssssssssss\r\nsssssssssssssssssssssssssssssssssssssssss\r\nsssssssssssssssssssssssssssssssssss', '2021-05-12 12:21:36', '2021-05-12 12:21:46', 1),
(27, '', '', 'a', 'aaa', '2021-05-12 12:20:12', '2021-05-12 12:21:48', 1),
(28, '', '', 'a', 'aaa', '2021-05-12 12:20:23', '2021-05-12 12:21:50', 1);

-- --------------------------------------------------------

--
-- Table structure for table `row`
--

CREATE TABLE `row` (
  `id` int(11) NOT NULL,
  `Title` varchar(200) NOT NULL,
  `Note` varchar(200) NOT NULL,
  `Created` timestamp NOT NULL DEFAULT current_timestamp(),
  `Modified` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Triggers `row`
--
DELIMITER $$
CREATE TRIGGER `row_delete` AFTER DELETE ON `row` FOR EACH ROW BEGIN

INSERT archive (id,old_title, old_note, created, deleted)
VALUES (OLD.id,OLD.title,OLD.note,OLD.modified, True);


END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `row_update` AFTER UPDATE ON `row` FOR EACH ROW BEGIN
IF NEW.title != OLD.title OR NEW.note != OLD.note THEN
INSERT archive (id,title, note, old_title, old_note, created)
VALUES (OLD.id,NEW.title,NEW.note,OLD.title,OLD.note,OLD.modified);

END IF;
END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `row_update_after_insert` AFTER INSERT ON `row` FOR EACH ROW BEGIN

INSERT archive (id,title, note, created)
VALUES (NEW.id,NEW.title,NEW.note,NEW.created);

END
$$
DELIMITER ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `row`
--
ALTER TABLE `row`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `row`
--
ALTER TABLE `row`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
