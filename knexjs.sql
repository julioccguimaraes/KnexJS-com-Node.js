SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;


DROP TABLE IF EXISTS `game`;
CREATE TABLE IF NOT EXISTS `game` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(128) NOT NULL,
  `price` float NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

INSERT INTO `game` (`id`, `name`, `price`) VALUES
(1, 'Duke Nuken 3D', 20.5),
(2, 'Quake', 25),
(3, 'Bomberman', 30.5),
(5, 'Sonic', 41);

DROP TABLE IF EXISTS `game_studio`;
CREATE TABLE IF NOT EXISTS `game_studio` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `game_id` int(11) DEFAULT NULL,
  `studio_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `game_id` (`game_id`),
  KEY `studio_id` (`studio_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

INSERT INTO `game_studio` (`id`, `game_id`, `studio_id`) VALUES
(1, 3, 3),
(2, 1, 2),
(3, 2, 1),
(4, 5, 4);

DROP TABLE IF EXISTS `studio`;
CREATE TABLE IF NOT EXISTS `studio` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(128) NOT NULL,
  `game_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `studio_ibfk_1` (`game_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

INSERT INTO `studio` (`id`, `name`, `game_id`) VALUES
(1, 'ID Software', 2),
(2, '3D Realms', 1),
(3, 'Hudson Soft', 3),
(4, 'Sega', 5);


ALTER TABLE `game_studio`
  ADD CONSTRAINT `game_studio_ibfk_1` FOREIGN KEY (`game_id`) REFERENCES `game` (`id`) ON DELETE SET NULL ON UPDATE SET NULL,
  ADD CONSTRAINT `game_studio_ibfk_2` FOREIGN KEY (`studio_id`) REFERENCES `studio` (`id`) ON DELETE SET NULL ON UPDATE SET NULL;

ALTER TABLE `studio`
  ADD CONSTRAINT `studio_ibfk_1` FOREIGN KEY (`game_id`) REFERENCES `game` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
