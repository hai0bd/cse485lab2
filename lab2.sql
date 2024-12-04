-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               8.0.30 - MySQL Community Server - GPL
-- Server OS:                    Win64
-- HeidiSQL Version:             12.1.0.6537
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Dumping database structure for articles
CREATE DATABASE IF NOT EXISTS `articles` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `articles`;

-- Dumping structure for table articles.categories
CREATE TABLE IF NOT EXISTS `categories` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Dumping data for table articles.categories: ~50 rows (approximately)
INSERT INTO `categories` (`id`, `name`) VALUES
	(1, 'cgillespey0'),
	(2, 'kschrinel1'),
	(3, 'ngillan2'),
	(4, 'nmedlicott3'),
	(5, 'cjopke4'),
	(6, 'fnani5'),
	(7, 'rgoane6'),
	(8, 'amangan7'),
	(9, 'bdudenie8'),
	(10, 'wsmallthwaite9'),
	(11, 'dheinsena'),
	(12, 'efelderb'),
	(13, 'bbrickhamc'),
	(14, 'jmccritchied'),
	(15, 'swilgare'),
	(16, 'jguwerf'),
	(17, 'gmarchandg'),
	(18, 'hdymondh'),
	(19, 'hbownassi'),
	(20, 'kdinnegesj'),
	(21, 'mspittallk'),
	(22, 'ccargilll'),
	(23, 'tfennam'),
	(24, 'acanceliern'),
	(25, 'zgunthorpo'),
	(26, 'ejovicevicp'),
	(27, 'ehadwenq'),
	(28, 'oardyr'),
	(29, 'scartmans'),
	(30, 'bavramovict'),
	(31, 'gjeannenetu'),
	(32, 'qspikingsv'),
	(33, 'rcasariw'),
	(34, 'jbrashawx'),
	(35, 'wfundelly'),
	(36, 'bramshayz'),
	(37, 'mleadbeater10'),
	(38, 'biveson11'),
	(39, 'ltailour12'),
	(40, 'bbarbara13'),
	(41, 'anormandale14'),
	(42, 'lskeech15'),
	(43, 'zphilipet16'),
	(44, 'mpettingall17'),
	(45, 'fvideler18'),
	(46, 'crapier19'),
	(47, 'abucke1a'),
	(48, 'rsallowaye1b'),
	(49, 'tbleckly1c'),
	(50, 'ewheelwright1d');

