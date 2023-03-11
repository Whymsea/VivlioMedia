<body>
<?php
require_once("connexion.php")
?>
    <!--=========== Loader =============-->
    <div id="gen-loading" style="display: none;">
        <div id="gen-loading-center">
            <img src="images/logo-1.png" alt="loading">
        </div>
    </div>
    <!--=========== Loader =============-->

    <!-- register -->
    <section class="position-relative pb-0">
        <div class="gen-register-page-background" style="background-image: url('images/background/asset-3.jpeg');">
        </div>
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="text-center">
                        <form id="pms_register-form" class="pms-form" method="POST">
                            <h4>Register</h4>
                            <input type="hidden" id="pmstkn" name="pmstkn" value="59b502f483"><input type="hidden" name="_wp_http_referer" value="/register/">
                            <ul class="pms-form-fields-wrapper pl-0">
                                <li class="pms-field pms-user-login-field ">
                                    <label for="pms_user_login">Username *</label>
                                    <input id="pms_user_login" name="Utilisateurs_Pseudo" type="text" value="">
                                </li>
                                <li class="pms-field pms-user-email-field ">
                                    <label for="pms_user_email">E-mail *</label>
                                    <input id="pms_user_email" name="Utilisateurs_Mail" type="text" value="">
                                </li>
                                <li class="pms-field pms-first-name-field ">
                                    <label for="pms_first_name">First Name</label>
                                    <input id="pms_first_name" name="Utilisateurs_Prénom" type="text" value="">
                                </li>
                                <li class="pms-field pms-last-name-field ">
                                    <label for="pms_last_name">Last Name</label>
                                    <input id="pms_last_name" name="Utilisateurs_Nom" type="text" value="">
                                </li>
                                <li class="pms-field pms-pass1-field">
                                    <label for="pms_pass1">Password *</label>
                                    <input id="pms_pass1" name="mdp1" type="password">
                                </li>
                                <li class="pms-field pms-pass2-field">
                                    <label for="pms_pass2">Repeat Password *</label>
                                    <input id="pms_pass2" name="mdp2" type="password">
                                </li>
                                <li class="pms-field pms-field-subscriptions ">
                                    
                                    
                                    
                                    
                                </li>
                            </ul>
                            <span id="pms-submit-button-loading-placeholder-text" class="d-none">Processing. Please
                                wait...</span>
                            <input name="pms_register" type="submit" value="Register">
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- register -->
    <?php
   // Variables pour les données du formulaire
   if (isset($_POST['pms_register'])) {
$nom = $_POST['Utilisateurs_Nom'];
$prenom = $_POST['Utilisateurs_Prénom'];
$pseudo = $_POST['Utilisateurs_Pseudo'];
$mot_de_passe = $_POST['mdp1'];
$mot_de_passe_confirmation = $_POST['mdp2'];
$mail = $_POST['Utilisateurs_Mail'];


// Vérifier si les mots de passe correspondent
if ($mot_de_passe != $mot_de_passe_confirmation) {
    die("Erreur : les mots de passe ne correspondent pas.");
}

// Vérifier si le mail est valide
if (!filter_var($mail, FILTER_VALIDATE_EMAIL)) {
    die("Erreur : le format de l'adresse mail n'est pas valide.");
}

// Hasher le mot de passe avant de l'insérer dans la base de données
$mot_de_passe_hashe = password_hash($mot_de_passe, PASSWORD_DEFAULT);

// Préparer la requête SQL pour insérer les données dans la base de données
$stmt = $db->prepare("INSERT INTO utilisateurs (Nom_Utilisateurs, Prenom_Utilisateurs, Pseudo_Utilisateurs, Mdp_Utilisateurs, Mail_Utilisateurs) VALUES (?, ?, ?, ?, ?)");
$stmt->bindParam(':nom', $nom);
$stmt->bindParam(':prenom', $prenom);
$stmt->bindParam(':pseudo', $pseudo);
$stmt->bindParam(':mot_de_passe', $mot_de_passe_hashe);
$stmt->bindParam(':mail', $mail);
// Exécuter la requête SQL
if ($stmt->execute(array($nom,$prenom,$pseudo,$mot_de_passe_hashe,$mail))) {
    echo "Les données ont été insérées avec succès.";
} else {
    echo "Erreur lors de l'insertion des données: " . $stmt->error;
}
   }
?>