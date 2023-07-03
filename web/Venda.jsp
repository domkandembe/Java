<%-- 
    Document   : Venda
    Created on : 5/mai/2023, 22:10:46
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
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Vendas</h1>
        <div class="d-flex">
            <div class="col-sm-4">
                <div class="card">
                    <form action="Controller?menu=Venda" method="POST">
                        <div class="card-body">
                            <div class="form-group">
                                <label class="form-label">Dados Cliente</label>
                            </div>
                            <div class="form-group  d-flex">
                                <div class="col-sm-6 d-flex">
                                    <input type="text" name="txtCodigoCliente" class="form-control" placeholder="Código" />
                                    <input type="submit" name="accao" value="Pesquisar" class="btn btn-outline-info" />
                                </div>
                                <div class="col-sm-6">
                                    <input type="text" name="txtNomeCliente" class="form-control" placeholder="Cliente" />
                                </div>
                            </div>
                            <br>
                            <div class="form-group">
                                <label class="form-label">Dados Produto</label>
                            </div>

                            <div class="form-group d-flex">
                                <div class="col-sm-6 d-flex">
                                    <input type="text" name="txtCodigoProduto" class="form-control" placeholder="Código" />
                                    <input type="submit" name="accao" value="Pesquisar" class="btn btn-outline-info" />
                                </div>
                                <div class="col-sm-6">
                                    <input type="text" name="txtNomeProduto" class="form-control" placeholder="Produto" />
                                </div>
                            </div>
                            <br>
                            <div class="form-group d-flex">
                                <div class="col-sm-6 d-flex">
                                    <input type="text" name="txtPreco" class="form-control" placeholder="0,00 / Kz" />
                                </div>
                                <div class="col-sm-3">
                                    <input type="number" name="txtQtd " class="form-control" placeholder="Qtd" />
                                </div>  
                                <div class="col-sm-3">
                                    <input type="text" name="txtEstoque " class="form-control" placeholder="Estoque" />
                                </div>  
                            </div> 
                        </div> 

                        <div class="form-group">
                            <input type="submit" name="accao" value="Adicionar" class="btn btn-info">
                        </div>
                    </form>
                </div>
            </div>

            <div class="col-sm-7">
                <div class="card">
                    <div class="card-body">
                        <div class="d-flex col-sm-5 ml-auto">
                            <label class="form-label">Número Pedido: </label>
                            <input type="text" name="codigoBarra" class="form-control"/> 
                        </div>
                        <table class="table table-hover">
                            <thead>
                                <tr>
                                    <th>Nº</th>
                                    <th>CodBarra</th>
                                    <th>Descricao</th>
                                    <th>Preço</th>
                                    <th>Quantidade</th>
                                    <th>Subtotal</th>
                                    <th>Acções</th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                </tr>
                            </tbody>
                        </table>
                    </div>
                    <div class="card-footer">
                        <div>
                            <input type="submit" name="accao" value="Finalizar Compra" class="btn btn-success" style="margin-top: 10px;"/>
                            <input type="submit" name="accao" value="Cancelar" class="btn btn-danger" style="margin-top: 10px;" />
                        </div>
                    </div>


                </div>
            </div>
        </div>
    </body>
</html>
