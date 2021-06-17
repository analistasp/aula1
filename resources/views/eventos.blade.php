<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css">
    <title>Gestão do aluno</title>
</head>
<body>
<h1>Site da Etec</h1>
<section class="menu">
<ul>
<li><a href="#">Home</a></li>
<li><a href="./eventos">Eventos</a></li>
<li><a href="#">Programação</a></li>
</ul>
</section>
@yield('leitura')
<script src="../resources/js/aluno.js"></script>
@yield('registro')
@yield('create')
@yield('edit')


@yield('conteudo')
@yield('programa')

</body>
</html>