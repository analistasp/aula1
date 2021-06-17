(function(win, doc){
    'use strict';
//código parra o botão delete

function confirmDel(event){
    event.preventDefault();
//ler o token
var token=doc.getElementsByName("_token")[0].value;
//console.log(token);

//console.log("Vai apagar");
//Vamos exibir o href associado ao link
//console.log(event.target.parentNode.href);
//Vamos usar um confirm para validar a ação
if(confirm("Deseja mesmo apagar?")){
    //console.log("Apagou!");
    //Agora vamos usar o tal do Ajax
    //Instanciar um objeto XMLHttpRequest do Ajax e parte do jQuery
    let ajax = new XMLHttpRequest(); 
    ajax.open("GET", event.target.parentNode.href); //*
    //O delete não  foi permitido

    //Definir o cabeçalho da requisição passando o token
    ajax.setRequestHeader('X-CSRF-TOKEN', token);
    
    
    //No cabeçalho da requisição deve ir o token para a autorização
    //Verificar o status da requisição
    
    ajax.onreadystatechange=function(){ //É executado quando o estado da requisição muda
        //Vamos validar pelos códigos que significam OK
        if(ajax.readyState === 4 && ajax.status === 200){
            console.log("Tudo certo,  foi apagado!");
            //Recarregar a página
            win.location.href="aluno";
        }
        
    }
    //Enviar a requisição  
    ajax.send(); 
}
    
}

//Vamos verificar se o seletor está definido
if(doc.querySelector('.js-del')){
    //Vamos criar um array com todos os itens com esse seletor
    let btn=doc.querySelectorAll('.js-del');
    //Vamos associar a cada ocorrência do seletor um evento 'click' chamando a função
     for(let i=0; i<btn.length; i++){
        btn[i].addEventListener('click', confirmDel, false);
        //false - Não executa as callbacks
     }
}

} )(window, document);

