/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import dal.CartDAO;
import dal.ItemDAO;
import dal.OrderDAO;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import model.Cart;
import model.Item;
import model.Order;
import model.Order_Items;

/**
 *
 * @author z
 */
public class ManageOrderController extends BasedAuthenticationController {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

    @Override
    protected void processGet(HttpServletRequest request, HttpServletResponse response) {
        try {
            OrderDAO od = new OrderDAO();
            ArrayList<Order> orders = od.list();
            request.setAttribute("orders", orders);
            
            ArrayList<Order_Items> ois = od.listitems();
            request.setAttribute("ois", ois);
            
            CartDAO zxc = new CartDAO();
            ArrayList<Cart> carts = zxc.list();
            request.setAttribute("carts", carts);
            
            ItemDAO asd = new ItemDAO();
            ArrayList<Item> items = asd.list();
            request.setAttribute("items", items);
            
            request.getRequestDispatcher("manageorder.jsp").forward(request, response);
        } catch (ServletException ex) {
            Logger.getLogger(ManageOrderController.class.getName()).log(Level.SEVERE, null, ex);
        } catch (IOException ex) {
            Logger.getLogger(ManageOrderController.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    @Override
    protected void processPost(HttpServletRequest request, HttpServletResponse response) {
        
        try {
            String orderstatus = request.getParameter("orderstatus");
            int oid = Integer.parseInt(orderstatus.split("_")[0]);
            
            orderstatus = orderstatus.split("_")[1];
            
            response.getWriter().println(orderstatus);
            OrderDAO odb = new OrderDAO();
            odb.updatestatus(orderstatus, oid);
            response.sendRedirect("manageorder");
        } catch (IOException ex) {
            Logger.getLogger(ManageOrderController.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
}
