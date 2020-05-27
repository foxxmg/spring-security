DROP DATABASE  IF EXISTS `spring_security_bcrypt`;

CREATE DATABASE  IF NOT EXISTS `spring_security_bcrypt`;
USE `spring_security_bcrypt`;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `username` varchar(50) NOT NULL,
  `password` char(68) NOT NULL,
  `enabled` tinyint(1) NOT NULL,
  PRIMARY KEY (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--
-- NOTE: The passwords are encrypted using BCrypt
--
--
-- Default passwords here are: 1234
--

INSERT INTO `users` 
VALUES 
('farai','{bcrypt}$2a$04$AkkqfI2D3rBMv0zpbuFB/e5ukd299mofI.DEKgR/iJnD5Ofy7v8Ti',1),
('john','{bcrypt}$2a$04$AkkqfI2D3rBMv0zpbuFB/e5ukd299mofI.DEKgR/iJnD5Ofy7v8Ti',1),
('lisa','{bcrypt}$2a$04$AkkqfI2D3rBMv0zpbuFB/e5ukd299mofI.DEKgR/iJnD5Ofy7v8Ti',1);


--
-- Table structure for table `authorities`
--

DROP TABLE IF EXISTS `authorities`;
CREATE TABLE `authorities` (
  `username` varchar(50) NOT NULL,
  `authority` varchar(50) NOT NULL,
  UNIQUE KEY `authorities_idx_1` (`username`,`authority`),
  CONSTRAINT `authorities_ibfk_1` FOREIGN KEY (`username`) REFERENCES `users` (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `authorities`
--

INSERT INTO `authorities` 
VALUES 
('john','ROLE_EMPLOYEE'),
('farai','ROLE_EMPLOYEE'),
('farai','ROLE_MANAGER'),
('lisa','ROLE_EMPLOYEE'),
('lisa','ROLE_ADMIN');


