<?php
// Connexion à la base de données
require_once("connexion.php");

// Vérifier si un genre a été sélectionné dans l'URL
if (isset($_GET['film'])) {

    $nomFilm = urldecode($_GET['film']);
  // Construire la requête SQL en fonction du genre sélectionné
  $requete = "SELECT * FROM film WHERE Nom_Film ='$nomFilm'";

  // Exécuter la requête SQL et récupérer les résultats
  $resultats = $db->query($requete)->fetchAll(PDO::FETCH_ASSOC);
} else {
  // Si aucun genre n'a été sélectionné, afficher un message d'erreur
  echo "Aucun nom sélectionné";
  exit;
}
?>
<!DOCTYPE html>
<html lang="fr">

<head>
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
    <?php foreach ($resultats as $film) :
        $nom_film = $film['Couverture_Film'];
        $chemin_film = "images/couvertures/Film/$nom_film";
    ?>
    <section class="gen-section-padding-3 gen-single-movie">
        <div class="container">
            <div class="row no-gutters">
                <div class="col-lg-12">
                    <div class="gen-single-movie-wrapper style-1">
                        <div class="row">
                            <div class="col-lg-12">
                                <div class="gen-video-holder">
                                    <iframe width="100%" height="550px" src=<?php echo $film['lien_youtube']?>
                                        frameborder="0"
                                        allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture"
                                        allowfullscreen></iframe>
                                </div>
                                <div class="gen-single-movie-info">
                                    <h2 class="gen-title"> <?php echo $nomFilm?></h2>
                                    <div class="gen-single-meta-holder">
                                        <ul>
                                            <li class="gen-sen-rating">TV-PG</li>
                                            <li>
                                                <i class="fas fa-eye">
                                                </i>
                                                <span>237 Views</span>
                                            </li>
                                        </ul>
                                    </div>
                                    <p>
                                        <?php echo $film['Synopsis_Film']?>
                                    </p>
                                    <div class="gen-after-excerpt">
                                        <div class="gen-extra-data">
                                            <ul>
                                                <li>
                                                    <span>Langue:</span>
                                                    <span><?php echo $film['Langue_Film']?></span>
                                                </li>
                                                <li>
                                                    <span>Sous Titre :</span>
                                                    <span><?php echo $film['Sous_Titre_Film']?></span>
                                                </li>
                                                <li>
                                                    <span>Audio Languages :</span>
                                                    <span><?php echo $film['Langue_Film']?></span>
                                                </li>
                                                <li><span>Genre :</span>
                                                    <span>
                                                        <a href="action.html">
                                                        <?php echo $film['Genre_Film']?> </a>
                                                    </span>
                                                    <span>
                                                        <a href="adventure.html">
                                                        <?php echo $film['Theme_Film']?> </a>
                                                    </span>
                                                </li>
                                                <li><span>Durée du film :</span>
                                                    <span><?php echo $film['Duree_Film']?> mins</span>
                                                </li>
                                                <li>
                                                    <span>Date de sortie :</span>
                                                    <span><?php echo $film['Annee_Parution_Film']?></span>
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

                            <div class="col-lg-12">
                                <div class="pm-inner">
                                    <div class="gen-more-like">
                                        <h5 class="gen-more-title">Proche de ce film</h5>
                                        <div class="row">
                                        <?php
                                            // Préparation et exécution de la requête SQL
                                            $stmt = $db->prepare("SELECT * FROM film WHERE Genre_Film = :genre AND Nom_Film != :nom");
                                            $stmt->bindValue(':genre', $film['Genre_Film']);
                                            $stmt->bindValue(':nom',   $film['Nom_Film']);
                                            $stmt->execute();
                                            $films = $stmt->fetchAll(PDO::FETCH_ASSOC);

                                            foreach ($films as $film) : 
                                            $nom_image = $film['Couverture_Film'];
                                            $chemin_image = "images/couvertures/Film/$nom_image";
                                        ?>
                                            <div class="col-xl-3 col-lg-4 col-md-6">
                                                <div class="gen-carousel-movies-style-3 movie-grid style-3">
                                                    <div class="gen-movie-contain">
                                                        <div class="gen-movie-img">
                                                          <?php echo "<img src='$chemin_image'  alt='owl-carousel-video-image'>" ?>
                                                            <div class="gen-movie-add">
                                                                <div class="wpulike wpulike-heart">
                                                                    <div
                                                                        class="wp_ulike_general_class wp_ulike_is_not_liked">
                                                                        <button type="button"
                                                                            class="wp_ulike_btn wp_ulike_put_image"></button>
                                                                    </div>
                                                                </div>
                                                                <ul class="menu bottomRight">
                                                                    <li class="share top">
                                                                        <i class="fa fa-share-alt"></i>
                                                                        <ul class="submenu">
                                                                            <li><a href="#" class="facebook"><i
                                                                                        class="fab fa-facebook-f"></i></a>
                                                                            </li>
                                                                            <li><a href="#" class="facebook"><i
                                                                                        class="fab fa-instagram"></i></a>
                                                                            </li>
                                                                            <li><a href="#" class="facebook"><i
                                                                                        class="fab fa-twitter"></i></a>
                                                                            </li>
                                                                        </ul>
                                                                    </li>
                                                                </ul>
                                                                <div
                                                                    class="movie-actions--link_add-to-playlist dropdown">
                                                                    <a class="dropdown-toggle" href="#"
                                                                        data-toggle="dropdown"><i
                                                                            class="fa fa-plus"></i></a>
                                                                    <div class="dropdown-menu mCustomScrollbar">
                                                                        <div class="mCustomScrollBox">
                                                                            <div class="mCSB_container">
                                                                                <a class="login-link" href="#">Sign in
                                                                                    to add this movie to
                                                                                    a
                                                                                    playlist.</a>
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
                                                                <h3><a href="movies-home.html"><?php echo $film['Nom_Film']; ?></a></h3>
                                                            </div>
                                                            <div class="gen-movie-meta-holder">
                                                                <ul>
                                                                    <li>2hr 00mins</li>
                                                                    <li>
                                                                        <a href="action.html"><span>Action</span></a>
                                                                    </li>
                                                                </ul>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <?php endforeach; ?>

                                        <div class="row">
                                            <div class="col-lg-12">
                                                <div class="gen-load-more-button">
                                                    <div class="gen-btn-container">
                                                        <a class="gen-button gen-button-loadmore" href="#">
                                                            <span class="button-text">Load More</span>
                                                            <span class="loadmore-icon" style="display: none;"><i
                                                                    class="fa fa-spinner fa-spin"></i></span>
                                                        </a>
                                                    </div>
                                                </div>
                                            </div>
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