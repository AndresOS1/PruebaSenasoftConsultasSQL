<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateProductosTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('productos', function (Blueprint $table) {
            $table->id('idProducto');
            $table->string('nombreProducto' , 40);
            $table->string('cantidadPorUnidad', 20);
            $table->double('precioUnidad', 10, 1);
            $table->integer('unidadesEnExistencia')->length(10);
            $table->integer('unidadesEnPedido')->length(8);
            $table->integer('nivelNuevoPedido')->length(24);
            $table->integer('suspendido')->length(24);
            $table->string('categoriaProducto' , 40);


            $table->foreign('idProveedor')->references('idProveedor')->on('proveedores');
            $table->unsignedBigInteger('idProveedor');
            $table->foreign('idCategoria')->references('idCategoria')->on('categorias');
            $table->unsignedBigInteger('idCategoria');



            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('productos');
    }
}
