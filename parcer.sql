-- --------------------------------------------------------
-- Хост:                         127.0.0.1
-- Версия сервера:               5.5.50 - MySQL Community Server (GPL)
-- ОС Сервера:                   Win32
-- HeidiSQL Версия:              9.3.0.4984
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

-- Дамп структуры базы данных hotline
CREATE DATABASE IF NOT EXISTS `hotline` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `hotline`;


-- Дамп структуры для таблица hotline.hotline
CREATE TABLE IF NOT EXISTS `hotline` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(150) DEFAULT '0',
  `image` varchar(150) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;

-- Дамп данных таблицы hotline.hotline: ~0 rows (приблизительно)
/*!40000 ALTER TABLE `hotline` DISABLE KEYS */;
INSERT INTO `hotline` (`id`, `title`, `image`) VALUES
	(1, 'Toshiba Satellite C40-C-10K (PSCRLE-002002BT) Black', 'hotline.ua/img/tx/133/1330084722.jpg'),
	(2, 'Lenovo IdeaPad 110-15 IBR (80T70035RA)', 'hotline.ua/img/tx/983/983270322.jpg'),
	(3, 'HP 250 G5 (X0Q23ES)', 'hotline.ua/img/tx/106/1064892012.jpg'),
	(4, 'Acer Aspire ES1-531-P44F (NX.MZ8EU.074)', 'hotline.ua/img/tx/121/1219849792.jpg'),
	(5, 'ASUS EeeBook E502MA (E502MA-XX0104D) Blue', 'hotline.ua/img/tx/101/1015976842.jpg'),
	(6, 'Toshiba Satellite C55D-C-16G (PSCQEE-02R01EBT) White', 'hotline.ua/img/tx/133/1330096692.jpg'),
	(7, 'HP 250 G5 (W4N45EA)', 'hotline.ua/img/tx/130/1308575262.jpg'),
	(8, 'Lenovo IdeaPad 110-15 (80T700CRPB)', 'hotline.ua/img/tx/126/1269917672.jpg'),
	(9, 'Lenovo IdeaPad B50-10 (80QR007SRA)', 'hotline.ua/img/tx/131/1318183602.jpg'),
	(10, 'HP 250 G4 (T6Q97EA)', 'hotline.ua/img/tx/101/1015980562.jpg'),
	(11, 'Lenovo IdeaPad 110-15 IBR (80T700E0RA)', 'hotline.ua/img/tx/116/1165518722.jpg'),
	(12, 'HP 250 G5 (Y8C05ES)', 'hotline.ua/img/tx/114/1145291302.jpg'),
	(13, 'Lenovo IdeaPad 110-15 IBR (80T70034RA)', 'hotline.ua/img/tx/119/1198808172.jpg'),
	(14, 'Lenovo IdeaPad 110-15 (80T700DFRA)', 'hotline.ua/img/tx/132/1323101802.jpg'),
	(15, 'Lenovo IdeaPad B50-10 (80QR007RRA)', 'hotline.ua/img/tx/131/1318183592.jpg');
/*!40000 ALTER TABLE `hotline` ENABLE KEYS */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
