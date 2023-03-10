#------------------------------------------------------------
#        Script MySQL.
#------------------------------------------------------------


#------------------------------------------------------------
# Table: Livre
#------------------------------------------------------------

CREATE TABLE Livre(
        Id_livre             Int  Auto_increment  NOT NULL ,
        Nom_livre            Varchar (80) NOT NULL ,
        Genre_Livre          Varchar (80) NOT NULL ,
        Theme_Livre          Varchar (80) NOT NULL ,
        Nmbre_Page_Livre     Int NOT NULL ,
        Annee_Parution_Livre int NOT NULL ,
        Langue_Livre         Varchar (80) NOT NULL ,
        Auteur_Livre         Varchar (80) NOT NULL ,
        Emprunt_Livre        Int NOT NULL ,
        Sommaire_Livre       Varchar (300) NOT NULL,
        ISBN_Livre           Varchar (25) NOT NULL,
        Editeur_Livre        Varchar (80) NOT NULL,
        Couverture_Livre     Varchar (250)
	,CONSTRAINT Livre_PK PRIMARY KEY (Id_livre)
)ENGINE=InnoDB;



#------------------------------------------------------------
# Table: Film
#------------------------------------------------------------

CREATE TABLE film (
  Id_Film               int(11) NOT NULL,
  Nom_Film              varchar(150) NOT NULL,
  Genre_Film            varchar(80) NOT NULL,
  Theme_Film            varchar(80) NOT NULL,
  Duree_Film            int NOT NULL,
  Annee_Parution_Film   int NOT NULL,
  Langue_Film           varchar(50) NOT NULL,
  Realisateurs_Film     varchar(50) NOT NULL,
  Acteur1_Film          varchar(50) NOT NULL,
  Acteur2_Film          varchar(50) NOT NULL,
  Synopsis_Film         varchar(500) DEFAULT NULL,
  Emprunt_Film          int NOT NULL,
  Sous_Titre_Film       varchar(80) NOT NULL,
  Couverture_Film       varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


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

