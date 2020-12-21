/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import dal.AccountDAO;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import model.Account;

/**
 *
 * @author sonnt
 */

public abstract class BasedAuthenticationController extends HttpServlet {

    private boolean isAuthenticated(HttpServletRequest request)
    {
       Account account =(Account)request.getSession().getAttribute("user");
       if(account != null)
       {
           return true;
       }
       else
       {
           Cookie[] cookies = request.getCookies();
           String username = null;
           String password = null;
           for (Cookie cooky : cookies) {
               if(cooky.getName().equals("cuser"))
                   username = cooky.getValue();
               if(cooky.getName().equals("cpass"))
                   password = cooky.getValue();
               if(username!=null && password!=null)
                   break;
           }
           if(username == null || password == null)
               return false;
           else
           {
               AccountDAO db = new AccountDAO();
               account = db.CheckUserPassword(username, password);
               if(account!=null)
               {
                   request.getSession().setAttribute("user", account);
                   return true;
               }
               else
                   return false;
           }
       }
        
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
        if(isAuthenticated(request))
            processGet(request, response);
        else
            response.getWriter().println("access denied");
    }
    
    protected abstract void processGet(HttpServletRequest request, HttpServletResponse response);
    protected abstract void processPost(HttpServletRequest request, HttpServletResponse response);

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
        if(isAuthenticated(request))
        processPost(request, response);
        else
            response.getWriter().println("access denied");
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
