/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controllers;

import Models.DetailInvoice;
import Models.DetailInvoiceDAO;
import Models.Invoice;
import Models.InvoiceDAO;
import Models.Item;
import Models.Product;
import Models.User;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Timestamp;
import java.util.ArrayList;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author Administrator
 */
public class PaidController extends HttpServlet {

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
            HttpSession sespaid = request.getSession();
            ArrayList<Item> arrcart = (ArrayList<Item>) sespaid.getAttribute("giohang");
            User u = (User) sespaid.getAttribute("name");
            if (u != null) {
                if (arrcart.size() > 0) {
                    int total = 0;
                    for (int i = 0; i < arrcart.size(); i++) {
                        Product pro = arrcart.get(i).getP();
                        total += pro.getGiatien() * arrcart.get(i).getSoluong();
                    }
                    Invoice in = new Invoice();
                    in.setManguoidung(u.getManguoidung());
                    in.setMatrangthai(1);
                    in.setTongtien(total);
                    in.setNgaydathang(new Timestamp(System.currentTimeMillis()));
                    int kq = InvoiceDAO.addInvoice(in);
                    if (kq != 0) {
                        //them thanh cong
                        int madonhang = InvoiceDAO.getInvoiceID();
                        for (int i = 0; i < arrcart.size(); i++) {
                            DetailInvoice detailin = new DetailInvoice();
                            detailin.setMadonhang(madonhang);
                            detailin.setMasanpham(arrcart.get(i).getP().getMasanpham());
                            detailin.setSoluong(arrcart.get(i).getSoluong());
                            DetailInvoiceDAO.addDetailInvoice(detailin);
                        }
                        sespaid.setAttribute("giohang", null);
                        request.getRequestDispatcher("/cart.jsp").forward(request, response);
                    }
                }
            } else {
                response.sendRedirect("login.jsp");
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
