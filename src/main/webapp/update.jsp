<%@ page import="model.Produto" %>
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
            <h3 class="m-0">Nova tarefa</h3>
            <a href="Home" class="btn btn-sm btn-success" role="button"
               aria-pressed="true">Voltar</a>
        </div>
        <div class="p-3 bg-white rounded  shadow-sm">
            <%
                Produto produto = new Produto();
                if (request.getAttribute("produto") != null) {
                    produto = (Produto) request.getAttribute("produto");
                }
            %>
            <form action="Update" method="post">
                <div class="form-group row">
                    <label class="col-sm-2 col-form-label">Nome</label>
                    <div class="col-sm-10">
                        <input type="text" name="codigo" class="form-control" id="codigo"
                               value="<% out.print(produto.getCodigo()); %>"  readonly/>
                    </div>
                </div>
                <div class="form-group row">
                    <label class="col-sm-2 col-form-label">Nome</label>
                    <div class="col-sm-10">
                        <input type="text" name="nome" class="form-control" id="nome"
                               value="<% out.print(produto.getNome()); %>" required/>
                    </div>
                </div>
                <div class="form-group row">
                    <label class="col-sm-2 col-form-label">Descricao</label>
                    <div class="col-sm-10">
                        <input type="text" name="descricao" class="form-control" id="descricao"
                               value="<% out.print(produto.getDescricao()); %>"
                               required/>
                    </div>
                </div>
                <div class="form-group row">
                    <label class="col-sm-2 col-form-label">Valor</label>
                    <div class="col-sm-10">
                        <input type="text" name="valor" class="form-control" id="valor"
                               value="<% out.print(produto.getValor()); %>"
                               required/>
                    </div>
                </div>
                <div class="form-group row">
                    <label class="col-sm-2 col-form-label">Estoque</label>
                    <div class="col-sm-10">
                        <input type="text" name="estoque" class="form-control" id="estoque"
                               value="<% out.print(produto.getEstoque()); %>"
                               required/>
                    </div>
                </div>

                <button type="submit" class="btn btn-primary mb-2">Enviar</button>
            </form>

        </div>
    </div>
</div>
</body>
</html>
