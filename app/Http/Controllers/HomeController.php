<?php

namespace App\Http\Controllers;
use App\Publicidad;
use App\Noticia;
use App\Seccion;
use App\Video;
use App\User;
use App\Mercado;

use Auth;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Schema;
use Illuminate\Support\Facades\DB;
use App\Http\Controllers\ExtController;



class HomeController extends Controller
{
    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct()
    {
        //$this->middleware('auth');
    }

    /**
     * Show the application dashboard.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {   
        //$Solicitudes = Solicitud::all();



        $pub_top = Publicidad::find(1);
        $pub_home_top_mercados = Publicidad::find(2);
        $pub_home_top_nosotros = Publicidad::find(3);
        $pub_home_bajo_nosotros = Publicidad::find(10);
        $pub_footer = Publicidad::find(11);
        $pub_top = Publicidad::find(1);
        $Destacadas = Noticia::select('noticias.id', 'noticias.titulo', 'noticias.seccion_id', 's.seccion', 'noticias.file_imagen', 's.colpick_color')
            ->join('secciones as s', 's.id', '=', 'noticias.seccion_id')
            ->where('sino_es_destacada', 'SI')
            ->orderBy('fecha', 'desc')
            ->get();

        //dd($Destacadas);

        $Destacadas_4 = $Destacadas->all();

        $Ultimas = null;

        $Secciones = Seccion::all();

        foreach ($Secciones as $Seccion) {
            $Ultima = Noticia::select('noticias.id', 'noticias.titulo', 'noticias.copete', 'noticias.seccion_id', 's.seccion', 's.colpick_color', 'noticias.file_imagen')
                ->join('secciones as s', 's.id', '=', 'noticias.seccion_id')
                ->where('seccion_id', $Seccion->id)
                ->orderBy('fecha', 'desc')
                ->limit(1)
                ->get();

            if ($Ultima->count() > 0) {
                if ($Ultimas == null) {                    
                    $Ultimas = $Ultima;
                }
                else {
                    //$Ultimas->union($Ultima);   
                    $Ultimas = $Ultimas->merge($Ultima);
                }
                
            }
        }


        $Videos = Video::limit(3)->orderBy('id', 'desc')->get();
        $Mercados = Mercado::all();


        $Destacadas = Seccion::select('n.id', 'n.titulo', 'secciones.seccion', 'n.file_imagen', 'secciones.colpick_color')
            ->join('noticias as n', 'secciones.id', '=', 'n.seccion_id')
            ->where('sino_es_destacada', 'SI')
            ->orderBy('fecha', 'desc')
            ->get();



        return View('welcome')
        ->with('pub_top', $pub_top)
        ->with('pub_footer', $pub_footer)
        ->with('Destacadas', $Destacadas)
        ->with('Destacadas_4', $Destacadas_4)
        ->with('pub_home_top_mercados', $pub_home_top_mercados)
        ->with('pub_home_top_nosotros', $pub_home_top_nosotros)
        ->with('pub_home_bajo_nosotros', $pub_home_bajo_nosotros)
        ->with('Videos', $Videos)
        ->with('Ultimas', $Ultimas)
        ->with('Mercados', $Mercados);
    }

    public function backEndHome()
    {   
        //$Solicitudes = Solicitud::all();

        return View('welcome-back-end');
    }



    public function miCuenta()
    {   
        $user_id = Auth::user()->id;
        $User = User::find($user_id);

        return View('mi-cuenta')
        ->with('User', $User);
    }


    public function verNoticia($id)
    {   

        $pub_top = Publicidad::find(1);
        $pub_footer = Publicidad::find(11);

        $Destacadas = Noticia::select('noticias.id', 'noticias.titulo', 'noticias.seccion_id', 's.seccion', 'noticias.file_imagen', 's.colpick_color')
            ->join('secciones as s', 's.id', '=', 'noticias.seccion_id')
            ->where('sino_es_destacada', 'SI')
            ->orderBy('fecha', 'desc')
            ->get();

        $Noticia = Noticia::find($id);
        
        $pub_home_top_mercados = Publicidad::find(2);
        $pub_mercados_granos = Publicidad::find(18);
        $pub_mercados_hacienda = Publicidad::find(18);
        $pub_mercados_porcinos = Publicidad::find(20);
        $Mercados = Mercado::all();

        return View('frontend.ver-noticia')
        ->with('pub_top', $pub_top)
        ->with('pub_footer', $pub_footer)
        ->with('Destacadas', $Destacadas)
        ->with('Noticia', $Noticia)
        ->with('pub_home_top_mercados', $pub_home_top_mercados)
        ->with('pub_mercados_granos', $pub_mercados_granos)
        ->with('pub_mercados_hacienda', $pub_mercados_hacienda)
        ->with('pub_mercados_porcinos', $pub_mercados_porcinos)
        ->with('Mercados', $Mercados);
    }


    public function verSeccion($id)
    {   

        // info general
        if ($id == 1) {
            $pub_top_id = 4;
            $pub_footer_id = 12;
        }

        // Agricultura
        if ($id == 2) {
            $pub_top_id = 5;
            $pub_footer_id = 13;
        }

        // Ganaderia
        if ($id == 3) {
            $pub_top_id = 6;
            $pub_footer_id = 14;
        }

        // Empresas
        if ($id == 4) {
            $pub_top_id = 7;
            $pub_footer_id = 15;
        }

        // AGTech
        if ($id == 5) {
            $pub_top_id = 8;
            $pub_footer_id = 16;
        }

        // CYT
        if ($id == 6) {
            $pub_top_id = 9;
            $pub_footer_id = 17;
        }


        $pub_top = Publicidad::find($pub_top_id);
        $pub_footer = Publicidad::find($pub_footer_id);

        $Destacadas = Noticia::select('noticias.id', 'noticias.titulo', 'noticias.seccion_id', 's.seccion', 'noticias.file_imagen', 's.colpick_color')
            ->join('secciones as s', 's.id', '=', 'noticias.seccion_id')
            ->where('sino_es_destacada', 'SI')
            ->orderBy('fecha', 'desc')
            ->get();

        $Noticias = Noticia::select('noticias.id', 'noticias.titulo', 'noticias.copete', 'noticias.seccion_id', 's.seccion', 's.colpick_color', 'noticias.file_imagen')
            ->join('secciones as s', 's.id', '=', 'noticias.seccion_id')
            ->where('seccion_id', $id)
            ->orderBy('fecha', 'desc')
            ->get();

        $Seccion = Seccion::find($id);
        

        return View('frontend.ver-seccion')
        ->with('pub_top', $pub_top)
        ->with('pub_footer', $pub_footer)
        ->with('Destacadas', $Destacadas)
        ->with('Noticias', $Noticias)
        ->with('Seccion', $Seccion);
    }


    public function contacto()
    {   

        $pub_top = Publicidad::find(3);
        $pub_footer = Publicidad::find(10);
        

        return View('frontend.contacto')
        ->with('pub_top', $pub_top)
        ->with('pub_footer', $pub_footer);
    }



}
