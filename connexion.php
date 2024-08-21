<?php

function Connexion()
{
    $hostname = '127.0.0.1'; /*** mysql hostname ***/
    $username = 'root'; /*** mysql username ***/
    $password = 'mysql'; /*** mysql password ***/
    $db = 'vivliomedia'; /*** mysql database ***/

    // Data Source Name
    $dsn = "mysql:host=$hostname;dbname=$db;charset=utf8mb4"; // Utilisation de utf8mb4
    try {
        $bdd = new PDO($dsn, $username, $password);
        $bdd->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
        
        return $bdd;
    }
    catch(PDOException $e) {
        // En production, il serait préférable de ne pas afficher le message d'erreur mais de le journaliser
        echo "Erreur de connexion à la base de données. Veuillez réessayer plus tard.";
        // file_put_contents('pdo_errors.log', $e->getMessage(), FILE_APPEND); // Exemple de journalisation
    }
}

$db = Connexion();
?>
