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
        ISBN_Livre           Varchar (10) NOT NULL,
        Editeur_Livre        Varchar (40) NOT NULL
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
        Sous_Titre_Film     Varchar (20)
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
