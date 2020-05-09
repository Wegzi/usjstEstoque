package servlets;

import dao.ProdutoDAO;

import model.Produto;
import service.ProdutoService;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;

@WebServlet("/Home")

public class Home extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        ProdutoService conn = new ProdutoService();
        ArrayList<Produto> lista = conn.listarProdutos();
        request.setAttribute("produto", lista);

        RequestDispatcher rd = request.getRequestDispatcher("/home.jsp");
        rd.forward(request, response);

    }
}
