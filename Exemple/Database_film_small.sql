-- phpMyAdmin SQL Dump
-- version 4.5.4.1
-- http://www.phpmyadmin.net
--
-- Client :  localhost
-- Généré le :  Jeu 09 Mars 2023 à 11:55
-- Version du serveur :  5.7.11
-- Version de PHP :  7.0.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `vivi`
--

-- --------------------------------------------------------

--
-- Structure de la table `film`
--

CREATE TABLE `film` (
  `Id_Film` int(11) NOT NULL,
  `Nom_Film` varchar(150) NOT NULL,
  `Genre_Film` varchar(50) NOT NULL,
  `Theme_Film` varchar(50) NOT NULL,
  `Duree_Film` int(11) NOT NULL,
  `Annee_Parution_Film` int(11) NOT NULL,
  `Langue_Film` varchar(50) NOT NULL,
  `Realisateurs_Film` varchar(50) NOT NULL,
  `Acteur1_Film` varchar(50) NOT NULL,
  `Acteur2_Film` varchar(50) NOT NULL,
  `Synopsis_Film` varchar(500) DEFAULT NULL,
  `Emprunt_Film` int(11) NOT NULL,
  `Sous_Titre_Film` varchar(20) NOT NULL,
  `Couverture_Film` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `film`
--

INSERT INTO `film` (`Id_Film`, `Nom_Film`, `Genre_Film`, `Theme_Film`, `Duree_Film`, `Annee_Parution_Film`, `Langue_Film`, `Realisateurs_Film`, `Acteur1_Film`, `Acteur2_Film`, `Synopsis_Film`, `Emprunt_Film`, `Sous_Titre_Film`, `Couverture_Film`) VALUES
(1, 'La La Land', 'Comédie musicale', 'Amour, rêves', 128, 2016, 'Anglais', 'Damien Chazelle', 'Ryan Gosling', 'Emma Stone', 'Un pianiste de jazz et une actrice en herbe tombent amoureux à Los Angeles, mais doivent faire des choix difficiles pour réussir leur carrière', 0, 'Français', 'nomfichier+extension'),
(2, 'Le Seigneur des anneaux : La communauté de l’anneau', 'Fantasy, aventure', 'Épopée, amitié', 178, 2001, 'Anglais', 'Peter Jackson', 'Elijah Wood', 'Ian McKellen', 'Un hobbit doit se lancer dans une quête pour détruire un anneau magique avant que les forces du mal ne s\'en emparent', 0, 'Français', 'nomfichier+extension'),
(3, 'Inception', 'Science-fiction, thriller', 'Rêves, réalité', 148, 2010, 'Anglais', 'Christopher Nolan', 'Leonardo DiCaprio', 'Joseph Gordon-Levitt', 'Un voleur expérimenté doit implanter une idée dans l\'esprit d\'un PDG en pénétrant dans ses rêves', 0, 'Français', 'nomfichier+extension');

--
-- Index pour les tables exportées
--

--
-- Index pour la table `film`
--
ALTER TABLE `film`
  ADD PRIMARY KEY (`Id_Film`);

--
-- AUTO_INCREMENT pour les tables exportées
--

--
-- AUTO_INCREMENT pour la table `film`
--
ALTER TABLE `film`
  MODIFY `Id_Film` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
