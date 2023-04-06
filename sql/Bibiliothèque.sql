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


 INSERT INTO `Film`(`Id_Film`, `Nom_Film`, `Genre_Film`, `Theme_Film`, `Duree_Film`, `Annee_Parution_Film`, `Langue_Film`, `Realisateurs_Film`, `Acteur1_Film`,`Acteur2_Film`, `Synopsis_Film`, `Emprunt_Film`,`Sous_Titre_Film`,`Couverture_Film`,`Background_Film`)
 Values  
('1', 'La La Land', 'Comedie musicale', 'Amour, rêves', '128', '2016', 'Anglais', 'Damien Chazelle', 'Ryan Gosling', 'Emma Stone', 'Un pianiste de jazz et une actrice en herbe tombent amoureux à Los Angeles, mais doivent faire des choix difficiles pour reussir leur carrière', '0', 'Français','lalaland.webp','lalaland.jpg'),
('2', 'Le Seigneur des anneaux : La communaute de l’anneau', 'Fantasy, aventure', 'epopee, amitie','178', '2001', 'Anglais', 'Peter Jackson', 'Elijah Wood', 'Ian McKellen', 'Un hobbit doit se lancer dans une quête pour detruire un anneau magique avant que les forces du mal ne s''en emparent', '0', 'Français','Le Seigneur des anneaux_La communaute de l’anneau.jpeg','Le Seigneur des anneaux  La communaute de l''anneau.png'),
('3', 'Inception', 'Science-fiction, thriller', 'Rêves, realite', '148', '2010', 'Anglais', 'Christopher Nolan', 'Leonardo DiCaprio', 'Joseph Gordon-Levitt','Un voleur experimente doit implanter une idee dans l''esprit d''un PDG en penetrant dans ses rêves', '0', 'Français','Inception.jpg','Inception.jpg'),
('4', 'Les Évades', 'Drame, policier', 'Amitie, espoir', '142', '1994', 'Anglais', 'Frank Darabont', 'Tim Robbins','Morgan Freeman', 'Deux detenus de longue peine se lient d''amitie en prison et rêvent de s''evader', '0', 'Français','Les Evades.jpg','Les Evades2.jpg'),
('5', 'Forrest Gump', 'Comedie dramatique', 'Amour, destin', '142', '1994', 'Anglais', 'Robert Zemeckis', 'Tom Hanks', 'Robin Wright', 'Forrest Gump, un homme simple d''esprit, traverse les evenements cles de l''histoire americaine tout en cherchant à retrouver son amour d''enfance', '0', 'Français','Forrest Gump2.jpg','Forrest Gump.jpg'),
('6', 'Interstellar', 'Science-fiction, drame', 'Espace, temps', '169', '2014', 'Anglais', 'Christopher Nolan', 'Matthew McConaughey', 'Anne Hathaway', 'Un groupe d''explorateurs doit trouver un nouveau foyer pour l''humanite alors que la Terre est en train de mourir', '0', 'Français','Interstellar4.jpg','Interstellar2.jpg'),
('7', 'The Social Network', 'Drame, biographie', 'Reseaux sociaux, ambition', '120', '2010', 'Anglais', 'David Fincher', 'Jesse Eisenberg', 'Andrew Garfield', 'L''histoire de la creation de Facebook et de la bataille juridique qui s''ensuit entre ses fondateurs', '0', 'Français','The Social Network.jpg','The Social Network3.webp'),
('8', 'Le Parrain', 'Drame', 'Mafia', '175', '1972', 'Anglais', 'Francis Ford Coppola', 'Marlon Brando', 'Al Pacino', 'En 1945, à New York, les Corleone sont une des cinq familles de la mafia. Don Vito Corleone, "parrain" de cette famille, marie sa fille à un bookmaker. Sollozzo, "parrain" de la famille Tattaglia, propose à Don Vito une association dans le trafic de drogue, mais celui-ci refuse. Sonny, un de ses fils, y est quant à lui favorable.', '0', 'Français','Le parrain.jpg','Le parrain.jpg'),
('9', 'Le voyage de Chihiro', 'Animation', 'Aventure, Fantastique', '125', '2001', 'Japonais', 'Hayao Miyazaki', 'Rumi Hiiragi', 'Miyu Irino', 'Chihiro, 10 ans, a tout d''une petite fille capricieuse. Elle s''apprête à emmenager avec ses parents dans une nouvelle demeure. Sur la route, la petite famille se retrouve face à un immense bâtiment rouge au centre duquel s''ouvre un long tunnel. De l''autre côte du passage se dresse une ville fantôme. Les parents decouvrent dans un restaurant desert de nombreux mets succulents et ne tardent pas à se jeter dessus. Ils se retrouvent alors transformes en cochons. Commence alors pour Chihiro une aventure extraordinaire au coeur d''un monde fantastique où la règle d''or est de ne jamais se retourner. Dans cette aventure, elle est accompagnee d''Haku, un jeune garçon courageux qui l''aide à decouvrir la verite sur ce monde etrange.', '0', 'Français','Le voyage de Chihiro3.jpg','Le voyage de Chihiro.jpg'),
('10', 'The Dark Knight', 'Action, thriller', 'Super-heros, crime, corruption', '152', '2008', 'Anglais', 'Christopher Nolan', 'Christian Bale', 'Heath Ledger', 'Le Chevalier noir doit affronter le Joker, un criminel psychopathe qui sème le chaos dans la ville de Gotham', '0', 'Français','The Dark Knight2.jpg','The Dark Knight2.jpg'),
('11', 'Le Roi Lion', 'Animation, aventure', 'Nature, famille', '88', '1994', 'Anglais', 'Roger Allers, Rob Minkoff', 'Matthew Broderick', 'James Earl Jones', 'Le lionceau Simba, heritier du trône, doit affronter son oncle Scar pour defendre son royaume et sa famille', '0', 'Français','Le Roi Lion.jpg','Le Roi Lion2.jpg'),
('12', 'La Haine', 'Drame', 'Violence, banlieue', '95', '1995', 'Français', 'Mathieu Kassovitz', 'Vincent Cassel', 'Hubert Kounde', 'Trois jeunes de banlieue doivent faire face à la violence et la discrimination de la police', '0', 'Anglais','La Haine3.jpg','La Haine.jpg'),
('13', 'Le Fabuleux destin d''Amelie Poulain', 'Comedie romantique', 'Amour, imagination', '122', '2001', 'Français', 'Jean-Pierre Jeunet', 'Audrey Tautou', 'Mathieu Kassovitz', 'Une jeune serveuse rêveuse cherche à rendre les gens heureux autour d''elle', '0', 'Anglais','Le Fabuleux destin dAmelie Poulain.webp','Le Fabuleux destin dAmelie Poulain.jpg'),
('14', 'Inception', 'Science-fiction', 'Thriller', '148', '2010', 'Anglais', 'Christopher Nolan', 'Leonardo DiCaprio', 'Ken Watanabe', 'Dom Cobb est un voleur experimente dans l''art dangereux de l''extraction: sa specialite consiste à s''approprier les secrets les plus precieux d''un individu, enfouis au plus profond de son subconscient, pendant qu''il rêve et que son esprit est particulièrement vulnerable.', '0', 'Français','1.none','1.none'),
('15', 'Star Wars: Episode IV - Un nouvel espoir', 'Science-fiction', 'Espace', '121', '1977', 'Anglais', 'George Lucas', 'Mark Hamill', 'Harrison Ford', 'Il y a bien longtemps, dans une galaxie très lointaine... La guerre civile fait rage entre l''Empire galactique et l''Alliance rebelle. Capturee par les troupes de choc de l''Empereur menees par le sombre et impitoyable Dark Vador, la princesse Leia Organa dissimule les plans de l''etoile Noire, une station spatiale invulnerable, à son droïde R2-D2 avec pour mission de les remettre au Jedi Obi-Wan Kenobi.', '0', 'Français','Star Wars Episode IV - Un nouvel espoir3.jpg','Star Wars Episode IV - Un nouvel espoir.jpg'),
('16', 'Le Seigneur des anneaux : Le Retour du roi', 'Fantastique', 'Aventure', '200', '2003', 'Anglais', 'Peter Jackson', 'Elijah Wood', 'Viggo Mortensen', 'Les armees de Sauron ont attaque Minas Tirith, la capitale de Gondor. Jamais ce royaume autrefois puissant n''a eu autant besoin de son roi. Mais Aragorn trouvera-t-il en lui la volonte d''accomplir sa destinee ? Tandis que Gandalf s''efforce de soutenir les forces brisees de Gondor, Theoden exhorte les guerriers de Rohan à se joindre au combat. Mais malgre leur courage et leur loyaute, les forces des Hommes ne sont pas de taille à lutter contre les innombrables legions d''ennemis qui s''abattent sur elles...', '0', 'Français','Le Seigneur des anneaux  Le Retour du roi3.jpg','seigneur-des-anneaux-la-communaute-de-l-anneau-silhouettes.jpg'),
('17', 'Le Silence des agneaux', 'Thriller', 'Crime', '118', '1991', 'Anglais', 'Jonathan Demme', 'Jodie Foster', 'Anthony Hopkins', 'Clarice Starling, jeune stagiaire du FBI, est chargee d''interroger le Dr Hannibal Lecter, un celèbre tueur en serie enferme dans un asile psychiatrique de haute securite. Le Dr Lecter, brillant psychiatre mais psychopathe violent, voit immediatement en Clarice un moyen d''assouvir ses sombres penchants. Entre eux s''engage un terrifiant jeu du chat et de la souris.','0', 'Français','Le Silence des agneaux2.jpg','Le silence des agneaux.jpg'),
('18', 'Blade Runner', 'Science-fiction', 'Neo-noir', '117', '1982', 'Anglais', 'Ridley Scott', 'Harrison Ford', 'Rutger Hauer', 'Un chasseur de primes traque des androïdes renegats dans une version dystopique de Los Angeles en 2019.', '0', 'Français','Blade Runner3.jpg','Blade Runner2.jpg'),
('19', 'La Liste de Schindler', 'Drame historique', 'Seconde Guerre mondiale', '195', '1993', 'Anglais', 'Steven Spielberg', 'Liam Neeson', 'Ben Kingsley', 'L''histoire d''Oskar Schindler, un homme d''affaires allemand qui a sauve la vie de plus de mille Juifs pendant l''Holocauste.', '0', 'Français','La Liste de Schindler2.jpg','La Liste de Schindler2.jpg'),
('20', 'Jurassic Park', 'Aventure', 'Science-fiction', '127', '1993', 'Anglais', 'Steven Spielberg', 'Sam Neill', 'Laura Dern', 'Des scientifiques visitent un parc d''attractions avec des dinosaures clones, mais les choses tournent mal.', '0', 'Français','Jurassic Park2.jpg','Jurassic Park3.jpg'),
('21', 'Le Grand Bleu', 'Drame', 'Sports aquatiques', '168', '1988', 'Français', 'Luc Besson', 'Jean-Marc Barr', 'Jean Reno', 'Deux amis d''enfance passionnes de plongee libre poursuivent leur rêve de battre le record du monde de plongee.', '0', 'anglais','Le Grand Bleu.jpg','Le GrandBleu.jpg'),
('22', 'Shutter Island', 'Thriller', 'Enquête policière', '138', '2010', 'Anglais', 'Martin Scorsese', 'Leonardo DiCaprio', 'Mark Ruffalo', 'En 1954, un marshal enquête sur la disparition d''une patiente dans un asile psychiatrique', '0', 'Français','Shutter Island3.jpg','Shutter Island3.jpg'),
('23', 'Taxi Driver', 'Drame', 'Psychologie', '113', '1976', 'Anglais', 'Martin Scorsese', 'Robert De Niro', 'Jodie Foster', 'Un veteran de la guerre du Vietnam devient chauffeur de taxi à New York et sombre peu à peu dans la folie', '0', 'Français','Taxi Driver.jpg','Taxi Driver.jpg'),
('24', 'Leon', 'Thriller', 'Tueur à gages', '133', '1994', 'Anglais', 'Luc Besson', 'Jean Reno', 'Gary Oldman', 'Un tueur à gages solitaire et sans scrupules recueille une fillette de 12 ans, Mathilda, dont la famille a ete assassinee par un policier corrompu.','0', 'Français','Leon.jpg','Leon.jpg'),
('25', 'Le Mepris', 'Drame', 'Relations amoureuses', '101', '1963', 'Français', 'Jean-Luc Godard', 'Brigitte Bardot', 'Michel Piccoli', 'Paul Javal est charge d''ecrire le scenario d''un film sur Ulysse pour Fritz Lang, qui doit être tourne à Capri. Mais sa femme, Camille, ne voit pas cette collaboration d''un bon œil.', '0', 'Français','Le Mepris2.jpg','Le mepris.jpg'),
('26', 'Orange mecanique', 'Drame', 'Violence', '137', '1972', 'Anglais', 'Stanley Kubrick', 'Malcolm McDowell', 'Patrick Magee', 'Dans un futur proche, Alex, un jeune delinquant, s''adonne à la violence avec ses amis. Mais il finit par être capture et soumis à une technique de rehabilitation experimentale.', '0', 'Français','Orange mecanique3.jpg','Orange mecanique3.jpg'),
('27', 'Pulp Fiction', 'Crime, Drame', 'Violence, Mafia, Comedie noire', '154', '1994', 'Anglais', 'Quentin Tarantino', 'John Travolta', 'Uma Thurman', 'À Los Angeles, un tueur à gages, un boxeur, deux gangsters et la femme d''un des chefs de la mafia ont des problèmes avec la vie et les affaires.', '0', 'Français','Pulp Fiction.jpg','Pulp Fiction.jpg'),
('28', 'Le Loup de Wall Street', 'Biographie, Comedie, Crime', 'Argent, Corruption, Drogue', '180', '2013', 'Anglais', 'Martin Scorsese', 'Leonardo DiCaprio','Jonah Hill', 'L''histoire vraie de Jordan Belfort, un courtier en bourse à New York qui a fait fortune en trompant ses clients.', '0', 'Français','Le Loup de Wall Street4.jpg','Le Loup de Wall Street.jpg'),
('29', 'Les Affranchis', 'Biographie, Crime, Drame', 'Mafia, Crime organise, Violence', '145', '1990', 'Anglais', 'Martin Scorsese', 'Ray Liotta', 'Robert De Niro', 'L''ascension de Henry Hill, un jeune homme travaillant pour la mafia de New York.', '0', 'Français','Les Affranchis.jpg','Les Affranchis2.jpg'),
('30', 'Matrix', 'Action, Science-fiction', 'Realite, Philosophie, Kung-fu', '136', '1999', 'Anglais', 'The Wachowski Brothers', 'Keanu Reeves', 'Laurence Fishburne', 'Un programmeur informatique decouvre que la realite qu''il connaît est en fait une simulation creee par des machines intelligentes qui asservissent l''humanite.', '0', 'Français','Matrix2.jpg','Matrix2.jpg'),
('31', 'Joker', 'Drame', 'Psychologie', '122', '2019', 'Anglais', 'Todd Phillips', 'Joaquin Phoenix','Robert De Niro', 'Dans les annees 1980, à Gotham City, Arthur Fleck, un comedien de stand-up rate, bascule dans la folie et devient le Joker.', '0', 'Français','Joker3.jpg','Joker2.jpg'),
('32', 'Fight Club', 'Drame', 'Thriller', '139', '1999', 'Anglais', 'David Fincher', 'Brad Pitt', 'Edward Norton', 'Un homme deprime et insomniaque rencontre un vendeur charismatique de savon, avec qui il fonde un club de combat clandestin qui va rapidement prendre de l''ampleur.', '0', 'Français','Fight Club3.jpg','Fight Club2.jpg'),
('33', 'Les Dents de la mer', 'Thriller', 'Horreur', '124', '1975', 'Anglais', 'Steven Spielberg', 'Roy Scheider', 'Robert Shaw', 'Un requin geant attaque les baigneurs d''une station balneaire, provoquant la panique et la terreur.', '0', 'Français','Les Dents de la mer.jpg','Les Dents de la mer.jpg'),
('34', 'Les Évades de Alcatraz', 'Drame', 'Thriller', '112', '1979', 'Anglais', 'Don Siegel', 'Clint Eastwood', 'Fred Ward', 'En 1960, trois detenus s''evadent de la celèbre prison d''Alcatraz, situee sur une île au large de San Francisco.', '0', 'Français','Les Evades de Alcatraz.jpg','Les Evades de Alcatraz2.jpg '),
('35', 'Les Sept Samouraïs', 'Drame', 'Action', '208', '1954', 'Japonais', 'Akira Kurosawa', 'Toshirô Mifune', 'Takashi Shimura', 'Dans le Japon medieval, un village paysan fait appel à sept samouraïs pour les proteger des bandits qui les pillent regulièrement.', '0', 'Français','Les Sept Samouraïs2.webp','Les Sept Samouraïs2.webp'),
('36', 'The Godfather: Part II', 'Drame', 'Famille criminelle', '202', '1974', 'Anglais', 'Francis Ford Coppola', 'Al Pacino', 'Robert De Niro', 'Michael Corleone, nouveau parrain de la famille Corleone, tente de conserver la paix et la prosperite dans l''empire criminel de sa famille.', '0','Français','The Godfather Part II3.webp','The Godfather Part II2.webp' ),
('37', 'The Shawshank Redemption', 'Drame', 'Prison, Amitie', '142', '1994', 'Anglais', 'Frank Darabont', 'Tim Robbins', 'Morgan Freeman', 'Andy Dufresne, banquier injustement condamne à la prison à vie, se lie d''amitie avec Red, un detenu cynique mais avise.', '0', 'Français','The Shawshank Redemption2.jpg','The Shawshank Redemption2.jpg'),
('38', 'Goodfellas', 'Drame', 'Famille criminelle', '146', '1990', 'Anglais', 'Martin Scorsese', 'Robert De Niro', 'Ray Liotta', 'Henry Hill, un jeune homme ambitieux, gravit les echelons dans une famille mafieuse mais doit faire face aux consequences de ses actions.', '0', 'Français','Goodfellas3.jpg','Goodfellas2.jpg'),
('39', 'The Godfather: Part III', 'Drame', 'Famille criminelle', '162', '1990', 'Anglais', 'Francis Ford Coppola', 'Al Pacino', 'Diane Keaton', 'Michael Corleone tente de se rehabiliter et de faire entrer sa famille dans la legalite, mais les liens avec le crime ne sont jamais loin.', '0', 'Français','GodfatherIII.jpeg','the-godfather-the-godfather-part-iii.jpeg'),
('40', 'The Prestige', 'Drame', 'Magie, Rivalite', '130', '2006', 'Anglais', 'Christopher Nolan', 'Hugh Jackman', 'Christian Bale', 'Deux magiciens rivaux du XIXe siècle s''affrontent dans une competition sans merci pour creer la meilleure illusion.', '0', 'Français','The Prestige.jpg','The-Prestige.jpg'),
('41', 'The Green Mile', 'Drame', 'Condamne à mort, Surnaturel', '189', '1999', 'Anglais', 'Frank Darabont', 'Tom Hanks', 'Michael Clarke Duncan', 'Paul Edgecomb, gardien-chef d''un penitencier dans les annees 1930, est confronte à un prisonnier geant dote de pouvoirs surnaturels.','0', 'Français','The Green Mile.jpg','The Green Mile.jpg'),
('42', 'The Departed', 'Drame, Thriller', 'Crime, Corruption', '151', '2006', 'Anglais', 'Martin Scorsese', 'Leonardo DiCaprio', 'Matt Damon', 'A Boston, une lutte sans merci oppose la police à la pègre irlandaise. Pour mettre fin au règne du parrain Frank Costello, la police infiltre son gang avec un jeune policier, Billy Costigan. Mais lorsque la vie privee de chaque homme commence à se deliter, une nouvelle lutte pour la survie s''engage.','0', 'Français','The Departed.jpg','The Departed.jpg'),
('43', 'Saving Private Ryan', 'Guerre, Drame', 'Devoir, Sacrifice', '169', '1998', 'Anglais', 'Steven Spielberg', 'Tom Hanks', 'Matt Damon', 'Après le debarquement allie en Normandie, le capitaine John Miller doit retrouver le soldat James Ryan, dont les frères sont tous morts au combat. Avec un groupe de soldats, il se lance à travers la France pour trouver Ryan avant les Allemands.', '0', 'Français','Saving Private Ryan.jpg','Saving Private Ryan3.jpg'),
('44', 'Gladiator', 'Action, Aventure, Drame', 'Loyaute, Vengeance', '155', '2000', 'Anglais', 'Ridley Scott', 'Russell Crowe', 'Joaquin Phoenix', 'Après avoir ete trahi par le fils de l''empereur romain, le general Maximus est condamne à mort et devient un gladiateur. Il utilise sa nouvelle position pour venger sa famille et reprendre le pouvoir de Rome.', '0' , 'Français','Gladiator3.jpg','Gladiator4.jpg'),
('45', 'The Usual Suspects', 'Crime, Thriller', 'Mensonge, Trahison', '106', '1995', 'Anglais', 'Bryan Singer', 'Kevin Spacey', 'Gabriel Byrne', 'Après une fusillade qui a tue de nombreux criminels et policiers, un enquêteur decouvre que le seul survivant, un escroc infâme nomme Verbal, detient les cles de l''affaire. Mais les choses ne sont peut-être pas ce qu''elles semblent être.', '0', 'Français','The Usual Suspects.jpg','The Usual Suspects2.jpg'),
('46', 'The Godfather', 'Crime, Drame', 'Famille, Pouvoir', '175', '1972', 'Anglais', 'Francis Ford Coppola', 'Marlon Brando', 'Al Pacino', 'Pendant les annees 1940, le patriarche de la famille mafieuse Corleone doit gerer les conflits avec les autres familles tout en cherchant un successeur pour son empire criminel.', '0', 'Français','The Godfather.jpeg','The-godfather.jpg');

 INSERT INTO `Livre`(`Id_livre`, `Nom_livre`, `Genre_Livre`, `Theme_Livre`, `Nmbre_Page_Livre`, `Annee_Parution_Livre`, `Langue_Livre`, `Auteur_Livre`, `Emprunt_Livre`, `ISBN_Livre`, `Editeur_Livre`,`Sommaire_Livre`,`Couverture_Livre`)
 Values   
