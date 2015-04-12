SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";
--
-- Database: `photerras_DB`
--
DROP DATABASE IF EXISTS photerras_DB;
CREATE DATABASE photerras_DB;
USE photerras_DB;

CREATE TABLE IF NOT EXISTS `Users` (
  `id` MEDIUMINT(8) unsigned NOT NULL AUTO_INCREMENT,
  `username` VARCHAR(50) NOT NULL,
  `password` VARCHAR(250) NOT NULL,
  `email` VARCHAR(100) NOT NULL,
  `firstname` VARCHAR(50) NOT NULL,
  `lastname` VARCHAR(50) NOT NULL,
  `salt` VARCHAR(100) NOT NULL,
  `createdOn` TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY `uid` (`id`),
  UNIQUE KEY `username` (`username`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=10000 ;

CREATE TABLE IF NOT EXISTS `Photos` (
  `id` MEDIUMINT(8) unsigned NOT NULL AUTO_INCREMENT,
  `uid` MEDIUMINT(8) unsigned NOT NULL,
  `lat` float NOT NULL,
  `lng` float NOT NULL,
  `title` VARCHAR(100) NOT NULL,
  `isPremium` BIT DEFAULT 0,
  `filename` VARCHAR(250) NOT NULL,
  `createdOn` TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY `photoid` (`id`),
  FOREIGN KEY (`uid`) REFERENCES Users(`id`),
  CHECK (`lat` >= -90.0 and `lat` <= 90.0),
  CHECK (`lng` >= -180.0 and `lng` <= 180.0)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=10000 ;

CREATE TABLE IF NOT EXISTS `PaymentTypes` (
  `id` INT unsigned NOT NULL AUTO_INCREMENT,
  `desc` varchar(150) NOT NULL,
  `code` varchar (3) NOT NULL,
  PRIMARY KEY `typeid` (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=0 ;

CREATE TABLE IF NOT EXISTS `Payments` (
  `id` MEDIUMINT(8) unsigned NOT NULL AUTO_INCREMENT,
  `uid` MEDIUMINT(8) unsigned NOT NULL,
  `typeid` INT unsigned NOT NULL,
  `createdOn` TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY `id` (`id`),
  FOREIGN KEY (`uid`) REFERENCES Users(`id`),
  FOREIGN KEY (`typeid`) REFERENCES PaymentTypes(`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=10000 ;


INSERT INTO `Users` (`username`, `password`, `email`, `firstname`, `lastname`, `salt`) VALUES
('Rphello101', 'FSE', 'aowdija', '', '', ''),
('testuser', '123456', 'ggggg', '', '', ''),
('andrew', '123456', 'fffff', '', '', ''),
('test111', 'dddd', 'aherzberg5@gmail.com', 'Andrew', 'Herzberg', ''),
('rapratt', '123456', 'asdf@asdf', 'Reese', 'Pratt', ''),
('rapratt101', '123456', 'asdf@asdff', 'Reese3', 'Pratt3', ''),
('wtneal', 'S3cur3', 'wtneal@asu.edu', 'Weston', 'Neal', ''),
('Kurvani', 'fse301', 'kkeyvan1@asu.edu', 'Kurosh', 'Keyvani', '');

INSERT INTO `PaymentTypes` (`desc`, `code`) VALUES
('Premium Photo', 'pp'),
('Increase Photo Limit', 'il');
