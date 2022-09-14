/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controllers;

import Models.Item;
import Models.Product;
import Models.ProductDAO;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author Dell
 */
public class CartController extends HttpServlet {

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
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            
            HttpSession ses = request.getSession();
            
            String editcart = request.getParameter("editcart");
            switch (editcart) {
                case "add": {
                    int masanpham = Integer.parseInt(request.getParameter("productID"));
                    if (null == ses.getAttribute("giohang")) {
                        ArrayList<Item> cart = new ArrayList<>();
                        Item i = new Item();
                        Product pro = ProductDAO.getProductById(masanpham);
                        i.setP(pro);
                        cart.add(i);
                        i.setSoluong(1);
                        ses.setAttribute("giohang", cart);
                    } else {
                        boolean isduplicate = false;
                        ArrayList<Item> cart = (ArrayList<Item>) ses.getAttribute("giohang");
                        for (int i = 0; i < cart.size(); i++) {
                            Item temp = cart.get(i);
                            if (temp.getP().getMasanpham() == masanpham) {
                                temp.setSoluong(temp.getSoluong() + 1);
                                isduplicate = true;
                            }
                        }
                        if (isduplicate == false) {
                            Product pro = ProductDAO.getProductById(masanpham);
                            Item i = new Item();
                            i.setP(pro);
                            i.setSoluong(1);
                            cart.add(i);
                        }
                        ses.setAttribute("giohang", cart);
                    }
                    request.getRequestDispatcher("/ProductDetailController?ProductID=" + masanpham).forward(request, response);
                    break;
                }
                case "update": {
                    if (ses.getAttribute("giohang") != null) {
                        ArrayList<Item> cart = (ArrayList<Item>) ses.getAttribute("giohang");
                        for (int i = 0; i < cart.size(); i++) {
                            Item gh = cart.get(i);
                            int id = gh.getP().getMasanpham();
                            int countitem = Integer.parseInt(request.getParameter("qty"+i));
                            gh.setSoluong(countitem);
                        }
                        ses.setAttribute("giohang", cart);
                        response.sendRedirect("cart.jsp");
                    }
                    break;
                }
                case "delete": {
                    int masanpham = Integer.parseInt(request.getParameter("productID"));
                    if (ses.getAttribute("giohang") != null) {
                        ArrayList<Item> cart = (ArrayList<Item>) ses.getAttribute("giohang");
                        for (int i = 0; i < cart.size(); i++) {
                            Item gh = cart.get(i);
                            if (gh.getP().getMasanpham() == masanpham) {
                                cart.remove(gh);
                            }
                        }
                        ses.setAttribute("giohang", cart);
                        response.sendRedirect("cart.jsp");
                    }
                    break;
                }
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
