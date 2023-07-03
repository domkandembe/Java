<%-- 
    Document   : Produtos
    Created on : 5/mai/2023, 22:10:04
    Author     : HP
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
        <h1>Produtos</h1>
        <br><br><br>
        <form action="Controller?menu=Produto" method="POST">
            <div class="row g-3">
                <div class="col">
                    <label class="form-label">Código de Barra</label>
                    <input type="text" class="form-control" name="txtCodigo_barra" value="${edit.getCodigo_barra()}">
                </div>
                <div class="col">
                    <label class="form-label">Descrição</label>
                    <input type="text" class="form-control" name="txtDescricao" value="${edit.getDescricao()}">
                </div>
                <div class="col">
                    <label class="form-label">Preço</label>
                    <input type="text" class="form-control" name="txtPreco" value="${edit.getPreco()}">
                </div>
                <div class="col">
                    <label class="form-label">Quantidade</label>
                    <input type="number" class="form-control"name="txtQtd" value="${edit.getQtd()}">
                </div>
                <div class="col">
                    <label class="form-label">Estado:</label>
                    <select class="form-control" name="txtEstado" value="${edit.getEstado()}">
                        <option value="${edit.getEstado()}">${edit.getEstado()}</option>
                        <option value="Em estoque">Em estoque</option>
                        <option value="Baixo estoque">Baixo estoque</option>
                        <option value="Fora de estoque">Fora de estoque</option>
                    </select>
                </div>
                <div class="col">
                    <label class="form-label">Fornecedor:</label>
                    <select class="form-control" name="txtFornecedor" value="${edit.getFornecedor()}">
                        <option value="${edit.getFornecedor()}">${edit.getFornecedor()}</option>
                        <c:forEach var="listaf" items="${fornec}">
                            <c:forEach var="valor" items="listaf">
                                <option value="${listaf.getId_fornecedor()}">${listaf.getNome()}</option>
                            </c:forEach>
                        </c:forEach>
                    </select>
                </div>

            </div><br>
            <div class="row g-4">
                <!--div class="col-5">
                    <input type="file" class="form-control">     
                </div-->
                <div class="col-5">
                    <input type="submit" name="accao" value="Adicionar" class="btn btn-info" style="margin-top: 10px;">
                    <input type="submit" name="accao" value="Actualizar" class="btn btn-success" style="margin-top: 10px;">
                </div>
            </div>
        </form>

        <br><br>


        <table class="table table-bordered" >
            <thead>
                <tr>
                    <th scope="col">ID</th>
                    <th scope="col">Código de Barra</th>
                    <th scope="col">Imagem</th>
                    <th scope="col">Descrição</th>
                    <th scope="col">Preço</th>
                    <th scope="col">Quantidade</th>
                    <th scope="col">Estado</th>
                    <th scope="col">Fornecedor</th>
                    <th scope="col">Acção</th>
                </tr>
            </thead>
            <tbody class="table-group-divider">
                <c:forEach var="dados" items="${dados_prod}">
                    <tr>
                        <c:forEach var="valor" items="dados">
                            <th scope="row">${dados.getId_produto()}</th>
                            <td>${dados.getCodigo_barra()}</td>
                            <td>Imagem</td>
                            <td>${dados.getDescricao()}</td>
                            <td>${dados.getPreco()} Kz</td>
                            <td>${dados.getQtd()}</td>
                            <td>${dados.getEstado()}</td>
                            <td>${dados.getFornecedor()}</td>
                            <td >
                                <a class="btn btn-warning" href="Controller?menu=Produto&accao=Editar&id=${dados.getId_produto()}">Editar</a>
                                <a class="btn btn-danger" href="Controller?menu=Produto&accao=Eliminar&id=${dados.getId_produto()}">Eliminar</a>
                            </td>
                        </c:forEach>
                    </tr>
                </c:forEach>

            </tbody>
        </table>
    </body>
</html>
