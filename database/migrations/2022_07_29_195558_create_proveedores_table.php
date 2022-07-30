<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateProveedoresTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('proveedores', function (Blueprint $table) {
            $table->id('idProveedor');
            $table->string('nombreCompania', 40);
            $table->string('nombrecontacto' , 30);
            $table->string('cargocontacto' , 30);
            $table->string('direccion' , 60);
            $table->string('ciudad' , 15);
            $table->string('region' , 15);
            $table->string('codpostal', 10);
            $table->string('pais', 15);
            $table->string('telefono', 24);
            $table->string('fax', 24);
            $table->string('paginaprincipal', 100);
        

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
        Schema::dropIfExists('proveedores');
    }
}
