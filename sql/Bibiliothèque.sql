-- phpMyAdmin SQL Dump
-- version 4.5.4.1
-- http://www.phpmyadmin.net
--
-- Client :  localhost
-- Généré le :  Sam 27 Mai 2023 à 22:19
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
  `Photo_Acteur` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `acteur`
--

INSERT INTO `acteur` (`Id_Acteur`, `Nom_Acteur`, `Photo_Acteur`) VALUES
(1, 'Ryan Gosling', 'Ryan_Gosling.jpg'),
(2, 'Elijah Wood', 'Elijah_Wood.jpg'),
(3, 'Leonardo DiCaprio', 'Leonardo_DiCaprio.jpg'),
(4, 'Tim Robbins', 'Tim_Robbin.jpg'),
(5, 'Tom Hanks', 'Tom_Hanks.jpg'),
(6, 'Matthew McConaughey', 'Matthew_McConaughey.jpg'),
(7, 'Jesse Eisenberg ', 'Jesse_Eisenberg.jpg'),
(8, 'Marlon Brando ', 'Marlon_Brando.jpg'),
(9, 'Rumi Hiiragi', 'Rumi_Hiiragi.jpg'),
(10, 'Christian Bale', 'Christian_Bale.jpg'),
(11, 'Matthew Broderick', 'Matthew_Broderick.jpg'),
(12, 'Vincent Cassel', 'Vincent_Cassel.jpg'),
(13, 'Audrey Tautou ', 'Audrey_Tautou.jpg'),
(14, 'Mark Hamill', 'Mark_Hamill.jpg'),
(15, 'Elijah Wood', 'Elijah_Wood.jpg'),
(16, 'Jodie Foster', 'Jodie_Foster.jpg'),
(17, 'Ford Harrison ', 'Harrison_Ford.jpg'),
(18, 'Liam Neeson', 'Liam_Neeson.jpg'),
(19, 'Sam Neill', 'Sam_Neill.jpg'),
(20, 'Jean-Marc Barr', 'Jean-Marc_Barr.jpg'),
(21, 'Jean Reno', 'Jean_Reno.jpg'),
(22, 'Brigitte Bardot', 'Brigitte_Bardot'),
(23, 'Malcolm McDowell', 'Malcolm_McDowell.jpg'),
(24, 'John Travolta', 'John_Travolta.jpg'),
(25, 'Ray Liotta', 'Ray_Liotta.jpg'),
(26, 'Keanu Reeves', 'Keanu_Reeves.jpg'),
(27, 'Joaquin Phoenix', 'Joaquin_Phoenix.jpg'),
(28, 'Brad Pitt', 'Brad_Pitt.jpg'),
(29, 'Roy Scheider', 'Roy_Scheider.jpg'),
(31, 'Clint Eastwood', 'Clint_Eastwood.jpg'),
(32, 'Toshirô Mifune', 'Toshirô_Mifune.jpg'),
(33, 'Al Pacino', 'Al_Pacino.jpf'),
(36, 'Hugh Jackman', 'Hugh_Jackman.jpg'),
(37, 'Russell Crowe', 'Russell_Crowe.jpg'),
(38, 'Kevin Spacey', 'Kevin_Spacey.jpg'),
(40, 'Emma Stone', 'Emma_Stone.jpg'),
(41, 'Ian McKellen', 'Ian_McKellen.jpg'),
(42, 'Joseph Gordon-Levitt', 'Joseph_Gordon-Levitt.jpg'),
(43, 'Morgan Freeman', 'Morgan_Freeman.jpg'),
(44, 'Robin Wright', 'Robin_Wright.jpg'),
(45, 'Anne Hathaway', 'Anne_Hathaway.jpg'),
(46, 'Andrew Garfield', 'Andrew_Garfield.jpg'),
(47, 'Miyu Irino', 'Miyu_Irino.jpg'),
(48, 'Heath Ledger', 'Heath_Ledger.jpg'),
(49, 'James Earl Jones', 'James_Earl_Jones.jpg'),
(50, 'Hubert Koundé', 'Hubert_Koundé.jpg'),
(51, 'Mathieu Kassovitz', 'Mathieu_Kassovitz.jpg'),
(52, 'Ken Watanabe', 'Ken_Watanabe.jpg'),
(54, 'Viggo Mortensen', 'Viggo_Mortensen.jpg'),
(55, 'Anthony Hopkins', 'Anthony_Hopkins.jpg'),
(56, 'Rutger Hauer', 'Rutger_Hauer.jpg'),
(57, 'Ben Kingsley', 'Ben_Kingsley.jpg'),
(58, 'Laura Dern', 'Laura_Dern.jpg'),
(60, 'Mark Ruffalo', 'Mark_Ruffalo.jpg'),
(62, 'Gary Oldman', 'Gary_Oldman.jpg'),
(63, 'Michel Piccoli', 'Michel_Piccoli.jpg'),
(64, 'Patrick Magee', 'Patrick_Magee.jpg'),
(65, 'Uma Thurman', 'Uma_Thurman.jpg'),
(66, 'Jonah Hill', 'Jonah_Hill.jpg'),
(67, 'Robert De Niro', 'Robert_De_Niro'),
(68, 'Laurence Fishburne', 'Laurence_Fishburne.jpg'),
(69, 'Edward Norton', 'Edward_Norton.jpg'),
(70, 'Robert Shaw', 'Robert_Shaw.jpg'),
(71, 'Fred Ward', 'Fred_Ward.jpg'),
(72, 'Takashi Shimura', 'Takashi_Shimura.jpg'),
(75, 'Diane Keaton', 'Diane_Keaton.jpg'),
(76, 'Michael Clarke Duncan', 'Michael_Clarke_Duncan.jpg'),
(77, 'Matt Damon', 'Matt_Damon.jpg'),
(78, 'Gabriel Byrne', 'Gabriel_Byrne.jpg');

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
  `Photo_Auteur` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `auteur`
--

