/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import dal.DummyDAO;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import model.Dummy;

/**
 *
 * @author sonnt
 */
public class ListDummyController extends HttpServlet {

    
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        int pagesize = 10;
        String raw_pageindex = request.getParameter("page");
        if(raw_pageindex == null || raw_pageindex.equals(""))
            raw_pageindex= "1";
        int pageindex = Integer.parseInt(raw_pageindex);
        
        DummyDAO db = new DummyDAO();
        ArrayList<Dummy> dummies = db.paging(pagesize, pageindex);
        int totalRows = db.count();
        int totalPage = totalRows/pagesize + (totalRows%pagesize>0?1:0);
        
        request.setAttribute("pageindex", pageindex);
        request.setAttribute("totalpage", totalPage);
        request.setAttribute("dummies", dummies);
        request.getRequestDispatcher("../view/dummy/list.jsp").forward(request, response);
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
        processRequest(request, response);
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
        processRequest(request, response);
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
