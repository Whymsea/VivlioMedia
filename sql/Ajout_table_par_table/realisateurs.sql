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
-- Déchargement des données de la table `realisateurs`
--

INSERT INTO `realisateurs` (`Id_realisateurs`, `Nom_realisateurs`, `Prenom_realisateurs`, `Photo_realisateurs`) VALUES
(1, 'Chazelle', 'Damien', 'Damien_Chazelle.jpg'),
(2, 'Jackson', 'Peter', 'Peter_Jackson.jpg'),
(3, 'Nolan', 'Christopher', 'Christopher_Nolan.png'),
(4, 'Darabont', 'Frank', 'Frank_Darabont.jpg'),
(5, 'Zemeckis', 'Robert', 'Robert_Zemeckis.jpg'),
(6, 'Fincher', 'David', 'David_Fincher.png'),
(7, 'Ford Coppola', 'Francis', 'Francis_Ford_Coppola.jpg'),
(8, 'Coppola', 'Ford', 'Ford_Coppola.jpg'),
(9, 'Allers', 'Roger', 'Roger_Allers.png'),
(10, 'Kassovitz', 'Mathieu', 'Mathieu_Kassovitz.jpg'),
(11, 'Jeunet', 'Jean-Pierre', 'Jean-Pierre_Jeunet.jpg'),
(12, 'Lucas', 'George', 'George_Lucas.jpg'),
(13, 'Demme', 'Jonathan', 'Jonathan_Demme.jpg'),
(14, 'Scott', 'Ridley', 'Ridley_Scott.png'),
(15, 'Spielberg', 'Steven', 'Steven_Spielberg.jpg'),
(16, 'Besson', 'Luc', 'Luc_Besson.jpg'),
(17, 'Scorsese', 'Martin', 'Martin_Scorsese.jpg'),
(18, 'Godard', 'Jean-Luc', 'Jean-Luc_Godard.jpg'),
(19, 'Kubrick', 'Stanley', 'Stanley_Kubrick.jpg'),
(20, 'Tarantino', 'Quentin', 'Quentin_Tarantino.jpg'),
(21, 'The Wachowski', 'Brothers', 'The_Wachowski_Brothers.jpg'),
(22, 'Phillips', 'Todd', 'Todd_Phillips.jpg'),
(23, 'Siegel', 'Don', 'Don_Siegel.jpg'),
(24, 'Kurosawa', 'Akira', 'Akira_Kurosawa.jpg'),
(25, 'Singer', 'Bryan', 'Bryan_Singer.jpg');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