INSERT INTO `auteur` (`Id_Auteur`, `Nom_Auteur`, `Photo_Auteur`) VALUES
(1, 'Christian Fillon', 'Christian_Fillon.jpg'),
(2, 'Esther Stark', 'Esther_Stark.jpg'),
(3, 'Michel Ettewiller', 'Michel_Ettewiller.jpg'),
(4, 'Patrick Le Tiec', 'Patrick_Le_Tiec.jpg'),
(5, 'Philippe Mirmand', 'Philippe_Mirmand.jpg'),
(6, 'AP Gounon', 'AP_Gounon.jpg'),
(7, 'Axelle Rousselot', 'Axelle_Rousselot.jpg'),
(8, 'Anne Sophie Trassard', 'Anne_Sophie_Trassard.webpg'),
(9, 'Monique Louicellier', 'Monique_Louicellier.jpg'),
(10, 'Philippe Ribagnac', 'Philippe_Ribagnac.jpg'),
(11, 'Jo Calvi', 'Jo_Calvi.jpg'),
(12, 'Damian Jade', 'Damian_Jade.jpg'),
(13, 'Catarina Viti', 'Catarina_Viti.jpg'),
(14, 'Martine Thorre-Gachet', 'Martine_Thorre-Gachet.jpg'),
(15, 'David Naim', 'David_Naim.jpg'),
(16, 'Évariste Garnier', 'Évariste_Garnier.webpg'),
(17, 'Benjamin P Ledger', 'Benjamin_P_Ledger.webpg'),
(18, 'Amédée Cabanes', 'Amédée_Cabanes.jpg'),
(19, 'Agathe GARRIDO', 'Agathe_GARRIDO.jpg'),
(20, 'PhilippeC', 'PhilippeC.jpg'),
(21, 'Daniel VEZIEN', 'Daniel_VEZIEN.jpg'),
(22, 'ganax', 'Exemple.png'),
(23, 'Housse', 'Exemple.png.jpg'),
(24, 'Nathalie Carnesse-Million', 'Nathalie_Carnesse-Million.jpg'),
(25, 'Edrd p', 'Edrd_p.jpg'),
(26, 'Zoé Florent', 'Zoé_Florent.jpg'),
(27, 'Stéphane Sanc', 'Stéphane_Sanc.jpg'),
(28, 'Destiny Houedanou', 'Destiny_Houedanou.jpg'),
(29, 'l\'ermitedelamonnaie', 'Exemple.png'),
(30, 'Andrea Skov', 'Andrea_Skov.jpg'),
(31, 'Alain Gauvrit', 'Alain_Gauvrit.jpg'),
(32, 'GHZ', 'Exemple.png'),
(33, 'Philippe Ribagnac', 'Philippe_Ribagnac.jpg'),
(34, 'Ben-Nelson Massande Nzambe', 'Ben-Nelson_Massande_Nzambe.png'),
(35, 'Anna Moon', 'Anna_Moon.jpg'),
(36, 'LEON EPEM', 'LEON_EPEM.jpg'),
(37, 'BENEDICTE ROGET', 'BENEDICTE_ROGET.jpg'),
(38, 'Gérard DESHAYES', 'Gérard_DESHAYES.jpg'),
(39, 'Isabelle Marcoux', 'Isabelle_Marcoux.jpg'),
(40, 'Carole2490', 'Carole2490.jpg'),
(41, 'STEPHANE GASPARINI', 'STEPHANE_GASPARINI.jpg'),
(42, 'Anthony REY', 'Anthony_REY.jpg'),
(43, 'Sorly Veignelly', 'Sorly_Veignelly.jpg');

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
  `Synopsis_Film` varchar(1000) DEFAULT NULL,
  `Emprunt_Film` int(11) NOT NULL,
  `Sous_Titre_Film` varchar(80) NOT NULL,
  `Couverture_Film` varchar(250) NOT NULL,
  `Background_Film` varchar(250) NOT NULL,
  `lien_youtube` varchar(255) NOT NULL,
  `Extrait_Film` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `film`
--

