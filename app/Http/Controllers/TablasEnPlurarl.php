<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class TablasEnPlurarl extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */

    public function tablasEnPlural() {

        $tb_plural_distintas = [
            "Rol_de_usuario" => "roles_de_usuario",
            "Opcion" => "opciones",
            "Ubicacion_de_publicidad" => "ubiaciones_de_publicidad",
            "Publicidad" => "publicidades",
            "Seccion" => "secciones",
        ];
        
        return $tb_plural_distintas;

    }


}
