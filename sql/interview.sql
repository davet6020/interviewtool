-- phpMyAdmin SQL Dump
-- version 4.6.0
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: May 15, 2016 at 09:35 PM
-- Server version: 5.6.30-0ubuntu0.14.04.1-log
-- PHP Version: 5.6.21-1+donate.sury.org~trusty+4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `interview`
--
CREATE DATABASE IF NOT EXISTS `interview` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `interview`;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `categoryName` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `categoryName`) VALUES
(1, 'Angular 1.x'),
(2, 'Angular 2.x'),
(3, 'Bootstrap'),
(4, 'CakePHP'),
(5, 'CodeIgniter'),
(6, 'Go'),
(7, 'Javascript'),
(8, 'jQuery 1.x'),
(9, 'jQuery 2.x'),
(10, 'Laravel'),
(11, 'MongoDB'),
(12, 'MySql'),
(13, 'NodeJs'),
(14, 'PHP'),
(15, 'Postgres'),
(16, 'ReactJs'),
(17, 'SQL');

-- --------------------------------------------------------

--
-- Table structure for table `questions`
--

DROP TABLE IF EXISTS `questions`;
CREATE TABLE `questions` (
  `id` int(11) NOT NULL,
  `categoryId` int(11) NOT NULL,
  `difficulty` int(2) NOT NULL COMMENT '1=easy, 10=hardest',
  `secondsAllowed` int(11) NOT NULL COMMENT '60=1m, 120=2m, 180=3m, 250=4m, 300=5m, 600=10m',
  `comment` varchar(256) NOT NULL,
  `question` text NOT NULL,
  `questionType` int(2) NOT NULL COMMENT '1=multiple choice basic, 2=multiple choice with code sample, 3=true/false, 4=free form text',
  `answer1` text NOT NULL,
  `answer2` text NOT NULL,
  `answer3` text NOT NULL,
  `answer4` text NOT NULL,
  `answer5` text NOT NULL,
  `correctAnswer` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `questions`
--

INSERT INTO `questions` (`id`, `categoryId`, `difficulty`, `secondsAllowed`, `comment`, `question`, `questionType`, `answer1`, `answer2`, `answer3`, `answer4`, `answer5`, `correctAnswer`) VALUES
(1, 14, 3, 30, 'What is the output of this piece of code?', '<?php\n  $snip = new Snippet();\n  print_r($snip->color(), $snip->green());\n  print_r($snip->color());\n\n  class Snippet {\n    public function color()  {\n      $arr[] = $this->blue();\n      $arr[] = $this->yellow();\n      return $arr;\n    }\n\n    private function blue() {\n      return "blue function \\n";\n    }\n\n    public function green() {\n      return "green function \\n";\n    }\n\n    private function yellow() {\n      return "yellow function \\n";\n    }\n  }\n?>', 2, 'Array (\n    [0] => blue function \n\n    [1] => yellow function \n)', 'Array (\n    [0] => blue function \n\n    [1] => yellow function \n)\ngreen function\nArray (\n    [0] => blue function \n\n    [1] => yellow function \n)', 'green function\nArray (\n    [0] => blue function \n\n    [1] => yellow function \n)', 'All of the above', 'None of the above', '5'),
(2, 11, 2, 30, '', 'A collection and a document in MongoDB is equivalent to which of the SQL concepts respectively?', 1, 'Table and Row', 'Table and Column', 'Column and Row', 'Database and Table', '', '1'),
(3, 11, 2, 39, '', 'Which of the following is a valid MongoDB JSON document:', 1, '{}', '{\r\n   "user_id"=1,\r\n   "user_name"="Joe Sanders",\r\n   "occupation"=["engineer","writer"]\r\n}', '{\r\n   "user_id":1;\r\n   "user_name":"Joe Sanders";\r\n   "occupation":["engineer","writer"]\r\n}', '{\r\n   "user_id":1,\r\n   "user_name":"Joe Sanders",\r\n   "occupation":[\r\n		"occupation1":"engineer",\r\n		"occupation2":"writer"\r\n	]\r\n}', '', '1'),
(4, 7, 4, 600, 'Generate two sets of snow capped mountains separated by a flat plane', 'var landscape = function() {\r\n  var result = "";\r\n  var flat = function(size) {\r\n    for (var count = 0; count < size; count++)\r\n      result += "_";\r\n  };\r\n  var mountain = function(size) {\r\n    result += "/";\r\n    for (var count = 0; count < size; count++)\r\n      result += "\'";\r\n    result += "\\\\";\r\n  };\r\n\r\n  \r\n  return result;\r\n};\r\n\r\nconsole.log(landscape());', 2, '', '', '', '', '', 'mountain(1);\nmountain(1);\nflat(1);\nmountain(1);\nmountain(1);');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `questions`
--
ALTER TABLE `questions`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
--
-- AUTO_INCREMENT for table `questions`
--
ALTER TABLE `questions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
