<!DOCTYPE html>
<html lang="fr">

<?php
// Connexion à la base de données
require_once("connexion.php");

// Vérifier si un nom d'un acteur a été sélectionné dans l'URL
if (isset($_GET['Realisateur'])) {
    $nomRealisateur = urldecode($_GET['Realisateur']);
    // Construire la requête SQL en fonction du livre sélectionné
    $requete = "SELECT * FROM realisateurs WHERE Nom_realisateurs ='$nomRealisateur'";
    // Exécuter la requête SQL et récupérer les résultats
    $resultats = $db->query($requete)->fetchAll(PDO::FETCH_ASSOC);
}else {
    // Si aucun Acteur n'a été sélectionné, afficher un message d'erreur
    echo "Aucun Réalisateur sélectionné";
    exit;
}
?>

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
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
    <?php 
  $resultats = $db->query("SELECT * FROM realisateurs WHERE Nom_realisateurs = '$nomRealisateur'");
  $Realisateur = $resultats->fetch(PDO::FETCH_ASSOC);
  $nom_image_Realisateur = $Realisateur['Photo_realisateurs'];
  $chemin_Realisateur = "images/Profil/Réalisateur/$nom_image_Realisateur";
    ?>
    <div class="gen-breadcrumb" style="background-image: url('images/background/asset-25.jpeg');">
    <div class="container">
        <div class="row align-items-center">
        <div class="col-lg-12">
            <nav aria-label="breadcrumb">
            <div class="gen-breadcrumb-title d-flex align-items-center justify-content-center justify-content-md-start">
                <div class="ml-md-3">
                <div class="row">
                    <div class="col-md-4 col-lg-3 mx-auto">
                    <div class="rounded-circle overflow-hidden" style="width: 150px; height: 150px; margin: 0 auto;">
                    <?php echo "<img src='$chemin_Realisateur' alt='Photo de profil du realisateur' style='width: 100%; height: 100%;'>" ?>
                    
                    </div>
                    </div>
                    <div class="col-md-8 col-lg-9">
                    <div class="gen-breadcrumb-container">
                        <ol class="breadcrumb">
                        <li class="breadcrumb-item"><a href="index.php"><i class="fas fa-home mr-2"></i>Accueil</a></li>
                        <li class="breadcrumb-item active">TV Show</li>
                        </ol>
                    </div>
                    <h2 class="mb-4">
                        <?php echo $Realisateur['Nom_realisateurs']; ?>
                    </h2>
                            <p class="text-muted mb-0">La description de <?php echo $Realisateur['Nom_realisateurs']; ?> n'est pas encore en ligne. Merci de votre patience. </p>
                        </div>
                        </div>
                    </div>
                    </div>
                </nav>
                </div>
            </div>
            </div>
        </div>
      <style>
        .breadcrumb-item.active {
          color: #ffffff;
          font-weight: bold;
        }
      
        .gen-breadcrumb-title {
          margin-top: 30px;
          margin-bottom: 30px;
          text-align: center;
        }
      
        .rounded-circle {
          border: 5px solid #ffffff;
        }
      
        .text-muted {
          font-size: 1.1rem;
          line-height: 1.6;
          color: #ffffff;
        }
      
        @media (min-width: 768px) {
          .gen-breadcrumb-title {
            text-align: left;
          }
        }
      </style>
      
   
  

    <!-- Section-1 Start -->

    <section class="gen-section-padding-3">
        <div class="container">
          <div class="col-lg-12">
            <div class="pm-inner">
                <div class="gen-more-like">
                    <h5 class="gen-more-title">A Réalisé :</h5>
                        <div class="row">
                        <?php 
                       $stmt = $db->prepare("SELECT * FROM film WHERE Realisateurs_Film = '$nomRealisateur'");
                       $stmt->execute();
                       $films = $stmt->fetchAll(PDO::FETCH_ASSOC);

                                            foreach ($films as $film) : 
                                            $nom_film = $film['Couverture_Film'];
                                            $chemin_film = "images/couvertures/Film/$nom_film";
                                            ?>
                                            <div class="col-xl-3 col-lg-4 col-md-6">
                                                <div class="gen-carousel-movies-style-3 movie-grid style-3">
                                                    <div class="gen-movie-contain">
                                                        <div class="gen-movie-img">
                                                          <?php echo "<img src='$chemin_film'  alt='owl-carousel-video-image'>" ?>
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
                                                            <a href="Film-detaille.php?film=<?php echo urlencode($film['Nom_Film']); ?>" class="gen-button"><i class="fa fa-play"></i></a>
                                                            </div>
                                                        </div>
                                                        <div class="gen-info-contain">
                                                            <div class="gen-movie-info">
                                                                <h3><a href="Film-detaille.php?film=<?php echo urlencode($film['Nom_Film']); ?>"><?php echo $film['Nom_Film']; ?></a></h3>
                                                            </div>
                                                            <div class="gen-movie-meta-holder">
                                                            <ul>
                                                                <li><?php echo $film['Duree_Film']; ?> mins</li>
                                                                <li>
                                                                <a href="Genre_Film.php?Genre_Film=<?php echo $film['Genre_Film']; ?>"><span><?php echo $film['Genre_Film']; ?></span></a>
                                                                </li>
                                                            </ul>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                            <?php endforeach; ?>
                            
    </section>
    <!-- Section-1 End -->

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