# VivlioMedia

VivlioMedia est un projet réalisé dans le cadre de nos études, en binôme, visant à créer une médiathèque en ligne permettant de gérer et de consulter des collections de films et de livres. Ce projet a pour objectif de fournir un espace centralisé pour accéder à une bibliothèque multimédia de manière conviviale et efficace.

## Prérequis

Avant de commencer, assurez-vous d'avoir installé les éléments suivants sur votre machine :

- **[AMP (Apache, MySQL, PHP)](https://www.apachefriends.org/index.html)** : Cet environnement de développement permet de lancer un serveur local (localhost) pour tester et visualiser le site.
- **phpMyAdmin** : Interface web pour gérer facilement les bases de données MySQL.

## Installation

### Étape 1 : Configurer la base de données

1. Connectez-vous à phpMyAdmin.
2. Créez une nouvelle base de données avec l'encodage **utf8_unicode_ci**.
3. Importez le fichier `bibliothèque.sql` fourni dans la base de données que vous venez de créer.

### Étape 2 : Configurer les fichiers de connexion

1. Ouvrez le fichier `connexion.php` situé dans le répertoire du projet.
2. Modifiez les informations suivantes pour qu'elles correspondent à votre configuration :
   - Remplacez `vivi` par le nom de votre base de données.
   - Mettez à jour les identifiants (`$username`) et le mot de passe (`$password`) pour correspondre à votre compte phpMyAdmin.

## Lancement du projet

1. Assurez-vous que votre serveur local (AMP) est en cours d'exécution.
2. Accédez à votre site via l'URL suivante : `http://localhost/votre-dossier-projet`.

Vous devriez maintenant être capable de naviguer sur VivlioMedia et d'explorer la médiathèque en ligne.

## Contributeurs

Ce projet a été réalisé par Florian THOMY et Anna MATHIS dans le cadre de notre programme d'études.
