package servlets;

import model.Produto;
import service.ProdutoService;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/Update")
public class Update extends HttpServlet {
    private Produto produto;

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        String codigo = request.getParameter("codigo");
        String nome = request.getParameter("nome");
        String descricao = request.getParameter("descricao");
        String valor = request.getParameter("valor");
        String estoque = request.getParameter("estoque");
        Produto produto = new Produto();
        produto.setCodigo(Integer.parseInt(codigo));
        produto.setNome(nome);
        produto.setDescricao(descricao);
        produto.setValor(Double.parseDouble(valor));
        produto.setEstoque(Integer.parseInt(estoque));

        ProdutoService conn = new ProdutoService();
        conn.alterar(produto);
        response.sendRedirect("Home");

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String id = request.getParameter("id");

        ProdutoService conn = new ProdutoService();
        if (id != null) {
            Produto produto = new Produto();
            produto = conn.consultar(Integer.parseInt(id));
            request.setAttribute("produto", produto);
        }

        RequestDispatcher rd = request.getRequestDispatcher("/update.jsp");
        rd.forward(request, response);

    }
}
