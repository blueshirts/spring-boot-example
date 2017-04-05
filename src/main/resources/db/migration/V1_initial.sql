--
-- Example database structure and data.
--

--
-- Table structure for table `accounts`
--

DROP TABLE IF EXISTS `accounts`;
CREATE TABLE `accounts` (
  `account_id` varchar(36) NOT NULL,
  `name` varchar(50) NOT NULL,
  `description` text,
  `account_type` varchar(30) NOT NULL,
  `username` varchar(20) DEFAULT NULL,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`account_id`),
  UNIQUE KEY `name` (`name`,`username`),
  KEY `username` (`username`),
  CONSTRAINT `accounts_ibfk_1` FOREIGN KEY (`username`) REFERENCES `users` (`username`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `accounts` WRITE;
INSERT INTO `accounts` VALUES
    ('0070c161-645b-4563-b30a-7ca90e1336c7','John\'s Account','', 'checking','john','2012-01-29 20:00:00','2012-01-29 20:00:00'),
    ('7425dc3c-b77b-4cc4-b86c-1fe02d5bcfde','John\'s Account','', 'checking','john','2012-01-29 20:00:00','2012-01-29 20:00:00');
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `user_id` varchar(36) NOT NULL,
  `username` varchar(20) NOT NULL,
  `first_name` varchar(20) NOT NULL,
  `last_name` varchar(20) NOT NULL,
  `mobile` varchar(20) DEFAULT NULL,
  `email` varchar(30) NOT NULL,
  `active` int(11) NOT NULL DEFAULT '0',
  `password` varchar(64) NOT NULL,
  `last_login` datetime DEFAULT NULL,
  PRIMARY KEY (`user_id`),
  UNIQUE KEY `username` (`username`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
INSERT INTO `users` VALUES
    ('a9738eb2-807b-49d1-9ecd-ecb99f4a4a2f','john','John','Smith',NULL,'js@gmail.com',1,'example','2014-07-16 02:34:55'),
    ('4396bb05-728a-43a8-9605-99c42c14a3f1','mary','Mary','Smith',NULL,'ms@gmail.com',1,'example','2012-02-13 04:44:24');
UNLOCK TABLES;
