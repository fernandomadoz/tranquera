<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Publicidad extends Model
{
	protected $guarded = ['id'];     

    public function ubicacion_de_publicidad()
    {
        return $this->belongsTo('App\Ubicacion_de_publicidad');
    }

    protected $table = 'publicidades';
}
