<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Noticia extends Model
{
	protected $guarded = ['id'];     

    public function seccion()
    {
        return $this->belongsTo('App\Seccion');
    }

}
