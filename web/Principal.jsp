<%-- 
    Document   : Principal
    Created on : 7/abr/2023, 2:03:36
    Author     : HP
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-KK94CHFLLe+nY2dmCWGMq91rCGa5gtU4mk92HdvYe+M/SXH301p5ILy+dN9+nJOZ" crossorigin="anonymous">
        <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.14.7/dist/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.3.1/dist/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
        <script src="js/bootstrap.min.js"></script>
        <link rel="stylesheet" href="css/bootstrap.min.css"/>
        <title>PRINCIPAL</title>
    </head>
    <body>
        <nav class="navbar navbar-light bg-light">
            <a class="navbar-brand" href="#">
                <img src="img/logo-tupuca-h.png" width="100%" height="100%" class="d-inline-block align-top" alt="">

            </a>
        </nav>
        <nav class="navbar navbar-expand-lg navbar-light bg-dark">


            <div class="collapse navbar-collapse" id="navbarNav">
                <ul class="navbar-nav">
                    <li class="nav-item active">
                        <a style="margin-left: 10px; border: none;" class="btn btn-dark" href="Controller?menu=Sidebars">Dashboard</a>
                    </li>
                    <li class="nav-item ">
                        <a style="margin-left: 10px; border: none;" class="btn btn-dark" href="Controller?menu=Produto" target="myFrame">Productos</a>
                    </li>
                    <li class="nav-item">
                        <a style="margin-left: 10px; border: none;" class="btn btn-dark" href="Controller?menu=Venda" target="myFrame">Vendas</a>
                    </li>
                    <li class="nav-item">
                        <a style="margin-left: 10px; border: none;" class="btn btn-dark" href="Controller?menu=Fornecedor&accao=Listar" target="myFrame">Fornecedores</a>
                    </li>
                    <li class="nav-item">
                        <a style="margin-left: 10px; border: none;" class="btn btn-dark" href="Controller?menu=Cliente&accao=Listar" target="myFrame">Clientes</a>
                    </li>
                    <li class="nav-item">
                        <a style="margin-left: 10px; border: none;" class="btn btn-dark" href="Controller?menu=Relatorio" target="myFrame">Relatórios</a>
                    </li>
                </ul>           
            </div>

            <div class="dropdown" style="margin-right: 10px;">
                <button style="margin-left: 10px; border: none;" class="btn btn-outline-light dropdown-toggle" type="button" id="dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                    ${cliente.getNome()}
                </button>
                <div class="dropdown-menu text-center" aria-labelledby="dropdownMenuButton" style="margin-left: -120px; width: 250px;">
                    <a class="dropdown-item" href="#">
                        <img src="img/user2.png" href="#" style="width: 50%"/>
                    </a>
                    <a class="dropdown-item" href="#">${cliente.getNome()}</a>
                    <a class="dropdown-item" href="Controller?menu=Perfil">${cliente.getEmail()}</a>
                    <div class="dropdown-divider"></div>
                    <a class="dropdown-item" href="Controller?menu=Principal">Sair</a>
                </div>

            </div>

        </nav>

        <div class="m-4" style="border: none; height: 650px;">
            <iframe name="myFrame" style="height: 100%; width: 100%;">

            </iframe>

        </div>

    </body>
</html>