-- Dumping structure for table articles.news
CREATE TABLE IF NOT EXISTS `news` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `content` text,
  `image` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `category_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `category_id` (`category_id`),
  CONSTRAINT `news_ibfk_1` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Dumping data for table articles.news: ~10 rows (approximately)
INSERT INTO `news` (`id`, `title`, `content`, `image`, `created_at`, `category_id`) VALUES
	(1, 'lobortis est phasellus', 'proin risus praesent lectus vestibulum quam sapien', 'http://dummyimage.com/173x100.png/cc0000/ffffff', '2024-11-27 00:00:00', 1),
	(2, 'arcu libero rutrum ac', 'turpis nec euismod scelerisque quam turpis adipiscing lorem vitae', 'http://dummyimage.com/207x100.png/ff4444/ffffff', '2024-09-01 00:00:00', 2),
	(3, 'ut dolor morbi vel', 'metus vitae ipsum aliquam non mauris morbi', 'http://dummyimage.com/223x100.png/ff4444/ffffff', '2024-04-23 00:00:00', 3),
	(4, 'ante ipsum primis in', 'pede justo eu massa donec dapibus duis at velit', 'http://dummyimage.com/190x100.png/cc0000/ffffff', '2024-07-28 00:00:00', 4),
	(5, 'metus sapien ut nunc vestibulum', 'nisi nam ultrices libero non mattis pulvinar nulla pede ullamcorper', 'http://dummyimage.com/140x100.png/dddddd/000000', '2024-01-14 00:00:00', 5),
	(6, 'vestibulum eget vulputate ut ultrices', 'tellus in sagittis dui vel nisl duis ac nibh fusce', 'http://dummyimage.com/134x100.png/5fa2dd/ffffff', '2024-01-05 00:00:00', 6),
	(7, 'fusce congue diam id', 'vestibulum sagittis sapien cum sociis natoque', 'http://dummyimage.com/250x100.png/cc0000/ffffff', '2024-02-03 00:00:00', 7),
	(8, 'libero nullam sit amet turpis', 'faucibus orci luctus et ultrices posuere cubilia curae nulla dapibus', 'http://dummyimage.com/146x100.png/dddddd/000000', '2024-08-10 00:00:00', 8),
	(9, 'ut blandit', 'lorem integer tincidunt ante vel ipsum praesent blandit', 'http://dummyimage.com/249x100.png/5fa2dd/ffffff', '2023-12-27 00:00:00', 9),
	(10, 'volutpat sapien', 'mauris ullamcorper purus sit amet nulla', 'http://dummyimage.com/230x100.png/ff4444/ffffff', '2024-09-07 00:00:00', 10);

-- Dumping structure for table articles.users
CREATE TABLE IF NOT EXISTS `users` (
  `id` int NOT NULL AUTO_INCREMENT,
  `username` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `role` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Dumping data for table articles.users: ~50 rows (approximately)
INSERT INTO `users` (`id`, `username`, `password`, `role`) VALUES
	(1, 'dsackes0', 'hH9{"oMY"P+ZF', 0),
	(2, 'eredholes1', 'fQ5,7t6X', 0),
	(3, 'rleader2', 'hX3_g"=${eEu', 0),
	(4, 'mdavana3', 'bG8<ehSV$2', 1),
	(5, 'bcharlon4', 'pY1>txL*o_"G~', 0),
	(6, 'ceason5', 'wS4+*,.b&XevQO@', 0),
	(7, 'jbolderstone6', 'cQ2?q|2W', 0),
	(8, 'adacosta7', 'zZ8?!5*I6N~?', 1),
	(9, 'abottrill8', 'fT9+P$i}4B5=Dz', 0),
	(10, 'fhowell9', 'lF7=H4Lh7ku+', 1),
	(11, 'zsuermeiera', 'nQ2yaA_nAe', 0),
	(12, 'acoverlyb', 'xN5#pa_21&|oo=', 0),
	(13, 'cwellingtonc', 'tP5$7pr8#S#k*', 0),
	(14, 'ljeaneaud', 'iK3{aX52,K', 0),
	(15, 'cklinere', 'iD9|I#%RvX1', 1),
	(16, 'toldalef', 'bW5>fwh3d9', 1),
	(17, 'djoddinsg', 'xJ2)Hwhq', 0),
	(18, 'lsymmonsh', 'eG0`F"((', 1),
	(19, 'vtrevallioni', 'lD9{CE.kcN7j', 1),
	(20, 'bkarpinskij', 'zE2!")?', 1),
	(21, 'dalthropek', 'jZ6{hS2hk1@x', 1),
	(22, 'bpertonl', 'cB8$t8E6', 1),
	(23, 'nreinam', 'wG5*gLm}W(.?', 0),
	(24, 'rgotfreyn', 'pE1?OdIaN~', 1),
	(25, 'rquesto', 'fR2=l7"Y0u9jz', 0),
	(26, 'cgullanp', 'uQ7%3)}9.#Y?', 1),
	(27, 'fharkesq', 'hP3!3VBB`6DqJoH', 1),
	(28, 'olabber', 'dT8?LuK#y_k9l=', 1),
	(29, 'flinskills', 'cI8CP,@"V=N', 0),
	(30, 'kscaret', 'rV7@0>xa1x`u+p', 1),
	(31, 'ncammacku', 'jH3//7WMk!P#HmG4', 0),
	(32, 'cwithnallv', 'xH6{Mf>$!q', 1),
	(33, 'tomanw', 'cC6=v>Tb5', 1),
	(34, 'sdiddamsx', 'bR6$wg#uue', 1),
	(35, 'rspinckey', 'yU6%*EF@/I/<3Y', 1),
	(36, 'dgalesz', 'zC8(*@n+33%', 0),
	(37, 'lratazzi10', 'xC7/E.!YB?xLa5', 0),
	(38, 'hdandrea11', 'kE7`h9XM9D_Z!', 0),
	(39, 'adeatta12', 'yK4{K4OV27c5~Zb', 1),
	(40, 'sbein13', 'cG7`7b0QrXB', 1),
	(41, 'jullyatt14', 'mW2,,CgHy)oPD=', 0),
	(42, 'awalster15', 'nV0$psAe(d', 1),
	(43, 'dglencross16', 'rT0=_1<8|cMYd', 1),
	(44, 'hgueste17', 'cE5&8F6DhZ10Q}', 0),
	(45, 'cingles18', 'nX6$<@5~*!/L5', 1),
	(46, 'plintin19', 'cT7$FIb$bf0IA"', 1),
	(47, 'nburkman1a', 'dG2|e/S8Hq', 1),
	(48, 'jfairs1b', 'oF2$5>ld9', 1),
	(49, 'lgile1c', 'mI1+wl>5q+,', 0),
	(50, 'nellaway1d', 'rP8N%TU3', 1);

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
