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
   <?php
require_once("connexion.php")
?>
   <!--=========== Loader =============-->
   <div id="gen-loading">
      <div id="gen-loading-center">
         <img src="images/logo.png" alt="loading">
      </div>
   </div>
   <!--=========== Loader =============-->

   <!--========== Header ==============-->
   <?php include 'header.php'; ?>
   <!--========== Header ==============-->

  <!-- owl-carousel Banner Start -->
<section class="pt-0 pb-0">
  <div class="container-fluid px-0">
    <div class="row no-gutters">
      <div class="col-12">
        <div class="gen-banner-movies banner-style-2">
          <div class="owl-carousel owl-loaded owl-drag" data-dots="false" data-nav="true" data-desk_num="1"
            data-lap_num="1" data-tab_num="1" data-mob_num="1" data-mob_sm="1" data-autoplay="true"
            data-loop="true" data-margin="0">
            <?php
            // Préparation et exécution de la requête SQL
            $stmt = $db->query("SELECT Nom_Film, Background_Film, Genre_Film FROM film WHERE Genre_Film ='Comedie'");

            // Récupération des résultats dans un tableau associatif
            $films = $stmt->fetchAll(PDO::FETCH_ASSOC);
            foreach ($films as $film) { 
               $nom_background = $film['Background_Film']; 
               $chemin_background = "images/background/Film/$nom_background"; ?>

              <div class="item" style="background-image: url('<?php echo $chemin_background; ?>');">
                <div class="gen-movie-contain-style-2 h-100">
                  <div class="container h-100">
                    <div class="row flex-row-reverse align-items-center h-100">
                      <!-- Contenu de chaque élément du carrousel -->
                      <div class="col-xl-6">
                        <div class="gen-front-image">
                          <?php echo "<img src='$chemin_background' alt='owl-carousel-banner-image'>" ?>

                          <a href="https://www.youtube.com/watch?v=LXb3EKWsInQ" class="playBut popup-youtube popup-vimeo popup-gmaps">
                            <!-- Generator: Adobe Illustrator 19.0.0, SVG Export Plug-In  -->
                            <svg version="1.1" xmlns="http://www.w3.org/2000/svg" width="213.7px" height="213.7px" viewBox="0 0 213.7 213.7" enable-background="new 0 0 213.7 213.7" xml:space="preserve">
                              <polygon class="triangle" id="XMLID_17_" fill="none" stroke-width="7" stroke-linecap="round" stroke-linejoin="round" stroke-miterlimit="10" points="73.5,62.5 148.5,105.8 73.5,149.1 "></polygon>
                              <circle class="circle" id="XMLID_18_" fill="none" stroke-width="7" stroke-linecap="round" stroke-linejoin="round" stroke-miterlimit="10" cx="106.8" cy="106.8" r="103.3"></circle>
                            </svg>
                            <span>Watch Trailer</span>
                          </a>
                        </div>
                      </div>
                      <div class="col-xl-6">
                        <div class="gen-tag-line"><span>Most Viewed</span></div>
                        <div class="gen-movie-info">
                          <h3><?php echo $film['Nom_Film']; ?></h3>
                        </div>
                        <div class="gen-movie-meta-holder">
                          <ul class="gen-meta-after-title">
                            <li class="gen-sen-rating">
                              <span>12A</span>
                            </li>
                                          <li> <img src="images/asset-2.png" alt="rating-image">
                                             <span> 0 </span>
                                          </li>
                          </ul>
                          <p>Streamlab is a long established fact that a reader will be distracted
                            by the readable content of a page The point of using Lorem Streamlab.
                          </p>
                          <div class="gen-meta-info">
                            <ul class="gen-meta-after-excerpt">
                              <li>
                                <strong>Cast :</strong>
                                Anna Romanson,Robert Romanson
                              </li>
                              <li>
                                <strong>Genre :</strong>
                                <span>
                                  <a href="action.html">
                                    Action, </a>
                                </span>
                                <span>
                                  <a href="animation.html">
                                    Animation, </a>
                                </span>
                                <span>
                                  <a href="#">
                                    Family </a>
                                </span>
                              </li>
                              <li>
                                <strong>Tag :</strong>
                                <span>
                                  <a href="#">
                                    4K Ultra, </a>
                                </span>
                                <span>
                                  <a href="#">
                                    Brother, </a>
                                </span>
                                <span>
                                  <a href="#">
                                    Dubbing, </a>
                                </span>
                                <span>
                                  <a href="#">
                                    Premieres </a>
                                </span>
                              </li>
                            </ul>
                          </div>
                        </div>
                        <div class="gen-movie-action">
                          <div class="gen-btn-container">
                            <a href="Film-detaille.php?film=<?php echo urlencode($film['Nom_Film']); ?>" class="gen-button .gen-button-dark"><i class="fa fa-play"></i></a>
                              <i aria-hidden="true" class="fas fa-play"></i> <span class="text">Play
                                Now</span>
                            </a>
                          </div>
                        </div>
                      </div>
                    </div>
                  </div>
                </div>
              </div>

            <?php } ?>

          </div>
        </div>
      </div>
    </div>
  </div>
