


@extends('layouts.frontend')


@section('title')
  <?php echo $Seccion['seccion'] ?> | Tranquera Abierta
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
      </div>
    </section>
    <!--========== END .MODULE ==========--> 	

    <!--========== BEGIN .MODULE ==========-->
    <section class="module highlight">
      <div class="container">
        <div class="module-title">
          <h3 class="title"><span style="background-color: <?php echo $Seccion['colpick_color'] ?>"><?php echo $Seccion['seccion'] ?></span></h3>
          <h3 class="subtitle">Noticias</h3>
        </div>
        <!--========== BEGIN .ROW ==========-->
        <div class="row no-gutter"> 
          <!--========== BEGIN .COL-MD-6 ==========-->
            <?php foreach ($Noticias as $Noticia) { ?>
          <div class="col-sm-6 col-md-6"> 
            <!--========== BEGIN .NEWS ==========-->
            <div class="news"> 
              <!-- Begin .item -->
              <div class="item">
                <div class="item-image-1"><a class="img-link" href="<?php echo ENV('PATH_PUBLIC') ?>noticia/<?php echo $Noticia['id'] ?>"><img class="img-responsive img-full" src="<?php echo ENV('PATH_PUBLIC') ?>storage/<?php echo $Noticia->file_imagen ?>" alt=""></a></div>
                <div class="item-content">
                  <div class="title-left title-style04 underline04">
                    <h3><a href="<?php echo ENV('PATH_PUBLIC') ?>noticia/<?php echo $Noticia['id'] ?>" class="external-link"><?php echo $Noticia->titulo ?></a></h3>
                  </div>
                  <p><a href="<?php echo ENV('PATH_PUBLIC') ?>noticia/<?php echo $Noticia['id'] ?>" class="external-link"><?php echo substr($Noticia->copete, 0, 150) ?>...</a></p>
                  
                </div>
              </div>
              <!-- End .item --> 
            </div>
            <!--========== END .NEWS ==========--> 
          </div>
          <!--========== END .COL-MD-6 ==========--> 
          	<?php } ?>
        </div>
        <!--========== END .ROW ==========--> 
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
