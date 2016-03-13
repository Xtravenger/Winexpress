/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package org.servlets;

import java.awt.image.BufferedImage;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.IOException;
import java.util.List;
import javax.imageio.ImageIO;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.xml.ws.WebServiceRef;
import org.amazonws.AmazonWS_Service;
import org.apache.commons.codec.binary.Base64;
import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;
import webservice.ProductWS_Service;


/**
 *
 * @author Baoyu
 */
public class product_create extends HttpServlet {

    @WebServiceRef(wsdlLocation = "WEB-INF/wsdl/localhost_8080/Product_WS/Product_WS.wsdl")
    private ProductWS_Service service_1;

    

    

    @WebServiceRef(wsdlLocation = "WEB-INF/wsdl/ec2-54-169-213-230.ap-southeast-1.compute.amazonaws.com/AmazonWS/AmazonWS.wsdl")
    private AmazonWS_Service service;
   

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
        response.setContentType("text/html;charset=UTF-8");                        

        System.out.print("servlet product_create is called");
        
        Integer product_id = -1;
                
        String imgsrc = "";
        String name = "";
        String brand = "";
        String size = "";
        Short stock = 0;
        Integer category_id = 1;
        long price = 0;
        String description = "";
        byte[] imageInByte = null;
                                        

        if (ServletFileUpload.isMultipartContent(request)) {
            System.out.print("ServletFileUpload.isMultipartContent(request)");
            try {

                List<FileItem> multiparts = new ServletFileUpload(new DiskFileItemFactory()).parseRequest(request);

                for (FileItem item : multiparts) {

                    if (!item.isFormField()) {
                        System.out.print("!item.isFormField()");
                        imgsrc = new File(item.getName()).getName();

                        item.write(new File("photo\\" + imgsrc));

                        File fnew = new File("photo\\" + imgsrc);
                        BufferedImage originalImage = ImageIO.read(fnew);
                        ByteArrayOutputStream baos = new ByteArrayOutputStream();
                        ImageIO.write(originalImage, "png", baos);
                        imageInByte = baos.toByteArray();
                        fnew.delete();

                    } else {
                        System.out.print("else");
                        
                        switch (item.getFieldName()) {
                            case "Name":
                                name = item.getString();
                                break;

                            case "Brand":
                                brand = item.getString();
                                break;

                            case "Size":
                                size = item.getString();
                                break;

                            case "Stock":
                                stock = Short.parseShort(item.getString());
                                break;

                            case "price":
                                price = Long.parseLong(item.getString());
                                break;

                            case "Description":
                                description = item.getString();
                                break;

                            case "select_categ":

                                category_id = Integer.parseInt(item.getString());
                                break;
                        }
                    }
                }
                
                product_id = this.createProduct(name, brand, size, price, stock, description, category_id);
                
                if (product_id > 0) {
                     this.uploadImage(String.valueOf(product_id), Base64.encodeBase64String(imageInByte));      
                    
                } 
            } catch (Exception ex) {

                ex.printStackTrace();

            }

        }
              
        request.getRequestDispatcher("product.jsp").forward(request, response);
        
        
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

    private Integer uploadImage(java.lang.String productID, java.lang.String imageByte) {
        // Note that the injected javax.xml.ws.Service reference as well as port objects are not thread safe.
        // If the calling of port operations may lead to race condition some synchronization is required.
        org.amazonws.AmazonWS port = service.getAmazonWSPort();
        return port.uploadImage(productID, imageByte);
    }    

    private Integer createProduct(java.lang.String name, java.lang.String brand, java.lang.String size, long price, java.lang.Short stock, java.lang.String description, java.lang.Integer categId) {
        // Note that the injected javax.xml.ws.Service reference as well as port objects are not thread safe.
        // If the calling of port operations may lead to race condition some synchronization is required.
        webservice.ProductWS port = service_1.getProductWSPort();
        return port.createProduct(name, brand, size, price, stock, description, categId);
    }
   
        
}
