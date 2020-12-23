
package controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class ManageProduct extends BasedAuthenticationController {

    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

    @Override
    protected void processGet(HttpServletRequest request, HttpServletResponse response) {
        
        
        try {
            
            request.getRequestDispatcher("manage.jsp").forward(request, response);
        } catch (ServletException ex) {
            Logger.getLogger(ManageProduct.class.getName()).log(Level.SEVERE, null, ex);
        } catch (IOException ex) {
            Logger.getLogger(ManageProduct.class.getName()).log(Level.SEVERE, null, ex);
        }
    
    
    }

    @Override
    protected void processPost(HttpServletRequest request, HttpServletResponse response) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

}
