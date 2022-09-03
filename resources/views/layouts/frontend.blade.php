<!DOCTYPE html>

<html lang="en">
<head>
  
  <!-- Global site tag (gtag.js) - Google Analytics -->
<script async src="https://www.googletagmanager.com/gtag/js?id=UA-180188175-1"></script>
<script>
  window.dataLayer = window.dataLayer || [];
  function gtag(){dataLayer.push(arguments);}
  gtag('js', new Date());

  gtag('config', 'UA-180188175-1');
</script>


<meta charset="UTF-8">
<meta name="description" content="Tranquera Abierta">
<meta name="author" content="ADS-Digital">

<!-- Mobile Metas -->
<meta name="viewport" content="width=device-width, initial-scale=1">

<!-- Site Title  -->
<title>@yield('title')</title>

<!-- Favicon -->
<link rel="shortcut icon" href="img/favicon.png" type="image/x-icon" />

<!-- Web Fonts  -->
<link href="https://fonts.googleapis.com/css?family=Roboto+Condensed%7CRoboto+Slab:300,400,700%7CRoboto:300,400,500,700" rel="stylesheet">
<!-- Stylesheets -->
<link rel="stylesheet" href="<?php echo ENV('PATH_PUBLIC') ?>css/bootstrap.min.css">
<link rel="stylesheet" href="<?php echo ENV('PATH_PUBLIC') ?>css/main.css">
<link rel="stylesheet" href="<?php echo ENV('PATH_PUBLIC') ?>css/style.css">
<link rel="stylesheet" href="<?php echo ENV('PATH_PUBLIC') ?>css/colors.css">
<link rel="stylesheet" href="<?php echo ENV('PATH_PUBLIC') ?>css/responsive.css">
<link rel="stylesheet" href="<?php echo ENV('PATH_PUBLIC') ?>css/jquery-ui.min.css">
<link rel="stylesheet" href="<?php echo ENV('PATH_PUBLIC') ?>css/weather-icons.min.css">

<!--[if lt IE 9]>
      <script src="http://html5shiv.googlecode.com/svn/trunk/html5.js"></script>
      <![endif]-->
</head>

<body>
<div id="pageloader">
  <div class="loader-item"> <img src="<?php echo ENV('PATH_PUBLIC') ?>img/load.gif" alt='loader' /> </div>
