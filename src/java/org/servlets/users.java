/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package org.servlets;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.xml.ws.WebServiceRef;
import org.accountmanagementws.AccountManagementWS_Service;
import org.processws.ProcessWS_Service;

/**
 *
 * @author Xtravenger
 */
public class users extends HttpServlet {

    @WebServiceRef(wsdlLocation = "WEB-INF/wsdl/ec2-54-169-213-230.ap-southeast-1.compute.amazonaws.com/AccountManagementWS/AccountManagementWS.wsdl")
    private AccountManagementWS_Service service_1;

    @WebServiceRef(wsdlLocation = "WEB-INF/wsdl/ec2-54-169-213-230.ap-southeast-1.compute.amazonaws.com/ProcessWS/ProcessWS.wsdl")
    private ProcessWS_Service service;



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

        HttpSession session = request.getSession();

        if (request.getParameter("cancel") != null) {
            this.updateStatus(session.getAttribute("email").toString(), request.getParameter("cancel"), "C");
        }

        if (request.getParameter("delete") != null) {
            this.updateStatus(session.getAttribute("email").toString(), request.getParameter("delete"), "D");
        }

        if (request.getParameter("activate") != null) {
            this.updateStatus(session.getAttribute("email").toString(), request.getParameter("activate"), "A");
        }

   
        if (request.getParameter("create_admin") != null) {
            
            String email = request.getParameter("email");
            String birthday = request.getParameter("dob");
            String gender = request.getParameter("gender");
            String name = request.getParameter("name");
            String contact = request.getParameter("phone");
            
            int res = this.createAdmin(email, birthday, gender, name, contact);
            
            if(res == 2)
            {
                request.setAttribute("invalid", "Email already been registered");
            }
        }

        request.setAttribute("acclist", this.retrieveAllAccount(session.getAttribute("email").toString()));
        request.getRequestDispatcher("users.jsp").forward(request, response);

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

    private int createAdmin(java.lang.String email, java.lang.String birthday, java.lang.String gender, java.lang.String name, java.lang.String contact) {
        // Note that the injected javax.xml.ws.Service reference as well as port objects are not thread safe.
        // If the calling of port operations may lead to race condition some synchronization is required.
        org.processws.ProcessWS port = service.getProcessWSPort();
        return port.createAdmin(email, birthday, gender, name, contact);
    }

    private Integer updateStatus(java.lang.String performerEmail, java.lang.String email, java.lang.String status) {
        // Note that the injected javax.xml.ws.Service reference as well as port objects are not thread safe.
        // If the calling of port operations may lead to race condition some synchronization is required.
        org.accountmanagementws.AccountManagementWS port = service_1.getAccountManagementWSPort();
        return port.updateStatus(performerEmail, email, status);
    }

    private java.util.List<java.lang.Object> retrieveAllAccount(java.lang.String email) {
        // Note that the injected javax.xml.ws.Service reference as well as port objects are not thread safe.
        // If the calling of port operations may lead to race condition some synchronization is required.
        org.accountmanagementws.AccountManagementWS port = service_1.getAccountManagementWSPort();
        return port.retrieveAllAccount(email);
    }

   
}
