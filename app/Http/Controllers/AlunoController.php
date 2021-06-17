<?php

namespace App\Http\Controllers;

use App\Http\Requests\AlunoRequest;
use App\Models\AlunoModel;
use Illuminate\Http\Request;
use Carbon\Carbon;


use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\DB;

class AlunoController extends Controller
{
    private $objAluno;
    //Construtor
    public function __construct(){
        $this->objAluno=new AlunoModel();        
    }

    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        //dd($this->objAluno->all());
       //$aluno=$this->objAluno->all()->sortBy('idade');
          
        
       return view('aluno',[
        'aluno'=> DB::table('aluno')->paginate(7)
       ]);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //Criar uma instância de Carbon e formatar para o padrão do input date
        $dateCad=Carbon::now()->format('Y-m-d');
        //return view('createAluno');
        return view('createAluno', compact('dateCad'));
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(AlunoRequest $request)
    {
        $this->objAluno->create([
            'nome'=>$request->nome,
            'idade'=>$request->idade,
            'curso'=>$request->curso,
            'bolsa'=>$request->bolsa,
            'created_at'=>$request->created_at
        ]);
        return redirect('aluno'); //Indica para qual página ir após a operação executada
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        //echo $id;
        //com base no id passado iremos enviar um objeto para a view
        $aluno=$this->objAluno->find($id);
        return view('showAluno', compact('aluno'));
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        //Faremos a leitura do registro e envio da instância para a view
        $aluno=$this->objAluno->find($id);
        //$alunos=$this->objAluno->all();
        return view('editAluno', compact('aluno'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        $this->objAluno->where(['id'=>$id])->update([
            'nome'=>$request->nome,
            'idade'=>$request->idade,
            'curso'=>$request->curso,
            'bolsa'=>$request->bolsa,
            'created_at'=>$request->created_at
        ]);
        //redireciono para a view dos alunos
        return redirect('aluno');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
       $this->objAluno->destroy($id);
        //redirecionamento para a view aluno
       return redirect('aluno');
       //echo 'apagou';
    }
}
