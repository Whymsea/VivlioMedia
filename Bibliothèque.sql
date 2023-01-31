#------------------------------------------------------------
#        Script MySQL.
#------------------------------------------------------------


#------------------------------------------------------------
# Table: FILM
#------------------------------------------------------------

CREATE TABLE FILM(
        ID_Film          Int  Auto_increment  NOT NULL ,
        Nom_Film         Varchar (50) NOT NULL ,
        Annee_parution_Film    Date NOT NULL ,
        Note_Film        Int NOT NULL ,
        Genre_Film       Varchar (50) NOT NULL ,
        Themes_Film      Varchar (50) NOT NULL ,
        Pays_intrigue_Film Varchar (50) NOT NULL ,
        Langues_Film    Varchar (50) NOT NULL,
        Subtiltles_Film Varchar (50) NOT NULL,
        Duree_Film Int NOT NULL,
        Commentaire_Film Varchar (300) NOT NULL,
        Realisateur_Film Varchar (50) NOT NULL,
	,CONSTRAINT FILM_PK PRIMARY KEY (ID_Film)
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: LIVRE
#------------------------------------------------------------

CREATE TABLE LIVRE(
        ID_Livre          Int  Auto_increment  NOT NULL ,
        Nom_Livre         Varchar (50) NOT NULL ,
        Genre_Livre   Varchar (50) NOT NULL ,
        Themes_Livre Varchar (50) NOT NULL,
        Nombre_page_Livre  Varchar (50) NOT NULL,
        Annee_parution_Livre    Date NOT NULL ,
        Langues_Livre   Varchar (50) NOT NULL,
        Note_Livre        Varchar (50) NOT NULL ,
        Commentaire_Livre Varchar (300) NOT NULL,
        Auteur_Livre Varchar (50) NOT NULL 
	,CONSTRAINT LIVRE_PK PRIMARY KEY (ID_Livre)
)ENGINE=InnoDB;

Nom,Genre,Themes,Nombre de page, Annee de parution, Auteur
#------------------------------------------------------------
# Table: UTILISATEURS
#------------------------------------------------------------

CREATE TABLE UTILISATEURS(
        ID_Utilisateurs     Int  Auto_increment  NOT NULL ,
        Nom_Utilisateurs    Varchar (50) NOT NULL ,
        Prenom_Utilisateurs Varchar (50) NOT NULL ,
        Mail_Utilisateurs   Varchar (50) NOT NULL
	,CONSTRAINT UTILISATEURS_PK PRIMARY KEY (ID_Utilisateurs)
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: BIBLIOTECAIRE
#------------------------------------------------------------

CREATE TABLE BIBLIOTECAIRE(
        ID_Bibliothecaire      Int  Auto_increment  NOT NULL ,
        Nom_Bibliothecaire     Varchar (50) NOT NULL ,
        Prenom_Biblibothecaire Varchar (50) NOT NULL ,
        Mail_Bibliothecaire    Varchar (50) NOT NULL ,
        ID_Livre               Int NOT NULL ,
        ID_Film                Int NOT NULL
	,CONSTRAINT BIBLIOTECAIRE_PK PRIMARY KEY (ID_Bibliothecaire)

	,CONSTRAINT BIBLIOTECAIRE_LIVRE_FK FOREIGN KEY (ID_Livre) REFERENCES LIVRE(ID_Livre)
	,CONSTRAINT BIBLIOTECAIRE_FILM0_FK FOREIGN KEY (ID_Film) REFERENCES FILM(ID_Film)
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: ADMINISTRATEUR
#------------------------------------------------------------

CREATE TABLE ADMINISTRATEUR(
        Id_Administrateurs     Int  Auto_increment  NOT NULL ,
        Nom_Administrateurs    Varchar (50) NOT NULL ,
        Prenom_Administrateurs Varchar (50) NOT NULL ,
        Mail_Administrateurs   Varchar (50) NOT NULL
	,CONSTRAINT ADMINISTRATEUR_PK PRIMARY KEY (Id_Administrateurs)
)ENGINE=InnoDB;


