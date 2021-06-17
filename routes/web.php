<?php

use App\Http\Controllers\AlunoController;
use App\Http\Controllers\HomeController;
use Illuminate\Support\Facades\Route;

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
/*
Route::get('/aluno', function () {
    return view('aluno');

});
*/
Route::get('/aluno', [AlunoController::class,'index']);
Route::get('/aluno/create', [AlunoController::class,'create']);
Route::get('/aluno/{id}', [AlunoController::class,'show'] );
Route::post('/aluno/store', [AlunoController::class,'store'] );
Route::get('/aluno/edit/{id}', [AlunoController::class,'edit'] );
Route::post('/aluno/update/{id}', [AlunoController::class,'update'] );
Route::get('/aluno/delete/{id}', [AlunoController::class,'destroy'] );




/*
Route::get('/eventos', function () {
    return view('eventos');
});
*/

Route::get('/', function(){
return "<h1>Página inicial</h1>";
}
);

//Acesso via controller
//Route::get('/', HomeController::class);

/*
Route::get('/aluno/{nome}', function($nome){
    return "<h1>Bem vindo $nome</h1>";
    }
    );

Route::get('/aluno/{nome}/{curso}', function($nome, $curso){
    return "<h1>Bem vindo $nome, seu curso é $curso</h1>";
    }
    );
*/
//Acesso via controller

//Route::get('aluno/{nome}/{curso}', [AlunoController::class,'curso']);
