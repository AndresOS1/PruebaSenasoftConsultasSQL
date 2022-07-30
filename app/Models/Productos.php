<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Productos extends Model
{
    use HasFactory;

    protected $table  = "productos";

    protected $primaryKey = "idProducto";


    protected $fillable = ['nombreProducto' , 'cantidadPorUnidad', 'precioUnidad', 'unidadesEnExistencia', 'unidadesEnPedido', 'nivelNuevoPedido', 'suspendido', 'categoriaProducto', 'idProveedor', 'idCategoria'];

    protected $hidden = ['idProducto'];


    public function categorias(){

        return $this->belongsTo('App\Models\Categorias','idCategoria','idCategoria');
    }

    public function proveedores(){

        return $this->belongsTo('App\Models\Proveedores','idProveedor','idProveedor');
    }
}