INSERT INTO `film` (`Id_Film`, `Nom_Film`, `Genre_Film`, `Theme_Film`, `Duree_Film`, `Annee_Parution_Film`, `Langue_Film`, `Realisateurs_Film`, `Acteur1_Film`, `Acteur2_Film`, `Synopsis_Film`, `Emprunt_Film`, `Sous_Titre_Film`, `Couverture_Film`, `Background_Film`, `lien_youtube`, `Extrait_Film`) VALUES
(1, 'La La Land', 'Comedie', 'Amour, rêves, comedie musicale', 128, 2016, 'Anglais', 'Damien Chazelle', 'Ryan Gosling', 'Emma Stone', 'Un pianiste de jazz et une actrice en herbe tombent amoureux à Los Angeles, mais doivent faire des choix difficiles pour reussir leur carrière', 0, 'Français', 'lalaland.webp', 'lalaland.jpg', 'https://www.youtube.com/embed/jOIba1EI6a4', 'https://youtu.be/jOIba1EI6a4'),
(2, 'Le Seigneur des anneaux : La communaute de l’anneau', 'Aventure', 'epopee, amitie', 178, 2001, 'Anglais', 'Peter Jackson', 'Elijah Wood', 'Ian McKellen', 'Un hobbit doit se lancer dans une quête pour detruire un anneau magique avant que les forces du mal ne s\'en emparent', 0, 'Français', 'seigneur-des-anneaux-la-communauté-de-l-anneau-silhouettes2.jpg', 'Le Seigneur des anneaux  La communaute de l\'anneau.png', 'https://www.youtube.com/embed/vvx7m22GGtA', 'https://youtu.be/vvx7m22GGtA'),
(3, 'Inception', 'Science-fiction', 'Rêves, realite', 148, 2010, 'Anglais', 'Christopher Nolan', 'Leonardo DiCaprio', 'Joseph Gordon-Levitt', 'Un voleur experimente doit implanter une idee dans l\'esprit d\'un PDG en penetrant dans ses rêves', 0, 'Français', 'Inception.jpg', 'Inception.jpg', 'https://www.youtube.com/embed/CPTIgILtna8', 'https://youtu.be/CPTIgILtna8'),
(4, 'Les Évades', 'Drame', 'Amitie, espoir, policier', 142, 1994, 'Anglais', 'Frank Darabont', 'Tim Robbins', 'Morgan Freeman', '', 0, 'Français', 'Les évadés.jpg', 'Les Évadés2.jpg', 'https://www.youtube.com/embed/2e8Otbbcowc', 'https://youtu.be/2e8Otbbcowc'),
(5, 'Forrest Gump', 'Comedie ', 'Amour, destin', 142, 1994, 'Anglais', 'Robert Zemeckis', 'Tom Hanks', 'Robin Wright', 'Forrest Gump, un homme simple d\'esprit, traverse les evenements cles de l\'histoire americaine tout en cherchant à retrouver son amour d\'enfance', 0, 'Français', 'Forrest Gump2.jpg', 'Forrest Gump.jpg', 'https://www.youtube.com/embed/7pDDuroFBGM', 'https://youtu.be/7pDDuroFBGM'),
(6, 'Interstellar', 'Science-fiction', 'Espace, temps', 169, 2014, 'Anglais', 'Christopher Nolan', 'Matthew McConaughey', 'Anne Hathaway', 'Un groupe d\'explorateurs doit trouver un nouveau foyer pour l\'humanite alors que la Terre est en train de mourir', 0, 'Français', 'Interstellar4.jpg', 'Interstellar2.jpg', 'https://www.youtube.com/embed/HsPP6xSzQoE', 'https://youtu.be/HsPP6xSzQoE'),
(7, 'The Social Network', 'Drame', 'Reseaux sociaux, ambition', 120, 2010, 'Anglais', 'David Fincher', 'Jesse Eisenberg', 'Andrew Garfield', 'L\'histoire de la creation de Facebook et de la bataille juridique qui s\'ensuit entre ses fondateurs', 0, 'Français', 'The Social Network.jpg', 'The Social Network3.webp', 'https://www.youtube.com/embed/lJwHm-_iojk', 'https://youtu.be/lJwHm-_iojk'),
(8, 'Le Parrain', 'Drame', 'Mafia', 175, 1972, 'Anglais', 'Francis Ford Coppola', 'Marlon Brando', 'Al Pacino', 'En 1945, à New York, les Corleone sont une des cinq familles de la mafia. Don Vito Corleone, "parrain" de cette famille, marie sa fille à un bookmaker. Sollozzo, "parrain" de la famille Tattaglia, propose à Don Vito une association dans le trafic de drogue, mais celui-ci refuse. Sonny, un de ses fils, y est quant à lui favorable.', 0, 'Français', 'Le parrain.jpg', 'Le parrain.jpg', 'https://www.youtube.com/embed/bmtuIhesQWA', 'https://youtu.be/bmtuIhesQWA'),
(9, 'Le voyage de Chihiro', 'Animation', 'Aventure, Fantastique', 125, 2001, 'Japonais', 'Hayao Miyazaki', 'Rumi Hiiragi', 'Miyu Irino', 'Chihiro, 10 ans, a tout d\'une petite fille capricieuse. Elle s\'apprête à emmenager avec ses parents dans une nouvelle demeure. Sur la route, la petite famille se retrouve face à un immense bâtiment rouge au centre duquel s\'ouvre un long tunnel.', 0, 'Français', 'Le voyage de Chihiro3.jpg', 'Le voyage de Chihiro3.jpg', 'https://www.youtube.com/embed/EhIZrZQoHuA', 'https://youtu.be/EhIZrZQoHuA'),
(10, 'The Dark Knight', 'thriller', 'Super-heros, crime, corruption', 152, 2008, 'Anglais', 'Christopher Nolan', 'Christian Bale', 'Heath Ledger', 'Le Chevalier noir doit affronter le Joker, un criminel psychopathe qui sème le chaos dans la ville de Gotham', 0, 'Français', 'The Dark Knight2.jpg', 'The Dark Knight2.jpg', 'https://www.youtube.com/embed/UMgb3hQCb08', 'https://youtu.be/UMgb3hQCb08'),
(11, 'Le Roi Lion', 'Animation', 'Nature, famille', 88, 1994, 'Anglais', 'Roger Allers, Rob Minkoff', 'Matthew Broderick', 'James Earl Jones', 'Le lionceau Simba, heritier du trône, doit affronter son oncle Scar pour defendre son royaume et sa famille', 0, 'Français', 'Le Roi Lion.jpg', 'Le Roi Lion2.jpg', 'https://www.youtube.com/embed/-KfIYw-D4Iw', 'https://youtu.be/-KfIYw-D4Iw'),
(12, 'La Haine', 'Drame', 'Violence, banlieue', 95, 1995, 'Français', 'Mathieu Kassovitz', 'Vincent Cassel', 'Hubert Kounde', 'Trois jeunes de banlieue doivent faire face à la violence et la discrimination de la police', 0, 'Anglais', 'La Haine3.jpg', 'La Haine.jpg', 'https://www.youtube.com/embed/c0-AYnHI2oM', 'https://youtu.be/c0-AYnHI2oM'),
(13, 'Le Fabuleux destin d\'Amelie Poulain', 'Comedie ', 'Amour, imagination', 122, 2001, 'Français', 'Jean-Pierre Jeunet', 'Audrey Tautou', 'Mathieu Kassovitz', 'Une jeune serveuse rêveuse cherche à rendre les gens heureux autour d\'elle', 0, 'Anglais', 'Le Fabuleux destin dAmélie Poulain.webp', 'Le Fabuleux destin dAmelie Poulain.jpg', 'https://www.youtube.com/embed/FBh0Bt5fmEo', 'https://youtu.be/FBh0Bt5fmEo'),
(15, 'Star Wars: Episode IV - Un nouvel espoir', 'Science-fiction', 'Espace', 121, 1977, 'Anglais', 'George Lucas', 'Mark Hamill', 'Harrison Ford', 'Il y a bien longtemps, dans une galaxie très lointaine... La guerre civile fait rage entre l\'Empire galactique et l\'Alliance rebelle. Capturee par les troupes de choc de l\'Empereur menees par le sombre et impitoyable Dark Vador, la princesse Leia Organa dissimule les plans de l\'etoile Noire, une station spatiale invulnerable, à son droïde R2-D2 avec pour mission de les remettre au Jedi Obi-Wan Kenobi.', 0, 'Français', 'Star Wars Episode IV - Un nouvel espoir3.jpg', 'Star Wars Episode IV - Un nouvel espoir.jpg', 'https://www.youtube.com/embed/PNyht4iTMX8', 'https://youtu.be/PNyht4iTMX8'),
(16, 'Le Seigneur des anneaux : Le Retour du roi', 'Aventure', 'Fantastique', 200, 2003, 'Anglais', 'Peter Jackson', 'Elijah Wood', 'Viggo Mortensen', 'Les armees de Sauron ont attaque Minas Tirith, la capitale de Gondor. Jamais ce royaume autrefois puissant n\'a eu autant besoin de son roi. Mais Aragorn trouvera-t-il en lui la volonte d\'accomplir sa destinee ? Tandis que Gandalf s\'efforce de soutenir les forces brisees de Gondor, Theoden exhorte les guerriers de Rohan à se joindre au combat. Mais malgre leur courage et leur loyaute, les forces des Hommes ne sont pas de taille à lutter contre les innombrables legions d\'ennemis qui s\'abattent sur elles...', 0, 'Français', 'Le Seigneur des anneaux  Le Retour du roi3.jpg', 'seigneur-des-anneaux-la-communaute-de-l-anneau-silhouettes.jpg', 'https://www.youtube.com/embed/RCuDRcK0BBM', 'https://youtu.be/RCuDRcK0BBM'),
(17, 'Le Silence des agneaux', 'Thriller', 'Crime', 118, 1991, 'Anglais', 'Jonathan Demme', 'Jodie Foster', 'Anthony Hopkins', 'Clarice Starling, jeune stagiaire du FBI, est chargee d\'interroger le Dr Hannibal Lecter, un celèbre tueur en serie enferme dans un asile psychiatrique de haute securite. Le Dr Lecter, brillant psychiatre mais psychopathe violent, voit immediatement en Clarice un moyen d\'assouvir ses sombres penchants. Entre eux s\'engage un terrifiant jeu du chat et de la souris.', 0, 'Français', 'Le Silence des agneaux2.jpg', 'Le silence des agneaux.jpg', 'https://www.youtube.com/embed/ZDbh9f9GoNM', 'https://youtu.be/ZDbh9f9GoNM'),
(18, 'Blade Runner', 'Science-fiction', 'Neo-noir', 117, 1982, 'Anglais', 'Ridley Scott', 'Harrison Ford', 'Rutger Hauer', 'Un chasseur de primes traque des androïdes renegats dans une version dystopique de Los Angeles en 2019.', 0, 'Français', 'Blade Runner3.jpg', 'Blade Runner2.jpg', 'https://www.youtube.com/embed/5qZ2rXccrvw', 'https://youtu.be/5qZ2rXccrvw'),
(19, 'La Liste de Schindler', 'Drame ', 'Seconde Guerre mondiale', 195, 1993, 'Anglais', 'Steven Spielberg', 'Liam Neeson', 'Ben Kingsley', 'L\'histoire d\'Oskar Schindler, un homme d\'affaires allemand qui a sauve la vie de plus de mille Juifs pendant l\'Holocauste.', 0, 'Français', 'La Liste de Schindler2.jpg', 'La Liste de Schindler2.jpg', 'https://www.youtube.com/embed/ONWtyxzl-GE', 'https://youtu.be/ONWtyxzl-GE'),
(20, 'Jurassic Park', 'Aventure', 'Science-fiction', 127, 1993, 'Anglais', 'Steven Spielberg', 'Sam Neill', 'Laura Dern', 'Des scientifiques visitent un parc d\'attractions avec des dinosaures clones, mais les choses tournent mal.', 0, 'Français', 'Jurassic Park2.jpg', 'Jurassic Park3.jpg', 'https://www.youtube.com/embed/kxNDbxUZxNI', 'https://youtu.be/kxNDbxUZxNI'),
(21, 'Le Grand Bleu', 'Drame', 'Sports aquatiques', 168, 1988, 'Français', 'Luc Besson', 'Jean-Marc Barr', 'Jean Reno', 'Deux amis d\'enfance passionnes de plongee libre poursuivent leur rêve de battre le record du monde de plongee.', 0, 'anglais', 'Le Grand Bleu.jpg', 'Le GrandBleu.jpg', 'https://www.youtube.com/embed/-GfCH-LwlOg', 'https://youtu.be/-GfCH-LwlOg'),
(22, 'Shutter Island', 'Thriller', 'Enquête policière', 138, 2010, 'Anglais', 'Martin Scorsese', 'Leonardo DiCaprio', 'Mark Ruffalo', 'En 1954, un marshal enquête sur la disparition d\'une patiente dans un asile psychiatrique', 0, 'Français', 'Shutter Island3.jpg', 'Shutter Island3.jpg', 'https://www.youtube.com/embed/Hz0ToXuAxag', 'https://youtu.be/Hz0ToXuAxag'),
(23, 'Taxi Driver', 'Drame', 'Psychologie', 113, 1976, 'Anglais', 'Martin Scorsese', 'Robert De Niro', 'Jodie Foster', 'Un veteran de la guerre du Vietnam devient chauffeur de taxi à New York et sombre peu à peu dans la folie', 0, 'Français', 'Taxi Driver.jpg', 'Taxi Driver.jpg', 'https://www.youtube.com/embed/u9M02nrQIF0', 'https://youtu.be/u9M02nrQIF0'),
(24, 'Leon', 'Thriller', 'Tueur à gages', 133, 1994, 'Anglais', 'Luc Besson', 'Jean Reno', 'Gary Oldman', 'Un tueur à gages solitaire et sans scrupules recueille une fillette de 12 ans, Mathilda, dont la famille a ete assassinee par un policier corrompu.', 0, 'Français', 'Leon.jpg', 'Leon.jpg', 'https://www.youtube.com/embed/M242Bp0PcwE', 'https://youtu.be/M242Bp0PcwE'),
(25, 'Le Mepris', 'Drame', 'Relations amoureuses', 101, 1963, 'Français', 'Jean-Luc Godard', 'Brigitte Bardot', 'Michel Piccoli', 'Paul Javal est charge d\'ecrire le scenario d\'un film sur Ulysse pour Fritz Lang, qui doit être tourne à Capri. Mais sa femme, Camille, ne voit pas cette collaboration d\'un bon œil.', 0, 'Français', 'Le Mépris2.jpg', 'Le Mépris.jpg', 'https://www.youtube.com/embed/KH29gVzFz24', 'https://youtu.be/KH29gVzFz24'),
(26, 'Orange mecanique', 'Drame', 'Violence', 137, 1972, 'Anglais', 'Stanley Kubrick', 'Malcolm McDowell', 'Patrick Magee', 'Dans un futur proche, Alex, un jeune delinquant, s\'adonne à la violence avec ses amis. Mais il finit par être capture et soumis à une technique de rehabilitation experimentale.', 0, 'Français', 'Orange mécanique3.jpg', 'Orange mécanique3.jpg', 'https://www.youtube.com/embed/Tys3BFPmxIg', 'https://youtu.be/Tys3BFPmxIg'),
(27, 'Pulp Fiction', 'Drame', 'Violence, Mafia, Comedie noire', 154, 1994, 'Anglais', 'Quentin Tarantino', 'John Travolta', 'Uma Thurman', 'À Los Angeles, un tueur à gages, un boxeur, deux gangsters et la femme d\'un des chefs de la mafia ont des problèmes avec la vie et les affaires.', 0, 'Français', 'Pulp Fiction.jpg', 'Pulp Fiction.jpg', 'https://www.youtube.com/embed/gjAJnzTPltc', 'https://youtu.be/gjAJnzTPltc'),
(28, 'Le Loup de Wall Street', 'Comedie', 'Argent, Corruption', 180, 2013, 'Anglais', 'Martin Scorsese', 'Leonardo DiCaprio', 'Jonah Hill', 'L\'histoire vraie de Jordan Belfort, un courtier en bourse à New York qui a fait fortune en trompant ses clients.', 0, 'Français', 'Le Loup de Wall Street4.jpg', 'Le Loup de Wall Street.jpg', 'https://www.youtube.com/embed/GT9UfSqBz9o', 'https://youtu.be/GT9UfSqBz9o'),
(29, 'Les Affranchis', 'Drame', 'Mafia, Crime organise, Violence', 145, 1990, 'Anglais', 'Martin Scorsese', 'Ray Liotta', 'Robert De Niro', 'L\'ascension de Henry Hill, un jeune homme travaillant pour la mafia de New York.', 0, 'Français', 'Les Affranchis.jpg', 'Les Affranchis2.jpg', 'https://www.youtube.com/embed/0v0NUEmeqbI', 'https://youtu.be/0v0NUEmeqbI'),
(30, 'Matrix', 'Science-fiction', 'Realite, Philosophie, Kung-fu', 136, 1999, 'Anglais', 'The Wachowski Brothers', 'Keanu Reeves', 'Laurence Fishburne', 'Un programmeur informatique decouvre que la realite qu\'il connaît est en fait une simulation creee par des machines intelligentes qui asservissent l\'humanite.', 0, 'Français', 'Matrix2.jpg', 'Matrix2.jpg', 'https://www.youtube.com/embed/8xx91zoASLY', 'https://youtu.be/8xx91zoASLY'),
(31, 'Joker', 'Drame', 'Psychologie', 122, 2019, 'Anglais', 'Todd Phillips', 'Joaquin Phoenix', 'Robert De Niro', 'Dans les annees 1980, à Gotham City, Arthur Fleck, un comedien de stand-up rate, bascule dans la folie et devient le Joker.', 0, 'Français', 'Joker3.jpg', 'Joker2.jpg', 'https://www.youtube.com/embed/OoTx1cYC5u8', 'https://youtu.be/OoTx1cYC5u8'),
(32, 'Fight Club', 'Drame', 'Thriller', 139, 1999, 'Anglais', 'David Fincher', 'Brad Pitt', 'Edward Norton', 'Un homme deprime et insomniaque rencontre un vendeur charismatique de savon, avec qui il fonde un club de combat clandestin qui va rapidement prendre de l\'ampleur.', 0, 'Français', 'Fight Club3.jpg', 'Fight Club2.jpg', 'https://www.youtube.com/embed/c_Sf-XY3t-I', 'https://youtu.be/c_Sf-XY3t-I'),
(33, 'Les Dents de la mer', 'Thriller', 'Horreur', 124, 1975, 'Anglais', 'Steven Spielberg', 'Roy Scheider', 'Robert Shaw', 'Un requin geant attaque les baigneurs d\'une station balneaire, provoquant la panique et la terreur.', 0, 'Français', 'Les Dents de la mer.jpg', 'Les Dents de la mer.jpg', 'https://www.youtube.com/embed/PZDO1hrV16I', 'https://youtu.be/PZDO1hrV16I'),
(34, 'Les Évades de Alcatraz', 'Drame', 'Thriller', 112, 1979, 'Anglais', 'Don Siegel', 'Clint Eastwood', 'Fred Ward', 'En 1960, trois detenus s\'evadent de la celèbre prison d\'Alcatraz, situee sur une île au large de San Francisco.', 0, 'Français', 'Les Évadés de Alcatraz.jpg', 'Les Évadés de Alcatraz2.jpg ', 'https://www.youtube.com/embed/KSS0fH9zzFY', 'https://youtu.be/KSS0fH9zzFY'),
(35, 'Les Sept Samouraïs', 'Drame', 'Action', 208, 1954, 'Japonais', 'Akira Kurosawa', 'Toshirô Mifune', 'Takashi Shimura', 'Dans le Japon medieval, un village paysan fait appel à sept samouraïs pour les proteger des bandits qui les pillent regulièrement.', 0, 'Français', 'Les Sept Samouraïs2.webp', 'Les Sept Samouraïs2.webp', 'https://www.youtube.com/embed/KJmVK4EUbgU', 'https://youtu.be/KJmVK4EUbgU'),
(36, 'The Godfather: Part II', 'Drame', 'Famille criminelle', 202, 1974, 'Anglais', 'Francis Ford Coppola', 'Al Pacino', 'Robert De Niro', 'Michael Corleone, nouveau parrain de la famille Corleone, tente de conserver la paix et la prosperite dans l\'empire criminel de sa famille.', 0, 'Français', 'The Godfather Part II3.webp', 'The Godfather Part II2.webp', 'https://www.youtube.com/embed/9O1Iy9od7-A', 'https://youtu.be/9O1Iy9od7-A'),
(37, 'The Shawshank Redemption', 'Drame', 'Prison, Amitie', 142, 1994, 'Anglais', 'Frank Darabont', 'Tim Robbins', 'Morgan Freeman', 'Andy Dufresne, banquier injustement condamne à la prison à vie, se lie d\'amitie avec Red, un detenu cynique mais avise.', 0, 'Français', 'The Shawshank Redemption2.jpg', 'The Shawshank Redemption2.jpg', 'https://www.youtube.com/embed/NmzuHjWmXOc', 'https://youtu.be/NmzuHjWmXOc'),
(38, 'Goodfellas', 'Drame', 'Famille criminelle', 146, 1990, 'Anglais', 'Martin Scorsese', 'Robert De Niro', 'Ray Liotta', 'Henry Hill, un jeune homme ambitieux, gravit les echelons dans une famille mafieuse mais doit faire face aux consequences de ses actions.', 0, 'Français', 'Goodfellas3.jpg', 'Goodfellas2.jpg', 'https://www.youtube.com/embed/2ilzidi_J8Q', 'https://youtu.be/2ilzidi_J8Q'),
(39, 'The Godfather: Part III', 'Drame', 'Famille criminelle', 162, 1990, 'Anglais', 'Francis Ford Coppola', 'Al Pacino', 'Diane Keaton', 'Michael Corleone tente de se rehabiliter et de faire entrer sa famille dans la legalite, mais les liens avec le crime ne sont jamais loin.', 0, 'Français', 'The Godfather Part II3.webp', 'the-godfather-the-godfather-part-iii.jpeg', 'https://www.youtube.com/embed/UUkG37KSWf0', 'https://youtu.be/UUkG37KSWf0'),
(40, 'The Prestige', 'Drame', 'Magie, Rivalite', 130, 2006, 'Anglais', 'Christopher Nolan', 'Hugh Jackman', 'Christian Bale', 'Deux magiciens rivaux du XIXe siècle s\'affrontent dans une competition sans merci pour creer la meilleure illusion.', 0, 'Français', 'The Prestige.jpg', 'The-Prestige.jpg', 'https://www.youtube.com/embed/ELq7V8vkekI', 'https://youtu.be/ELq7V8vkekI'),
(41, 'The Green Mile', 'Drame', 'Condamne à mort, Surnaturel', 189, 1999, 'Anglais', 'Frank Darabont', 'Tom Hanks', 'Michael Clarke Duncan', 'Paul Edgecomb, gardien-chef d\'un penitencier dans les annees 1930, est confronte à un prisonnier geant dote de pouvoirs surnaturels.', 0, 'Français', 'The Green Mile.jpg', 'The Green Mile.jpg', 'https://www.youtube.com/embed/Ki4haFrqSrw', 'https://youtu.be/Ki4haFrqSrw'),
(42, 'The Departed', 'Thriller', 'Crime, Corruption', 151, 2006, 'Anglais', 'Martin Scorsese', 'Leonardo DiCaprio', 'Matt Damon', 'A Boston, une lutte sans merci oppose la police à la pègre irlandaise. Pour mettre fin au règne du parrain Frank Costello, la police infiltre son gang avec un jeune policier, Billy Costigan. Mais lorsque la vie privee de chaque homme commence à se deliter, une nouvelle lutte pour la survie s\'engage.', 0, 'Français', 'The Departed.jpg', 'The Departed.jpg', 'https://www.youtube.com/embed/iojhqm0JTW4', 'https://youtu.be/iojhqm0JTW4'),
(43, 'Saving Private Ryan', 'Drame', 'Devoir, Sacrifice', 169, 1998, 'Anglais', 'Steven Spielberg', 'Tom Hanks', 'Matt Damon', 'Après le debarquement allie en Normandie, le capitaine John Miller doit retrouver le soldat James Ryan, dont les frères sont tous morts au combat. Avec un groupe de soldats, il se lance à travers la France pour trouver Ryan avant les Allemands.', 0, 'Français', 'Saving Private Ryan.jpg', 'Saving Private Ryan3.jpg', 'https://www.youtube.com/embed/S1Qj_AVu2pA', 'https://youtu.be/S1Qj_AVu2pA'),
(44, 'Gladiator', 'Action', 'Loyaute, Vengeance', 155, 2000, 'Anglais', 'Ridley Scott', 'Russell Crowe', 'Joaquin Phoenix', 'Après avoir ete trahi par le fils de l\'empereur romain, le general Maximus est condamne à mort et devient un gladiateur. Il utilise sa nouvelle position pour venger sa famille et reprendre le pouvoir de Rome.', 0, 'Français', 'Gladiator3.jpg', 'Gladiator4.jpg', 'https://www.youtube.com/embed/ChcgxBAzrks', 'https://youtu.be/ChcgxBAzrks'),
(45, 'The Usual Suspects', 'Thriller', 'Mensonge, Trahison', 106, 1995, 'Anglais', 'Bryan Singer', 'Kevin Spacey', 'Gabriel Byrne', 'Après une fusillade qui a tue de nombreux criminels et policiers, un enquêteur decouvre que le seul survivant, un escroc infâme nomme Verbal, detient les cles de l\'affaire. Mais les choses ne sont peut-être pas ce qu\'elles semblent être.', 0, 'Français', 'The Usual Suspects.jpg', 'The Usual Suspects2.jpg', 'https://www.youtube.com/embed/oiXdPolca5w', 'https://youtu.be/oiXdPolca5w'),
(46, 'The Godfather', 'Drame', 'Famille, Pouvoir', 175, 1972, 'Anglais', 'Francis Ford Coppola', 'Marlon Brando', 'Al Pacino', 'Pendant les annees 1940, le patriarche de la famille mafieuse Corleone doit gerer les conflits avec les autres familles tout en cherchant un successeur pour son empire criminel.', 0, 'Français', 'The Godfather Part II2.webp', 'The-godfather.jpg', 'https://www.youtube.com/embed/UaVTIH8mujA', 'https://youtu.be/UaVTIH8mujA');

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
  `Couverture_Livre` varchar(250) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `livre`