('1',  'À FOND','Roman','Thriller ','272','2021','Français', 'Christian Fillon', '0','Aucun','Indepandant','','A_Fond.jpg'),
('2',  'Aux Confins de l''ete','Roman','Romance','252','2020','Français', 'Esther Stark ', '0','Aucun','Indepandant','C’est une histoire d''amour se deroulant dans un village côtier du sud-ouest de la France.','Aux_Confins_de_l_ete.png'),
('3',  'Data Song - Le Jeu des Lunes','Roman','Science-fiction','384','2021','Français', 'Michel Ettewiller', '0','979-8351915838','Indepandant','Dans un futur proche, la societe est gouvernee par une intelligence artificielle, mais un groupe de rebelles se bat pour liberer l''humanite.','Data_Song_Le_Jeu_des_Lunes.jpg'),
('4',  'A table disait ma grand-mère','Livre de cuisine','Cuisine ','192','2019','Français', 'Patrick Le Tiec', '0','978-2956976805 ','Independant','Ce livre de cuisine contient des recettes traditionnelles bretonnes.','A table disait ma grand-mère.jpg'),
('5',  'Le Cube de Fox-Amphoux','Roman','Fantastique','254 ','2017','Français', 'Philippe Mirmand', '0','979-10-242-0134-8','Independant','Ce livre est l''histoire d''un village isole où des phenomènes etranges se produisent, impliquant un mysterieux cube.','Le Cube de Fox-Amphoux.jpg'),
('6',  'Recolte','Roman','Drame psychologique','150','2020','Français', 'Nathalie Carnesse-Million', '0','979-10-242-0136-2','Independant',': Ce livre suit le parcours de deux personnages, une femme et un adolescent, qui sont tous les deux confrontes à des traumatismes passes.','Recolte.jpg'),
('7',  'Le cycle d''Harmonie. Tome 1 : Londe noire','Roman','Fantasy','285 ','2019 ','Français', 'A.P. Gounon', '0','2226478949','Independant','Dans un monde de magie et de conflits, une jeune fille nommee Harmonie doit se battre pour proteger son peuple et vaincre les forces du mal.','Le cycle d''Harmonie. Tome 1 : Londe noire.jpg'),
('8',  'Ciao Mamie!','Roman','Contemporain','214','2019 ','Français', 'Axelle Rousselot', '0','978-1096259198','Independant','Ce livre suit l''histoire d''une jeune femme qui se rememore les souvenirs qu''elle a partages avec sa grand-mère recemment decedee.','Ciao Mamie!'),
('9', 'Dans mon palais d''argent','Roman','Historique','96 ','2019','Français', 'Anne Sophie Trassard', '0','978-2365694467','Independant','Ce livre se deroule à la cour du roi Louis XIV et suit l''histoire d''une jeune fille nommee Agnès, qui est envoyee à la cour pour devenir dame d''honneur de la reine.','dans_mon_palais_d_argent.jpg'),
('10', 'En Partance','Recueil','Nouvelles','106','2018','Français', 'Monique Louicellier', '0','978-2848687074','Independant','Ce livre contient sept histoires courtes explorant les thèmes de la vieillesse, de la mort et des relations humaines','En Partance.jpg'),
('11', 'Nec plus ultra','Roman','policier','310','2019','Français', 'Philippe Ribagnac', '0',' 979-8478865467','Independant','Un tueur en serie terrorise la ville de Bordeaux, et un inspecteur de police doit resoudre l''affaire avant qu''il ne soit trop tard.','Nec plus ultra.jpg'),
('12', 'Le sourire americain','Roman','contemporain','240','2020','Français', 'Jo Calvi', '0','978-2378491113','Independant','Ce livre suit l''histoire d''un ecrivain Français qui se rend en Amerique pour echapper à une rupture amoureuse et trouver l''inspiration pour son prochain livre.','Le sourire americain.jpeg'),
('13', 'Accord perdu','Roman','Contemporain','166','2019','Français', 'Damian Jade', '0','978-2956872800 ','Independant','Ce livre explore les relations complexes entre deux frères jumeaux, l''un homosexuel et l''autre heterosexuel, dans une famille conservatrice.','Accord perdu.png'),
('14', 'Le temps des cerises','Roman','Historique','364','2020','Français', 'Catarina Viti ', '0','978-2378121545','Independant','Ce livre raconte l''histoire de la Commune de Paris de 1871 à travers les yeux d''une jeune femme nommee Lucie, qui se bat pour la justice sociale et la liberte.','Le temps des cerises.jpg'),
('15', 'Rousses', 'Roman', 'Amour, Famille, Secret', '136', '2018', 'Français', 'Martine Thorre-Gachet', '0', '978-1719978041', 'Independant', 'Dans ce court roman, l''auteure explore les relations familiales et amoureuses à travers le personnage de Françoise, une femme rousse qui doit faire face à de nombreux secrets de famille.','Rousses.jpg'),
('16', 'A mort Aristophane', 'Roman policier', 'Enquête, Meurtre, Antiquite', '190', '2020', 'Français', 'David Naim', '0', '978-2491523088', 'Independant', 'Le celèbre dramaturge grec Aristophane est assassine à Athènes, et c''est au detective amateur Philochore de resoudre l''affaire. L''enquête nous plonge dans l''Antiquite grecque et explore le monde de la comedie.','A mort Aristophane.jpg'),
('17', 'Psychologie martienne', 'Science-fiction', 'Colonisation de Mars, Societe, Psychologie', '202', '2019', 'Français', 'evariste Garnier', '0', '978-2956857827', 'Independant', 'Dans un futur proche, des colons humains ont etabli une colonie sur Mars. Ce roman explore leur vie quotidienne et les defis psychologiques et sociaux auxquels ils sont confrontes en vivant sur une planète etrangère.','psychologie martienne.png'),
('18', 'QUAND VIENT L''HISTOIRE...première partie', 'Roman historique', 'Revolution Française, Famille, Heritage', '376', '2021', 'Français', 'Benjamin P Ledger', '0', '978-3754106114', 'Independant', 'Ce premier tome d''une serie raconte l''histoire de la famille Valmont pendant la Revolution Française. Alors que les evenements bouleversent le pays, la famille doit faire face à des choix difficiles et des conflits internes.','QUAND VIENT L''HISTOIRE...première partie.jpg'),
('19', 'Femme Chiotte', 'Roman noir', 'Criminalite, Prostitution, Violence', '206', '2019', 'Français', 'Amedee Cabanes', '0', '978-2490635077', 'Independant', 'Ce roman explore le monde de la prostitution à travers le personnage d''Annette, une jeune femme qui travaille comme prostituee dans un quartier pauvre. Mais lorsqu''elle se retrouve mêlee à un crime, elle doit tout faire pour sauver sa vie.','Femme Chiotte.png'),
('20', 'Combien de temps ?', 'Roman contemporain', 'Vieillissement, famille, relations intergenerationnelles', '200', '2017', 'Français', 'Agathe GARRIDO', '0', '979-1096-035-538', 'Independant', 'NULL','combien de temps.png'),
('21', 'ODYSSeE D''UN COACH - Chemin conte d''un autonomie', 'Autobiographie', 'Developpement personnel, coaching', '190', '2019', 'Français', 'PhilippeC', '0', '978-10-95686-36-6', 'Independant', 'NULL','Odyssee_D_Un_Coach.jpg'),
('22', 'LA REVANCHE DE MeLINDA', 'Thriller psychologique', 'Vengeance, manipulation, secrets de famille', '320', '2018', 'Français', 'Daniel VEZIEN', '0', '979-10-262-1598-4', 'Independant', 'NULL','La revanche de melinda.png'),
('23', 'Le serment de Davos', 'Thriller economique', 'Corruption, pouvoir, finance', '432', '2020', 'Français', 'ganax', '0', '979-8653811861', 'Independant', 'NULL','Le serment de Davos.png'),
('24', 'Le chat et la souris', 'Roman policier', 'Enquête, meurtre, chantage', '280', '2016', 'Français', 'Housse', '0', '979-10-234-0226-2', 'Independant', 'NULL','Le_Chat_ET_La_Souris.jpeg'),
('25', 'DEMAIN', 'Roman d''amour', 'Amour, reconquête, destin', '208', '2015', 'Français', 'Nathalie Carnesse-Million', '0', '979-10-231-0359-6', 'Independant', 'NULL','Demain.jpg'),
('26', 'CAVALE', 'Roman d''amour', 'Amour, fuite, reconstruction', '188', '2019', 'Français', 'Nathalie Carnesse-Million', '0', '979-10-231-0895-9', 'Independant', 'NULL','CAVALE.jpg'),
('27', 'Laura s''en va', 'Roman contemporain', 'Deuil, famille, voyage', '176', '2018', 'Français', 'Edrd_p', '0', '979-10-262-0273-3', 'Independant', '''NULL','Laura s''en va.png'),
('28', 'Les rebelles amoureuses', 'Roman d''amour', 'Amour, feminisme, engagement', '272', '2021', 'Français', 'Zoe Florent', '0', 'NULL', 'Independant', 'NULL','Les rebelles amoureuses.jpg'),
('29', 'Mon p''tit Flo', 'Roman', 'Vie quotidienne, famille, paternite', '268', '2018', 'Français', 'Stephane Sanc', '0', '978-2-37355-500-2', 'Independant', 'Le livre suit le parcours de Florent, un jeune père de famille confronte aux difficultes de la vie quotidienne et à l''education de son fils.','Mon p''tit Flo.jpg'),
('30', 'Tombes de haut', 'Roman', 'Drame, relations humaines, vie professionnelle', '260', '2021', 'Français', 'Destiny Houedanou', '0', '978-2-37828-275-1', 'Independant', 'L''histoire suit le parcours de deux hommes, l''un employe d''une grande entreprise et l''autre en reconversion professionnelle, confrontes à des evenements dramatiques qui bouleversent leur vie et leurs relations.','Tombes de haut.png'),
('31', 'Le jeu des âmes', 'Roman fantastique', 'Aventure, mystère, spiritualite', '368', '2020', 'Français', 'l''ermitedelamonnaie', '0', '979-10-358-0315-8', 'Independant', 'Le livre suit les aventures d''un jeune garçon nomme Raphaël, qui decouvre un jeu mysterieux capable de lui faire vivre des experiences incroyables et de rencontrer des êtres surnaturels.','Le jeu des âmes.png'),
('32', 'Le Dernier Vagabond', 'Roman d''aventure', 'Voyage, decouverte, survie', '324', '2021', 'Français', 'Andrea Skov', '0', '979-8722325568', 'Independant', 'L''histoire suit le parcours d''un jeune homme nomme Simon qui, après avoir tout perdu, decide de partir sur les routes pour vivre une grande aventure et decouvrir de nouvelles cultures.','Le Dernier Vagabond.png'),
('33', 'LE TOUR D''EDMONDE EN 80 JOURS', 'Roman d''aventure', 'Voyage, defi, amitie', '192', '2017', 'Français', 'Alain Gauvrit', '0', '978-2-36510-231-3', 'Independant', 'L''histoire suit le parcours d''un jeune homme nomme Edmonde qui decide de relever un defi fou en faisant le tour du monde en 80 jours en compagnie de ses amis.','LE TOUR D''EDMONDE EN 80 JOURS.jpg'),
('34', 'Dieu seul pardonne', 'Roman policier', 'Enquête policière', '372', '2017', 'Français', 'GHZ', '0', '978-2378121281', 'Independant', 'L''histoire suit l''enquête d''un inspecteur de police sur une serie de meurtres dans la ville de Marseille.','Dieu seul pardonne.png'),
('35', 'Super pouvoirs d''un simple juriste','Essai / Developpement personnel','techniques juridiques','256','2018','Français','Philippe Ribagnac','0','978-2807308296','Independant','Ma vie de juriste est celle d''un samouraï des temps modernes au service des victimes -riches ou pauvres - de l''impitoyable système actuel.','Super_Pouvoir_D_Un_Simple_Juriste.jpeg'),
('36', 'LES FANTÔMES DE TOUTE UNE VIE', 'Roman', 'Histoire de vie', '242', '2020', 'Français', 'Ben-Nelson Massande Nzambe', 'Disponible', '978-6139477027', 'Independant', 'Le livre relate l''histoire de Michel, un homme qui revient sur son passe et les fantômes qui le hantent.','Les fantomes de toute une vie.png'),
('38', 'Un veritable prince n''a pas besoin de carrosse', 'Roman d''amour', 'Amour et relations', '240', '2019', 'Français', 'Anna Moon', 'Disponible', '979-1097315068', 'Independant', 'Le livre raconte l''histoire d''Audrey, une jeune femme qui tombe amoureuse de Max, un homme qui n''a pas besoin de richesse pour être heureux.','Un veritable prince n''a pas besoin de carosse.png'),
('39', 'IL EST MIDI', 'Roman', 'Vie quotidienne', '172', '2017', 'Français', 'LEON EPEM', 'NULL', '978-2-343-10923-4', 'Independant', 'NULL','Il est midi.png'),
('40', 'L''odyssee d''Annah', 'Roman', 'Aventure, voyage', '282', '2018', 'Français', 'BENEDICTE ROGET', 'NULL', '979-10-228-0384-7', 'Independant', 'NULL','L''odyssee d''Annah.png'),
('41', 'Eau d''or', 'Roman', 'Suspense, mystère', '182', '2020', 'Français', 'Gerard DESHAYES', 'NULL', '979-10-234-0826-9', 'Independant', 'NULL','Eau d''or.png'),
('42', 'La revanche de Melinda', 'Roman', 'Amour, famille', '256', '2020', 'Français', 'Isabelle Marcoux', 'NULL', '978-2-88953-349-8', 'Independant', 'NULL','La revanche de melinda.png'),
('43', 'L''Oiseau du destin', 'Roman', 'Fantastique, aventure', '206', '2019', 'Français', 'Carole2490', 'NULL', '978-2-322-18222-5', 'Independant', 'NULL','L_Oiseau_Du_Destin.png'),
('44', 'LE CIRQUE DE NOe', 'Roman jeunesse', 'Cirque, animaux', '264', '2019', 'Français', 'STEPHANE GASPARINI', 'NULL', '978-2-36183-507-6', 'Independant', 'NULL','Le Cirque De Noe.png'),
('45', 'WANTED GERMAINE', 'Polar', 'Enquête, criminalite', '344', '2018', 'Français', 'Anthony REY', 'NULL', '979-10-92194-54-2', 'Independant', 'NULL','Wanted Germaine.png'),
('46', 'Comme un soir d''automne', 'Nouvelles', 'Vie quotidienne, relations humaines', '112', '2019', 'Français', 'Sorly Veignelly', 'NULL', '978-2-9556485-0-1', 'Independant', 'NULL','Comme un soir d''automne.png');

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


