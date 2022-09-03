


@extends('layouts.frontend')

@section('title')
  Contacto | Tranquera Abierta
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
  <!--========== BEGIN #MAIN-SECTION ==========-->
  <div id="main-section"> 
    <!--========== BEGIN .MODULE ==========-->
    <section class="module">
      <div class="container">
        <div class="row no gutter"> 
         <!-- Begin .contact-us -->
          <div class="contact-us">
            <div class="col-xs-12 col-sm-12 col-md-12">
              <div class="form-group">
                <div class="title-left title-style04 underline04">
                  <h3>Sobre nosotros</h3>
                </div>
                <p>Tranquera Abierta es una plataforma de comunicación vinculada a la producción agropecuaria, agroindustrial  y técnico-científica con mas de 20 años en el medio.</p>
                <p>Tranquera Abierta TV se emite por Canal 12 de Venado Tuerto, Canal Rural Satelital y a través YouTube.</p>
                <p>Tranquera Abierta Radio se emite para la región por Radio Jota 98.3 Venado Tuerto. www.radiojota.com.ar</p>
                <p>La producción general está a cargo de Mario Falabella y Martín Roggero se encarga de la conducción y producción periodística.</p>
                <p>Tranquera Abierta cuenta además el respaldo de la redes sociales (Facebook, Twitter, Instagram).</p>
                <p>Por nuestra ubicación estratégica y área de influencia (Sur de Santa Fe, SE de Córdoba y N de Buenos Aires) estamos en condiciones de ofrecer la mejor llegada a quienes toman decisiones y demanda información de calidad.<br>
Participamos de los eventos mas importantes del sector en nuestro país y el exterior: Congreso Mundial de Soja (China y Brasi), Agricultura de Precisión (Córdoba y Uruguay), Congresos Crea y de Aapresid, Agroactiva, Expoagro entre muchos otros.
</p>
                <p>Además Tranquera Abierta recibió múltiples reconocimientos como producto periodístico. Entre otros los premios Martín Fierro TV, Mejor Periodista Agropecuario de TV premio Capa-Banco Galicia, ATVC, Informador Agropecuario del Ciasfe IV, entro otros.</p>
                <div class="title-left title-style04 underline04">
                  <h3>Información de Contacto</h3>
                </div>
                <ul>
                  <!--li><i class="fa fa-map-marker" aria-hidden="true"></i><span>Address:</span> 121 King Street, Melbourne, Australia</li-->
                  <li><i class="fa fa-phone" aria-hidden="true"></i><span>Phone:</span> +3462 514422</li>
                  <li><i class="fa fa-envelope-o" aria-hidden="true"></i><span>E-mail:</span> <a href="mailto:info@tranqueraabierta.com.ar">info@tranqueraabierta.com.ar</a></li>
                  <li><i class="fa fa-globe" aria-hidden="true"></i><span>Website:</span> <a href="http://tabierta.com.ar">http://tabierta.com.ar/</a></li>
                </ul>
              </div>
            </div>
          </div>
          <!-- End .contact-us --> 
          </div>
          <!-- End .contact-form --> 
        </div>
      </div>
    </section>
    <!--========== END .MODULE ==========--> 
  </div>
  <!--========== END #MAIN-SECTION ==========--> 
@endsection


@section('pub-footer')
  <a href="<?php echo $pub_footer->url_enlace ?>" target="_blank">
    <img class="img-responsive hidden-xs" src="<?php echo ENV('PATH_PUBLIC') ?>storage/<?php echo $pub_footer->file_imagen_pc ?>" alt="">
    <img class="img-responsive hidden-lg hidden-sm hidden-md" src="<?php echo ENV('PATH_PUBLIC') ?>storage/<?php echo $pub_footer->file_imagen_movil ?>" alt="">
  </a>
@endsection
