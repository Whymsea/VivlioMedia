<!DOCTYPE html>
<html lang="fr">

<head>
    <meta charset="utf-8">
    <meta name="keywords" content="Streamlab - Video Streaming HTML5 Template" />
    <meta name="description" content="Streamlab - Video Streaming HTML5 Template" />
    <meta name="author" content="StreamLab" />
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>Streamlab - Video Streaming HTML5 Template</title>
    <!-- Favicon -->
    <link rel="shortcut icon" href="images/favicon.ico">
    <!-- CSS bootstrap-->
    <link rel="stylesheet" href="css/bootstrap.min.css" />
    <!--  Style -->
    <link rel="stylesheet" href="css/style.css" />
    <!--  Responsive -->
    <link rel="stylesheet" href="css/responsive.css" />
</head>

<body>

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
$nom = $_POST['noUtilisateurs_Nom'];
$prenom = $_POST['Utilisateurs_Prénom'];
$pseudo = $_POST['Utilisateurs_Pseudo'];
$mail = $_POST['Utilisateurs_Mail'];
$mot_de_passe = $_POST['mdp1'];
$mot_de_passe_confirmation = $_POST['mdp2'];

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
$stmt = $connexion->prepare("INSERT INTO utilisateurs (Nom_Utilisateurs, Prenom_Utilisateurs, Pseudo_Utilisateurs, Mdp_Utilisateurs, Mail_Utilisateurs) VALUES (?, ?, ?, ?, ?)");
$stmt->bind_param("sssss", $nom, $prenom, $pseudo, $mail, $mot_de_passe_hashe);

// Exécuter la requête SQL
if ($stmt->execute()) {
    echo "Les données ont été insérées avec succès.";
} else {
    echo "Erreur lors de l'insertion des données: " . $stmt->error;
}
?>
    <!-- Back-to-Top start -->
    <div id="back-to-top" style="display: none;">
        <a class="top" id="top" href="#top"> <i class="ion-ios-arrow-up"></i> </a>
    </div>
    <!-- Back-to-Top end -->

    <!-- js-min -->
    <script src="js/jquery-3.6.0.min.js"></script>
    <script src="js/asyncloader.min.js"></script>
    <!-- JS bootstrap -->
    <script src="js/bootstrap.min.js"></script>
    <!-- owl-carousel -->
    <script src="js/owl.carousel.min.js"></script>
    <!-- counter-js -->
    <script src="js/jquery.waypoints.min.js"></script>
    <script src="js/jquery.counterup.min.js"></script>
    <!-- popper-js -->
    <script src="js/popper.min.js"></script>
    <script src="js/swiper-bundle.min.js"></script>
    <!-- Iscotop -->
    <script src="js/isotope.pkgd.min.js"></script>

    <script src="js/jquery.magnific-popup.min.js"></script>

    <script src="js/slick.min.js"></script>

    <script src="js/streamlab-core.js"></script>

    <script src="js/script.js"></script>




</body>

</html>