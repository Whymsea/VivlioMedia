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

// Récupération de la variable $search envoyée par la requête AJAX
$search = $_POST["search"];

// Requête SQL pour rechercher les livres et les films correspondant à la recherche
$sql = "SELECT Nom_Livre AS nom, 'livre' AS type FROM livre WHERE Nom_Livre LIKE '%$search%'
        UNION 
        SELECT Nom_Film AS nom, 'film' AS type FROM film WHERE Nom_Film LIKE '%$search%'";

// Exécution de la requête SQL
$resultat = mysqli_query($connexion, $sql);

// Création d'un tableau pour stocker les résultats de la recherche
$resultats = array();

// Ajout des résultats de la requête au tableau $resultats
while ($ligne = mysqli_fetch_assoc($resultat)) {
    $resultats[] = $ligne;
}

// Conversion du tableau $resultats en format JSON et envoi de la réponse au format JSON
header('Content-Type: application/json; charset=UTF-8');
echo json_encode($resultats, JSON_UNESCAPED_UNICODE);

// Fermeture de la connexion à la base de données
mysqli_close($connexion);
?>
