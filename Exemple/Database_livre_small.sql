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
        Annee_Parution_Livre Date NOT NULL ,
        Langue_Livre         Varchar (80) NOT NULL ,
        Auteur_Livre         Varchar (80) NOT NULL ,
        Emprunt_Livre        Int NOT NULL ,
        Sommaire_Livre       Varchar (300) NOT NULL,
        ISBN_Livre           Varchar (25) NOT NULL,
        Editeur_Livre        Varchar (80) NOT NULL,
        Couverture_Livre     Varchar (250)
	,CONSTRAINT Livre_PK PRIMARY KEY (Id_livre)
)ENGINE=InnoDB;


 INSERT INTO `Livre`(`Id_livre`, `Nom_livre`, `Genre_Livre`, `Theme_Livre`, `Nmbre_Page_Livre`, `Annee_Parution_Livre`, `Langue_Livre`, `Auteur_Livre`, `Emprunt_Livre`, `ISBN_Livre`, `Editeur_Livre`,`Couverture_Livre`,`Sommaire_Livre`)
 Values   
('1',  'À FOND','Roman','Thriller ','272','2021/01/01','Français', 'Christian Fillon', '0','Aucun','Indepandant','A FOND','Pas de sommaire existant'),
('2',  'Aux Confins de l''été','Roman','Romance','252','2020/01/01','Français', 'Esther Stark ', '0','Aucun','Indepandant','Aux Confins de l Ete','C’est une histoire d''amour se déroulant dans un village côtier du sud-ouest de la France.'),
('3',  'Data Song - Le Jeu des Lunes','Roman','Science-fiction','384','2021/01/01','Français', 'Michel Ettewiller', '0','979-8351915838','Indepandant','Data Song Le Jeu des Lunes','Dans un futur proche, la société est gouvernée par une intelligence artificielle, mais un groupe de rebelles se bat pour libérer l''humanité.');