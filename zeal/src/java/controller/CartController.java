package controller;

import dal.CartDAO;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import model.Cart;

@WebServlet(name = "CartController", urlPatterns = {"/cart"})
public class CartController extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String raw_itemid = request.getParameter("itemid");
        int itemid = new Integer(raw_itemid);
        String raw_quantity = request.getParameter("quantity");
        int quantity = new Integer(raw_quantity);
        CartDAO crtdao = new CartDAO();
        Cart c = new Cart();
        c.setItemid(itemid);
        c.setQuantity(quantity);
        crtdao.insert(c);

        response.sendRedirect("list");
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
             {
                 response.getWriter().println("zxc");
        CartDAO zxc = new CartDAO();
        ArrayList<Cart> carts = zxc.list();
        request.setAttribute("carts", carts);
        request.getRequestDispatcher("checkout.jsp").forward(request, response);
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
