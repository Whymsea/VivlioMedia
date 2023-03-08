# Sae401

1. Se connecter à phpmyadmin. 
	Créer une base de donnée avec encodage utf-8_unicode !
	importer le fichier bibliothèque.sql

2. Changer vivi par le nom de votre base de donnée dans le fichier connexion

/!\  ATTENTION  /!\
Lors d'un push, ne pas push le fichier connexion.php contenant les identifiants de connexion sql.

Les commandes les plus importantes dans git CMD :

Pour choisir le chemin du dépot git :

cd +le chemin du dossier par exemple : cd C:\UwAmp\www\semestre4\VivlioMedia

Pour créer un dossier avec le contenu intégré dans git :

git clone https://github.com/Whymsea/Sae401.git nom_fichier_que_vous_voulez_créer

Pour envoyer les modifications faites :
- git add -A
- git commit -m "le message"
- git pull 
- git push

Pour mettre à jour le dossier :
git pull