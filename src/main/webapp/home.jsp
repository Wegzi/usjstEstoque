<%@ page import="java.util.ArrayList" %>
<%@ page import="model.Produto" %>
<%@page contentType="text/html" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en" dir="ltr">
<%@ include file="/layout/header.html" %>
<body>
<div id="pageheader">
    <%@ include file="/layout/menu.jsp" %>
</div>
<div id="body">
    <div class="container pt-3">
        <div class="d-flex align-items-center justify-content-between mb-3">
            <h3 class="m-0">Lista de tarefas
            </h3>
            <a href="Create" class="btn btn-sm btn-success" role="button"
               aria-pressed="true">Nova tarefa</a>
        </div>
        <div class="d-flex flex-wrap">
            <%
                ArrayList<Produto> list = new ArrayList<Produto>();
                if (request.getAttribute("produto") != null) {

                    list = (ArrayList<Produto>) request.getAttribute("produto");

                    for (Produto produto : list) {
                        if (produto.getNome() != null) {
            %>
            <div class="p-3">
                <div class="card">
                    <div class="card-header d-flex align-items-center">
                        <span class="mr-2">
                            <% out.print(produto.getNome()); %>
                        </span>
                        <div class="ml-auto">
                            <a href="Update?id=<% out.print(produto.getCodigo()); %>" type="button"
                               class="btn btn-primary btn-sm">editar</a>
                            <a href="Delete?id=<% out.print(produto.getCodigo()); %>" type="button"
                               class="btn btn-danger btn-sm">apagar</a>
                        </div>
                    </div>
                    <div class="card-body">
                        <% out.print(produto.getDescricao()); %>


                    </div>
                    <div class="card-footer d-flex">
                        <span class="mr-4">
                            Valor:<% out.print(produto.getValor()); %>
                        </span>
                        <span>
                            Estoque: <% out.print(produto.getEstoque()); %>
                        </span>
                    </div>
                </div>
            </div>
            <%
                        }
                    }
                }
            %>

        </div>
    </div>
</div>
</body>
</html>