--

INSERT INTO `livre` (`Id_livre`, `Nom_livre`, `Genre_Livre`, `Theme_Livre`, `Nmbre_Page_Livre`, `Annee_Parution_Livre`, `Langue_Livre`, `Auteur_Livre`, `Emprunt_Livre`, `Sommaire_Livre`, `ISBN_Livre`, `Editeur_Livre`, `Couverture_Livre`) VALUES
(1, 'À FOND', 'Thriller', 'Thriller ', 272, 2021, 'Français', 'Christian Fillon', 0, '', 'Aucun', 'Indepandant', 'A_Fond.jpg'),
(2, 'Aux Confins de l\'été', 'Romance', 'Romance', 252, 2020, 'Français', 'Esther Stark ', 0, 'C’est une histoire d\'amour se déroulant dans un village côtier du sud-ouest de la France.', 'Aucun', 'Indepandant', 'Aux_Confins_de_l_ete.png'),
(3, 'Data Song - Le Jeu des Lunes', 'Science-fiction', 'Science-fiction', 384, 2021, 'Français', 'Michel Ettewiller', 0, 'Dans un futur proche, la société est gouvernée par une intelligence artificielle, mais un groupe de rebelles se bat pour libérer l\'humanité.', '979-8351915838', 'Indepandant', 'Data_Song_Le_Jeu_des_Lunes.jpg'),
(4, 'A table disait ma grand-mère', 'Cuisine', 'Cuisine ', 192, 2019, 'Français', 'Patrick Le Tiec', 0, 'Ce livre de cuisine contient des recettes traditionnelles bretonnes.', '978-2956976805 ', 'Indépendant', 'A table disait ma grand-mere.jpg'),
(5, 'Le Cube de Fox-Amphoux', 'Fantastique', 'Fantastique', 254, 2017, 'Français', 'Philippe Mirmand', 0, 'Ce livre est l\'histoire d\'un village isolé où des phénomènes étranges se produisent, impliquant un mystérieux cube.', '979-10-242-0134-8', 'Indépendant', 'Le Cube de Fox-Amphoux.jpg'),
(6, 'Récolte', 'Drame', 'Drame', 150, 2020, 'Français', 'Nathalie Carnesse-Million', 0, ': Ce livre suit le parcours de deux personnages, une femme et un adolescent, qui sont tous les deux confrontés à des traumatismes passés.', '979-10-242-0136-2', 'Indépendant', 'Recolte.jpg'),
(7, 'Le cycle d\'Harmonie. Tome 1 : Londe noire', 'Fantasy', 'Fantasy', 285, 2019, 'Français', 'A.P. Gounon', 0, 'Dans un monde de magie et de conflits, une jeune fille nommée Harmonie doit se battre pour protéger son peuple et vaincre les forces du mal.', '2226478949', 'Indépendant', 'Le cycle d\'Harmonie. Tome 1 : Londe noire.jpg'),
(8, 'Ciao Mamie!', 'Contemporain', 'Contemporain', 214, 2019, 'Français', 'Axelle Rousselot', 0, 'Ce livre suit l\'histoire d\'une jeune femme qui se remémore les souvenirs qu\'elle a partagés avec sa grand-mère récemment décédée.', '978-1096259198', 'Indépendant', 'Ciao Mamie!'),
(9, 'Dans mon palais d\'argent', 'Historique', 'Historique', 96, 2019, 'Français', 'Anne Sophie Trassard', 0, 'Ce livre se déroule à la cour du roi Louis XIV et suit l\'histoire d\'une jeune fille nommée Agnès, qui est envoyée à la cour pour devenir dame d\'honneur de la reine.', '978-2365694467', 'Indépendant', 'dans_mon_palais_d_argent.jpg'),
(10, 'En Partance', 'Recueil', 'Nouvelles', 106, 2018, 'Français', 'Monique Louicellier', 0, 'Ce livre contient sept histoires courtes explorant les thèmes de la vieillesse, de la mort et des relations humaines', '978-2848687074', 'Independant', 'En Partance.jpg'),
(11, 'Nec plus ultra', 'Policier', 'policier', 310, 2019, 'Français', 'Philippe Ribagnac', 0, 'Un tueur en série terrorise la ville de Bordeaux, et un inspecteur de police doit résoudre l\'affaire avant qu\'il ne soit trop tard.', ' 979-8478865467', 'Independant', 'Nec plus ultra.jpg'),
(12, 'Le sourire américain', 'Contemporain', 'contemporain', 240, 2020, 'Français', 'Jo Calvi', 0, 'Ce livre suit l\'histoire d\'un écrivain Français qui se rend en Amérique pour échapper à une rupture amoureuse et trouver l\'inspiration pour son prochain livre.', '978-2378491113', 'Indépendant', 'Le sourire américain.jpeg'),
(13, 'Accord perdu', 'Contemporain', 'Contemporain', 166, 2019, 'Français', 'Damian Jade', 0, 'Ce livre explore les relations complexes entre deux frères jumeaux, l\'un homosexuel et l\'autre hétérosexuel, dans une famille conservatrice.', '978-2956872800 ', 'Indépendant', 'Accord perdu.png'),
(14, 'Le temps des cerises', 'Historique', 'Historique', 364, 2020, 'Français', 'Catarina Viti ', 0, 'Ce livre raconte l\'histoire de la Commune de Paris de 1871 à travers les yeux d\'une jeune femme nommée Lucie, qui se bat pour la justice sociale et la liberté.', '978-2378121545', 'Indépendant', 'Le temps des cerises.jpg'),
(15, 'Rousses', 'Romance', 'Romance', 136, 2018, 'Français', 'Martine Thorre-Gachet', 0, 'Dans ce court roman, l\'auteure explore les relations familiales et amoureuses à travers le personnage de Françoise, une femme rousse qui doit faire face à de nombreux secrets de famille.', '978-1719978041', 'Indépendant', 'Rousses.jpg'),
(16, 'A mort Aristophane', 'Policier ', 'policier', 190, 2020, 'Français', 'David Naim', 0, 'Le célèbre dramaturge grec Aristophane est assassiné à Athènes, et c\'est au détective amateur Philochore de résoudre l\'affaire. L\'enquête nous plonge dans l\'Antiquité grecque et explore le monde de la comédie.', '978-2491523088', 'Indépendant', 'A mort Aristophane.jpg'),
(17, 'Psychologie martienne', 'Science-fiction', 'Science-fiction', 202, 2019, 'Français', 'Évariste Garnier', 0, 'Dans un futur proche, des colons humains ont établi une colonie sur Mars. Ce roman explore leur vie quotidienne et les défis psychologiques et sociaux auxquels ils sont confrontés en vivant sur une planète étrangère.', '978-2956857827', 'Indépendant', 'psychologie martienne.png'),
(18, 'QUAND VIENT L\'HISTOIRE...première partie', 'Historique', 'historique', 376, 2021, 'Français', 'Benjamin P Ledger', 0, 'Ce premier tome d\'une série raconte l\'histoire de la famille Valmont pendant la Révolution Française. Alors que les événements bouleversent le pays, la famille doit faire face à des choix difficiles et des conflits internes.', '978-3754106114', 'Indépendant', 'QUAND VIENT L HISTOIRE...première partie.jpg'),
(19, 'Femme Chiotte', 'Policier ', 'Policier', 206, 2019, 'Français', 'Amédée Cabanes', 0, 'Ce roman explore le monde de la prostitution à travers le personnage d\'Annette, une jeune femme qui travaille comme prostituée dans un quartier pauvre. Mais lorsqu\'elle se retrouve mêlée à un crime, elle doit tout faire pour sauver sa vie.', '978-2490635077', 'Indépendant', 'Femme Chiotte.png'),
(20, 'Combien de temps ?', 'Contemporain', 'contemporain', 200, 2017, 'Français', 'Agathe GARRIDO', 0, 'NULL', '979-1096-035-538', 'Indépendant', 'combien de temps.png'),
(21, 'ODYSSÉE D\'UN COACH - Chemin conté d\'un autonomie', 'Autobiographie', 'Développement personnel, coaching', 190, 2019, 'Français', 'PhilippeC', 0, 'NULL', '978-10-95686-36-6', 'Indépendant', 'Odyssee_D_Un_Coach.jpg'),
(22, 'LA REVANCHE DE MÉLINDA', 'Thriller ', 'psychologique', 320, 2018, 'Français', 'Daniel VEZIEN', 0, 'NULL', '979-10-262-1598-4', 'Indépendant', 'La revanche de melinda.png'),
(23, 'Le serment de Davos', 'Thriller', 'Psychologique', 432, 2020, 'Français', 'ganax', 0, 'NULL', '979-8653811861', 'Indépendant', 'Le serment de Davos.png'),
(24, 'Le chat et la souris', 'Policier ', 'policier', 280, 2016, 'Français', 'Housse', 0, 'NULL', '979-10-234-0226-2', 'Indépendant', 'Le_Chat_ET_La_Souris.jpeg'),
(25, 'DEMAIN', 'Romance', 'Romance', 208, 2015, 'Français', 'Nathalie Carnesse-Million', 0, 'NULL', '979-10-231-0359-6', 'Indépendant', 'Demain.jpg'),
(26, 'CAVALE', 'Romance ', 'Romance', 188, 2019, 'Français', 'Nathalie Carnesse-Million', 0, 'NULL', '979-10-231-0895-9', 'Indépendant', 'CAVALE.jpg'),
(27, 'Laura s\'en va', 'Contemporain', 'contemporain', 176, 2018, 'Français', 'Edrd_p', 0, '\'NULL', '979-10-262-0273-3', 'Indépendant', 'Laura s en va.png'),
(28, 'Les rebelles amoureuses', 'Romance', 'Romance', 272, 2021, 'Français', 'Zoé Florent', 0, 'NULL', 'NULL', 'Indépendant', 'Les rebelles amoureuses.jpg'),
(29, 'Mon p\'tit Flo', 'Aventure', 'Vie quotidienne, famille, paternité', 268, 2018, 'Français', 'Stéphane Sanc', 0, 'Le livre suit le parcours de Florent, un jeune père de famille confronté aux difficultés de la vie quotidienne et à l\'éducation de son fils.', '978-2-37355-500-2', 'Indépendant', 'Mon p tit Flo.jpg'),
(30, 'Tombés de haut', 'Drame', 'Drame', 260, 2021, 'Français', 'Destiny Houedanou', 0, 'L\'histoire suit le parcours de deux hommes, l\'un employé d\'une grande entreprise et l\'autre en reconversion professionnelle, confrontés à des événements dramatiques qui bouleversent leur vie et leurs relations.', '978-2-37828-275-1', 'Indépendant', 'Tombes de haut.png'),
(31, 'Le jeu des âmes', 'Fantastique', 'fantastique', 368, 2020, 'Français', 'l\'ermitedelamonnaie', 0, 'Le livre suit les aventures d\'un jeune garçon nommé Raphaël, qui découvre un jeu mystérieux capable de lui faire vivre des expériences incroyables et de rencontrer des êtres surnaturels.', '979-10-358-0315-8', 'Indépendant', 'Le jeu des ames.png'),
(32, 'Le Dernier Vagabond', 'Aventure', 'Aventure', 324, 2021, 'Français', 'Andrea Skov', 0, 'L\'histoire suit le parcours d\'un jeune homme nommé Simon qui, après avoir tout perdu, décide de partir sur les routes pour vivre une grande aventure et découvrir de nouvelles cultures.', '979-8722325568', 'Indépendant', 'Le Dernier Vagabond.png'),
(33, 'LE TOUR D\'EDMONDE EN 80 JOURS', 'Aventure', 'aventure', 192, 2017, 'Français', 'Alain Gauvrit', 0, 'L\'histoire suit le parcours d\'un jeune homme nommé Edmonde qui décide de relever un défi fou en faisant le tour du monde en 80 jours en compagnie de ses amis.', '978-2-36510-231-3', 'Indépendant', 'LE TOUR D EDMONDE EN 80 JOURS.jpg'),
(34, 'Dieu seul pardonne', 'Policier', 'policier', 372, 2017, 'Français', 'GHZ', 0, 'L\'histoire suit l\'enquête d\'un inspecteur de police sur une série de meurtres dans la ville de Marseille.', '978-2378121281', 'Indépendant', 'Dieu seul pardonne.png'),
(35, 'Super pouvoirs d\'un simple juriste', 'Développement personnel', 'techniques juridiques', 256, 2018, 'Français', 'Philippe Ribagnac', 0, 'Ma vie de juriste est celle d\'un samouraï des temps modernes au service des victimes -riches ou pauvres - de l\'impitoyable système actuel.', '978-2807308296', 'Indépendant', 'Super_Pouvoir_D_Un_Simple_Juriste.jpeg'),
(36, 'LES FANTÔMES DE TOUTE UNE VIE', 'Autobiographie', 'Histoire de vie', 242, 2020, 'Français', 'Ben-Nelson Massande Nzambe', 0, 'Le livre relate l\'histoire de Michel, un homme qui revient sur son passé et les fantômes qui le hantent.', '978-6139477027', 'Indépendant', 'Les fantomes de toute une vie.png'),
(38, 'Un véritable prince n\'a pas besoin de carrosse', 'Romance', 'Romance', 240, 2019, 'Français', 'Anna Moon', 0, 'Le livre raconte l\'histoire d\'Audrey, une jeune femme qui tombe amoureuse de Max, un homme qui n\'a pas besoin de richesse pour être heureux.', '979-1097315068', 'Indépendant', 'Un veritable prince n a pas besoin de carosse.png'),
(39, 'IL EST MIDI', 'Aventure', 'Vie quotidienne', 172, 2017, 'Français', 'LEON EPEM', 0, 'NULL', '978-2-343-10923-4', 'Indépendant', 'Il est midi.png'),
(40, 'L\'odyssée d\'Annah', 'Aventure', 'Aventure, voyage', 282, 2018, 'Français', 'BENEDICTE ROGET', 0, 'NULL', '979-10-228-0384-7', 'Indépendant', 'L odyssee d Annah.png'),
(41, 'Eau d\'or', 'Suspense', 'Suspense', 182, 2020, 'Français', 'Gérard DESHAYES', 0, 'NULL', '979-10-234-0826-9', 'Indépendant', 'Eau d\'or.png'),
(42, 'La revanche de Mélinda', 'Romance', 'Amour', 256, 2020, 'Français', 'Isabelle Marcoux', 0, 'NULL', '978-2-88953-349-8', 'Indépendant', 'La revanche de melinda.png'),
(43, 'L\'Oiseau du destin', 'Fantastique', 'Fantastique, aventure', 206, 2019, 'Français', 'Carole2490', 0, 'NULL', '978-2-322-18222-5', 'Indépendant', 'L_Oiseau_Du_Destin.png'),
(44, 'LE CIRQUE DE NOÉ', 'Jeunesse', 'jeunesse', 264, 2019, 'Français', 'STEPHANE GASPARINI', 0, 'NULL', '978-2-36183-507-6', 'Indépendant', 'Le Cirque De Noe.png'),
(45, 'WANTED GERMAINE', 'Policier', 'Enquête, criminalité', 344, 2018, 'Français', 'Anthony REY', 0, 'NULL', '979-10-92194-54-2', 'Indépendant', 'Wanted Germaine.png'),
(46, 'Comme un soir d\'automne', 'Nouvelles', 'Vie quotidienne, relations humaines', 112, 2019, 'Français', 'Sorly Veignelly', 0, 'NULL', '978-2-9556485-0-1', 'Indépendant', 'Comme un soir d\'automne.png');

