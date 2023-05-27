<!DOCTYPE html>
<html lang="fr">

<head>
    <meta charset="utf-8">
 
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
<?php
require_once("connexion.php")
?>
    <!--=========== Loader =============-->
    <div id="gen-loading">
        <div id="gen-loading-center">
            <img src="images/logo-1.png" alt="loading">
        </div>
    </div>
    <!--=========== Loader =============-->

    <!-- Log-in  -->
    <section class="position-relative pb-0">
        <div class="gen-login-page-background" style="background-image: url('images/background/film/Blade Runner2.jpg');"></div>
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="text-center">
                        <form name="pms_login" id="pms_login" method="post">
                            <h4>Sign In</h4>
                            <p class="login-username">
                                <label for="user_login">Username or Email Address</label>
                                <input type="text" name="Utilisateur" id="user_login" class="input" value="" size="20">
                            </p>
                            <p class="login-password">
                                <label for="user_pass">Password</label>
                                <input type="password" name="Mdp" id="user_pass" class="input" value="" size="20">
                            </p>
                            <p class="login-submit">
                                <input type="submit" name="wp-submit" id="wp-submit" class="button button-primary"
                                    value="Log In">
                                
                            </p>
                            <input type="hidden" name="pms_login" value="1"><input type="hidden" name="pms_redirect"><a
                                href="register.php">Register</a> | <a href="recover-password.html">Lost your
                                password?</a>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- Log-in  -->
    <?php
   if (isset($_POST['wp-submit'])) {
    $identifiant = $_POST['Utilisateur'];
    $mdp = $_POST['Mdp'];

    $requete = $db->prepare("SELECT * FROM utilisateurs WHERE (Pseudo_Utilisateurs=:identifiant OR Mail_Utilisateurs=:identifiant)");
    $requete->bindParam(':identifiant', $identifiant);
    $requete->execute();
    $resultat = $requete->fetch(PDO::FETCH_ASSOC);
    
    if ($resultat && password_verify($mdp, $resultat['Mdp_Utilisateurs'])) {
        // Le mot de passe est correct, on peut connecter l'utilisateur
        session_start();
        $_SESSION['identifiant'] = $identifiant;
        header('Location: action.html');
        exit();
    } else {
        // Le mot de passe est incorrect, on affiche un message d'erreur
        echo 'Identifiant ou mot de passe incorrect.';
    }
}
?>
    <!-- Back-to-Top start -->
    <div id="back-to-top">
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