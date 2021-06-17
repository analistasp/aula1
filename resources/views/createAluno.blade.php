@extends('eventos')
    @section('create')
    <h3>Cadastro do Aluno</h3>
    @if(isset($errors) && count($errors)>0)
        <div>
            @foreach($errors->all() as $erro)
                {{$erro}}<br>
            @endforeach
        </div>
    @endif
<div>
<form name="formCad" id="formCad" method="post" action="{{url('aluno/store')}}">
      @csrf
      <label for="nome">Nome:</label>
      <input type="text" name="nome" required><br><br>
      <label for="idade">Idade:</label>
      <input type="number" name="idade" required><br><br>
      <label for="curso">Curso:</label>
      <input type="text" name="curso" required><br><br>
      <label for="bolsa">Bolsa:</label>
      <input type="number" name="bolsa" required><br><br>
      <label for="created_at">Criado em:</label>
      <input type="date" name="created_at" value="{{$dateCad}}"  required><br><br>
      <input type="submit" value="Cadastrar">
</form> 
</div>

    @stop