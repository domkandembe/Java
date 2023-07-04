<%-- 
    Document   : Clientes
    Created on : 5/mai/2023, 22:11:43
    Author     : HP
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
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
        <title>Cliente</title>
    </head>
    <body>
        <h1>Clientes</h1>
        <div class="d-flex">
            <div class="card col-sm-3">
                <div class="card-body">
                    <form action="Controller?menu=Cliente" method="POST" >

                        <div class="form-group">
                            <label>Nome</label>
                            <input type="text" name="txtNome" class="form-control" value="${edit.getNome()}">
                        </div>
                        <div class="form-group">
                            <label>E-mail</label>
                            <input type="text" name="txtEmail" class="form-control" value="${edit.getEmail()}">
                        </div>
                        <div class="form-group">
                            <label>Password</label>
                            <input type="password" name="txtPassword" class="form-control" value="${edit.getPassword()}">
                        </div>
                        <div class="form-group">
                            <label>Telefone</label>
                            <input type="text" name="txtTelefone" class="form-control" value="${edit.getTelefone()}">
                        </div>
                        <div class="form-group">
                            <label>Endereço</label>
                            <input type="text" name="txtEndereco" class="form-control" value="${edit.getEndereco()}">
                        </div>
                        <input type="submit" name="accao" value="Adicionar" class="btn btn-info" style="margin-top: 10px;">
                        <input type="submit" name="accao" value="Actualizar" class="btn btn-success" style="margin-top: 10px;">
                    </form>
                </div>
            </div>

            <div class="col-sm-9 ms-3">
                <table class="table table-hover">
                    <thead>
                        <tr>
                            <th>ID</th>
                            <th>Nome</th>
                            <th>E-mail</th>
                            <th>Password</th>
                            <th>Telefone</th>
                            <th>Endereço</th>
                            <th>Acções</th>
                        </tr>
                    </thead>
                    <tbody>
                        <c:forEach var="dado" items="${dados}">
                            <tr>
                                <c:forEach var="valor" items="dado">
                                    <td>${dado.getId_cliente()}</td>
                                    <td>${dado.getNome()}</td>
                                    <td>${dado.getEmail()}</td>
                                    <td>${dado.getPassword()}</td>
                                    <td>${dado.getTelefone()}</td>
                                    <td>${dado.getEndereco()}</td>
                                    <td >
                                        <a class="btn btn-warning" href="Controller?menu=Cliente&accao=Editar&id=${dado.getId_cliente()}">Editar</a>
                                        <a class="btn btn-danger" href="Controller?menu=Cliente&accao=Eliminar&id=${dado.getId_cliente()}">Eliminar</a>
                                    </td>
                                </c:forEach>
                            </tr>  
                        </c:forEach>
                    </tbody>
                </table>

            </div>
        </div>

    </body>
</html>

