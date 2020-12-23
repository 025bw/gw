/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import dal.CartDAO;
import dal.CustomerDAO;
import dal.ItemDAO;
import dal.OrderDAO;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Arrays;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import model.Cart;
import model.Customer;
import model.Item;
import model.Order;

/**
 *
 * @author z
 */
public class CheckOut extends HttpServlet {

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

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        ItemDAO idb = new ItemDAO();
        ArrayList<Item> items = idb.list();
        request.setAttribute("items", items);
        CartDAO zxc = new CartDAO();
        ArrayList<Cart> carts = zxc.list();
        request.setAttribute("carts", carts);

        String[] raw_id = request.getParameterValues("i");
        String[] raw_quantity = request.getParameterValues("q");

        String ids = (Arrays.toString(raw_id));
        if (ids != "null") {
            zxc.delete();
            ids = ids.replace("[", "");
            ids = ids.replace("]", "");
            String quantity = (Arrays.toString(raw_quantity));

            quantity = quantity.replace("[", "");
            quantity = quantity.replace("]", "");
            int count = (ids.length() + 2) / 3;
            ArrayList<Cart> cs = new ArrayList<>();
            for (int i = 0; i < count; i++) {
                Item it = new Item();
                int id = Integer.parseInt(ids.split(", ")[i]);
                response.getWriter().println(id);
                it.setItem_id(id);
                int q = Integer.parseInt(quantity.split(", ")[i]);
                if (q > 0) {
                    response.getWriter().println(q);
                    Cart c = new Cart();
                    c.setQuantity(q);
                    c.setItem(it);
                    zxc.insert(c);
                }
            }
        }
        request.getRequestDispatcher("checkout.jsp").forward(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String name = request.getParameter("name");
        String adress = request.getParameter("adress");
        String phone = request.getParameter("phone");
        String note = request.getParameter("note");
        Order o = new Order();
        Customer cus = new Customer();
        cus.setName(name);
        int p = Integer.parseInt(phone);
        cus.setPhone(p);
        o.setCustomer(cus);
        o.setNote(note);
        o.setShipaddress(adress);
        CustomerDAO cdb = new CustomerDAO();
        OrderDAO odb = new OrderDAO();
        cdb.insert(cus);
        odb.insertorder(o);
        int oid = odb.count();
        response.getWriter().println(oid);
        odb.insertitems(oid);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
