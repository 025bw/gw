package controller;

import dal.CartDAO;
import dal.CategoryDAO;
import dal.ItemDAO;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import model.Cart;
import model.Category;
import model.Item;

public class ListItemController extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String name = request.getParameter("name");
        String raw_cat = request.getParameter("cat_id");
        String raw_from = request.getParameter("from");
        String raw_to = request.getParameter("to");
        String instock = request.getParameter("instock");
        if (instock == null)instock="";
        response.getWriter().println(instock);
        Integer cat = null;
        Integer from = null;
        Integer to = null;
        Category c = null;
        if (raw_cat != null && !raw_cat.equals("-1")) {
            cat = new Integer(raw_cat);
        }
        if (raw_from != null && !raw_from.equals("")) {
            from = new Integer(raw_from);
        }
        if (raw_to != null && !raw_to.equals("")) {
            to = new Integer(raw_to);
        }

        String sort = request.getParameter("sort");
        if (sort != null) {
            sort = sort.replace("_", " ");
        }
        else sort="item_id";
        int i = 1;
        int pagesize = 3;
        String raw_pageindex = request.getParameter("page");
        if (raw_pageindex == null || raw_pageindex.equals("")) {
            raw_pageindex = "1";
        }
        int pageindex = Integer.parseInt(raw_pageindex);
        CategoryDAO catdb = new CategoryDAO();
        ItemDAO idb = new ItemDAO();
        int totalRows = idb.count();
        int totalPage = totalRows / pagesize + (totalRows % pagesize > 0 ? 1 : 0);
        response.getWriter().println(sort);
        ArrayList<Item> items = idb.search(cat, name, from, to, sort, pagesize, pageindex,instock);
        ArrayList<Category> cats = catdb.list();
        CartDAO zxc = new CartDAO();
        ArrayList<Cart> carts = zxc.list();
        request.setAttribute("carts", carts);
        request.setAttribute("cats", cats);
        request.setAttribute("items", items);
        request.setAttribute("sort", sort);
        request.setAttribute("instock", instock);
        request.setAttribute("pageindex", pageindex);
        request.setAttribute("totalpage", totalPage);
        request.getRequestDispatcher("list.jsp").forward(request, response);
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
        String raw_cat = request.getParameter("cat_id");
        String raw_from = request.getParameter("from");
        String raw_to = request.getParameter("to");
        String instock = request.getParameter("instock");
        if (instock == null)instock="";
        response.getWriter().println(instock);
        Integer cat = null;
        Integer from = null;
        Integer to = null;
        Category c = null;
        if (raw_cat != null && !raw_cat.equals("-1")) {
            cat = new Integer(raw_cat);
        }
        if (raw_from != null && !raw_from.equals("")) {
            from = new Integer(raw_from);
        }
        if (raw_to != null && !raw_to.equals("")) {
            to = new Integer(raw_to);
        }

        String sort = request.getParameter("sort");
        if (sort != null) {
            sort = sort.replace("_", " ");
        }
        else sort="item_id";
        int i = 1;
        int pagesize = 3;
        String raw_pageindex = request.getParameter("page");
        if (raw_pageindex == null || raw_pageindex.equals("")) {
            raw_pageindex = "1";
        }
        int pageindex = Integer.parseInt(raw_pageindex);
        CategoryDAO catdb = new CategoryDAO();
        ItemDAO idb = new ItemDAO();
        int totalRows = idb.count();
        
        int totalPage = totalRows / pagesize + (totalRows % pagesize > 0 ? 1 : 0);
        response.getWriter().println(sort);
        ArrayList<Item> items = idb.search(cat, name, from, to, sort, pagesize, pageindex, instock);
        ArrayList<Category> cats = catdb.list();
        CartDAO zxc = new CartDAO();
        ArrayList<Cart> carts = zxc.list();
        request.setAttribute("carts", carts);
        request.setAttribute("cats", cats);
        request.setAttribute("items", items);
        request.setAttribute("sort", sort);
        request.setAttribute("instock", instock);
        request.setAttribute("pageindex", pageindex);
        request.setAttribute("totalpage", totalPage);
        request.getRequestDispatcher("list.jsp").forward(request, response);
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
