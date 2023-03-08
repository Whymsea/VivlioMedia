#------------------------------------------------------------
#        Script MySQL.
#------------------------------------------------------------


#------------------------------------------------------------
# Table: Livre
#------------------------------------------------------------

CREATE TABLE Livre(
        Id_livre             Int  Auto_increment  NOT NULL ,
        Nom_livre            Varchar (50) NOT NULL ,
        Genre_Livre          Varchar (50) NOT NULL ,
        Theme_Livre          Varchar (50) NOT NULL ,
        Nmbre_Page_Livre     Int NOT NULL ,
        Annee_Parution_Livre Date NOT NULL ,
        Langue_Livre         Varchar (50) NOT NULL ,
        Auteur_Livre         Varchar (50) NOT NULL ,
        Emprunt_Livre        Int NOT NULL ,
        Sommaire_Livre       Varchar (300) NOT NULL,
        ISBN_Livre           Varchar (20) NOT NULL,
        Editeur_Livre        Varchar (40) NOT NULL,
        Couverture_Livre     Varchar (250)
	,CONSTRAINT Livre_PK PRIMARY KEY (Id_livre)
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: Film
#------------------------------------------------------------

CREATE TABLE Film(
        Id_Film             Int  Auto_increment  NOT NULL ,
        Nom_Film            Varchar (50) NOT NULL ,
        Genre_Film          Varchar (50) NOT NULL ,
        Theme_Film          Varchar (50) NOT NULL ,
        Duree_Film          Int NOT NULL ,
        Annee_Parution_Film Date NOT NULL ,
        Langue_Film         Varchar (50) NOT NULL ,
        Realisateurs_Film   Varchar (50) NOT NULL ,
        Casting_Film        Varchar (150) NOT NULL ,
        Synopsis_Film       Varchar (500) NOT NULL ,
        Emprunt_Film        Int NOT NULL,
        Sous_Titre_Film     Varchar (20) NOT NULL,
        Couverture_Film     Varchar (250) NULL ,
	,CONSTRAINT Film_PK PRIMARY KEY (Id_Film)
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: Bibliothecaire
#------------------------------------------------------------

CREATE TABLE Bibliothecaire(
        Id_Bibliothecaire     Int  Auto_increment  NOT NULL ,
        Nom_Bibliothecaire    Varchar (50) NOT NULL ,
        Prenom_Bibliothecaire Varchar (50) NOT NULL ,
        Mail_Bibliothecaire   Varchar (50) NOT NULL ,
        Id_livre              Int NOT NULL ,
        Id_Film               Int NOT NULL
	,CONSTRAINT Bibliothecaire_PK PRIMARY KEY (Id_Bibliothecaire)
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: Administrateur
#------------------------------------------------------------

CREATE TABLE Administrateur(
        Id_Administrateurs     Int  Auto_increment  NOT NULL ,
        Nom_Administrateurs    Varchar (50) NOT NULL ,
        Prenom_Administrateurs Varchar (50) NOT NULL ,
        Mail_Administrateurs   Varchar (50) NOT NULL ,
        Id_Bibliothecaire      Int NOT NULL
	,CONSTRAINT Administrateur_PK PRIMARY KEY (Id_Administrateurs)
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: Commentaire
#------------------------------------------------------------

CREATE TABLE Commentaire(
        Id_Commentaire      Int  Auto_increment  NOT NULL ,
        Contenu_Commentaire Varchar (300) NOT NULL ,
        Note_Commentaire    Int NOT NULL ,
        Id_Utilisateurs     Int NOT NULL ,
        Id_livre            Int NOT NULL ,
        Id_Film             Int NOT NULL
	,CONSTRAINT Commentaire_PK PRIMARY KEY (Id_Commentaire)
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: Utilisateurs
#------------------------------------------------------------

CREATE TABLE Utilisateurs(
        Id_Utilisateurs     Int  Auto_increment  NOT NULL ,
        Nom_Utilisateurs    Varchar (50) NOT NULL ,
        Prenom_Utilisateurs Varchar (50) NOT NULL ,
        Mail_Utilisateurs   Varchar (50) NOT NULL ,
        Id_Commentaire      Int NOT NULL
	,CONSTRAINT Utilisateurs_PK PRIMARY KEY (Id_Utilisateurs)
)ENGINE=InnoDB;




ALTER TABLE Bibliothecaire
	ADD CONSTRAINT Bibliothecaire_Livre0_FK
	FOREIGN KEY (Id_livre)
	REFERENCES Livre(Id_livre);

ALTER TABLE Bibliothecaire
	ADD CONSTRAINT Bibliothecaire_Film1_FK
	FOREIGN KEY (Id_Film)
	REFERENCES Film(Id_Film);

ALTER TABLE Administrateur
	ADD CONSTRAINT Administrateur_Bibliothecaire0_FK
	FOREIGN KEY (Id_Bibliothecaire)
	REFERENCES Bibliothecaire(Id_Bibliothecaire);

ALTER TABLE Commentaire
	ADD CONSTRAINT Commentaire_Utilisateurs0_FK
	FOREIGN KEY (Id_Utilisateurs)
	REFERENCES Utilisateurs(Id_Utilisateurs);

ALTER TABLE Commentaire
	ADD CONSTRAINT Commentaire_Livre1_FK
	FOREIGN KEY (Id_livre)
	REFERENCES Livre(Id_livre);

ALTER TABLE Commentaire
	ADD CONSTRAINT Commentaire_Film2_FK
	FOREIGN KEY (Id_Film)
	REFERENCES Film(Id_Film);

ALTER TABLE Commentaire 
	ADD CONSTRAINT Commentaire_Utilisateurs0_AK 
	UNIQUE (Id_Utilisateurs);

ALTER TABLE Utilisateurs
	ADD CONSTRAINT Utilisateurs_Commentaire0_FK
	FOREIGN KEY (Id_Commentaire)
	REFERENCES Commentaire(Id_Commentaire);

ALTER TABLE Utilisateurs 
	ADD CONSTRAINT Utilisateurs_Commentaire0_AK 
	UNIQUE (Id_Commentaire);

 INSERT INTO `Livre`(`Id_livre`, `Nom_livre`, `Genre_Livre`, `Theme_Livre`, `Nmbre_Page_Livre`, `Annee_Parution_Livre`, `Langue_Livre`, `Auteur_Livre`, `Emprunt_Livre`, `ISBN_Livre`, `Editeur_Livre`,`Couverture_Livre`,`Sommaire_Livre`)
 Values   
('1',  'À FOND','Roman','Thriller ','272 pages','2021','Français', 'Christian Fillon', '0','Aucun','Indepandant','Pas de sommaire existant'),
('2',  'Aux Confins de l''été','Roman','Romance','252 pages','2020','Français', 'Esther Stark ', '0','Aucun','Indepandant','C’est une histoire d''amour se déroulant dans un village côtier du sud-ouest de la France.'),
('3',  'Data Song - Le Jeu des Lunes','Roman','Science-fiction','384 pages','2021','Français', 'Michel Ettewiller', '0','979-8351915838','Indepandant','Dans un futur proche, la société est gouvernée par une intelligence artificielle, mais un groupe de rebelles se bat pour libérer l''humanité.'),