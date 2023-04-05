<?php require_once ("connexion.php"); ?>
<!--========== Header ==============-->
<header id="gen-header" class="gen-header-style-1 gen-has-sticky">
  <div class="gen-bottom-header">
     <div class="container">
        <div class="row">
           <div class="col-lg-12">
              <nav class="navbar navbar-expand-lg navbar-light">
                <!--========== Logo ==============-->
                 <a class="navbar-brand" href="#">
                    <img class="img-fluid logo" src="images/logo.png" alt="streamlab-image">
                 </a>
                 <!--========== Logo ==============-->
                 <div class="collapse navbar-collapse" id="navbarSupportedContent">
                    <div id="gen-menu-contain" class="gen-menu-contain">
                       <ul id="gen-main-menu" class="navbar-nav ml-auto">

                        <!--========== Menu Film ==============-->
                          <li class="menu-item active">
                             <a href="#" aria-current="page">Film</a>
                             <i class="fa fa-chevron-down gen-submenu-icon"></i>

                             <!--========== Sous-Menu ==============-->
                             <ul class="sub-menu">
                                <li class="menu-item menu-item-has-children">
                                  <!--========== Catégories ==============-->
                                   <a href="#">Catégorie</a>
                                   <i class="fa fa-chevron-down gen-submenu-icon"></i>
                                   <ul class="sub-menu">
                                    <!--========== Catégorie 1 ==============-->
                                      <li class="menu-item">
                                         <a href="Genre_Film.php?Genre_Film=Action">Action</a>
                                      </li>
                                      <!--========== Catégorie 2 ==============-->
                                      <li class="menu-item">
                                         <a href="Genre_Film.php?Genre_Film=Animation">Animation</a>
                                      </li>
                                      <!--========== Catégorie 3 ==============-->
                                      <li class="menu-item">
                                         <a href="Genre_Film.php?Genre_Film=Aventure">Aventure</a>
                                      </li>
                                      <!--========== Catégorie 4 ==============-->
                                      <li class="menu-item">
                                         <a href="Genre_Film.php?Genre_Film=Comédie">Comédie</a>
                                      </li>
                                      <!--========== Catégorie 5 ==============-->
                                      <li class="menu-item">
                                         <a href="Genre_Film.php?Genre_Film=Drame">Drame</a>
                                      </li>
                                      <!--========== Catégorie 6 ==============-->
                                      <li class="menu-item">
                                         <a href="Genre_Film.php?Genre_Film=Fantasy">Fantasy</a>
                                      </li>
                                      <!--========== Catégorie 7 ==============-->
                                      <li class="menu-item">
                                         <a href="Genre_Film.php?Genre_Film=Policier">Policier</a>
                                      </li>
                                      <!--========== Catégorie 8 ==============-->
                                      <li class="menu-item">
                                         <a href="Genre_Film.php?Genre_Film=Science-fiction">Science Fiction</a>
                                      </li>
                                      <!--========== Catégorie 9 ==============-->
                                      <li class="menu-item">
                                         <a href="Genre_Film.php?Genre_Film=Thriller">Thriller</a>
                                      </li>
                                   </ul>
                                </li>

                                <!--========== Ma Liste ==============-->
                                <li class="menu-item menu-item-has-children">
                                   <a href="#">Ma Liste</a>
                                   <i class="fa fa-chevron-down gen-submenu-icon"></i>
                                </li>
                                <!--========== Ma Liste ==============-->
                             </ul>
                          </li>
                          <!--========== Sous-Menu ==============-->


                          <!--========== Menu Livres ==============-->

                          <li class="menu-item">
                             <a href="tv-shows-home.html">Livre</a>
                             <i class="fa fa-chevron-down gen-submenu-icon"></i>
                             
                             <!--========== Sous-Menu ==============-->
                             <ul class="sub-menu">
                                <li class="menu-item menu-item-has-children">
                                  <!--========== Catégories ==============-->
                                   <a href="#">Catégorie</a>
                                   <i class="fa fa-chevron-down gen-submenu-icon"></i>
                                   <ul class="sub-menu">
                                    <!--========== Catégorie 1 ==============-->
                                      <li class="menu-item">
                                         <a href="Genre_Livre.php?Genre_Livre=Autobiographie">Autobiographie</a>
                                      </li>
                                      <!--========== Catégorie 2 ==============-->
                                      <li class="menu-item">
                                         <a href="Genre_Livre.php?Genre_Livre=Aventure">Aventure</a>
                                      </li>
                                      <!--========== Catégorie 3 ==============-->
                                      <li class="menu-item">
                                         <a href="Genre_Livre.php?Genre_Livre=Contemporain">Contemporain</a>
                                      </li>
                                      <!--========== Catégorie 4 ==============-->
                                      <li class="menu-item">
                                         <a href="Genre_Livre.php?Genre_Livre=Cuisine">Cuisine</a>
                                      </li>
                                      <!--========== Catégorie 5 ==============-->
                                      <li class="menu-item">
                                         <a href="Genre_Livre.php?Genre_Livre=Développement personnel">Développement personnel</a>
                                      </li>
                                      <!--========== Catégorie 6 ==============-->
                                      <li class="menu-item">
                                         <a href="Genre_Livre.php?Genre_Livre=Drame">Drame</a>
                                      </li>
                                      <!--========== Catégorie 7 ==============-->
                                      <li class="menu-item">
                                         <a href="Genre_Livre.php?Genre_Livre=Fantastique">Fantastique</a>
                                      </li>
                                      <!--========== Catégorie 8 ==============-->
                                      <li class="menu-item">
                                         <a href="Genre_Livre.php?Genre_Livre=Historique">Historique</a>
                                      </li>
                                      <!--========== Catégorie 9 ==============-->
                                      <li class="menu-item">
                                         <a href="Genre_Livre.php?Genre_Livre=Jeunesse">Jeunesse</a>
                                      </li>
                                      <!--========== Catégorie 10 ==============-->
                                      <li class="menu-item">
                                         <a href="Genre_Livre.php?Genre_Livre=Nouvelles">Nouvelles</a>
                                      </li>
                                       <!--========== Catégorie 11 ==============-->
                                       <li class="menu-item">
                                         <a href="Genre_Livre.php?Genre_Livre=Policier">Policier</a>
                                      </li>
                                       <!--========== Catégorie 12 ==============-->
                                       <li class="menu-item">
                                         <a href="Genre_Livre.php?Genre_Livre=Romance">Romance</a>
                                      </li>
                                       <!--========== Catégorie 13 ==============-->
                                       <li class="menu-item">
                                         <a href="Genre_Livre.php?Genre_Livre=Science-fiction">Science-fiction</a>
                                      </li>
                                       <!--========== Catégorie 14 ==============-->
                                       <li class="menu-item">
                                         <a href="Genre_Livre.php?Genre_Livre=Suspence">Suspence</a>
                                      </li>
                                       <!--========== Catégorie 15 ==============-->
                                       <li class="menu-item">
                                         <a href="Genre_Livre.php?Genre_Livre=Thriller">Thriller</a>
                                      </li>
                                   </ul>
                                </li>

                                <!--========== Ma Liste ==============-->
                                <li class="menu-item menu-item-has-children">
                                   <a href="#">Ma Liste</a>
                                   <i class="fa fa-chevron-down gen-submenu-icon"></i>
                                </li>
                                <!--========== Ma Liste ==============-->
                             </ul>
                          </li>
                          <!--========== Sous-Menu ==============-->

                    </div>
                 </div>
                 <div class="gen-header-info-box">
                    <div class="gen-menu-search-block">
                       <a href="javascript:void(0)" id="gen-seacrh-btn"><i class="fa fa-search"></i></a>
                       <div class="gen-search-form">
                          <form role="search" method="get" class="search-form" action="#">
                             <label>
                                <span class="screen-reader-text"></span>
                                <input type="search" class="search-field" placeholder="Search …" value="" name="s">
                             </label>
                             <button type="submit" class="search-submit"><span
                                   class="screen-reader-text"></span></button>
                          </form>
                       </div>
                    </div>
                    <div class="gen-account-holder">
                       <a href="javascript:void(0)" id="gen-user-btn"><i class="fa fa-user"></i></a>
                       <div class="gen-account-menu">
                          <ul class="gen-account-menu">
                             <!-- Pms Menu -->
                             <li>
                                <a href="log-in.php"><i class="fas fa-sign-in-alt"></i>
                                   login </a>
                             </li>
                             <li>
                                <a href="register.php"><i class="fa fa-user"></i>
                                   Register </a>
                             </li>
                             <!-- Library Menu -->
                             <li>
                                <a href="library.html">
                                   <i class="fa fa-indent"></i>
                                   Library </a>
                             </li>
                             <li>
                                <a href="library.html"><i class="fa fa-list"></i>
                                   Movie Playlist </a>
                             </li>
                             <li>
                                <a href="library.html"><i class="fa fa-list"></i>
                                   Tv Show Playlist </a>
                             </li>
                             <li>
                                <a href="library.html"><i class="fa fa-list"></i>
                                   Video Playlist </a>
                             </li>
                             <li>
                                <a href="upload-video.html"> <i class="fa fa-upload"></i>
                                   Upload Video </a>
                             </li>
                          </ul>
                       </div>
                    </div>
                    <div class="gen-btn-container">
                       <a href="register.php" class="gen-button">
                          <div class="gen-button-block">
                             <span class="gen-button-line-left"></span>
                             <span class="gen-button-text">Subscribe</span>
                          </div>
                       </a>
                    </div>
                 </div>
                 <button class="navbar-toggler" type="button" data-toggle="collapse"
                    data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent"
                    aria-expanded="false" aria-label="Toggle navigation">
                    <i class="fas fa-bars"></i>
                 </button>
              </nav>
           </div>
        </div>
     </div>
  </div>
</header>