</div>
<!--========== BEGIN #WRAPPER ==========-->
<div id="wrapper" data-color="green">
  <!--========== BEGIN #HEADER ==========-->
  <header id="header"> 
    <!-- Begin .top-menu -->
    <div class="top-menu"> 
      <!-- Begin .container -->
      <div class="container"> 
        <!-- Begin .left-top-menu -->
        <ul class="left-top-menu">
          <li> <a href="#" class="facebook"><i class="fa fa-facebook"></i></a></li>
          <li> <a href="#" class="twitter"><i class="fa fa-twitter"></i></a> </li>
          <li> <a href="#" class="youtube"> <i class="fa fa-youtube"></i></a> </li>
          <li> <a href="#" class="instagram"> <i class="fa fa-instagram"></i></a> </li>
        </ul>
        <!-- End .left-top-menu --> 
        <!-- Begin .right-top-menu -->
        <ul class="right-top-menu pull-right">
          <li class="contact"><a href="#"><i class="fa fa-map-marker fa-i"></i></a></li>
          <li class="about"><a href="#"><i class="fa fa-user fa-i"></i></a> </li>
          <li>
            <div class="search-container">
              <div class="search-icon-btn"> <span style="cursor:pointer"><i class="fa fa-search"></i></span> </div>
              <div class="search-input">
                <input type="search" class="search-bar" placeholder="Buscar..." title="Buscar"/>
              </div>
            </div>
          </li>
        </ul>
        <!-- End .right-top-menu --> 
      </div>
      <!-- End .container --> 
    </div>
    <!-- End .top-menu --> 
    <!-- Begin .container -->
    <div class="container"> 
      <!-- Begin .header-logo -->
      <div class="header-logo"><a href="<?php echo ENV('PATH_PUBLIC') ?>"><img src="<?php echo ENV('PATH_PUBLIC') ?>img/logoTA.png" alt="Site Logo" />
        <h1><span>tranquera</span></h1>
        <h1></span>abierta</span></h1>
        </a></div>
      <!-- End .header-logo --> 
      <!-- Begin .header-add-place -->
      <div class="header-add-place">
        <div class="desktop-add">@yield('pub-top')</div>
      </div>
      <!-- End .header-add-place --> 
      <!--========== BEGIN .NAVBAR #MOBILE-NAV ==========-->
      <nav class="navbar navbar-default" id="mobile-nav">
        <div class="navbar-header">
          <button type="button" class="navbar-toggle" data-toggle="collapse" id="sidenav-toggle"> <span class="icon-bar"></span> <span class="icon-bar"></span> <span class="icon-bar"></span> </button>
          <div class="sidenav-header-logo"><a href="<?php echo ENV('PATH_PUBLIC') ?>"><img src="<?php echo ENV('PATH_PUBLIC') ?>img/logo.png" alt="Site Logo" />
            <h2>Tranquera <span>Abierta</span></h2>           
            </a></div>
        </div>
        <div class="sidenav" data-sidenav data-sidenav-toggle="#sidenav-toggle">
          <button type="button" class="navbar-toggle active" data-toggle="collapse"> <span class="icon-bar"></span> <span class="icon-bar"></span> <span class="icon-bar"></span> </button>
          <div class="sidenav-brand">
            <div class="sidenav-header-logo"><a href="<?php echo ENV('PATH_PUBLIC') ?>"><img src="<?php echo ENV('PATH_PUBLIC') ?>img/logo.png" alt="Site Logo" />
              <h2>Tranquera <span>Abierta</span></h2>
              </a></div>
          </div>
          <ul class="sidenav-menu">
            <li><a href="<?php echo ENV('PATH_PUBLIC') ?>">Home</a></li>
            <li><a href="<?php echo ENV('PATH_PUBLIC') ?>seccion/1">Info General</a> </li>
            <li><a href="<?php echo ENV('PATH_PUBLIC') ?>seccion/2">Agricultura</a> </li>
            <li><a href="<?php echo ENV('PATH_PUBLIC') ?>seccion/3">Ganadería</a> </li>
            <li><a href="<?php echo ENV('PATH_PUBLIC') ?>seccion/4">Empresas</a></li>
            <li><a href="<?php echo ENV('PATH_PUBLIC') ?>seccion/5">Agtech</a></li>
            <li><a href="<?php echo ENV('PATH_PUBLIC') ?>seccion/6">CyT</a></li>
            <li><a href="<?php echo ENV('PATH_PUBLIC') ?>contacto">Nosotros</a></li>
          </ul>
        </div>
      </nav>
      <!--========== END .NAVBAR #MOBILE-NAV ==========--> 
    </div>
    

    <div class="col-xs-12 hidden-lg hidden-sm hidden-md" style="margin: 0px; padding: 0px;">  
      @yield('pub-top')              
    </div>

    <!-- End .container --> 
    <!--========== BEGIN .NAVBAR #FIXED-NAVBAR ==========-->
    <div class="navbar" id="fixed-navbar"> 
      <!--========== BEGIN MAIN-MENU .NAVBAR-COLLAPSE COLLAPSE #FIXED-NAVBAR-TOOGLE ==========-->
      <div class="main-menu nav navbar-collapse collapse" id="fixed-navbar-toggle"> 
        <!--========== BEGIN .CONTAINER ==========-->
        <div class="container"> 
          <!-- Begin .nav navbar-nav -->
          <ul class="nav navbar-nav">
            <li class="active"><a href="<?php echo ENV('PATH_PUBLIC') ?>">Home</a></li>
            <li><a href="<?php echo ENV('PATH_PUBLIC') ?>seccion/1">Info General</a> </li>
            <li><a href="<?php echo ENV('PATH_PUBLIC') ?>seccion/2">Agricultura</a> </li>
            <li><a href="<?php echo ENV('PATH_PUBLIC') ?>seccion/3">Ganadería</a> </li>
            <li><a href="<?php echo ENV('PATH_PUBLIC') ?>seccion/4">Empresas</a></li>
            <li><a href="<?php echo ENV('PATH_PUBLIC') ?>seccion/5">Agtech</a></li>
            <li><a href="<?php echo ENV('PATH_PUBLIC') ?>seccion/6">CyT</a></li>
            <li><a href="<?php echo ENV('PATH_PUBLIC') ?>contacto">Nosotros</a></li>

            <!--========== BEGIN DROPDOWN MEGA-DROPDOWN ==========-->
            
            <!--========== END DROPDOWN MEGA-DROPDOWN ==========-->
          </ul>
          <!--========== END .NAV NAVBAR-NAV ==========--> 
        </div>
        <!--========== END .CONTAINER ==========--> 
      </div>
      <!--========== END MAIN-MENU .NAVBAR-COLLAPSE COLLAPSE #FIXED-NAVBAR-TOOGLE ==========--> 
      <!--========== BEGIN .SECOND-MENU NAVBAR #NAV-BELOW-MAIN ==========-->
      <div class="second-menu navbar" id="nav-below-main"> 
        <!-- Begin .container -->
        <div class="container"> 
          <!-- Begin .collapse navbar-collapse -->
          <div class="collapse navbar-collapse nav-below-main"> 
            <!-- Begin .nav navbar-nav -->
            <ul class="nav navbar-nav">
              <li><a href="https://www.youtube.com/channel/UC_usL94cRXLTtxeEmBFP1-g" target="_blank">TA TV</a></li>
              <li><a href="https://soundcloud.com/mmroggero" target="_blank">TA Radio</a></li>
            </ul>
            <!-- End .nav navbar-nav --> 
          </div>
          <!-- End .collapse navbar-collapse --> 
          <!-- Begin .clock -->
          <div class="clock">
            <div id="time"></div>
            <div id="date"></div>
          </div>
          <!-- End .clock --> 
        </div>
        <!-- End .container --> 
      </div>
      <!--========== END .SECOND-MENU NAVBAR #NAV-BELOW-MAIN ==========--> 
    </div>
  </header>
  <!--========== END #HEADER ==========--> 
  <!--========== BEGIN #MAIN-SECTION ==========-->
    <section id="main-section"> 
      @yield('contenido')
    </section>
  <!--========== END #MAIN-SECTION ==========--> 
   <div class="container"> 
      <div class="col-xs-12 hidden-lg hidden-sm hidden-md" style="margin: 0px; padding: 0px; position: relative;">  
        @yield('pub-footer')              
      </div>
    </div>
  <!--========== BEGIN .MODULE  ==========-->
  <section class="module highlight"> 

    <!--========== BEGIN .CONTAINER ==========-->
    <div class="container"> 
    
      <!-- End .gallery-slider owl-carousel -->  
      <!--========== END SMALL-GALLERY ==========--> 
      <!-- Begin .bottom-add-place-->
      <div class="bottom-add-place"> @yield('pub-footer')</div>
      <!-- End .bottom-add-place --> 
    </div>
    <!--========== END .CONTAINER ==========--> 
  </section>
  <!--========== END .MODULE ==========-->

  <!--========== BEGIN #FOOTER==========-->
  <footer id="footer"> 

    <!-- Begin .parallax -->
    <div id="parallax-section2">
      <div class="bg parallax2 overlay img-overlay2">
        <div class="container">
          <div class="row no-gutter">
            <div class="col-sm-6 col-md-9">
              <h3 class="title-left title-style03 underline03">Nosotros</h3>
              <p class="about-us">Tranquera Abierta es una plataforma de comunicación vinculada a la producción agropecuaria, agroindustrial y técnico-científica con más de 20 años en el medio.<br>La producción general está a cargo de Mario Falabella y Martín Roggero se encarga de la conducción y producción periodística.<br>Participamos de los eventos más importantes del sector en nuestro país y el exterior: Congreso Mundial de Soja (China y Brasi), Agricultura de Precisión (Córdoba y Uruguay), Congresos Crea y de Aapresid, Agroactiva, Expoagro entre muchos otros.<br>Además Tranquera Abierta recibió múltiples reconocimientos como producto periodístico. Entre otros los premios Martín Fierro TV, Mejor Periodista Agropecuario de TV premio Capa-Banco Galicia, ATVC, Informador Agropecuario del Ciasfe IV, entro otros.</p>
              <div class="site-logo"><a href="<?php echo ENV('PATH_PUBLIC') ?>"><img src="<?php echo ENV('PATH_PUBLIC') ?>img/logoTA footer.png" alt="Side Logo" />
                <h3>TA <span>Noticias</span></h3>
                </a></div>
            </div>
            <!--div class="col-sm-6 col-md-3">
              <h3 class="title-left title-style03 underline03">Noticias</h3>
              <div class="footer-post">
                <ul>
                  <li>
                    <div class="item">
                      <div class="item-image"><a class="img-link" href="deals.html"><img class="img-responsive img-full" src="img/image_370x185.jpg" alt=""></a></div>
                      <div class="item-content">
                        <p class="ellipsis"><a href="#">Deals do not have a trajectory like most other human interactions.</a></p>
                      </div>
                    </div>
                  </li>
                  <li>
                    <div class="item">
                      <div class="item-image"><a class="img-link" href="deals.html"><img class="img-responsive img-full" src="img/image_370x185.jpg" alt=""></a></div>
                      <div class="item-content">
                        <p class="ellipsis"><a href="#">Harold E.says it proves the value of the kind of investigative journalism.</a></p>
                      </div>
                    </div>
                  </li>
                  <li>
                    <div class="item">
                      <div class="item-image"><a class="img-link" href="deals.html"><img class="img-responsive img-full" src="img/image_370x185.jpg" alt=""></a></div>
                      <div class="item-content">
                        <p class="ellipsis"><a href="#">The consumer can be influenced by marketing before purchase.</a></p>
                      </div>
                    </div>
                  </li>
                  <li>
                    <div class="item">
                      <div class="item-image"><a class="img-link" href="deals.html"><img class="img-responsive img-full" src="img/image_370x185.jpg" alt=""></a></div>
                      <div class="item-content">
                        <p class="ellipsis"><a href="#">Entertainment can aspire to be art, and can become art, but give pleasure.</a></p>
                      </div>
                    </div>
                  </li>
                </ul>
              </div>
            </div>
            <div class="col-sm-6 col-md-3">
              <h3 class="title-left title-style03 underline03">Ver+Escuchar</h3>
              <div class="footer-post">
                <ul>
                  <li>
                    <div class="item">
                      <div class="item-image"><a class="img-link" href="deals.html"><img class="img-responsive img-full" src="img/image_370x185.jpg" alt=""></a></div>
                      <div class="item-content">
                        <p class="ellipsis"><a href="#">Music may help you think better, analyze matters faster, and work more efficiently.</a></p>
                      </div>
                    </div>
                  </li>
                  <li>
                    <div class="item">
                      <div class="item-image"><a class="img-link" href="deals.html"><img class="img-responsive img-full" src="img/image_370x185.jpg" alt=""></a></div>
                      <div class="item-content">
                        <p class="ellipsis"><a href="#">Video on Demand can be used for entertainment and videoconferencing.</a></p>
                      </div>
                    </div>
                  </li>
                  <li>
                    <div class="item">
                      <div class="item-image"><a class="img-link" href="deals.html"><img class="img-responsive img-full" src="img/image_370x185.jpg" alt=""></a></div>
                      <div class="item-content">
                        <p class="ellipsis"><a href="#">Podcast is a program made available in digital format for download.</a></p>
                      </div>
                    </div>
                  </li>
                  <li>
                    <div class="item">
                      <div class="item-image"><a class="img-link" href="deals.html"><img class="img-responsive img-full" src="img/image_370x185.jpg" alt=""></a></div>
                      <div class="item-content">
                        <p class="ellipsis"><a href="#">Watch live TV news and your favorite shows on demand. At home or on the go!</a></p>
                      </div>
                    </div>
                  </li>
                </ul>
              </div>
            </div-->
            <div class="col-sm-6 col-md-3">
              <h3 class="title-left title-style03 underline03">Tags</h3>
              <div class="tagcloud">
                <a href="<?php echo ENV('PATH_PUBLIC') ?>seccion/1">Info General</a> 
                <a href="<?php echo ENV('PATH_PUBLIC') ?>seccion/2">Agricultura</a> 
                <a href="<?php echo ENV('PATH_PUBLIC') ?>seccion/3">Ganadería</a> 
                <a href="<?php echo ENV('PATH_PUBLIC') ?>seccion/4">Mercados</a>
                <a href="<?php echo ENV('PATH_PUBLIC') ?>seccion/5">Agtech</a>
                <a href="<?php echo ENV('PATH_PUBLIC') ?>seccion/6">CyT</a>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
    <!-- End .parallax --> 
  </footer>
  <!--========== END #FOOTER==========--> 
  <!--========== BEGIN #COPYRIGHTS==========-->
  <div id="copyrights"> 
    <!-- Begin .container -->
    <div class="container"> 
      <!-- Begin .copyright -->
      <div class="copyright"> &copy; 2019, Copyrights Tranquera Abierta. Todos los derechos reservados</div>
      <!-- End .copyright --> 
      <!--  Begin .footer-social-icons -->
      <div class="footer-social-icons">
        <ul>
          <li> <a href="#" class="google-plus"><i class="fa fa-google-plus"></i></a> </li>
          <li> <a href="#" class="facebook"><i class="fa fa-facebook"></i></a> </li>
          <li> <a href="#" class="twitter"><i class="fa fa-twitter"></i></a> </li>
          <li> <a href="#" class="linkedin"><i class="fa fa-linkedin"></i></a> </li>
        </ul>
      </div>
      <!--  End .footer-social-icons --> 
    </div>
    <!-- End .container --> 
  </div>
  <!--========== END #COPYRIGHTS==========--> 
</div>
  <!--========== END #WRAPPER ==========--> 
  
  <!-- External JavaScripts --> 
  <script src="<?php echo ENV('PATH_PUBLIC') ?>js/jquery-3.1.1.min.js"></script> 
  <script src="<?php echo ENV('PATH_PUBLIC') ?>js/bootstrap.min.js"></script> 
  <script src="<?php echo ENV('PATH_PUBLIC') ?>js/jquery-ui.min.js"></script> 
  <script src="<?php echo ENV('PATH_PUBLIC') ?>js/plugins.js"></script> 
  <!-- JavaScripts --> 
  <script src="<?php echo ENV('PATH_PUBLIC') ?>js/functions.js"></script> 
</body>
</html>