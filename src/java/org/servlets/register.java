/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package org.servlets;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.xml.ws.WebServiceRef;
import org.processws.ProcessWS_Service;

/**
 *
 * @author Xtravenger
 */
@WebServlet(name = "register", urlPatterns = {"/register"})
public class register extends HttpServlet {

    @WebServiceRef(wsdlLocation = "WEB-INF/wsdl/localhost_8080/ProcessWS/ProcessWS.wsdl")
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
        
       if(request.getParameter("signup")!= null)
       {
          request.setAttribute("email",request.getParameter("email"));
          request.setAttribute("password", request.getParameter("password2"));
          request.getRequestDispatcher("registration.jsp").forward(request, response);
          return;
       }
        
        String email = request.getParameter("email");
        String birthday = request.getParameter("dob");
        String gender = request.getParameter("gender");
        String name = request.getParameter("name");
        String contact = request.getParameter("phone");
        
        String shippingCompany = request.getParameter("shipping_company");
        String shippingBlock = request.getParameter("shipping_block");
        String shippingUnit = request.getParameter("shipping_unit");
        String shippingAdd1 = request.getParameter("shipping_address_1");
        String shippingAdd2 = request.getParameter("shipping_address_2");
        String shippingCity = request.getParameter("shipping_city");
        String shippingCountry = request.getParameter("shipping_country");
        String shippingPostal = request.getParameter("shipping_postcode");
        
        String billingCompany = request.getParameter("billing_company");
        String billingBlock = request.getParameter("billing_block");
        String billingUnit = request.getParameter("billing_unit");
        String billingAdd1 = request.getParameter("billing_address_1");
        String billingAdd2 = request.getParameter("billing_address_2");
        String billingCity = request.getParameter("billing_city");
        String billingCountry = request.getParameter("billing_country");
        String billingPostal = request.getParameter("billing_postcode");
       
        List<String> shipping = Arrays.asList(shippingBlock ,shippingCountry ,shippingPostal,shippingAdd1,shippingAdd2,shippingUnit,shippingCity,shippingCompany);
       
        List<String> billing = Arrays.asList(billingBlock,billingCountry,billingPostal ,billingAdd1 , billingAdd2 , billingUnit , billingCity , billingCompany );
            
        String status = request.getParameter("social");
        String password = request.getParameter("password");
    
       int res = this.createMember(email, password,birthday, gender, name, contact, billing, shipping, status);
        
        if (res == 1)
        {
            request.setAttribute("success", "true");
            request.getRequestDispatcher("index.jsp").forward(request, response);
        }else
        {
            request.setAttribute("success", "false");
            request.getRequestDispatcher("registration.jsp").forward(request, response);
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

    private int createMember(java.lang.String email, java.lang.String password, java.lang.String birthday, java.lang.String gender, java.lang.String name, java.lang.String contact, java.util.List<java.lang.String> billingAddress, java.util.List<java.lang.String> shippingAddress, java.lang.String status) {
        // Note that the injected javax.xml.ws.Service reference as well as port objects are not thread safe.
        // If the calling of port operations may lead to race condition some synchronization is required.
        org.processws.ProcessWS port = service.getProcessWSPort();
        return port.createMember(email, password, birthday, gender, name, contact, billingAddress, shippingAddress, status);
    }

   
   


  
  

}
