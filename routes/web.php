<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\ProductosController;
use App\Http\Controllers\ProveedoresController;
use App\Http\Controllers\CategoriasController;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

Route::get('/', function () {
    return view('welcome');
});


Route::get('/consulta1', [ProductosController::class, 'consulta1'])->name('consulta1');


Route::get('/consulta2', [ProductosController::class, 'consulta2'])->name('consulta2');


Route::get('/consulta3', [ProductosController::class, 'consulta3'])->name('consulta3');


Route::get('/consulta4', [ProductosController::class, 'consulta4'])->name('consulta4');


Route::get('/consulta5', [ProductosController::class, 'consulta5'])->name('consulta5');


Route::get('/consulta6', [ProductosController::class, 'consulta6'])->name('consulta6');


Route::get('/consulta7', [ProductosController::class, 'consulta7'])->name('consulta7');


Route::get('/consulta8', [ProductosController::class, 'consulta8'])->name('consulta8');
