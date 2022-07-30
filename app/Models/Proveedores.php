<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Proveedores extends Model
{
    use HasFactory;

    protected $table  = "proveedores";

    protected $primaryKey = "idProveedor";


    protected $fillable = ['nombreCompania' , 'nombrecontacto', 'direccion', 'ciudad', 'region', 'codpostal', 'pais', 'telefono', 'fax', 'paginaprincipal'];

    protected $hidden = ['idProveedor'];


    public function productos(){

        return $this->belongsTo('App\Models\Productos','idProveedor','idProveedor');
    }

   
         
}
