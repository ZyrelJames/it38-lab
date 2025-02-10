-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 10, 2025 at 08:37 AM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `enterprise_system`
--

-- --------------------------------------------------------

--
-- Table structure for table `login_logs`
--

CREATE TABLE `login_logs` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `login_time` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `login_logs`
--

INSERT INTO `login_logs` (`id`, `user_id`, `login_time`) VALUES
(0, 0, '2025-02-03 15:40:54'),
(0, 0, '2025-02-10 15:04:24'),
(0, 0, '2025-02-10 15:21:54');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  `user_type` enum('admin','user') NOT NULL DEFAULT 'user',
  `last_login` datetime DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `user_type`, `last_login`, `created_at`) VALUES
(0, 'admin', '$2y$10$VCczYfCflNgVz/NyXezGQebuqu7p6QU7t.scLsPoQxzLVmsFsglui', 'admin', '2025-02-10 15:21:54', '2025-02-03 07:40:42'),
(0, 'user', '$2y$10$i69O2QF.9RhWljRvXjzHDuZuya18IBdfdla2L9UjXcPCh8E.GzNBC', 'user', '2025-02-10 15:21:54', '2025-02-03 07:41:22'),
(0, 'zyreljames', '$2y$10$z91IsW9mWUvVUJUZ7z4kk.4fC7iC9l.T/WbsNc4Sk.lGzP/QvaR3O', 'user', NULL, '2025-02-10 07:29:52'),
(0, 'Tagarda', '$2y$10$RhqvKszM2JWyF.GWJhgAROe1mNCPfBLi5Xwx6pKY2dVKh9AfUZBjW', 'admin', NULL, '2025-02-10 07:30:15'),
(0, 'jameszyrel', '$2y$10$PUfLfV4tfd/TcAQBJRMUH.46pQs4HqUxaO4pyoOxy6zdmmSFFzKh6', 'user', NULL, '2025-02-10 07:30:55');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
