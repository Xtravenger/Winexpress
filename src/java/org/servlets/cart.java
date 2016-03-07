/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package org.servlets;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.xml.ws.WebServiceRef;
import org.purchasemanagement.PurchaseManagementWS_Service;
import org.shippingchargews.ShippingChargeWS_Service;

/**
 *
 * @author Xtravenger
 */
public class cart extends HttpServlet {

    @WebServiceRef(wsdlLocation = "WEB-INF/wsdl/ec2-54-169-213-230.ap-southeast-1.compute.amazonaws.com/ShippingChargeWS/ShippingChargeWS.wsdl")
    private ShippingChargeWS_Service service_1;

    @WebServiceRef(wsdlLocation = "WEB-INF/wsdl/ec2-54-169-213-230.ap-southeast-1.compute.amazonaws.com/PurchaseManagementWS/PurchaseManagementWS.wsdl")
    private PurchaseManagementWS_Service service;

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
        
        if(request.getParameter("remove")!= null)
        {
            this.removeItem(request.getParameter("remove"), String.valueOf(session.getAttribute("remove")));
        }
        
        if(session != null)
        {
            if(session.getAttribute("email")!= null)
            {
                session.setAttribute("cartlist", this.retrieveCart(String.valueOf(session.getAttribute("email"))));
                
            }
        }
   
        request.setAttribute("chargelist", this.retrieveShippingCharge());
        request.getRequestDispatcher("cart.jsp").forward(request, response);
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
        org.purchasemanagement.PurchaseManagementWS port = service.getPurchaseManagementWSPort();
        return port.retrieveCart(email);
    }

    private Integer removeItem(java.lang.String productID, java.lang.String email) {
        // Note that the injected javax.xml.ws.Service reference as well as port objects are not thread safe.
        // If the calling of port operations may lead to race condition some synchronization is required.
        org.purchasemanagement.PurchaseManagementWS port = service.getPurchaseManagementWSPort();
        return port.removeItem(productID, email);
    }

    private java.util.List<java.lang.Object> retrieveShippingCharge() {
        // Note that the injected javax.xml.ws.Service reference as well as port objects are not thread safe.
        // If the calling of port operations may lead to race condition some synchronization is required.
        org.shippingchargews.ShippingChargeWS port = service_1.getShippingChargeWSPort();
        return port.retrieveShippingCharge();
    }

    

   

  
}
