<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use App\Models\AlunoModel;
use Carbon\Carbon;

class alunoSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run(AlunoModel $aluno)
    {        
        //Aqui irão os registros usados para testes
        $dateCad=Carbon::now()->format('Y-m-d');
        $aluno->create([
            'nome'=>'Ariovaldo',
            'idade'=>'34',
            'curso'=>'Técnico em Informática',
            'bolsa'=>'500',
            'created_at'=>$dateCad
        ]);
        //inserir outros registros...
        $aluno->create([
            'nome'=>'Xavier',
            'idade'=>'43',
            'curso'=>'Técnico em Nutrição',
            'bolsa'=>'600',
            'created_at'=>$dateCad
        ]);
        $aluno->create([
            'nome'=>'Creide',
            'idade'=>'30',
            'curso'=>'Técnico em Enfermagem',
            'bolsa'=>'550',
            'created_at'=>$dateCad
        ]);
        $aluno->create([
            'nome'=>'Maria Bonita',
            'idade'=>'22',
            'curso'=>'Técnico em Administração',
            'bolsa'=>'480',
            'created_at'=>$dateCad
        ]);
        $aluno->create([
            'nome'=>'Ferdinando',
            'idade'=>'29',
            'curso'=>'Técnico em Farmácia',
            'bolsa'=>'600',
            'created_at'=>$dateCad
        ]);

    }
}
