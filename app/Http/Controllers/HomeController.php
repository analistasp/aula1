<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class HomeController extends Controller
{
    //Método que será executado assim que a classe for utilizada
    public function __invoke(){
        return "Você está na raíz do projeto!";
    }


}
