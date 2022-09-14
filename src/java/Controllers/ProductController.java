/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controllers;

import Models.Product;
import Models.ProductDAO;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Dell
 */
public class ProductController extends HttpServlet {

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
            int maloaisanpham = Integer.parseInt(request.getParameter("MaLoaiSanPham"));
            int matrang = Integer.parseInt(request.getParameter("MaTrang"));
            ArrayList<Product> arrpage;
            if (maloaisanpham == 0) {
                ArrayList<Product> arrsanpham = ProductDAO.getProduct();
                int tong = 8;
                int sotrang = -1;
                if (arrsanpham.size() % tong == 0) {
                    sotrang = arrsanpham.size() / tong;
                } else {
                    sotrang = arrsanpham.size() / tong + 1;
                }
                request.setAttribute("SoTrang", sotrang);
                sotrang = (matrang - 1) * 8 + 1;
                arrpage = ProductDAO.getAllProduct(sotrang, tong);
            } else {
                ArrayList<Product> arrbyid = ProductDAO.getProductByCategoryID(maloaisanpham);
                int tong = 6;
                int sotrang = -1;
                if (arrbyid.size() % tong == 0) {
                    sotrang = arrbyid.size() / tong;
                } else {
                    sotrang = arrbyid.size() / tong + 1;
                }
                request.setAttribute("SoTrang", sotrang);
                sotrang = (matrang - 1) * 6 + 1;
                arrpage = ProductDAO.getLimitProductByPage(maloaisanpham, sotrang, tong);
            }
            request.setAttribute("MaLoaiSP", maloaisanpham);
            request.setAttribute("SoSanPham1Trang", arrpage);
            RequestDispatcher rd = request.getRequestDispatcher("/category.jsp");
            rd.forward(request, response);
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
