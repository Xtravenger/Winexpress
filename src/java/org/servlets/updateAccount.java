/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package org.servlets;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Arrays;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.xml.ws.WebServiceRef;
import org.accountmanagementws.AccountManagementWS_Service;

/**
 *
 * @author Xtravenger
 */
@WebServlet(name = "updateAccount", urlPatterns = {"/updateAccount"})
public class updateAccount extends HttpServlet {

    @WebServiceRef(wsdlLocation = "WEB-INF/wsdl/ec2-54-169-213-230.ap-southeast-1.compute.amazonaws.com/AccountManagementWS/AccountManagementWS.wsdl")
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

        HttpSession session = request.getSession(false);

        String email = String.valueOf(session.getAttribute("email"));
     
        if(request.getParameter("cancel")!= null)
        {
            int res = this.cancelAccount(request.getParameter("cancel"));
            
            if(res == 1)
            {
                request.getRequestDispatcher("logout").forward(request, response);
                return;
            }
        }
        

        if (request.getParameter("update_acc") != null) {

            String name = request.getParameter("name");
            String contact = request.getParameter("phone");

            this.updateAccount(email, name, contact);

            if (request.getParameter("shipping_checkbox") != null) {
                
                String shippingCompany = request.getParameter("shipping_company");
                String shippingBlock = request.getParameter("shipping_block");
                String shippingUnit = request.getParameter("shipping_unit");
                String shippingAdd1 = request.getParameter("shipping_address_1");
                String shippingAdd2 = request.getParameter("shipping_address_2");
                String shippingCity = request.getParameter("shipping_city");
                String shippingCountry = request.getParameter("shipping_country");
                String shippingPostal = request.getParameter("shipping_postcode");

                if (shippingBlock.equals("")) {
                    shippingBlock = "-";
                }
                if (shippingCompany.equals("")) {
                    shippingCompany = "-";
                }
                if (shippingAdd2.equals("")) {
                    shippingAdd2 = "-";
                }
                List<String> shipping = Arrays.asList(shippingBlock, shippingCountry, shippingPostal, shippingAdd1, shippingAdd2, shippingUnit, shippingCity, shippingCompany);

                this.updateShipping(shipping, email);

            }

            if (request.getParameter("billing_checkbox") != null) {
                String billingCompany = request.getParameter("billing_company");
                String billingBlock = request.getParameter("billing_block");
                String billingUnit = request.getParameter("billing_unit");
                String billingAdd1 = request.getParameter("billing_address_1");
                String billingAdd2 = request.getParameter("billing_address_2");
                String billingCity = request.getParameter("billing_city");
                String billingCountry = request.getParameter("billing_country");
                String billingPostal = request.getParameter("billing_postcode");

                if (billingBlock.equals("")) {
                    billingBlock = "-";
                }
                if (billingCompany.equals("")) {
                    billingCompany = "-";
                }
                if (billingAdd2.equals("")) {
                    billingAdd2 = "-";
                }

                List<String> billing = Arrays.asList(billingBlock, billingCountry, billingPostal, billingAdd1, billingAdd2, billingUnit, billingCity, billingCompany);
              
                this.updateBilling(billing, email);
            }
            
            if(request.getParameter("credit_checkbox")!= null)
            {
                String cardNum = request.getParameter("card_number");
                String nameOnCard = request.getParameter("holder_name");
                String cardType = request.getParameter("card_type");
                String year = request.getParameter("card_year");
                String month = request.getParameter("card_month");
                
                String details = cardNum + "," + cardType + "," + nameOnCard + "," + month + "," + year;
                
                this.updateCreditCard(details, email);
                
            }
        }

        request.setAttribute("account", this.retrieveAccount(email));
        
        

        request.getRequestDispatcher("edit.jsp").forward(request, response);

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

    private Integer updateBilling(java.util.List<java.lang.String> billingAddress, java.lang.String email) {
        // Note that the injected javax.xml.ws.Service reference as well as port objects are not thread safe.
        // If the calling of port operations may lead to race condition some synchronization is required.
        org.accountmanagementws.AccountManagementWS port = service.getAccountManagementWSPort();
        return port.updateBilling(billingAddress, email);
    }

    private Integer updateShipping(java.util.List<java.lang.String> shippingAddress, java.lang.String email) {
        // Note that the injected javax.xml.ws.Service reference as well as port objects are not thread safe.
        // If the calling of port operations may lead to race condition some synchronization is required.
        org.accountmanagementws.AccountManagementWS port = service.getAccountManagementWSPort();
        return port.updateShipping(shippingAddress, email);
    }

    private Integer updateAccount(java.lang.String email, java.lang.String name, java.lang.String contact) {
        // Note that the injected javax.xml.ws.Service reference as well as port objects are not thread safe.
        // If the calling of port operations may lead to race condition some synchronization is required.
        org.accountmanagementws.AccountManagementWS port = service.getAccountManagementWSPort();
        return port.updateAccount(email, name, contact);
    }

    private Integer updateCreditCard(java.lang.String creditCardDetails, java.lang.String email) {
        // Note that the injected javax.xml.ws.Service reference as well as port objects are not thread safe.
        // If the calling of port operations may lead to race condition some synchronization is required.
        org.accountmanagementws.AccountManagementWS port = service.getAccountManagementWSPort();
        return port.updateCreditCard(creditCardDetails, email);
    }

    private Integer cancelAccount(java.lang.String email) {
        // Note that the injected javax.xml.ws.Service reference as well as port objects are not thread safe.
        // If the calling of port operations may lead to race condition some synchronization is required.
        org.accountmanagementws.AccountManagementWS port = service.getAccountManagementWSPort();
        return port.cancelAccount(email);
    }

    private java.util.List<java.lang.Object> retrieveAccount(java.lang.String email) {
        // Note that the injected javax.xml.ws.Service reference as well as port objects are not thread safe.
        // If the calling of port operations may lead to race condition some synchronization is required.
        org.accountmanagementws.AccountManagementWS port = service.getAccountManagementWSPort();
        return port.retrieveAccount(email);
    }

  

    
  
}