</section>
<!-- owl-carousel Banner End -->

   <!-- owl-carousel Videos Section-1 Start -->
   <section class="gen-section-padding-2">
      <div class="container">
         <div class="row">
            <div class="col-xl-6 col-lg-6 col-md-6">
               <h4 class="gen-heading-title">All Time Hits</h4>
            </div>
            <div class="col-xl-6 col-lg-6 col-md-6 d-none d-md-inline-block">
               <div class="gen-movie-action">
                  <div class="gen-btn-container text-right">
                     <a href="tv-shows-pagination.html" class="gen-button gen-button-flat">
                        <span class="text">More Videos</span>
                     </a>
                  </div>
               </div>
            </div>
         </div>
         <div class="row mt-3">
            <div class="col-12">
               <div class="gen-style-2">
                  <div class="owl-carousel owl-loaded owl-drag" data-dots="false" data-nav="true" data-desk_num="4"
                     data-lap_num="3" data-tab_num="2" data-mob_num="1" data-mob_sm="1" data-autoplay="false"
                     data-loop="false" data-margin="30">
                     <?php
                                // Préparation et exécution de la requête SQL
                                $stmt = $db->query("SELECT Nom_Film, Couverture_Film, Genre_Film FROM film WHERE Genre_Film ='Drame'");

                                // Récupération des résultats dans un tableau associatif
                                $films = $stmt->fetchAll(PDO::FETCH_ASSOC);
                                 foreach ($films as $film) : 
                                $nom_image = $film['Couverture_Film'];
                                $chemin_image = "images/couvertures/Film/$nom_image";
                                ?>
                     <div class="item">
                        <div
                           class="movie type-movie status-publish has-post-thumbnail hentry movie_genre-action movie_genre-adventure movie_genre-drama">
                           <div class="gen-carousel-movies-style-3 movie-grid style-2">
                              <div class="gen-movie-contain">
                                 <div class="gen-movie-img">
                                 <?php echo "<img src='$chemin_image'  alt='owl-carousel-video-image'>" ?>
                                    <div class="gen-movie-add">
                                       <div class="wpulike wpulike-heart">
                                          <div class="wp_ulike_general_class wp_ulike_is_not_liked"><button
                                                type="button" class="wp_ulike_btn wp_ulike_put_image"></button></div>
                                       </div>
                                       <ul class="menu bottomRight">
                                          <li class="share top">
                                             <i class="fa fa-share-alt"></i>
                                             <ul class="submenu">
                                                <li><a href="#" class="facebook"><i class="fab fa-facebook-f"></i></a>
                                                </li>
                                                <li><a href="#" class="facebook"><i class="fab fa-instagram"></i></a>
                                                </li>
                                                <li><a href="#" class="facebook"><i class="fab fa-twitter"></i></a></li>
                                             </ul>
                                          </li>
                                       </ul>
                                       <div class="movie-actions--link_add-to-playlist dropdown">
                                          <a class="dropdown-toggle" href="#" data-toggle="dropdown"><i
                                                class="fa fa-plus"></i></a>
                                          <div class="dropdown-menu mCustomScrollbar">
                                             <div class="mCustomScrollBox">
                                                <div class="mCSB_container">
                                                   <a class="login-link" href="register.php">Sign in to add this movie
                                                      to a
                                                      playlist.</a>
                                                </div>
                                             </div>
                                          </div>
                                       </div>
                                    </div>
                                    <div class="gen-movie-action">
                                    <a href="Film-detaille.php?film=<?php echo urlencode($film['Nom_Film']); ?>" class="gen-button"><i class="fa fa-play"></i></a>
                                          <i class="fa fa-play"></i>
                                       </a>
                                    </div>
                                 </div>
                                 <div class="gen-info-contain">
                                    <div class="gen-movie-info">
                                    <a href="Film-detaille.php?film=<?php echo urlencode($film['Nom_Film']); ?>"><i class="fa fa-play"></i> <?php echo $film['Nom_Film']; ?></a>
                                       </h3>
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
                        <!-- #post-## -->
                     </div>
                     <?php endforeach; ?>
   </section>
   <!-- owl-carousel Videos Section-1 End -->

   <!-- owl-carousel Videos Section-2 Start -->
   <section class="pt-0 gen-section-padding-2">
      <div class="container">
         <div class="row">
            <div class="col-xl-6 col-lg-6 col-md-6">
               <h4 class="gen-heading-title">Top Regional Shows</h4>
            </div>
            <div class="col-xl-6 col-lg-6 col-md-6 d-none d-md-inline-block">
               <div class="gen-movie-action">
                  <div class="gen-btn-container text-right">
                     <a href="tv-shows-pagination.html" class="gen-button gen-button-flat">
                        <span class="text">More Videos</span>
                     </a>
                  </div>
               </div>
            </div>
         </div>
         <div class="row mt-3">
            <div class="col-12">
               <div class="gen-style-2">
                  <div class="owl-carousel owl-loaded owl-drag" data-dots="false" data-nav="true" data-desk_num="4"
                     data-lap_num="3" data-tab_num="2" data-mob_num="1" data-mob_sm="1" data-autoplay="false"
                     data-loop="false" data-margin="30">
                     <?php
                                // Préparation et exécution de la requête SQL
                                $stmt = $db->query("SELECT Nom_Film, Couverture_Film, Genre_Film FROM film WHERE Genre_Film ='Aventure'");

                                // Récupération des résultats dans un tableau associatif
                                $films = $stmt->fetchAll(PDO::FETCH_ASSOC);
                                 foreach ($films as $film) : 
                                $nom_image = $film['Couverture_Film'];
                                $chemin_image = "images/couvertures/Film/$nom_image";
                                ?>
                     <div class="item">
                        <div
                           class="movie type-movie status-publish has-post-thumbnail hentry movie_genre-action movie_genre-adventure movie_genre-drama">
                           <div class="gen-carousel-movies-style-3 movie-grid style-2">
                              <div class="gen-movie-contain">
                                 <div class="gen-movie-img">
                                 <?php echo "<img src='$chemin_image'  alt='owl-carousel-video-image'>" ?>
                                    <div class="gen-movie-add">
                                       <div class="wpulike wpulike-heart">
                                          <div class="wp_ulike_general_class wp_ulike_is_not_liked"><button
                                                type="button" class="wp_ulike_btn wp_ulike_put_image"></button></div>
                                       </div>
                                       <ul class="menu bottomRight">
                                          <li class="share top">
                                             <i class="fa fa-share-alt"></i>
                                             <ul class="submenu">
                                                <li><a href="#" class="facebook"><i class="fab fa-facebook-f"></i></a>
                                                </li>
                                                <li><a href="#" class="facebook"><i class="fab fa-instagram"></i></a>
                                                </li>
                                                <li><a href="#" class="facebook"><i class="fab fa-twitter"></i></a></li>
                                             </ul>
                                          </li>
                                       </ul>
                                       <div class="movie-actions--link_add-to-playlist dropdown">
                                          <a class="dropdown-toggle" href="#" data-toggle="dropdown"><i
                                                class="fa fa-plus"></i></a>
                                          <div class="dropdown-menu mCustomScrollbar">
                                             <div class="mCustomScrollBox">
                                                <div class="mCSB_container">
                                                   <a class="login-link" href="register.php">Sign in to add this movie
                                                      to a
                                                      playlist.</a>
                                                </div>
                                             </div>
                                          </div>
                                       </div>
                                    </div>
                                    <div class="gen-movie-action">
                                    <a href="Film-detaille.php?film=<?php echo urlencode($film['Nom_Film']); ?>" class="gen-button"><i class="fa fa-play"></i></a>
                                          <i class="fa fa-play"></i>
                                       </a>
                                    </div>
                                 </div>
                                 <div class="gen-info-contain">
                                    <div class="gen-movie-info">
                                    <h3>
                                    <a href="Film-detaille.php?film=<?php echo urlencode($film['Nom_Film']); ?>"><i class="fa fa-play"></i> <?php echo $film['Nom_Film']; ?></a>
                                    </h3>

                                    </div>
                                    <div class="gen-movie-meta-holder">
                                       <ul>
                                          <li>1 Season</li>
                                          <li>
                                             <a href="adventure.html"><span>Adventure</span></a>
                                          </li>
                                       </ul>
                                    </div>
                                 </div>
                              </div>
                           </div>
                        </div>
                        <!-- #post-## -->
                     </div>
                     <?php endforeach; ?>
                  </div>
               </div>
            </div>
         </div>
      </div>
      
   </section>
   <!-- owl-carousel Videos Section-2 End -->

   <!-- Slick Slider start -->
   <section class="gen-section-padding-2 pt-0 pb-0">
      <div class="container">
         <div class="home-singal-silder">
            <div class="gen-nav-movies gen-banner-movies">
               <div class="row">
                  <div class="col-lg-12">
                     <div class="slider slider-for">
                        <!-- Slider Items -->
                        <div class="slider-item" style="background: url('images/background/asset-4.jpeg')">
                           <div class="gen-slick-slider h-100">
                              <div class="gen-movie-contain h-100">
                                 <div class="container h-100">
                                    <div class="row align-items-center h-100">
                                       <div class="col-lg-6">
                                          <div class="gen-movie-info">
                                             <h3>thieve the bank</h3>
                                             <p>Streamlab is a long established fact that a reader will be distracted by
                                                the readable content of a page when Streamlab at its layout Streamlab.
                                             </p>

                                          </div>
                                          <div class="gen-movie-action">
                                             <div class="gen-btn-container button-1">
                                                <a class="gen-button" href="#" tabindex="0">
                                                   <i aria-hidden="true" class="ion ion-play"></i>
                                                   <span class="text">Play Now</span>
                                                </a>
                                             </div>
                                          </div>
                                       </div>
                                    </div>
                                 </div>
                              </div>
                           </div>
                        </div>
                        <div class="slider-item" style="background: url('images/background/asset-23.jpeg')">
                           <div class="gen-slick-slider h-100">
                              <div class="gen-movie-contain h-100">
                                 <div class="container h-100">
                                    <div class="row align-items-center h-100">
                                       <div class="col-lg-6">
                                          <div class="gen-movie-info">
                                             <h3>Love your life</h3>
                                             <p>Streamlab is a long established fact that a reader will be distracted by
                                                the readable content of a page when Streamlab at its layout Streamlab.
                                             </p>

                                          </div>
                                          <div class="gen-movie-action">
                                             <div class="gen-btn-container button-1">
                                                <a class="gen-button" href="#" tabindex="0">
                                                   <i aria-hidden="true" class="ion ion-play"></i>
                                                   <span class="text">Play Now</span>
                                                </a>
                                             </div>
                                          </div>
                                       </div>
                                    </div>
                                 </div>
                              </div>
                           </div>
                        </div>
                        <div class="slider-item" style="background: url('images/background/asset-24.jpeg')">
                           <div class="gen-slick-slider h-100">
                              <div class="gen-movie-contain h-100">
                                 <div class="container h-100">
                                    <div class="row align-items-center h-100">
                                       <div class="col-lg-6">
                                          <div class="gen-movie-info">
                                             <h3>The Last Witness</h3>
                                             <p>Streamlab is a long established fact that a reader will be distracted by
                                                the readable content of a page when Streamlab at its layout Streamlab.
                                             </p>

                                          </div>
                                          <div class="gen-movie-action">
                                             <div class="gen-btn-container button-1">
                                                <a class="gen-button" href="#" tabindex="0">
                                                   <i aria-hidden="true" class="ion ion-play"></i>
                                                   <span class="text">Play Now</span>
                                                </a>
                                             </div>
                                          </div>
                                       </div>
                                    </div>
                                 </div>
                              </div>
                           </div>
                        </div>
                        <div class="slider-item" style="background: url('images/background/asset-25.jpeg')">
                           <div class="gen-slick-slider h-100">
                              <div class="gen-movie-contain h-100">
                                 <div class="container h-100">
                                    <div class="row align-items-center h-100">
                                       <div class="col-lg-6">
                                          <div class="gen-movie-info">
                                             <h3>Fight For Life</h3>
                                             <p>Streamlab is a long established fact that a reader will be distracted by
                                                the readable content of a page when Streamlab at its layout Streamlab.
                                             </p>

                                          </div>
                                          <div class="gen-movie-action">
                                             <div class="gen-btn-container button-1">
                                                <a class="gen-button" href="#" tabindex="0">
                                                   <i aria-hidden="true" class="ion ion-play"></i>
                                                   <span class="text">Play Now</span>
                                                </a>
                                             </div>
                                          </div>
                                       </div>
                                    </div>
                                 </div>
                              </div>
                           </div>
                        </div>
                        <!-- Slider Items -->
                     </div>
                     <div class="slider slider-nav">
                        <div class="slider-nav-contain">
                           <div class="gen-nav-img">
                              <img src="images/background/asset-4.jpeg" alt="steamlab-image">
                           </div>
                           <div class="movie-info">
                              <h3>thieve the bank</h3>
                              <div class="gen-movie-meta-holder">
                                 <ul>
                                    <li>30mins</li>
                                    <li>
                                       <a href="action.html">
                                          Action </a>
                                    </li>
                                 </ul>
                              </div>
                           </div>
                        </div>
                        <div class="slider-nav-contain">
                           <div class="gen-nav-img">
                              <img src="images/background/asset-23.jpeg" alt="streamlab-image">
                           </div>
                           <div class="movie-info">
                              <h3>Love your life</h3>
                              <div class="gen-movie-meta-holder">
                                 <ul>
                                    <li>1hr 46mins</li>
                                    <li>
                                       <a href="action.html">
                                          Action </a>
                                    </li>
                                 </ul>
                              </div>
                           </div>
                        </div>
                        <div class="slider-nav-contain">
                           <div class="gen-nav-img">
                              <img src="images/background/asset-24.jpeg" alt="streamlab-image">
                           </div>
                           <div class="movie-info">
                              <h3>The Last Witness</h3>
                              <div class="gen-movie-meta-holder">
                                 <ul>
                                    <li>1hr 37 mins</li>
                                    <li>
                                       <a href="action.html">
                                          Action </a>
                                    </li>
                                 </ul>
                              </div>
                           </div>
                        </div>
                        <div class="slider-nav-contain">
                           <div class="gen-nav-img">
                              <img src="images/background/asset-25.jpeg" alt="streamlab-image">
                           </div>
                           <div class="movie-info">
                              <h3>Fight For Life</h3>
                              <div class="gen-movie-meta-holder">
                                 <ul>
                                    <li>2hr 25 mins</li>
                                    <li>
                                       <a href="action.html">
                                          Action </a>
                                    </li>
                                 </ul>
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
   <!-- Slick Slider End -->

    <!-- owl-carousel Videos Section-3 Start -->
    <section class="gen-section-padding-2">
      <div class="container">
         <div class="row">
            <div class="col-xl-6 col-lg-6 col-md-6">
               <h4 class="gen-heading-title">Watch For Free: Movie Mania</h4>
            </div>
            <div class="col-xl-6 col-lg-6 col-md-6 d-none d-md-inline-block">
               <div class="gen-movie-action">
                  <div class="gen-btn-container text-right">
                     <a href="tv-shows-pagination.html" class="gen-button gen-button-flat">
                        <span class="text">More Videos</span>
                     </a>
                  </div>
               </div>
            </div>
         </div>
         <div class="row mt-3">
            <div class="col-12">
               <div class="gen-style-2">
                  <div class="owl-carousel owl-loaded owl-drag" data-dots="false" data-nav="true" data-desk_num="4"
                     data-lap_num="3" data-tab_num="2" data-mob_num="1" data-mob_sm="1" data-autoplay="false"
                     data-loop="false" data-margin="30">
                     <?php
                                // Préparation et exécution de la requête SQL
                                $stmt = $db->query("SELECT Nom_Film, Couverture_Film, Genre_Film FROM film WHERE Genre_Film ='Science-fiction'");

                                // Récupération des résultats dans un tableau associatif
                                $films = $stmt->fetchAll(PDO::FETCH_ASSOC);
                                 foreach ($films as $film) : 
                                $nom_image = $film['Couverture_Film'];
                                $chemin_image = "images/couvertures/Film/$nom_image";
                                ?>
                     <div class="item">
                        <div
                           class="movie type-movie status-publish has-post-thumbnail hentry movie_genre-action movie_genre-adventure movie_genre-drama">
                           <div class="gen-carousel-movies-style-3 movie-grid style-2">
                              <div class="gen-movie-contain">
                                 <div class="gen-movie-img">
                                 <?php echo "<img src='$chemin_image'  alt='owl-carousel-video-image'>" ?>
                                    <div class="gen-movie-add">
                                       <div class="wpulike wpulike-heart">
                                          <div class="wp_ulike_general_class wp_ulike_is_not_liked"><button
                                                type="button" class="wp_ulike_btn wp_ulike_put_image"></button></div>
                                       </div>
                                       <ul class="menu bottomRight">
                                          <li class="share top">
                                             <i class="fa fa-share-alt"></i>
                                             <ul class="submenu">
                                                <li><a href="#" class="facebook"><i class="fab fa-facebook-f"></i></a>
                                                </li>
                                                <li><a href="#" class="facebook"><i class="fab fa-instagram"></i></a>
                                                </li>
                                                <li><a href="#" class="facebook"><i class="fab fa-twitter"></i></a></li>
                                             </ul>
                                          </li>
                                       </ul>
                                       <div class="movie-actions--link_add-to-playlist dropdown">
                                          <a class="dropdown-toggle" href="#" data-toggle="dropdown"><i
                                                class="fa fa-plus"></i></a>
                                          <div class="dropdown-menu mCustomScrollbar">
                                             <div class="mCustomScrollBox">
                                                <div class="mCSB_container">
                                                   <a class="login-link" href="register.php">Sign in to add this movie
                                                      to a
                                                      playlist.</a>
                                                </div>
                                             </div>
                                          </div>
                                       </div>
                                    </div>
                                    <div class="gen-movie-action">
                                    <a href="Film-detaille.php?film=<?php echo urlencode($film['Nom_Film']); ?>" class="gen-button"><i class="fa fa-play"></i></a>
                                          <i class="fa fa-play"></i>
                                       </a>
                                    </div>
                                 </div>
                                 <div class="gen-info-contain">
                                    <div class="gen-movie-info">
                                       <h3>
                                    <a href="Film-detaille.php?film=<?php echo urlencode($film['Nom_Film']); ?>"><i class="fa fa-play"></i> <?php echo $film['Nom_Film']; ?></a>
                                       </h3>
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
                        <!-- #post-## -->
                     </div>
                     <?php endforeach; ?>
   </section>
   <!-- owl-carousel Videos Section-3 End -->

   <!-- owl-carousel images Start -->
   <section class="pt-0 gen-section-padding-2 home-singal-silder">
      <div class="container">
         <div class="row">
            <div class="col-12">
               <div class="gen-banner-movies">
                  <div class="owl-carousel owl-loaded owl-drag" data-dots="true" data-nav="false" data-desk_num="1"
                     data-lap_num="1" data-tab_num="1" data-mob_num="1" data-mob_sm="1" data-autoplay="true"
                     data-loop="true" data-margin="30">
                     <div class="item" style="background: url('images/background/asset-20.jpeg')">
                        <div class="gen-movie-contain h-100">
                           <div class="container h-100">
                              <div class="row align-items-center h-100">
                                 <div class="col-xl-6">
                                    <div class="gen-movie-info">
                                       <h3>Command in your hand</h3>
                                    </div>
                                    <div class="gen-movie-meta-holder">
                                       <ul>
                                          <li>1 Season</li>
                                          <li>3 Episode</li>
                                          <li>2013</li>
                                          <li>
                                             <a href="#"><span>Comedy</span></a>
                                          </li>
                                       </ul>
                                       <p>Streamlab is a long established fact that a reader will be distracted by the
                                          readable content of a page when Streamlab at its layout Streamlab.</p>
                                    </div>
                                    <div class="gen-movie-action">
                                       <div class="gen-btn-container">
                                          <a href="single-episode.html" class="gen-button gen-button-dark">
                                             <span class="text">Play now</span>
                                          </a>
                                       </div>
                                    </div>
                                 </div>
                              </div>
                           </div>
                        </div>
                     </div>
                     <div class="item" style="background: url('images/background/asset-21.jpeg')">
                        <div class="gen-movie-contain h-100">
                           <div class="container  h-100">
                              <div class="row align-items-center h-100">
                                 <div class="col-xl-6">
                                    <div class="gen-movie-info">
                                       <h3>stories of the dark</h3>
                                    </div>
                                    <div class="gen-movie-meta-holder">
                                       <ul>
                                          <li>1 Season</li>
                                          <li>5 Episode</li>
                                          <li>2015 to 2016</li>
                                          <li>
                                             <a href="#"><span>Biography</span></a>
                                          </li>
                                       </ul>
                                       <p>Streamlab is a long established fact that a reader will be distracted by the
                                          readable content of a page when Streamlab at its layout Streamlab.</p>
                                    </div>
                                    <div class="gen-movie-action">
                                       <div class="gen-btn-container button-1">
                                          <a href="single-episode.html" class="gen-button gen-button-dark">
                                             <span class="text">Play now</span>
                                          </a>
                                       </div>
                                    </div>
                                 </div>
                              </div>
                           </div>
                        </div>
                     </div>
                     <div class="item" style="background: url('images/background/asset-37.jpeg')">
                        <div class="gen-movie-contain h-100">
                           <div class="container  h-100">
                              <div class="row align-items-center h-100">
                                 <div class="col-xl-6">
                                    <div class="gen-movie-info">
                                       <h3>Against Beast</h3>
                                    </div>
                                    <div class="gen-movie-meta-holder">
                                       <ul>
                                          <li>1 Season</li>
                                          <li>1 Episode</li>
                                          <li>2017 to 2018</li>
                                          <li>
                                             <a href="#"><span>Drama</span></a>
                                          </li>
                                       </ul>
                                       <p>Streamlab is a long established fact that a reader will be distracted by the
                                          readable content of a page when Streamlab at its layout Streamlab.</p>
                                    </div>
                                    <div class="gen-movie-action">
                                       <div class="gen-btn-container button-1">
                                          <a href="single-episode.html" class="gen-button gen-button-dark">
                                             <span class="text">Play now</span>
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
   <!-- owl-carousel images End -->

   <!-- owl-carousel Videos Section-4 Start -->
   <section class="gen-section-padding-2">
      <div class="container">
         <div class="row">
            <div class="col-xl-6 col-lg-6 col-md-6">
               <h4 class="gen-heading-title">Watch For Free: Movie Mania</h4>
            </div>
            <div class="col-xl-6 col-lg-6 col-md-6 d-none d-md-inline-block">
               <div class="gen-movie-action">
                  <div class="gen-btn-container text-right">
                     <a href="tv-shows-pagination.html" class="gen-button gen-button-flat">
                        <span class="text">More Videos</span>
                     </a>
                  </div>
               </div>
            </div>
         </div>
         <div class="row mt-3">
            <div class="col-12">
               <div class="gen-style-2">
                  <div class="owl-carousel owl-loaded owl-drag" data-dots="false" data-nav="true" data-desk_num="4"
                     data-lap_num="3" data-tab_num="2" data-mob_num="1" data-mob_sm="1" data-autoplay="false"
                     data-loop="false" data-margin="30">
                     <?php
                                // Préparation et exécution de la requête SQL
                                $stmt = $db->query("SELECT Nom_Film, Couverture_Film, Genre_Film FROM film WHERE Genre_Film ='Thriller'");

                                // Récupération des résultats dans un tableau associatif
                                $films = $stmt->fetchAll(PDO::FETCH_ASSOC);
                                 foreach ($films as $film) : 
                                $nom_image = $film['Couverture_Film'];
                                $chemin_image = "images/couvertures/Film/$nom_image";
                                ?>
                     <div class="item">
                        <div
                           class="movie type-movie status-publish has-post-thumbnail hentry movie_genre-action movie_genre-adventure movie_genre-drama">
                           <div class="gen-carousel-movies-style-3 movie-grid style-2">
                              <div class="gen-movie-contain">
                                 <div class="gen-movie-img">
                                 <?php echo "<img src='$chemin_image'  alt='owl-carousel-video-image'>" ?>
                                    <div class="gen-movie-add">
                                       <div class="wpulike wpulike-heart">
                                          <div class="wp_ulike_general_class wp_ulike_is_not_liked"><button
                                                type="button" class="wp_ulike_btn wp_ulike_put_image"></button></div>
                                       </div>
                                       <ul class="menu bottomRight">
                                          <li class="share top">
                                             <i class="fa fa-share-alt"></i>
                                             <ul class="submenu">
                                                <li><a href="#" class="facebook"><i class="fab fa-facebook-f"></i></a>
                                                </li>
                                                <li><a href="#" class="facebook"><i class="fab fa-instagram"></i></a>
                                                </li>
                                                <li><a href="#" class="facebook"><i class="fab fa-twitter"></i></a></li>
                                             </ul>
                                          </li>
                                       </ul>
                                       <div class="movie-actions--link_add-to-playlist dropdown">
                                          <a class="dropdown-toggle" href="#" data-toggle="dropdown"><i
                                                class="fa fa-plus"></i></a>
                                          <div class="dropdown-menu mCustomScrollbar">
                                             <div class="mCustomScrollBox">
                                                <div class="mCSB_container">
                                                   <a class="login-link" href="register.php">Sign in to add this movie
                                                      to a
                                                      playlist.</a>
                                                </div>
                                             </div>
                                          </div>
                                       </div>
                                    </div>
                                    <div class="gen-movie-action">
                                    <a href="Film-detaille.php?film=<?php echo urlencode($film['Nom_Film']); ?>" class="gen-button"><i class="fa fa-play"></i></a>
                                          <i class="fa fa-play"></i>
                                       </a>
                                    </div>
                                 </div>
                                 <div class="gen-info-contain">
                                    <div class="gen-movie-info">
                                    <a href="Film-detaille.php?film=<?php echo urlencode($film['Nom_Film']); ?>"><i class="fa fa-play"></i> <?php echo $film['Nom_Film']; ?></a>
                                       </h3>
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
                        <!-- #post-## -->
                     </div>
                     <?php endforeach; ?>
   </section>
   <!-- owl-carousel Videos Section-4 End -->

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