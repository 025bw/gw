/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import dal.DepartmentDAO;
import dal.StudentDAO;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Date;
import java.util.ArrayList;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import model.Department;
import model.Student;

/**
 *
 * @author sonnt
 */
public class AdvanceSearchStudentController extends HttpServlet {

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
        String raw_id = request.getParameter("id");
        String name = request.getParameter("name");
        String raw_gender = request.getParameter("gender");
        String raw_from = request.getParameter("from");
        String raw_to = request.getParameter("to");
        String raw_did = request.getParameter("did");
        
        Integer id = null;
        Boolean gender = null;
        Date from = null;
        Date to = null;
        Department d = null;
        if(raw_id !=null && !raw_id.equals(""))
            id = new Integer(raw_id);
        if(raw_gender != null && !raw_gender.equals("both"))
            gender = raw_gender.equals("male");
        if(raw_from !=null && !raw_from.equals(""))
            from = Date.valueOf(raw_from);
        if(raw_to !=null && !raw_to.equals(""))
            to = Date.valueOf(raw_to);    
        if(raw_did !=null && !raw_did.equals("-1"))
        {
            int did = Integer.parseInt(raw_did);
            d = new Department();
            d.setId(did);
        }
        StudentDAO db = new StudentDAO();
        ArrayList<Student> students = db.search(id, name, gender, from, to, d);
        request.setAttribute("students", students);
        
        DepartmentDAO ddb = new DepartmentDAO();
        request.setAttribute("depts", ddb.list());
        
        request.getRequestDispatcher("../view/student/list.jsp").forward(request, response);
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
