<?php
// Vérification de la soumission du formulaire
if ($_SERVER["REQUEST_METHOD"] == "POST") {
  // Vérifie si l'utilisateur est connecté
  $utilisateur_connecte = false; // Remplacez cette valeur par votre vérification réelle
  
  if ($utilisateur_connecte) {
    // Récupération des données du formulaire
    $note = $_POST["note"];
    $commentaire = $_POST["commentaire"];
    
    // Validation des données (effectuez les validations nécessaires)
    
    // Enregistrement du commentaire dans la base de données
    $Id_Utilisateurs = 1; // Remplacez cette valeur par l'ID de l'utilisateur connecté
    $Id_Film = 123; // Remplacez cette valeur par l'ID du film
    
    // Effectuez la connexion à la base de données (remplacez les valeurs avec vos informations de connexion)
    $serveur = "localhost";
    $Pseudo_Utilisateurs = "votre_nom_utilisateur";
    $Mdp_Utilisateurs = "votre_mot_de_passe";
    $nom_base_de_donnees = "vivi"; // A garder ?
    
    $connexion = mysqli_connect($serveur, $Pseudo_Utilisateurs, $Pseudo_Utilisateurs, $vivi //Ma BDD name à adapter);
//Pour cette ligne je suis pas vraiment sur de ce qu'on a besoin pour que l'utilisateur se connecte
    
    if (!$connexion) {
      // La connexion à la base de données a échoué
      echo "Erreur de connexion à la base de données : " . mysqli_connect_error();
    } else {
      // Échapper les données pour éviter les injections SQL (utilisez la méthode appropriée selon votre configuration, par exemple mysqli_real_escape_string)
      $commentaire = mysqli_real_escape_string($connexion, $commentaire);
      
      // Insérer le commentaire dans la table des commentaires (remplacez "commentaires" par le nom de votre table)
      $requete = "INSERT INTO commentaires (Id_Utilisateurs, Id_Film, note, commentaire) VALUES ('Id_Utilisateurs', '$Id_Film', '$note', '$commentaire')";
      
      if (mysqli_query($connexion, $requete)) {
        // Le commentaire a été enregistré avec succès
        echo "Commentaire enregistré avec succès.";
      } else {
        // Une erreur s'est produite lors de l'enregistrement du commentaire
        echo "Erreur lors de l'enregistrement du commentaire : " . mysqli_error($connexion);
      }
      
      // Fermer la connexion à la base de données
      mysqli_close($connexion);
    }
  } else {
    // L'utilisateur n'est pas connecté, affichez un message d'erreur ou redirigez-le vers la page de connexion
    echo "Vous devez être connecté pour laisser un commentaire.";
  }
} else {
  // Rediriger l'utilisateur vers la page appropriée en cas d'accès direct à cette page sans soumission du formulaire
  header("Location: index.php"); // Remplacez "index.php" par la page souhaitée
  exit;
}
?>