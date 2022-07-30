<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Categorias extends Model
{
    use HasFactory;


    
    protected $table  = "categorias";

    protected $primaryKey = "idCategoria";


    protected $fillable = ['nombrecategoria' , 'description'];

    protected $hidden = ['idCategoria'];


    public function productos(){

        return $this->belongsTo('App\Models\Productos','idCategoria','idCategoria');
    }
}
