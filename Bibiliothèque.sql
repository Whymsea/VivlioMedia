-- phpMyAdmin SQL Dump
-- version 4.5.4.1
-- http://www.phpmyadmin.net
--
-- Client :  localhost
-- Généré le :  Jeu 06 Avril 2023 à 10:52
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
-- Structure de la table `acteur`
--

CREATE TABLE `acteur` (
  `Id_Acteur` int(11) NOT NULL,
  `Nom_Acteur` varchar(50) NOT NULL,
  `Prenom_Acteur` varchar(50) NOT NULL,
  `Photo_Acteur` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `administrateur`
--

CREATE TABLE `administrateur` (
  `Id_Administrateurs` int(11) NOT NULL,
  `Nom_Administrateurs` varchar(50) NOT NULL,
  `Prenom_Administrateurs` varchar(50) NOT NULL,
  `Mdp_Utilisateurs` varchar(50) NOT NULL,
  `Mail_Administrateurs` varchar(50) NOT NULL,
  `Id_Bibliothecaire` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

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

-- --------------------------------------------------------

--
-- Structure de la table `bibliothecaire`
--

CREATE TABLE `bibliothecaire` (
  `Id_Bibliothecaire` int(11) NOT NULL,
  `Nom_Bibliothecaire` varchar(50) NOT NULL,
  `Prenom_Bibliothecaire` varchar(50) NOT NULL,
  `Mdp_Utilisateurs` varchar(50) NOT NULL,
  `Mail_Bibliothecaire` varchar(50) NOT NULL,
  `Id_livre` int(11) NOT NULL,
  `Id_Film` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `commentaire`
--

CREATE TABLE `commentaire` (
  `Id_Commentaire` int(11) NOT NULL,
  `Contenu_Commentaire` varchar(300) NOT NULL,
  `Note_Commentaire` int(11) NOT NULL,
  `Id_Utilisateurs` int(11) NOT NULL,
  `Id_livre` int(11) NOT NULL,
  `Id_Film` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `film`
--

CREATE TABLE `film` (
  `Id_Film` int(11) NOT NULL,
  `Nom_Film` varchar(150) NOT NULL,
  `Genre_Film` varchar(80) NOT NULL,
  `Theme_Film` varchar(80) NOT NULL,
  `Duree_Film` int(11) NOT NULL,
  `Annee_Parution_Film` int(11) NOT NULL,
  `Langue_Film` varchar(50) NOT NULL,
  `Realisateurs_Film` varchar(50) NOT NULL,
  `Acteur1_Film` varchar(50) NOT NULL,
  `Acteur2_Film` varchar(50) NOT NULL,
  `Synopsis_Film` varchar(500) DEFAULT NULL,
  `Emprunt_Film` int(11) NOT NULL,
  `Sous_Titre_Film` varchar(80) NOT NULL,
  `Couverture_Film` varchar(250) NOT NULL,
  `Background_Film` varchar(250) NOT NULL,
  `Id_realisateurs` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `livre`
--

CREATE TABLE `livre` (
  `Id_livre` int(11) NOT NULL,
  `Nom_livre` varchar(80) NOT NULL,
  `Genre_Livre` varchar(80) NOT NULL,
  `Theme_Livre` varchar(80) NOT NULL,
  `Nmbre_Page_Livre` int(11) NOT NULL,
  `Annee_Parution_Livre` int(11) NOT NULL,
  `Langue_Livre` varchar(80) NOT NULL,
  `Auteur_Livre` varchar(80) NOT NULL,
  `Emprunt_Livre` int(11) NOT NULL,
  `Sommaire_Livre` varchar(300) NOT NULL,
  `ISBN_Livre` varchar(25) NOT NULL,
  `Editeur_Livre` varchar(80) NOT NULL,
  `Couverture_Livre` varchar(250) DEFAULT NULL,
  `Id_Auteur` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `realisateurs`
--

CREATE TABLE `realisateurs` (
  `Id_realisateurs` int(11) NOT NULL,
  `Nom_realisateurs` varchar(50) NOT NULL,
  `Prenom_realisateurs` varchar(50) NOT NULL,
  `Photo_realisateurs` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `utilisateurs`
--

CREATE TABLE `utilisateurs` (
  `Id_Utilisateurs` int(11) NOT NULL,
  `Nom_Utilisateurs` varchar(50) NOT NULL,
  `Prenom_Utilisateurs` varchar(50) NOT NULL,
  `Pseudo_Utilisateurs` varchar(50) NOT NULL,
  `Mdp_Utilisateurs` varchar(100) NOT NULL,
  `Mail_Utilisateurs` varchar(100) NOT NULL,
  `Id_Commentaire` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


CREATE TABLE `acteur_film`(
 `Id_Jonction` int(11) NOT NULL,
 `Id_Acteur` int(11) NOT NULL,
 `Id_Film` int(11) NOT NULL
)ENGINE=InnoDB DEFAULT CHARSET=utf8;
--
-- Index pour les tables exportées
--

--
-- Index pour la table `acteur`
--
ALTER TABLE `acteur`
  ADD PRIMARY KEY (`Id_Acteur`);

--
-- Index pour la table `acteur_film`
--
ALTER TABLE `acteur_film`
  ADD PRIMARY KEY (`Id_Jonction`),
  ADD KEY `acteur_film_acteur0_FK` (`Id_Acteur`),
  ADD KEY `acteur_film_film1_FK` (`Id_Film`);

--
-- Index pour la table `administrateur`
--
ALTER TABLE `administrateur`
  ADD PRIMARY KEY (`Id_Administrateurs`),
  ADD KEY `Administrateur_Bibliothecaire0_FK` (`Id_Bibliothecaire`);

--
-- Index pour la table `auteur`
--
ALTER TABLE `auteur`
  ADD PRIMARY KEY (`Id_Auteur`);

--
-- Index pour la table `bibliothecaire`
--
ALTER TABLE `bibliothecaire`
  ADD PRIMARY KEY (`Id_Bibliothecaire`),
  ADD KEY `Bibliothecaire_Livre0_FK` (`Id_livre`),
  ADD KEY `Bibliothecaire_Film1_FK` (`Id_Film`);

--
-- Index pour la table `commentaire`
--
ALTER TABLE `commentaire`
  ADD PRIMARY KEY (`Id_Commentaire`),
  ADD KEY `Commentaire_Livre1_FK` (`Id_livre`),
  ADD KEY `Commentaire_Film2_FK` (`Id_Film`),
  ADD KEY `Commentaire_Utilisateurs0_FK` (`Id_Utilisateurs`);

--
-- Index pour la table `film`
--
ALTER TABLE `film`
  ADD PRIMARY KEY (`Id_Film`),
  ADD KEY `film_realisateurs0_FK` (`Id_realisateurs`);

--
-- Index pour la table `livre`
--
ALTER TABLE `livre`
  ADD PRIMARY KEY (`Id_livre`),
   ADD KEY `livre_auteur0_FK` (`Id_Auteur`);

--
-- Index pour la table `realisateurs`
--
ALTER TABLE `realisateurs`
  ADD PRIMARY KEY (`Id_realisateurs`);

--
-- Index pour la table `utilisateurs`
--
ALTER TABLE `utilisateurs`
  ADD PRIMARY KEY (`Id_Utilisateurs`),
  ADD UNIQUE KEY `Utilisateurs_Commentaire0_AK` (`Id_Commentaire`);

--
-- AUTO_INCREMENT pour les tables exportées
--

--
-- AUTO_INCREMENT pour la table `acteur`
--
ALTER TABLE `acteur`
  MODIFY `Id_Acteur` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `acteur_film`
--
ALTER TABLE `acteur_film`
  MODIFY `Id_Jonction` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `administrateur`
--
ALTER TABLE `administrateur`
  MODIFY `Id_Administrateurs` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `auteur`
--
ALTER TABLE `auteur`
  MODIFY `Id_Auteur` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `bibliothecaire`
--
ALTER TABLE `bibliothecaire`
  MODIFY `Id_Bibliothecaire` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `commentaire`
--
ALTER TABLE `commentaire`
  MODIFY `Id_Commentaire` int(11) NOT NULL AUTO_INCREMENT;

  --
-- AUTO_INCREMENT pour la table `commentaire`
--
ALTER TABLE `film`
  MODIFY `Id_Film` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `livre`
--
ALTER TABLE `livre`
  MODIFY `Id_livre` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;
--
-- AUTO_INCREMENT pour la table `realisateurs`
--
ALTER TABLE `realisateurs`
  MODIFY `Id_realisateurs` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `utilisateurs`
--
ALTER TABLE `utilisateurs`
  MODIFY `Id_Utilisateurs` int(11) NOT NULL AUTO_INCREMENT;
--
-- Contraintes pour les tables exportées
--

--
-- Contraintes pour la table `Administrateur`
--
ALTER TABLE `administrateur`
  ADD CONSTRAINT `Administrateur_Bibliothecaire0_FK` FOREIGN KEY (`Id_Bibliothecaire`) REFERENCES `bibliothecaire` (`Id_Bibliothecaire`);

  --
-- Contraintes pour la table `acteur_film`
--
ALTER TABLE `acteur_film`
  ADD CONSTRAINT `acteur_film_acteur0_FK` FOREIGN KEY (`Id_Acteur`) REFERENCES `acteur` (`Id_Acteur`),
  ADD CONSTRAINT `acteur_film_film1_FK` FOREIGN KEY (`Id_Film`) REFERENCES `film` (`Id_Film`);
--
-- Contraintes pour la table `Livre`
--
ALTER TABLE `livre`
  ADD CONSTRAINT `livre_auteur0_FK` FOREIGN KEY (`Id_Auteur`) REFERENCES `auteur` (`Id_Auteur`);



--
-- Contraintes pour la table `bibliothecaire`
--
ALTER TABLE `bibliothecaire`
  ADD CONSTRAINT `Bibliothecaire_Film1_FK` FOREIGN KEY (`Id_Film`) REFERENCES `film` (`Id_Film`),
  ADD CONSTRAINT `Bibliothecaire_Livre0_FK` FOREIGN KEY (`Id_livre`) REFERENCES `livre` (`Id_livre`);

--
-- Contraintes pour la table `commentaire`
--
ALTER TABLE `commentaire`
  ADD CONSTRAINT `Commentaire_Film2_FK` FOREIGN KEY (`Id_Film`) REFERENCES `film` (`Id_Film`),
  ADD CONSTRAINT `Commentaire_Livre1_FK` FOREIGN KEY (`Id_livre`) REFERENCES `livre` (`Id_livre`),
  ADD CONSTRAINT `Commentaire_Utilisateurs0_FK` FOREIGN KEY (`Id_Utilisateurs`) REFERENCES `utilisateurs` (`Id_Utilisateurs`);

--
-- Contraintes pour la table `utilisateurs`
--
ALTER TABLE `utilisateurs`
  ADD CONSTRAINT `Utilisateurs_Commentaire0_FK` FOREIGN KEY (`Id_Commentaire`) REFERENCES `commentaire` (`Id_Commentaire`);

  --
-- Contraintes pour la table `Film`
--
ALTER TABLE `film`
  ADD CONSTRAINT `film_realisateurs0_FK` FOREIGN KEY (`Id_realisateurs`) REFERENCES `realisateurs` (`Id_realisateurs`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
