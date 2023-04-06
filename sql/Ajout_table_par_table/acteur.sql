-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le : jeu. 06 avr. 2023 à 19:22
-- Version du serveur : 5.7.36
-- Version de PHP : 7.4.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `vivi`
--

-- --------------------------------------------------------


--
-- Déchargement des données de la table `acteur`
--

INSERT INTO `acteur` (`Id_Acteur`, `Nom_Acteur`, `Prenom_Acteur`, `Photo_Acteur`) VALUES
(1, 'Gosling', 'Ryan', 'Ryan_Gosling.jpg'),
(2, 'Elijah', 'Wood', 'Elijah_Wood.jpg'),
(3, 'Leonardo ', 'DiCaprio', 'Leonardo_DiCaprio.jpg'),
(4, 'Robbins', 'Tim', 'Tim_Robbin.jpg'),
(5, 'Hanks', 'Tom', 'Tom_Hanks.jpg'),
(6, 'McConaughey', 'Matthew ', 'Matthew_McConaughey.jpg'),
(7, 'Eisenberg ', 'Jesse', 'Jesse_Eisenberg.jpg'),
(8, 'Brando ', 'Marlon', 'Marlon_Brando.jpg'),
(9, 'Hiiragi', 'Rumi  ', 'Rumi_Hiiragi.jpg'),
(10, 'Bale', 'Christian ', 'Christian_Bale.jpg'),
(11, 'Broderick', 'Matthew', 'Matthew_Broderick.jpg'),
(12, 'Cassel', 'Vincent', 'Vincent_Cassel.jpg'),
(13, 'Audrey', 'Tautou ', 'Audrey_Tautou.jpg'),
(14, 'Mark', 'Hamill', 'Mark_Hamill.jpg'),
(15, 'Wood', 'Elijah', 'Elijah_Wood.jpg'),
(16, 'Foster', 'Jodie', 'Jodie_Foster.jpg'),
(17, 'Ford', 'Harrison ', 'Harrison_Ford.jpg'),
(18, 'Neeson', 'Liam', 'Liam_Neeson.jpg'),
(19, 'Neill', 'Sam', 'Sam_Neill.jpg'),
(20, 'Barr', 'Jean-Marc', 'Jean-Marc_Barr.jpg'),
(21, 'Reno', 'Jean', 'Jean_Reno.jpg'),
(22, 'Bardot', 'Brigitte', 'Brigitte_Bardot'),
(23, 'McDowell', 'Malcolm', 'Malcolm_McDowell.jpg'),
(24, 'Travolta', 'John', 'John_Travolta.jpg'),
(25, 'Liotta', 'Ray', 'Ray_Liotta.jpg'),
(26, 'Reeves', 'Keanu', 'Keanu_Reeves.jpg'),
(27, 'Phoenix', 'Joaquin', 'Joaquin_Phoenix.jpg'),
(28, 'Pitt', 'Brad', 'Brad_Pitt.jpg'),
(29, 'Scheider', 'Roy', 'Roy_Scheider.jpg'),
(30, 'Scheider', 'Roy', 'Roy_Scheider.jpg'),
(31, 'Eastwood', 'Clint', 'Clint_Eastwood.jpg'),
(32, 'Mifune', 'Toshirô', 'Toshirô_Mifune.jpg'),
(33, 'Pacino', 'Al', 'Al_Pacino.jpf'),
(34, 'Robbins', 'Tim', 'Tim_Robbins.jpg'),
(35, 'Pacino', 'Al', 'Al_Pacino.jpg'),
(36, 'Jackman', 'Hugh', 'Hugh_Jackman.jpg'),
(37, 'Crowe', 'Russell', 'Russell_Crowe.jpg'),
(38, 'Spacey', 'Kevin', 'Kevin_Spacey.jpg'),
(39, 'Brando', 'Marlon', 'Marlon_Brando.jpg'),
(40, 'Stone', 'Emma', 'Emma_Stone.jpg'),
(41, 'McKellen', 'Ian', 'Ian_McKellen.jpg'),
(42, 'Gordon-Levitt', 'Joseph', 'Joseph_Gordon-Levitt.jpg'),
(43, 'Freeman', 'Morgan', 'Morgan_Freeman.jpg'),
(44, 'Wright', 'Robin', 'Robin_Wright.jpg'),
(45, 'Hathaway', 'Anne', 'Anne_Hathaway.jpg'),
(46, 'Garfield', 'Andrew', 'Andrew_Garfield.jpg'),
(47, 'Irino', 'Miyu', 'Miyu_Irino.jpg'),
(48, 'Ledger', 'Heath', 'Heath_Ledger.jpg'),
(49, 'Earl Jones', 'James', 'James_Earl_Jones.jpg'),
(50, 'Koundé', 'Hubert', 'Hubert_Koundé.jpg'),
(51, 'Kassovitz', 'Mathieu', 'Mathieu_Kassovitz.jpg'),
(52, 'Watanabe', 'Ken', 'Ken_Watanabe.jpg'),
(53, 'Ford', 'Harrison', 'Harrison_Ford.jpg'),
(54, 'Mortensen', 'Viggo', 'Viggo_Mortensen.jpg'),
(55, 'Hopkins', 'Anthony', 'Anthony_Hopkins.jpg'),
(56, 'Hauer', 'Rutger', 'Rutger_Hauer.jpg'),
(57, 'Kingsley', 'Ben', 'Ben_Kingsley.jpg'),
(58, 'Dern', 'Laura', 'Laura_Dern.jpg'),
(59, 'Reno', 'Jean', 'Jean_Reno.jpg'),
(60, 'Ruffalo', 'Mark', 'Mark_Ruffalo.jpg'),
(61, 'Foster', 'Jodie', 'Jodie_Foster.jpg'),
(62, 'Oldman', 'Gary', 'Gary_Oldman.jpg'),
(63, 'Piccoli', 'Michel', 'Michel_Piccoli.jpg'),
(64, 'Magee', 'Patrick', 'Patrick_Magee.jpg'),
(65, 'Thurman', 'Uma', 'Uma_Thurman.jpg'),
(66, 'Hill', 'Jonah', 'Jonah_Hill.jpg'),
(67, 'De Niro', 'Robert', 'Robert_De_Niro'),
(68, 'Fishburne', 'Laurence', 'Laurence_Fishburne.jpg'),
(69, 'Norton', 'Edward', 'Edward_Norton.jpg'),
(70, 'Shaw', 'Robert', 'Robert_Shaw.jpg'),
(71, 'Ward', 'Fred', 'Fred_Ward.jpg'),
(72, 'Shimura', 'Takashi', 'Takashi_Shimura.jpg'),
(73, 'Freeman', 'Morgan', 'Morgan_Freeman.jpg'),
(74, 'Liotta', 'Ray', 'Ray_Liotta.jpg'),
(75, 'Keaton', 'Diane', 'Diane_Keaton.jpg'),
(76, 'Clarke Duncan', 'Michael', 'Michael_Clarke_Duncan.jpg'),
(77, 'Damon', 'Matt', 'Matt_Damon.jpg'),
(78, 'Byrne', 'Gabriel', 'Gabriel_Byrne.jpg');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
