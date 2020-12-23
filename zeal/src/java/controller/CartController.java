package controller;

import dal.CartDAO;
import dal.CategoryDAO;
import dal.ItemDAO;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import model.Cart;
import model.Category;
import model.Item;

@WebServlet(name = "CartController", urlPatterns = {"/cart"})
public class CartController extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        ItemDAO idb = new ItemDAO();
        ArrayList<Item> items = idb.list();
        request.setAttribute("items", items);
        CartDAO zxc = new CartDAO();
        ArrayList<Cart> carts = zxc.list();
        request.setAttribute("carts", carts);
        request.getRequestDispatcher("displaycart.jsp").forward(request, response);
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        ItemDAO idb = new ItemDAO();
        ArrayList<Item> items = idb.list();
        request.setAttribute("items", items);
        CartDAO zxc = new CartDAO();
        ArrayList<Cart> carts = zxc.list();
        request.setAttribute("carts", carts);
        request.getRequestDispatcher("displaycart.jsp").forward(request, response);

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        ItemDAO idb = new ItemDAO();
        ArrayList<Item> items = idb.list();
        request.setAttribute("items", items);
        CartDAO zxc = new CartDAO();
        ArrayList<Cart> carts = zxc.list();
        request.setAttribute("carts", carts);
        request.getRequestDispatcher("displaycart.jsp").forward(request, response);
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
