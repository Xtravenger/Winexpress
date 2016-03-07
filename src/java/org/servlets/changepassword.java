/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package org.servlets;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.xml.ws.WebServiceRef;
import org.accountmanagementws.AccountManagementWS_Service;

/**
 *
 * @author Xtravenger
 */
@WebServlet(name = "changepassword", urlPatterns = {"/changepassword"})
public class changepassword extends HttpServlet {

    @WebServiceRef(wsdlLocation = "WEB-INF/wsdl/localhost_8080/AccountManagementWS/AccountManagementWS.wsdl")
    private AccountManagementWS_Service service;


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
        
        String old = request.getParameter("oldpassword");
        String newPass = request.getParameter("newpassword1");
        String email = request.getParameter("email");

        
        // for reset password section
        if(old.equals("reset"))
        {
            int res = this.updatePassword(email, newPass);
            
            if(res == 1)
            {
                request.setAttribute("update", "Password update sucessfully");
            }else
            {
                 request.setAttribute("update", "Unable to update password");
            } 
              request.getRequestDispatcher("changepassword.jsp").forward(request, response);
              return;
        }
        
        //for normal password change
        if(this.verifyPassword(email, old) == 1)
        {
            int res = this.updatePassword(email, newPass);
            
            if(res == 1)
            {
                request.setAttribute("update", "Password update sucessfully");
            }else
            {
                 request.setAttribute("update", "Unable to update password");
            }
        }else
        {
            request.setAttribute("update", "Old password does not match with record");
        }
        
        request.getRequestDispatcher("changepassword.jsp").forward(request, response);
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

    private Integer verifyPassword(java.lang.String email, java.lang.String password) {
        // Note that the injected javax.xml.ws.Service reference as well as port objects are not thread safe.
        // If the calling of port operations may lead to race condition some synchronization is required.
        org.accountmanagementws.AccountManagementWS port = service.getAccountManagementWSPort();
        return port.verifyPassword(email, password);
    }

    private Integer updatePassword(java.lang.String email, java.lang.String password) {
        // Note that the injected javax.xml.ws.Service reference as well as port objects are not thread safe.
        // If the calling of port operations may lead to race condition some synchronization is required.
        org.accountmanagementws.AccountManagementWS port = service.getAccountManagementWSPort();
        return port.updatePassword(email, password);
    }

 
   
}
