/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package org.servlets;

import java.io.IOException;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.xml.ws.WebServiceRef;
import org.accountmanagementws.AccountManagementWS_Service;
import org.purchasemanagement.PurchaseManagementWS_Service;

/**
 *
 * @author Xtravenger
 */
public class login extends HttpServlet {

    @WebServiceRef(wsdlLocation = "WEB-INF/wsdl/ec2-54-169-213-230.ap-southeast-1.compute.amazonaws.com/AccountManagementWS/AccountManagementWS.wsdl")
    private AccountManagementWS_Service service;



    @WebServiceRef(wsdlLocation = "WEB-INF/wsdl/ec2-54-169-213-230.ap-southeast-1.compute.amazonaws.com/PurchaseManagementWS/PurchaseManagementWS.wsdl")
    private PurchaseManagementWS_Service service_1;

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

        HttpSession session = request.getSession(true);
        
        String page = request.getParameter("page");
        String email = request.getParameter("LogInEmail");
        String password = request.getParameter("LogInPassword");
        String name = request.getParameter("name");

        if (request.getParameter("social") != null) {

            int loginRes = this.socialLogin(email);
            
            switch (loginRes) {

                case 0:

                    request.setAttribute("email", email);
                    request.setAttribute("name", name);
                    request.getRequestDispatcher("registration.jsp").forward(request, response);
                    return;

                case 1:

                    session.setAttribute("isLogin", true);
                    session.setAttribute("email", email);
                    session.setAttribute("role", "Social");

                    break;

                case 2:
                    request.setAttribute("invalid", "Account is deactivated, please contact administrator");
                    break;

                case 3:

                    request.setAttribute("invalid", "Account had been cancelled. To activate, please contact the administrator for verification");
                    break;

                case 4:
                    request.setAttribute("invalid", "This email account is not activated. Refer to activation email sent to you");
                    break;

            }
            request.getRequestDispatcher(page).forward(request, response);
        } else {

            int loginRes = this.verifyPassword(email, password);
            

            switch (loginRes) {

                case 0:

                    request.setAttribute("invalid", "Wrong email or password");

                    break;

                case 1:
                    
                    List list = this.retrieveAccount(email);

                    if (list.get(5).equals("Admin")) {
                        session.setAttribute("email", email);
                        session.setAttribute("role", "Admin");

                    } else {
                        session.setAttribute("email", email);
                        session.setAttribute("role", "Member");
                        session.setAttribute("cartlist", this.retrieveCart(email));
                    }
                    session.setAttribute("isLogin", true);

                    break;

                case 2:
                    request.setAttribute("invalid", "Account is deactivated, please contact administrator");
                    break;

                case 3:

                    request.setAttribute("invalid", "Account had been cancelled. To activate, please contact the administrator for verification");
                    break;

                case 4:
                    request.setAttribute("invalid", "This email account is not activated. Refer to activation email sent to you");
                    break;

            }

            request.getRequestDispatcher(page).forward(request, response);

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

    private java.util.List<net.java.dev.jaxb.array.StringArray> retrieveCart(java.lang.String email) {
        // Note that the injected javax.xml.ws.Service reference as well as port objects are not thread safe.
        // If the calling of port operations may lead to race condition some synchronization is required.
        org.purchasemanagement.PurchaseManagementWS port = service_1.getPurchaseManagementWSPort();
        return port.retrieveCart(email);
    }

    private Integer verifyPassword(java.lang.String email, java.lang.String password) {
        // Note that the injected javax.xml.ws.Service reference as well as port objects are not thread safe.
        // If the calling of port operations may lead to race condition some synchronization is required.
        org.accountmanagementws.AccountManagementWS port = service.getAccountManagementWSPort();
        return port.verifyPassword(email, password);
    }

    private Integer socialLogin(java.lang.String email) {
        // Note that the injected javax.xml.ws.Service reference as well as port objects are not thread safe.
        // If the calling of port operations may lead to race condition some synchronization is required.
        org.accountmanagementws.AccountManagementWS port = service.getAccountManagementWSPort();
        return port.socialLogin(email);
    }

    private java.util.List<java.lang.Object> retrieveAccount(java.lang.String email) {
        // Note that the injected javax.xml.ws.Service reference as well as port objects are not thread safe.
        // If the calling of port operations may lead to race condition some synchronization is required.
        org.accountmanagementws.AccountManagementWS port = service.getAccountManagementWSPort();
        return port.retrieveAccount(email);
    }

   

}
