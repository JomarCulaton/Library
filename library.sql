-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 07, 2024 at 09:38 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `library`
--

-- --------------------------------------------------------

--
-- Table structure for table `authors`
--

CREATE TABLE `authors` (
  `authorid` int(11) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `authors`
--

INSERT INTO `authors` (`authorid`, `name`) VALUES
(1, 'J.Culaton');

-- --------------------------------------------------------

--
-- Table structure for table `books`
--

CREATE TABLE `books` (
  `bookid` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `authorid` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `books`
--

INSERT INTO `books` (`bookid`, `title`, `authorid`) VALUES
(1, 'THE BOARDNG', 1);

-- --------------------------------------------------------

--
-- Table structure for table `books_authors`
--

CREATE TABLE `books_authors` (
  `id` int(11) NOT NULL,
  `bookid` int(11) DEFAULT NULL,
  `authorid` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `jwt_tokens`
--

CREATE TABLE `jwt_tokens` (
  `id` int(11) NOT NULL,
  `token` text NOT NULL,
  `userid` int(11) DEFAULT NULL,
  `used` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `jwt_tokens`
--

INSERT INTO `jwt_tokens` (`id`, `token`, `userid`, `used`) VALUES
(1, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwOi8vbGlicmFyeS5vcmciLCJhdWQiOiJodHRwOi8vbGlicmFyeS5jb20iLCJpYXQiOjE3Mjk1NzQ5OTksImV4cCI6MTcyOTU3ODU5OSwidXNlcmlkIjoiMSJ9.eNrOiEZs8MkPGLnSDM7j1g7VwvwGs6m2eKKE7JBn70g', 1, 1),
(2, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwOi8vbGlicmFyeS5vcmciLCJhdWQiOiJodHRwOi8vbGlicmFyeS5jb20iLCJpYXQiOjE3Mjk1NzU0NTUsImV4cCI6MTcyOTU3OTA1NSwidXNlcmlkIjoxfQ.JnUilV32OfkkucyOxw9bJ67QfGr86ITuvKT5azZ5cHs', 1, 1),
(3, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwOi8vbGlicmFyeS5vcmciLCJhdWQiOiJodHRwOi8vbGlicmFyeS5jb20iLCJpYXQiOjE3Mjk1NzU1MDAsImV4cCI6MTcyOTU3OTEwMCwidXNlcmlkIjoxfQ.82bhnKvi5iPRD2riUlpmfr5TGeVmbPkaB5jlA3ZdzV0', 1, 0),
(4, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwOi8vbGlicmFyeS5vcmciLCJhdWQiOiJodHRwOi8vbGlicmFyeS5jb20iLCJpYXQiOjE3Mjk1NzU3NzcsImV4cCI6MTcyOTU3OTM3NywidXNlcmlkIjoiMyJ9.QnqDGb3vj3bf9_pSdQSLH8vJn_x_L10CUl4PRC7liTg', 3, 0),
(5, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwOi8vbGlicmFyeS5vcmciLCJhdWQiOiJodHRwOi8vbGlicmFyeS5jb20iLCJpYXQiOjE3Mjk1NzU3ODQsImV4cCI6MTcyOTU3OTM4NCwidXNlcmlkIjoiMyJ9.bDArpyK2qR7OCJiBhovWID08Jrd92N2brX4YHikebj8', 3, 0),
(6, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwOi8vbGlicmFyeS5vcmciLCJhdWQiOiJodHRwOi8vbGlicmFyeS5jb20iLCJpYXQiOjE3Mjk1NzU3ODYsImV4cCI6MTcyOTU3OTM4NiwidXNlcmlkIjoiMyJ9.DDywyOIPTBx2u9G8XvoETQBV3pvZB-D5fJsSzzkeWnA', 3, 0),
(7, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwOi8vbGlicmFyeS5vcmciLCJhdWQiOiJodHRwOi8vbGlicmFyeS5jb20iLCJpYXQiOjE3Mjk1NzU3ODksImV4cCI6MTcyOTU3OTM4OSwidXNlcmlkIjoiMyJ9.P5uSvTxAxA_R7BvnNP2mVXGyk3H8jgac2qAdOBlBBH4', 3, 0),
(8, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwOi8vbGlicmFyeS5vcmciLCJhdWQiOiJodHRwOi8vbGlicmFyeS5jb20iLCJpYXQiOjE3Mjk1NzU3OTAsImV4cCI6MTcyOTU3OTM5MCwidXNlcmlkIjoiMyJ9.HaSVJDv_-d5p0gLztqchmWMgKZa_nXEoBDbyWoL5HN0', 3, 0),
(9, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwOi8vbGlicmFyeS5vcmciLCJhdWQiOiJodHRwOi8vbGlicmFyeS5jb20iLCJpYXQiOjE3Mjk1NzU3OTAsImV4cCI6MTcyOTU3OTM5MCwidXNlcmlkIjoiMyJ9.HaSVJDv_-d5p0gLztqchmWMgKZa_nXEoBDbyWoL5HN0', 3, 0),
(10, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwOi8vbGlicmFyeS5vcmciLCJhdWQiOiJodHRwOi8vbGlicmFyeS5jb20iLCJpYXQiOjE3Mjk1NzU3OTAsImV4cCI6MTcyOTU3OTM5MCwidXNlcmlkIjoiMyJ9.HaSVJDv_-d5p0gLztqchmWMgKZa_nXEoBDbyWoL5HN0', 3, 0),
(11, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwOi8vbGlicmFyeS5vcmciLCJhdWQiOiJodHRwOi8vbGlicmFyeS5jb20iLCJpYXQiOjE3Mjk1NzU3OTAsImV4cCI6MTcyOTU3OTM5MCwidXNlcmlkIjoiMyJ9.HaSVJDv_-d5p0gLztqchmWMgKZa_nXEoBDbyWoL5HN0', 3, 0),
(12, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwOi8vbGlicmFyeS5vcmciLCJhdWQiOiJodHRwOi8vbGlicmFyeS5jb20iLCJpYXQiOjE3Mjk1NzU4MTQsImV4cCI6MTcyOTU3OTQxNCwidXNlcmlkIjoiMyJ9.n4F9tG3LWpEtW_pRKjWjYifpB4ayXMr0Dfcz3m3x2wA', 3, 0),
(13, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwOi8vbGlicmFyeS5vcmciLCJhdWQiOiJodHRwOi8vbGlicmFyeS5jb20iLCJpYXQiOjE3Mjk1NzU4MTUsImV4cCI6MTcyOTU3OTQxNSwidXNlcmlkIjoiMyJ9.GB1gUaza2AVJ1mfL4NswBqWlzf6Cx80_cpYFg3g-9Y4', 3, 0),
(14, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwOi8vbGlicmFyeS5vcmciLCJhdWQiOiJodHRwOi8vbGlicmFyeS5jb20iLCJpYXQiOjE3Mjk1NzU4MTUsImV4cCI6MTcyOTU3OTQxNSwidXNlcmlkIjoiMyJ9.GB1gUaza2AVJ1mfL4NswBqWlzf6Cx80_cpYFg3g-9Y4', 3, 0),
(15, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwOi8vbGlicmFyeS5vcmciLCJhdWQiOiJodHRwOi8vbGlicmFyeS5jb20iLCJpYXQiOjE3Mjk1NzU4MTUsImV4cCI6MTcyOTU3OTQxNSwidXNlcmlkIjoiMyJ9.GB1gUaza2AVJ1mfL4NswBqWlzf6Cx80_cpYFg3g-9Y4', 3, 0),
(16, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwOi8vbGlicmFyeS5vcmciLCJhdWQiOiJodHRwOi8vbGlicmFyeS5jb20iLCJpYXQiOjE3Mjk1NzU4MTUsImV4cCI6MTcyOTU3OTQxNSwidXNlcmlkIjoiMyJ9.GB1gUaza2AVJ1mfL4NswBqWlzf6Cx80_cpYFg3g-9Y4', 3, 0),
(17, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwOi8vbGlicmFyeS5vcmciLCJhdWQiOiJodHRwOi8vbGlicmFyeS5jb20iLCJpYXQiOjE3Mjk1NzU4MTUsImV4cCI6MTcyOTU3OTQxNSwidXNlcmlkIjoiMyJ9.GB1gUaza2AVJ1mfL4NswBqWlzf6Cx80_cpYFg3g-9Y4', 3, 0),
(18, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwOi8vbGlicmFyeS5vcmciLCJhdWQiOiJodHRwOi8vbGlicmFyeS5jb20iLCJpYXQiOjE3MzA2OTgzMzQsImV4cCI6MTczMDcwMTkzNCwidXNlcmlkIjoiMyJ9.BQPOInL3G-VeXdI1mMueL2XJxWWGWvnBn0-bZ6GWj98', 3, 0),
(19, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwOi8vbGlicmFyeS5vcmciLCJhdWQiOiJodHRwOi8vbGlicmFyeS5jb20iLCJpYXQiOjE3MzA5MTgzNjksImV4cCI6MTczMDkyMTk2OSwidXNlcmlkIjoiMyJ9.90uIrt_Qmhg1mWIwmfR-POWxmrZAyY_1qoyGxXjg_wY', 3, 0);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `userid` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`userid`, `username`, `password`) VALUES
(1, 'jomar', '$2y$10$BmKkreVh65169xSYlTjoVe8J9HiMycjXWleawnlC4hzRWDaMEgAwO'),
(2, 'your_username', '$2y$10$x4vJypP4OeJ8bfNIIF/6E.rCSOeUCxXReZ.ECisSztC9gKjDKTWDa'),
(3, 'pogi', '$2y$10$rMSEsfK1NXAkv8H/V3BNj.z1pmGW2GTDGNO0yTaZ.IWPg7A8OBvs.'),
(6, 'Jomar123', '$2y$10$Nq2INC2wQRDXnx8Gj44bH.FCIZ36WGfMvhPnnD/qTKsMpPbVuEeOS');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `authors`
--
ALTER TABLE `authors`
  ADD PRIMARY KEY (`authorid`);

--
-- Indexes for table `books`
--
ALTER TABLE `books`
  ADD PRIMARY KEY (`bookid`),
  ADD KEY `authorid` (`authorid`);

--
-- Indexes for table `books_authors`
--
ALTER TABLE `books_authors`
  ADD PRIMARY KEY (`id`),
  ADD KEY `bookid` (`bookid`),
  ADD KEY `authorid` (`authorid`);

--
-- Indexes for table `jwt_tokens`
--
ALTER TABLE `jwt_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `userid` (`userid`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`userid`),
  ADD UNIQUE KEY `username` (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `authors`
--
ALTER TABLE `authors`
  MODIFY `authorid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `books`
--
ALTER TABLE `books`
  MODIFY `bookid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `books_authors`
--
ALTER TABLE `books_authors`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `jwt_tokens`
--
ALTER TABLE `jwt_tokens`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `userid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `books`
--
ALTER TABLE `books`
  ADD CONSTRAINT `books_ibfk_1` FOREIGN KEY (`authorid`) REFERENCES `authors` (`authorid`) ON DELETE CASCADE;

--
-- Constraints for table `books_authors`
--
ALTER TABLE `books_authors`
  ADD CONSTRAINT `books_authors_ibfk_1` FOREIGN KEY (`bookid`) REFERENCES `books` (`bookid`) ON DELETE CASCADE,
  ADD CONSTRAINT `books_authors_ibfk_2` FOREIGN KEY (`authorid`) REFERENCES `authors` (`authorid`) ON DELETE CASCADE;

--
-- Constraints for table `jwt_tokens`
--
ALTER TABLE `jwt_tokens`
  ADD CONSTRAINT `jwt_tokens_ibfk_1` FOREIGN KEY (`userid`) REFERENCES `users` (`userid`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
