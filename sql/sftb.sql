SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";




CREATE TABLE `transaction` (
  `sno` int(3) NOT NULL,
  `sender` text NOT NULL,
  `receiver` text NOT NULL,
  `balance` int(8) NOT NULL,
  `datetime` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;



CREATE TABLE `users` (
  `id` int(3) NOT NULL,
  `name` text NOT NULL,
  `email` varchar(30) NOT NULL,
  `balance` int(8) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;



INSERT INTO `users` (`id`, `name`, `email`, `balance`) VALUES
(1, 'Anushka', 'anushka@gmail.com', 70000),
(2, 'Kartik', 'kartik@gmail.com', 70000),
(3, 'Shreya', 'shreya@gmail.com', 10000),
(4, 'Sergio', 'marquina@gmail.com', 80000),
(5, 'Kim', 'SeokJin@gmail.com', 100000),
(6, 'Andres', 'fonollosa@gmail.com', 90000),
(7, 'Sherlock', 'sherlock@gmail.com', 80000),
(8, 'Loki', 'laufeyson@gmail.com', 80000),
(9, 'Damon', 'damon@gmail.com', 80000),
(10, 'Robert', 'robert@gmail.com', 80000);


ALTER TABLE `transaction`
  ADD PRIMARY KEY (`sno`);


ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);


ALTER TABLE `transaction`
  MODIFY `sno` int(3) NOT NULL AUTO_INCREMENT;


ALTER TABLE `users`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT;
COMMIT;