-- --------------------------------------------------------

--
-- Structure de la table `realisateurs`
--

CREATE TABLE `realisateurs` (
  `Id_realisateurs` int(11) NOT NULL,
  `Nom_realisateurs` varchar(50) NOT NULL,
  `Photo_realisateurs` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `realisateurs`
--

INSERT INTO `realisateurs` (`Id_realisateurs`, `Nom_realisateurs`, `Photo_realisateurs`) VALUES
(1, 'Damien Chazelle', 'Damien_Chazelle.jpg'),
(2, 'Peter Jackson', 'Peter_Jackson.jpg'),
(3, 'Christopher Nolan', 'Christopher_Nolan.png'),
(4, 'Frank Darabont', 'Frank_Darabont.jpg'),
(5, 'Robert Zemeckis', 'Robert_Zemeckis.jpg'),
(6, 'David Fincher', 'David_Fincher.png'),
(7, 'Francis Ford Coppola', 'Francis_Ford_Coppola.jpg'),
(8, 'Ford Coppola', 'Ford_Coppola.jpg'),
(9, 'Roger Allers', 'Roger_Allers.png'),
(10, 'Mathieu Kassovitz', 'Mathieu_Kassovitz.jpg'),
(11, 'Jean-Pierre Jeunet', 'Jean-Pierre_Jeunet.jpg'),
(12, 'George Lucas', 'George_Lucas.jpg'),
(13, 'Jonathan Demme', 'Jonathan_Demme.jpg'),
(14, 'Ridley Scott', 'Ridley_Scott.png'),
(15, 'Steven Spielberg', 'Steven_Spielberg.jpg'),
(16, 'Luc Besson', 'Luc_Besson.jpg'),
(17, 'Martin Scorsese', 'Martin_Scorsese.jpg'),
(18, 'Jean-Luc Godard', 'Jean-Luc_Godard.jpg'),
(19, 'Stanley Kubrick', 'Stanley_Kubrick.jpg'),
(20, 'Quentin Tarantino', 'Quentin_Tarantino.jpg'),
(21, 'Brothers The Wachowski', 'The_Wachowski_Brothers.jpg'),
(22, 'Todd Phillips', 'Todd_Phillips.jpg'),
(23, 'Don Siegel', 'Don_Siegel.jpg'),
(24, 'Akira Kurosawa', 'Akira_Kurosawa.jpg'),
(25, 'Bryan Singer', 'Bryan_Singer.jpg');

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

--
-- Index pour les tables exportées
--

--
-- Index pour la table `acteur`
--
ALTER TABLE `acteur`
  ADD PRIMARY KEY (`Id_Acteur`);

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
  ADD PRIMARY KEY (`Id_Film`);

--
-- Index pour la table `livre`
--
ALTER TABLE `livre`
  ADD PRIMARY KEY (`Id_livre`);

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
  MODIFY `Id_Acteur` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=79;
--
-- AUTO_INCREMENT pour la table `administrateur`
--
ALTER TABLE `administrateur`
  MODIFY `Id_Administrateurs` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `auteur`
--
ALTER TABLE `auteur`
  MODIFY `Id_Auteur` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;
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
-- AUTO_INCREMENT pour la table `livre`
--
ALTER TABLE `livre`
  MODIFY `Id_livre` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;
--
-- AUTO_INCREMENT pour la table `realisateurs`
--
ALTER TABLE `realisateurs`
  MODIFY `Id_realisateurs` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;
--
-- AUTO_INCREMENT pour la table `utilisateurs`
--
ALTER TABLE `utilisateurs`
  MODIFY `Id_Utilisateurs` int(11) NOT NULL AUTO_INCREMENT;
--
-- Contraintes pour les tables exportées
--

--
-- Contraintes pour la table `administrateur`
--
ALTER TABLE `administrateur`
  ADD CONSTRAINT `Administrateur_Bibliothecaire0_FK` FOREIGN KEY (`Id_Bibliothecaire`) REFERENCES `bibliothecaire` (`Id_Bibliothecaire`);

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

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
