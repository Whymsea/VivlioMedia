<?php

// Connexion à la base de données
$serveur = "localhost";
$utilisateur = "root";
$mot_de_passe = "root";
$nom_base_de_donnees = "vivi";

$connexion = mysqli_connect($serveur, $utilisateur, $mot_de_passe, $nom_base_de_donnees);

// Vérification de la connexion
if (!$connexion) {
    die("Erreur de connexion à la base de données : " . mysqli_connect_error());
}

// Récupération de la variable $q envoyée par la requête AJAX
$q = $_POST["q"];

// Requête SQL pour rechercher les films et les livres correspondant à la recherche
$sql = "SELECT * FROM livre WHERE Nom_livre, Genre_Livre, Auteur_Livre LIKE '%$q%'
        UNION 
        SELECT * FROM film WHERE Nom_Film, Genre_Film, Realisateurs_Film LIKE '%$q%'";

// Exécution de la requête SQL
$resultat = mysqli_query($connexion, $sql);

// Création d'un tableau pour stocker les résultats de la recherche
$resultats = array();

// Ajout des résultats de la requête au tableau $resultats
while ($ligne = mysqli_fetch_assoc($resultat)) {
    $resultats[] = $ligne;
}

// Conversion du tableau $resultats en format JSON et envoi de la réponse au format JSON
header('Content-Type: application/json');
echo json_encode($resultats);

// Fermeture de la connexion à la base de données
mysqli_close($connexion);

?>
