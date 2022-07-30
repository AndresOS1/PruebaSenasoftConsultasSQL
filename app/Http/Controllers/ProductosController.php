<?php

namespace App\Http\Controllers;

use App\Models\Productos;
use App\Models\Categorias;
use App\Models\Proveedores;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

class ProductosController extends Controller
{
   
    public function consulta1(){

    $categorias = DB::select('SELECT idProducto, nombreProducto, precioUnidad 
                              FROM productos 
                              WHERE precioUnidad > (SELECT AVG(precioUnidad) 
                              FROM productos) 
                              ORDER BY precioUnidad  DESC 
                              LIMIT 10;');

    return $categorias;

    }

    public function consulta2(){

    $cantidadProductosPorCategoria = DB::select('SELECT idCategoria  , COUNT(idProducto) "Cantidad Productos por Categoria" 
                                                 FROM productos 
                                                 GROUP BY idCategoria;');

    return $cantidadProductosPorCategoria;
        
    }

    public function consulta3(){

    $avgValorProductos = DB::select('SELECT nombreCategoria, descripcion, AVG(productos.precioUnidad) "Valor Promedio Precio Unidad"
                                     FROM categorias 
                                     INNER JOIN productos 
                                     ON categorias.idCategoria = productos.idCategoria 
                                     GROUP BY categorias.idCategoria , nombreCategoria ,descripcion
                                     ORDER BY AVG(productos.precioUnidad);');                                 

       

    return $avgValorProductos;
    }

    public function consulta4(){

        $proveedoresPorPais = DB::select('SELECT pais , COUNT(idProveedor) "Proveedores" 
                                          FROM proveedores 
                                          GROUP BY pais;');

        return $proveedoresPorPais;

    }

    public function consulta5(){

        $productosDistribuidosPorPaises = DB::select('SELECT pais , COUNT(idProducto) "Productos" 
                                                      FROM proveedores 
                                                      INNER JOIN productos
                                                      ON productos.idProveedor = proveedores.idProveedor
                                                      GROUP BY pais;');

        return $productosDistribuidosPorPaises;

    }

    public function consulta6(){

        // Profe esta da error porque en el grup by debe ir todo lo que pongamos en el 
        //select pero yo solo quiero agrupar por categoriaproducto en el phpmyadmin si funciono 
        //en el classroom pongo fotos como evidencia de que si funciono.

        $ProveedoresPorCategoria = DB::select('SELECT nombreCategoria, COUNT(proveedores.idProveedor) CantidadProveedores 
                                               FROM proveedores  
                                               INNER JOIN productos 
                                               ON proveedores.idProveedor = productos.idProveedor 
                                               INNER JOIN categorias 
                                               ON productos.idCategoria = categorias.idCategoria 
                                               GROUP BY categoriaproducto
                                               ORDER BY COUNT(proveedores.idProveedor);');


        //Esta trae la categoria producto por si acaso.        

        // SELECT categoriaproducto , nombreCategoria, COUNT(proveedores.idProveedor) CantidadProveedores 
        // FROM proveedores  
        // INNER JOIN productos 
        // ON proveedores.idProveedor = productos.idProveedor 
        // INNER JOIN categorias 
        // ON productos.idCategoria = categorias.idCategoria 
        // GROUP BY categoriaproducto
        // ORDER BY COUNT(proveedores.idProveedor);

        return $ProveedoresPorCategoria;


    }

    public function consulta7(){

        $CantidadProductosPorProveedor = DB::select('SELECT nombreContacto, categoriaProducto , COUNT(idProducto) "Productos Suministrados"
                                                     FROM productos
                                                     INNER JOIN proveedores
                                                     ON proveedores.idProveedor = productos.idProveedor
                                                     GROUP BY nombreContacto , categoriaProducto;');


        return $CantidadProductosPorProveedor;                 
    }

    public function consulta8(){

        $ProblemasDistribusion = DB::select('SELECT nombreContacto, pais, COUNT(idProducto) "Productos"
                                             FROM proveedores
                                             INNER JOIN productos
                                             ON productos.idProveedor = proveedores.idProveedor
                                             WHERE pais = "japon" OR pais = "brasil" 
                                             GROUP BY nombreContacto, pais
                                             ORDER BY  COUNT(idProducto) DESC;');

        return $ProblemasDistribusion; 
    

    }
}
