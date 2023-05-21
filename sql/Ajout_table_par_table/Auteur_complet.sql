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
-- Structure de la table `auteur`
--

CREATE TABLE `auteur` (
  `Id_Auteur` int(11) NOT NULL,
  `Nom_Auteur` varchar(50) NOT NULL,
  `Prenom_Auteur` varchar(50) NOT NULL,
  `Photo_Auteur` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Index pour la table `auteur`
--
ALTER TABLE `auteur`
  ADD PRIMARY KEY (`Id_Auteur`);

-- --------------------------------------------------------

--
-- AUTO_INCREMENT pour la table `auteur`
--
ALTER TABLE `auteur`
  MODIFY `Id_Auteur` int(11) NOT NULL AUTO_INCREMENT;

  --
-- Index pour la table `livre`
--
ALTER TABLE `livre`
  ADD PRIMARY KEY (`Id_livre`),
   ADD KEY `livre_auteur0_FK` (`Id_Auteur`);


ALTER TABLE `livre`
ADD `Id_Auteur` int(11) DEFAULT NULL;
--
-- Contraintes pour la table `Livre`
--
ALTER TABLE `livre`
  ADD CONSTRAINT `livre_auteur0_FK` FOREIGN KEY (`Id_Auteur`) REFERENCES `auteur` (`Id_Auteur`);


-- --------------------------------------------------------


--
-- Déchargement des données de la table `auteur`
--

INSERT INTO `auteur` (`Id_Auteur`, `Nom_Auteur`, `Prenom_Auteur`, `Photo_Auteur`) VALUES
(1, 'Fillon', 'Christian', 'Christian_Fillon.jpg'),
(2, 'Stark', 'Esther', 'Esther_Stark.jpg'),
(3, 'Ettewiller', 'Michel', 'Michel_Ettewiller.jpg'),
(4, 'Le Tiec', 'Patrick', 'Patrick_Le_Tiec.jpg'),
(5, 'Mirmand', 'Philippe', 'Philippe_Mirmand.jpg'),
(6, 'Gounon', 'A.P.', 'A.P._Gounon.jpg'),
(7, 'Rousselot', 'Axelle', 'Axelle_Rousselot.jpg'),
(8, 'Trassard', 'Anne Sophie', 'Anne_Sophie_Trassard.webpg'),
(9, 'Louicellier', 'Monique', 'Monique_Louicellier.jpg'),
(10, 'Philippe', 'Ribagnac', 'Philippe_Ribagnac.jpg'),
(11, 'Calvi', 'Jo', 'Jo_Calvi.jpg'),
(12, 'Jade', 'Damian', 'Damian_Jade.jpg'),
(13, 'Viti', 'Catarina', 'Catarina_Viti.jpg'),
(14, 'Thorre-Gachet', 'Martine', 'Martine_Thorre-Gachet.jpg'),
(15, 'Naim', 'David', 'David_Naim.jpg'),
(16, 'Garnier', 'Évariste', 'Évariste_Garnier.webpg'),
(17, 'P Ledger', 'Benjamin', 'Benjamin_P_Ledger.webpg'),
(18, 'Cabanes', 'Amédée', 'Amédée_Cabanes.jpg'),
(19, 'GARRIDO', 'Agathe', 'Agathe_GARRIDO.jpg'),
(20, 'C', 'Philippe', 'PhilippeC.jpg'),
(21, 'VEZIEN', 'Daniel', 'Daniel_VEZIEN.jpg'),
(22, '', 'ganax', 'Exemple.png'),
(23, '', 'Housse', 'Exemple.png.jpg'),
(24, 'Carnesse-Million', 'Nathalie', 'Nathalie_Carnesse-Million.jpg'),
(25, 'p', 'Edrd', 'Edrd_p.jpg'),
(26, 'Florent', 'Zoé', 'Zoé_Florent.jpg'),
(27, 'Sanc', 'Stéphane', 'Stéphane_Sanc.jpg'),
(28, 'Houedanou', 'Destiny', 'Destiny_Houedanou.jpg'),
(29, '', 'l''ermitedelamonnaie', 'Exemple.png'),
(30, 'Skov', 'Andrea', 'Andrea_Skov.jpg'),
(31, 'Gauvrit', 'Alain', 'Alain_Gauvrit.jpg'),
(32, '', 'GHZ', 'Exemple.png'),
(33, 'Ribagnac', 'Philippe', 'Philippe_Ribagnac.jpg'),
(34, 'Massande Nzambe', 'Ben-Nelson', 'Ben-Nelson_Massande_Nzambe.png'),
(35, 'Moon', 'Anna', 'Anna_Moon.jpg'),
(36, 'EPEM', 'LEON', 'LEON_EPEM.jpg'),
(37, 'ROGET', 'BENEDICTE', 'BENEDICTE_ROGET.jpg'),
(38, 'DESHAYES', 'Gérard', 'Gérard_DESHAYES.jpg'),
(39, 'Marcoux', 'Isabelle', 'Isabelle_Marcoux.jpg'),
(40, '', 'Carole2490', 'Carole2490.jpg'),
(41, 'GASPARINI', 'STEPHANE', 'STEPHANE_GASPARINI.jpg'),
(42, 'REY', 'Anthony', 'Anthony_REY.jpg'),
(43, 'Veignelly', 'Sorly', 'Sorly_Veignelly.jpg');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
