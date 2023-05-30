<?php
// Connexion à la base de données
require_once("connexion.php");

// Vérifier si un livre a été sélectionné dans l'URL
if (isset($_GET['Livre'])) {
    $nomLivre = urldecode($_GET['Livre']);
    // Construire la requête SQL en fonction du livre sélectionné
    $requete = "SELECT * FROM livre WHERE Nom_Livre = :nomLivre";

    // Préparer la requête SQL
    $stmt = $db->prepare($requete);

    // Lié le paramètre nomLivre à la variable $nomLivre
    $stmt->bindParam(':nomLivre', $nomLivre);

    // Exécuter la requête SQL
    $stmt->execute();

    // Récupérer les résultats
    $resultats = $stmt->fetchAll(PDO::FETCH_ASSOC);

    // Vérifier si des résultats ont été trouvés
    if (count($resultats) > 0) {
        // Afficher les détails du livre
        // ...
    } else {
        // Si aucun livre n'a été trouvé, afficher un message d'erreur
        echo "Aucun livre trouvé";
    }
} else {
    // Si aucun livre n'a été sélectionné, afficher un message d'erreur
    echo "Aucun nom de livre sélectionné";
    exit;
}
?>
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

    <!--=========== Loader =============-->
    <div id="gen-loading">
        <div id="gen-loading-center">
            <img src="images/logo-1.png" alt="loading">
        </div>
    </div>
    <!--=========== Loader =============-->

    <!--========== Header ==============-->
    <?php include 'header.php'; ?>
    <!--========== Header ==============-->

   <!-- Single movie Start -->
<?php foreach ($resultats as $livre) :
    $nom_livre = $livre['Couverture_Livre'];
    $chemin_livre = "images/couvertures/Livre/$nom_livre";
?>
<section class="gen-section-padding-3 gen-single-movie">
    <div class="container">
        <div class="row no-gutters">
            <div class="col-lg-12">
                <div class="gen-single-movie-wrapper style-1">
                    <div class="row">
                        <div class="col-lg-12">
                            <div class="gen-video-holder">
                                <!--- <iframe width="100%" height="550px" src="
                                    frameborder="0"
                                    allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture"
                                    allowfullscreen></iframe> -->
                            </div>
                            <div class="gen-single-movie-info">
                                <h2 class="gen-title"> <?php echo $nomLivre?></h2>
                                <div class="gen-single-meta-holder">
                                    <ul>
                                        <li class="gen-sen-rating">TV-PG</li>
                                        <li>
                                            <i class="fas fa-eye"></i>
                                            <span>237 Views</span>
                                        </li>
                                    </ul>
                                </div>
                                <p>
                                    <?php echo $livre['Sommaire_Livre']?>
                                </p>
                                <div class="gen-after-excerpt">
                                    <div class="gen-extra-data">
                                        <ul>
                                            <li>
                                                <span>Langue:</span>
                                                <span><?php echo $livre['Langue_Livre']?></span>
                                            </li>
                                            <li>
                                                <span>Editeur :</span>
                                                <span><?php echo $livre['Editeur_Livre']?></span>
                                            </li>
                                            <li>
                                                <span>Auteur :</span>
                                                <a href="Auteur.php?Auteur=<?php echo $livre['Auteur_Livre']; ?>"><span><?php echo $livre['Auteur_Livre']; ?></span></a>
                                            </li>
                                            <li>
                                                <span>Genre :</span>
                                                <span>
                                                <a href="Genre_Livre.php?Genre_Livre=<?php echo $livre['Genre_Livre']; ?>"><span><?php echo $livre['Genre_Livre']; ?></span></a>
                                                </span>
                                                <span>
                                                <?php echo $livre['Theme_Livre']?>
                                                </span>
                                            </li>
                                            <li>
                                                <span>Durée du livre :</span>
                                                <span><?php echo $livre['Nmbre_Page_Livre']?> mins</span>
                                            </li>
                                            <li>
                                                <span>Date de sortie :</span>
                                                <span><?php echo $livre['Annee_Parution_Livre']?></span>
                                            </li>
                                            <li>
                                                <span>ISBN :</span>
                                                <span><?php echo $livre['ISBN_Livre']?></span>
                                            </li>
                                        </ul>
                                    </div>
                                        <div class="gen-socail-share">
                                            <h4 class="align-self-center">Social Share :</h4>
                                            <ul class="social-inner">
                                                <li><a href="#" class="facebook"><i class="fab fa-facebook-f"></i></a>
                                                </li>
                                                <li><a href="#" class="facebook"><i class="fab fa-instagram"></i></a>
                                                </li>
                                                <li><a href="#" class="facebook"><i class="fab fa-twitter"></i></a></li>
                                            </ul>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <?php endforeach; ?>

                            <!--Code formulaire pour les commentaires :
                                 formulaire de commentaire 
