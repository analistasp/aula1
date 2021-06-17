<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;

class AlunoRequest extends FormRequest
{
    /**
     * Determine if the user is authorized to make this request.
     *
     * @return bool
     */
    public function authorize()
    {
        return true;
    }

    /**     
     * Indicar quais campos deverão receber alguma validação
     * do servidor
     * @return array
     */
    public function rules()
    {
        
        return [
            'nome'=>'required|between:3,20',
            'idade'=>'required|numeric|between:14,90',
            'curso'=>'required',
            'bolsa'=>'required|numeric|between:100,1500',
            'created_at'=>'required',
        ];
    }
/**
 * Personalizar as mensagens de saída de acordo com a validação selecionada
 * 
 * 
 * @return array
 */
    public function messages()
{
    return [
        'nome.required' => 'Favor digitar seu nome!',
        'idade.required' => 'Você não informou sua idade!',
        'idade.numeric' => 'Dados inválidos para a idade!',
        'curso.required' => 'Informe o seu curso',
        'bolsa.required' => 'Não digitou o valor de bolsa!',
        'bolsa.numeric' => 'Dados inválidos para a bolsa!',
        'created_at.required' => 'Preencha a data do cadastro!',
    ];
}
}
