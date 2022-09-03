


@extends('layouts.frontend')

@section('title')
  Home | Tranquera Abierta
@endsection


@section('pub-top')
  <a href="<?php echo $pub_top->url_enlace ?>" target="_blank">
    <img class="img-responsive hidden-xs" src="<?php echo ENV('PATH_PUBLIC') ?>storage/<?php echo $pub_top->file_imagen_pc ?>" alt="">
    <p align="center">
      <img class="img-responsive hidden-lg hidden-sm hidden-md" src="<?php echo ENV('PATH_PUBLIC') ?>storage/<?php echo $pub_top->file_imagen_movil ?>" alt="">
    </p>
  </a>  
@endsection

@section('contenido')




    <!-- ========== BEGIN SLIDE MOVIL ========== -->

    <div id="carousel-example-generic" class="carousel slide hidden-lg hidden-sm hidden-md" data-ride="carousel">
      <!-- Indicators -->
      <ol class="carousel-indicators">
        <?php 
        $i = 0;
        $class_active = 'active';
        foreach ($Destacadas as $Destacada) { 
        ?>
        <li data-target="#carousel-example-generic" data-slide-to="<?php echo $i ?>" class="<?php echo $class_active ?>"></li>
        <?php 
          $class_active = '';
          $i++;
        } 
        ?>
      </ol>

      <!-- Wrapper for slides -->
      <div class="carousel-inner" role="listbox">

        <?php 
        $i = 0;
        $class_active = 'active';
        foreach ($Destacadas as $Destacada) { 
        ?>
        <div class="item <?php echo $class_active ?>">

          <a class="img-link" href="<?php echo ENV('PATH_PUBLIC') ?>noticia/<?php echo $Destacada['id'] ?>"><img class="img-responsive img-full" src="<?php echo ENV('PATH_PUBLIC') ?>storage/<?php echo $Destacada['file_imagen'] ?>" alt=""></a>
          <div class="carousel-caption">
            <?php echo $Destacada['titulo'] ?>
          </div>
        </div>
        <?php 
          $class_active = '';
          $i++;
        } 
        ?>
      </div>

      <!-- Controls -->
      <a class="left carousel-control" href="#carousel-example-generic" role="button" data-slide="prev">
        <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
        <span class="sr-only">Previous</span>
      </a>
      <a class="right carousel-control" href="#carousel-example-generic" role="button" data-slide="next">
        <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
        <span class="sr-only">Next</span>
      </a>
    </div>
    <!-- ========== END PARALLAX ========== --> 

    <!--========== BEGIN .MODULE ==========-->
    <section class="module"> 
      <!--========== BEGIN .CONTAINER ==========-->
      <div class="container"> 
        <!--========== BEGIN .BREAKING-NEWS ==========--> 
        <!-- Begin .outer -->
        <div class="outer">
          <div class="breaking-ribbon">
            <h4>Noticias Destacadas</h4>
          </div>
          <!-- Begin .newsticker -->
          <div class="newsticker">
            <ul>
            	<?php foreach ($Destacadas as $Destacada) { ?>
	            	<li>
	                	<h4><span class="category"><?php echo $Destacada['seccion'] ?></span><a href="<?php echo ENV('PATH_PUBLIC') ?>noticia/<?php echo $Destacada['id'] ?>"> <?php echo $Destacada['titulo'] ?></a></h4>
              		</li>
          		<?php } ?>
            </ul>
            <div class="navi">
              <button class="up"><i class="fa fa-caret-left"></i></button>
              <button class="down"><i class="fa fa-caret-right"></i></button>
            </div>
          </div>
          <!-- End .newsticker --> 
        </div>
        <!-- End .outer --> 
        <!--========== END .BREAKING-NEWS ==========--> 
        <!--========== BEGIN #NEWS-SLIDER ==========-->
        <div class="col-lg-12 hidden-xs">
          <div id="news-slider" class="owl-carousel">
            <?php 
            $i = 0;
            $slider_class = [
              ['first', 4],
              ['second', 3],
              ['third', 2],
              ['fourth', 3],
            ];

            foreach ($Destacadas_4 as $Destacada) { 

              $class_1 = $slider_class[$i][0];
              $class_2 = $slider_class[$i][1];
            ?>

            <!--div class="news-slider-layer <?php echo $class_1 ?>"> <a href="news.html" target="_blank">
              <div class="content"> <span class="category-tag <?php echo $class_2 ?>">Informacion General</span>
                <p>New global rules on firms' tax disclosure urged by economists</p>
              </div>
              <img src="tranquera/img/slider_574x443.jpg" alt=""> </a> 
            </div-->

              <?php if ($i == 0) { ?>
              <div class="news-slide">
              <?php } ?>

                <div class="col-xs-12 col-lg-<?php echo $class_2 ?>">
                  <div class="news-slider-layer"> <a href="<?php echo ENV('PATH_PUBLIC') ?>noticia/<?php echo $Destacada['id'] ?>">
                    <div class="content"> <span class="category-tag " style="background-color: <?php echo $Destacada['colpick_color'] ?>"><?php echo $Destacada['seccion'] ?></span>
                      <p><?php echo $Destacada['titulo'] ?></p>
                    </div>
                    <img class="img-responsive" src="<?php echo ENV('PATH_PUBLIC') ?>storage/<?php echo $Destacada['file_imagen'] ?>" alt=""> </a> 
                  </div>
                </div>
              <?php if ($i == 3) { ?>
              </div>
              <?php } ?>

            <?php 

              if ($i == 3) {
                $i = 0;
              }
              else {
                $i++;
              } 
            } 

            ?>
          </div>

          
        </div>
      </div>
        <!--========== END .NEWS-SLIDER ==========--> 

        <!--========== BEGIN #NEWS-SLIDER ==========-->


        <!--div id="news-slider" class="owl-carousel">
          <div class="news-slide">
            <div class="news-slider-layer first"> <a href="news.html" target="_blank">
              <div class="content"> <span class="category-tag bg-1">Informacion General</span>
                <p>New global rules on firms' tax disclosure urged by economists</p>
              </div>
              <img src="tranquera/img/slider_574x443.jpg" alt=""> </a> 
            </div>
            <div class="news-slider-layer second"> <a href="politics.html" target="_blank">
              <div class="content"> <span class="category-tag bg-6">Agricultura</span>
                <p>How EU referendum has changed politics, whatever the result</p>
              </div>
              <img src="tranquera/img/slider_274x442.jpg" alt=""> </a> 
            </div>
            <div class="news-slider-layer third"> <a href="sport.html" target="_blank">
              <div class="content"> <span class="category-tag bg-4">Ganadería</span>
                <p>Tour de France Countdown: Race preview</p>
              </div>
              <img src="tranquera/img/slider_374x215.jpg" alt=""> </a> 
            </div>
            <div class="news-slider-layer fourth"> <a href="travel.html" target="_blank">
              <div class="content"> <span class="category-tag bg-2">Mercados</span>
                <p>Get the latest travel news and train times</p>
              </div>
              <img src="tranquera/img/slider_374x215.jpg" alt=""> </a> 
            </div>
          </div>
          <div class="news-slide">
            <div class="news-slider-layer first"> <a href="tech-science.html" target="_blank">
              <div class="content"> <span class="category-tag bg-1">AGTech</span>
                <p>J. Stone interview: a manifesto for involving citizens in science</p>
              </div>
              <img src="tranquera/img/slider_574x443.jpg" alt=""> </a> </div>
            <div class="news-slider-layer second"> <a href="lifestyle.html" target="_blank">
              <div class="content"> <span class="category-tag bg-6">CyT</span>
                <p>Feelgood fashion: clothes that enhance your mood</p>
              </div>
              <img src="tranquera/img/slider_274x442.jpg" alt=""> </a> </div>
            <div class="news-slider-layer third"> <a href="news.html" target="_blank">
              <div class="content"> <span class="category-tag bg-4">Agricultura</span>
                <p>A woman is in a process to adopt a Haitian girl</p>
              </div>
              <img src="tranquera/img/slider_374x215.jpg" alt=""> </a> </div>
            <div class="news-slider-layer fourth"> <a href="food-drinks.html" target="_blank">
              <div class="content"> <span class="category-tag bg-2">Ganadería</span>
                <p>Breakfast is an increasingly tasty strategy for restaurant industry</p>
              </div>
              <img src="tranquera/img/slider_374x215.jpg" alt=""> </a> </div>
          </div>
          
        </div-->
        <!--========== END .NEWS-SLIDER ==========--> 

      </div>
    </section>
    <!--========== END .MODULE ==========--> 
    <!--========== BEGIN .MODULE ==========-->
    <!--========== END .MODULE ==========--> 
    <!--========== BEGIN .MODULE ==========-->
    <section class="module">
      <div class="container">
        <div class="row no-gutter"> 
          <!--========== BEGIN .COL-MD-8 ==========-->
          <div class="col-md-8"> 
            <!--========== BEGIN .NEWS ==========-->
            <div class="news">
              <div class="module-title">
                <h3 class="title"><span class="bg-11">Ultimo Momento</span></h3>
                <h3 class="subtitle">Ultimas Noticias en detalle</h3>
              </div>
              <!-- Begin .item-->
              <?php foreach ($Ultimas as $Ultima) { ?>
              <div class="item">
                <div class="item-image-2"><a class="img-link" href="<?php echo ENV('PATH_PUBLIC') ?>noticia/<?php echo $Ultima['id'] ?>"><img class="img-responsive img-full" src="<?php echo ENV('PATH_PUBLIC') ?>storage/<?php echo $Ultima['file_imagen'] ?>" alt=""></a><span><a class="label-2" href="<?php echo ENV('PATH_PUBLIC') ?>seccion/<?php echo $Ultima['seccion_id'] ?>" style="background-color: <?php echo $Ultima['colpick_color'] ?>"><?php echo $Ultima['seccion'] ?></a></span> </div>
                <div class="item-content">
                  <div class="title-left title-style04 underline04">
                    <h3><a href="<?php echo ENV('PATH_PUBLIC') ?>noticia/<?php echo $Ultima['id'] ?>"><?php echo $Ultima['titulo'] ?></a></h3>
                  </div>
                  <p><a href="#"> <?php echo substr($Ultima['copete'], 0, 150) ?>...</a></p>
                  <div> <a href="<?php echo ENV('PATH_PUBLIC') ?>seccion/<?php echo $Ultima['seccion_id'] ?>" target="_blank"><span class="read-more"><?php echo $Ultima['seccion'] ?></span></a> </div>
                </div>
              </div>
          	  <?php } ?>
              <!-- End .item--> 
            </div>
            <!--========== End .NEWS ==========--> 
          </div>
          <!--========== End .COL-MD-8 ==========--> 
          <!--========== BEGIN .COL-MD-4 ==========-->
          <div class="col-md-4"> 
            <!-- Begin .sidebar-add-place -->
            <div class="sidebar-add-place"><a href="<?php echo $pub_home_top_mercados->url_enlace ?>" target="_blank"><img class="img-responsive" src="<?php echo ENV('PATH_PUBLIC') ?>storage/<?php echo $pub_home_top_mercados->file_imagen_pc ?>" alt=""></a> </div>
            <!-- End .sidebar-add-place --> 
            <!-- Begin .block-title-1 -->
            <div class="block-title-1">
              <h3><a href="#"><strong>Mercados</strong></a><div style="float: right;"><?php echo $Mercados[0]->valor_1 ?></div></h3>
            </div>
            <!-- End .block-title-1 --> 
            <!--========== BEGIN .SIDEBAR-NEWSFEED ==========-->
            <div class="sidebar-newsfeed"> 
              <!-- Begin .newsfeed -->
                <table class="tabla_mercados">
                  <tr>
                    <th style="text-align: left">GRANOS</th>
                    <th>CBOT</th>
                    <th colspan="2" style="text-align: center;">ROSARIO</th>
                  </tr>
                  <tr class="sub_columnas">
                    <th></th>
                    <th></th>
                    <th>DISPONIBLE</th>
                    <th>FUTURO</th>
                  </tr>
                  <tr>
                    <td><?php echo $Mercados[1]->mercado ?></td>
                    <td class="valor"><?php echo $Mercados[1]->valor_1 ?></td>
                    <td class="valor"><?php echo $Mercados[1]->valor_2 ?></td>
                    <td class="valor"><?php echo $Mercados[1]->valor_3 ?></td>
                  </tr>
                  <tr>
                    <td><?php echo $Mercados[2]->mercado ?></td>
                    <td class="valor"><?php echo $Mercados[2]->valor_1 ?></td>
                    <td class="valor"><?php echo $Mercados[2]->valor_2 ?></td>
                    <td class="valor"><?php echo $Mercados[2]->valor_3 ?></td>
                  </tr>
                  <tr>
                    <td><?php echo $Mercados[3]->mercado ?></td>
                    <td class="valor"><?php echo $Mercados[3]->valor_1 ?></td>
                    <td class="valor"><?php echo $Mercados[3]->valor_2 ?></td>
                    <td class="valor"><?php echo $Mercados[3]->valor_3 ?></td>
                  </tr>
                  <tr>
                    <td><?php echo $Mercados[4]->mercado ?></td>
                    <td class="valor"><?php echo $Mercados[4]->valor_1 ?></td>
                    <td class="valor"><?php echo $Mercados[4]->valor_2 ?></td>
                    <td class="valor"><?php echo $Mercados[4]->valor_3 ?></td>
                  </tr>
                  <tr>
                    <td><?php echo $Mercados[5]->mercado ?></td>
                    <td class="valor"><?php echo $Mercados[5]->valor_1 ?></td>
                    <td class="valor"><?php echo $Mercados[5]->valor_2 ?></td>
                    <td class="valor"><?php echo $Mercados[5]->valor_3 ?></td>
                  </tr>
                  <tr>
                    <th colspan="2" style="text-align: left">Hacienda - Liniers</th>
                    <th>M&iacute;nimo</th>
                    <th>M&aacute;ximo</th>
                  </tr>
                  <tr>
                    <td colspan="2"><?php echo $Mercados[6]->mercado ?></td>
                    <td class="valor"><?php echo $Mercados[6]->valor_1 ?></td>
                    <td class="valor"><?php echo $Mercados[6]->valor_2 ?></td>
                  </tr>
                  <tr>
                    <td colspan="2"><?php echo $Mercados[7]->mercado ?></td>
                    <td class="valor"><?php echo $Mercados[7]->valor_1 ?></td>
                    <td class="valor"><?php echo $Mercados[7]->valor_2 ?></td>
                  </tr>
                  <tr>
                    <td colspan="2"><?php echo $Mercados[8]->mercado ?></td>
                    <td class="valor"><?php echo $Mercados[8]->valor_1 ?></td>
                    <td class="valor"><?php echo $Mercados[8]->valor_2 ?></td>
                  </tr>
                  <tr>
                    <td colspan="2"><?php echo $Mercados[9]->mercado ?></td>
                    <td class="valor"><?php echo $Mercados[9]->valor_1 ?></td>
                    <td class="valor"><?php echo $Mercados[9]->valor_2 ?></td>
                  </tr>
                  <tr>
                    <td colspan="2"><?php echo $Mercados[10]->mercado ?></td>
                    <td class="valor"><?php echo $Mercados[10]->valor_1 ?></td>
                    <td class="valor"><?php echo $Mercados[10]->valor_2 ?></td>
                  </tr>
                  <tr>
                    <td colspan="2"><?php echo $Mercados[11]->mercado ?></td>
                    <td class="valor"><?php echo $Mercados[11]->valor_1 ?></td>
                    <td class="valor"><?php echo $Mercados[11]->valor_2 ?></td>
                  </tr>
                  <tr>
                    <td colspan="2"><?php echo $Mercados[12]->mercado ?></td>
                    <td class="valor"><?php echo $Mercados[12]->valor_1 ?></td>
                    <td class="valor"><?php echo $Mercados[12]->valor_2 ?></td>
                  </tr>
                  <tr>
                    <td colspan="2"><?php echo $Mercados[13]->mercado ?></td>
                    <td class="valor"><?php echo $Mercados[13]->valor_1 ?></td>
                    <td class="valor"><?php echo $Mercados[13]->valor_2 ?></td>
                  </tr>
                  <tr>
                    <th colspan="2" style="text-align: left">Porcinos</th>
                    <th>$ Promedio</th>
                    <th>Plazo Pago</th>
                  </tr>
                  <tr>
                    <td colspan="2"><?php echo $Mercados[14]->mercado ?></td>
                    <td class="valor"><?php echo $Mercados[14]->valor_1 ?></td>
                    <td class="valor"><?php echo $Mercados[14]->valor_2 ?></td>
                  </tr>
                  <tr>
                    <td colspan="2"><?php echo $Mercados[15]->mercado ?></td>
                    <td class="valor"><?php echo $Mercados[15]->valor_1 ?></td>
                    <td class="valor"><?php echo $Mercados[15]->valor_2 ?></td>
                  </tr>
                  <tr>
                    <td colspan="2"><?php echo $Mercados[16]->mercado ?></td>
                    <td class="valor"><?php echo $Mercados[16]->valor_1 ?></td>
                    <td class="valor"><?php echo $Mercados[16]->valor_2 ?></td>
                  </tr>
                  <tr>
                    <td colspan="2"><?php echo $Mercados[17]->mercado ?></td>
                    <td class="valor"><?php echo $Mercados[17]->valor_1 ?></td>
                    <td class="valor"><?php echo $Mercados[17]->valor_2 ?></td>
                  </tr>
                </table>
              <!-- End .newsfeed --> 
            </div>
            <!--========== END .SIDEBAR-NEWSFEED ==========--> 
          </div>
          <!--========== END .COL-MD-4 ==========--> 
        </div>
      </div>
    </section>
    <!--========== END .MODULE ==========-->
      <!-- Begin .add-place -->
      <div class="add-place"> 
        <a href="<?php echo $pub_home_top_nosotros->url_enlace ?>" target="_blank">
          <img class="img-responsive center-block" src="<?php echo ENV('PATH_PUBLIC') ?>storage/<?php echo $pub_home_top_nosotros->file_imagen_pc ?>" alt="">
        </a> 
      </div>
      <!-- End .add-place -->  

    <div class="container hidden-lg hidden-sm hidden-md"> 
      <div class="col-xs-12 hidden-lg" style="margin: 0px; padding: 0px; position: relative;">  
          <a href="<?php echo $pub_home_top_nosotros->url_enlace ?>" target="_blank">
            <img class="img-responsive" src="<?php echo ENV('PATH_PUBLIC') ?>storage/<?php echo $pub_home_top_nosotros->file_imagen_movil ?>" alt="">
          </a>         
      </div>
    </div>
    <!--========== BEGIN .MODULE ==========-->
 
    <!--========== END .COL-MD-8 ==========--> 
    <!--========== BEGIN COL-MD-4 ==========-->

    <!--========== END .MODULE ==========--> 
    <!--========== BEGIN .MODULE ==========-->
    <section class="module"> 
      <!--========== BEGIN .CONTAINER ==========-->
    
        <!--========== BEGIN .ROW ==========-->
      <div class="row no-gutter"> 
          <!-- Begin .full-block-three-columns -->
          
        <!--========== END .ROW ==========--> 
      </div>
      <!--========== END .CONTAINER ==========--> 
    </section>
    <!--========== END .MODULE ==========--> 
    <!-- Begin.parallax -->
    <div id="parallax-section1">
      <div class="image3 img-overlay1">
        <div class="container">
          <div class="caption text-center">
            <h2 class="color-white weight-300 small-caption">¡Te presentamos nuestro <strong>equipo de Tranquera Abierta!</strong> Más información sobre nosotros aquí!</h2>
            <a href="<?php echo ENV('PATH_PUBLIC') ?>contacto" target="_blank" class="btn btn-default">Nosotros!</a> </div>
        </div>
      </div>
    </div>
    <!-- End.parallax --> 
    <!-- Begin .add-place -->

   <div class="container hidden-lg hidden-sm hidden-md"> 
      <div class="col-xs-12" style="margin: 0px; padding: 0px; position: relative;">  
          <a href="<?php echo $pub_home_bajo_nosotros->url_enlace ?>" target="_blank">
            <img class="img-responsive" src="<?php echo ENV('PATH_PUBLIC') ?>storage/<?php echo $pub_home_bajo_nosotros->file_imagen_movil ?>" alt="">
          </a>         
      </div>
    </div>

    <div class="add-place"> <a href="<?php echo $pub_home_bajo_nosotros->url_enlace ?>" target="_blank"><img class="img-responsive center-block" src="<?php echo ENV('PATH_PUBLIC') ?>storage/<?php echo $pub_home_bajo_nosotros->file_imagen_pc ?>" alt=""></a> </div>
    <!-- End .add-place --> 
    
      <!--========== BEGIN .MODULE ==========-->
      
        <!-- End .title-style05-bg --> 
        <!--========== BEGIN .CONTAINER ==========-->
        
        <!--========== END .CONTAINER ==========--> 
      <!--========== END .MODULE ==========--> 
      <!--========== BEGIN .MODULE ==========-->
      <section class="module highlight"> 
        <!--========== BEGIN .CONTAINER ==========-->
        <div class="container"> 
          <!--========== BEGIN .ROW ==========-->
          <div class="row no-gutter"> 
            <!--==========BEGIN .COL-MD-8 ==========-->
            <div class="col-md-8"> 
              <!--========== BEGIN .NEWS ==========-->
              
              <!--========== END NEWS ==========--> 
            </div>
            <!--========== END COL-MD-9 ==========--> 
            <!--========== BEGIN COL-MD-4 ==========-->
            
            <!--========== END COL-MD-4 ==========--> 
          </div>
        </div>
      </section>
      <!--========== END .MODULE ==========--> 
      <!--========== BEGIN .MODULE ==========-->
      <section class="module dark"> 
        <!--========== BEGIN VIDEO ==========--> 
        <!-- Begin .container-->
        <div class="container">
          <div class="row no-gutter"> 
            <!-- Begin .col-md-9 -->
            <div class="col-sm-9 col-md-9">
              <div class="video-container">
                <iframe width="921" height="525" src="https://www.youtube.com/embed/<?php echo $Videos[0]->videoyt_codigo_v_youtube ?>" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
              </div>
            </div>
            <!-- End .col-md-9--> 
            <!-- Begin .col-md-3-->
            <div class="col-xs-12 col-sm-3 col-md-3"> 
              <!-- Begin .container-half -->
              <div class="title-left title-style03 underline03">
                <h4>&Uacute;ltimos Videos</h4>
              </div>
              <div class="module-media">
                <div class="image">
                <iframe width="297" height="231" src="https://www.youtube.com/embed/<?php echo $Videos[1]->videoyt_codigo_v_youtube ?>" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe></div>
              <div class="module-media">
                <div class="image"><iframe width="297" height="231" src="https://www.youtube.com/embed/<?php echo $Videos[2]->videoyt_codigo_v_youtube ?>" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe></div>
            </div>
            <!-- End .col-md-3--> 
          </div>
        </div>
        <!--End .container--> 
        <!--========== END VIDEO ==========--> 
      </section>
      <!--========== END .MODULE ==========--> 
      <!--========== BEGIN .MODULE ==========-->
      
      <!--========== END .MODULE ==========--> 
      <!--========== BEGIN .MODULE ==========-->
      <section class="module">
        <div class="container">
          <div class="row no-gutter"> 
            <!--========== BEGIN .COL-MD-8 ==========-->
            <div class="col-md-8">
              
              <!--========== BEGIN NEWS==========--> 
             
             
              <!--========== BEGIN #SIDEBAR-NEWSLETTER ==========-->
              <div id="sidebar-newsletter"> 
                <!-- Begin .title-style01 -->
                <div class="title-style01">
                  <h3><strong>Newsletter</strong></h3>
                </div>
                <!-- End .title-style01 --> 
                <!-- Begin .sidebar-newsletter-form -->
                <div class="sidebar-newsletter-form">
                  <form class="form-horizontal" action="include/subscribe.php" id="subscribeForm" method="POST">
                    <div class="input-group">
                      <input title="Newsletter" class="form-control" name="email" type="email" id="address" placeholder="Enter Your Email Address" data-validate="validate(required, email)" required>
                      <span class="input-group-btn">
                      <button type="submit" class="btn btn-success">Subscribe</button>
                      </span> </div>
                  </form>
                  <span id="result" class="alertMsg"></span> </div>
                <!-- End .sidebar-newsletter-form --> 
              </div>
              <!--========== END #SIDEBAR-NEWSLETTER ==========--> 
              <!--========== BEGIN #SIDEBAR-SOCIAL-BUTTONS ==========-->
              <div class="sidebar-social-icons"> 
                <!-- Begin .title-style01 -->
                <div class="title-style01">
                  <h3><strong>Mantente</strong> Conectado</h3>
                </div>
                <!-- End .title-style01 -->
                <ul>
                  <li> <a href="#" class="facebook"><i class="fa fa-facebook"></i></a> </li>
                  <li> <a href="#" class="youtube"><i class="fa fa-youtube"></i></a> </li>
                  <li> <a href="#" class="twitter"><i class="fa fa-twitter"></i></a> </li>
                  <li> <a href="#" class="linkedin"><i class="fa fa-linkedin"></i></a> </li>
                </ul>
              </div>
              <!--========== END #SIDEBAR-SOCIAL-BUTTONS ==========--> 
            </div>
            <!--========== END .C0L-MD-4 ==========--> 
          </div>
        </div>
      </section>
      <!--========== END .MODULE ==========--> 
	

@endsection


@section('pub-footer')
  <a href="<?php echo $pub_footer->url_enlace ?>" target="_blank">
    <img class="img-responsive hidden-xs" src="<?php echo ENV('PATH_PUBLIC') ?>storage/<?php echo $pub_footer->file_imagen_pc ?>" alt="">
    <img class="img-responsive hidden-lg hidden-sm hidden-md" src="<?php echo ENV('PATH_PUBLIC') ?>storage/<?php echo $pub_footer->file_imagen_movil ?>" alt="">
  </a>
@endsection
