SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


CREATE TABLE `boosted_boss` (
  `looktype` int(11) NOT NULL DEFAULT 0,
  `date` varchar(250) NOT NULL DEFAULT '',
  `boostname` text DEFAULT NULL,
  `raceid` varchar(250) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


ALTER TABLE `boosted_boss`
  ADD PRIMARY KEY (`date`);
COMMIT;