<form action="traitement_commentaire.php" method="post">
  <h3>Laissez un commentaire :</h3>
  
    // Vérifie si l'utilisateur est connecté
    $utilisateur_connecte = false; // Remplacez cette valeur par votre vérification réelle

    if ($utilisateur_connecte) {
      // Affiche le formulaire de commentaire
      echo '
        <label for="note">Note :</label>
        <select name="note" id="note">
          <option value="1">1</option>
          <option value="2">2</option>
          <option value="3">3</option>
          <option value="4">4</option>
          <option value="5">5</option>
        </select><br>

        <label for="commentaire">Commentaire :</label><br>
        <textarea name="commentaire" id="commentaire" rows="4" cols="50"></textarea><br>

        <input type="submit" value="Valider">
      ';
    } else {
      // Affiche le message de connexion
      echo '<p>Vous devez être connecté pour laisser un commentaire. Veuillez vous connecter ou vous inscrire.</p>';
      echo '<a href="page_connexion.php"><button>Se connecter</button></a>';
    }
  ?>
</form>
                            -->
<div class="col-lg-12">
    <div class="pm-inner">
        <div class="gen-more-like">
            <h5 class="gen-more-title">Proche de ce livre</h5>
            <div class="row">
                <?php
                // Préparation et exécution de la requête SQL
                $stmt = $db->prepare("SELECT * FROM livre WHERE Genre_Livre = :genre AND Nom_livre != :nom");
                $stmt->bindValue(':genre', $livre['Genre_Livre']);
                $stmt->bindValue(':nom',   $livre['Nom_livre']);
                $stmt->execute();
                $livres = $stmt->fetchAll(PDO::FETCH_ASSOC);

                foreach ($livres as $livre) :
                    $nom_image = $livre['Couverture_Livre'];
                    $chemin_image = "images/couvertures/Livre/$nom_image";
                ?>
                    <div class="col-xl-3 col-lg-4 col-md-6">
                        <div class="gen-carousel-movies-style-3 movie-grid style-3">
                            <div class="gen-movie-contain">
                                <div class="gen-movie-img">
                                    <?php echo "<img src='$chemin_image' alt='owl-carousel-video-image'>" ?>
                                    <div class="gen-movie-add">
                                        <div class="wpulike wpulike-heart">
                                            <div class="wp_ulike_general_class wp_ulike_is_not_liked">
                                                <button type="button" class="wp_ulike_btn wp_ulike_put_image"></button>
                                            </div>
                                        </div>
                                        <ul class="menu bottomRight">
                                            <li class="share top">
                                                <i class="fa fa-share-alt"></i>
                                                <ul class="submenu">
                                                    <li><a href="#" class="facebook"><i class="fab fa-facebook-f"></i></a></li>
                                                    <li><a href="#" class="facebook"><i class="fab fa-instagram"></i></a></li>
                                                    <li><a href="#" class="facebook"><i class="fab fa-twitter"></i></a></li>
                                                </ul>
                                            </li>
                                        </ul>
                                        <div class="movie-actions--link_add-to-playlist dropdown">
                                            <a class="dropdown-toggle" href="#" data-toggle="dropdown"><i class="fa fa-plus"></i></a>
                                            <div class="dropdown-menu mCustomScrollbar">
                                                <div class="mCustomScrollBox">
                                                    <div class="mCSB_container">
                                                        <a class="login-link" href="#">Sign in to add this movie to a playlist.</a>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="gen-movie-action">
                                        <a href="movies-home.html" class="gen-button">
                                            <i class="fa fa-play"></i>
                                        </a>
                                    </div>
                                </div>
                                <div class="gen-info-contain">
                                    <div class="gen-movie-info">
                                        <h3>
                                            <a href="Livre-detaille.php?Livre=<?php echo urlencode($livre['Nom_livre']); ?>"><?php echo $livre['Nom_livre']; ?></a>
                                        </h3>
                                        <div class="gen-movie-meta-holder">
                                            <ul>
                                                <li><?php echo $livre['Nmbre_Page_Livre']; ?> pages</li>
                                                <li>
                                                    <a href="Genre_Livre.php?Genre_Livre=<?php echo $livre['Genre_Livre']; ?>">
                                                        <span><?php echo $livre['Genre_Livre']; ?></span>
                                                    </a>
                                                </li>
                                            </ul>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                <?php endforeach; ?>
            </div>
        </div>
    </div>
</div>

                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- Single movie End -->

     <!-- footer start -->
     <?php include 'footer.php'; ?>
     <!-- footer End -->

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