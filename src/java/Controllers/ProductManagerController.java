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
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


/**
 *
 * @author pc
 */
public class ProductManagerController extends HttpServlet {

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
            String cmd = request.getParameter("command");
            Product pro = new Product();
            switch(cmd){
                case "add" :
                    String tensanpham = request.getParameter("tensanpham");
                    int giatien = Integer.parseInt(request.getParameter("giatien"));
                    int maloaisanpham = Integer.parseInt(request.getParameter("maloaisanpham"));
                    int soluong = Integer.parseInt(request.getParameter("soluong"));
                    String mota = request.getParameter("mota");
                    String hinhanhsanpham = request.getParameter("hinhanhsanpham");
                    String hinhanhto1 = request.getParameter("hinhanhto1");
                    String hinhanhto2 = request.getParameter("hinhanhto2");
                    String hinhanhto3 = request.getParameter("hinhanhto3");
                    String hinhanhnho1 = request.getParameter("hinhanhnho1");
                    String hinhanhnho2 = request.getParameter("hinhanhnho2");
                    String hinhanhnho3 = request.getParameter("hinhanhnho3");
                    String tenthuonghieu = request.getParameter("tenthuonghieu");
                    String mausac = request.getParameter("mausac");
                    String khung = request.getParameter("khung");
                    String trongluong = request.getParameter("trongluong");
                    String kichthuoc = request.getParameter("kichthuoc");
                    String banhxe = request.getParameter("banhxe");
                    String phanh = request.getParameter("phanh");
                    
                    pro.setTensanpham(tensanpham);
                    pro.setGiatien(giatien);
                    pro.setMaloaisanpham(maloaisanpham);
                    pro.setSoluong(soluong);
                    pro.setMota(mota);
                    pro.setHinhanhsanpham(hinhanhsanpham);
                    pro.setHinhanhto1(hinhanhto1);
                    pro.setHinhanhto2(hinhanhto2);
                    pro.setHinhanhto3(hinhanhto3);
                    pro.setHinhanhnho1(hinhanhnho1);
                    pro.setHinhanhnho2(hinhanhnho2);
                    pro.setHinhanhnho3(hinhanhnho3);
                    pro.setTenthuonghieu(tenthuonghieu);
                    pro.setMausac(mausac);
                    pro.setKhung(khung);
                    pro.setTrongluong(trongluong);
                    pro.setKichthuoc(kichthuoc);
                    pro.setBanhxe(banhxe);
                    pro.setPhanh(phanh);
                    
                    int kqadd = ProductDAO.addProduct(pro);
                    if (kqadd != 0) {
                        response.sendRedirect("/shopxedap/admin/tables.jsp");
                    }
                    break;
                case "edit":
                    int ctmasanpham = Integer.parseInt(request.getParameter("masanpham"));
                    String cttensanpham = request.getParameter("tensanpham");
                    int ctgiatien = Integer.parseInt(request.getParameter("giatien"));
                    //int ctmaloaisanpham = Integer.parseInt(1);
                    int ctsoluong = Integer.parseInt(request.getParameter("soluong"));
                    String ctmota = request.getParameter("mota");
                    String cthinhanhsanpham = request.getParameter("hinhanhsanpham");
                    String cthinhanhto1 = request.getParameter("hinhanhto1");
                    String cthinhanhto2 = request.getParameter("hinhanhto2");
                    String cthinhanhto3 = request.getParameter("hinhanhto3");
                    String cthinhanhnho1 = request.getParameter("hinhanhnho1");
                    String cthinhanhnho2 = request.getParameter("hinhanhnho2");
                    String cthinhanhnho3 = request.getParameter("hinhanhnho3");
                    String cttenthuonghieu = request.getParameter("tenthuonghieu");
                    String ctmausac = request.getParameter("mausac");
                    String ctkhung = request.getParameter("khung");
                    String cttrongluong = request.getParameter("trongluong");
                    String ctkichthuoc = request.getParameter("kichthuoc");
                    String ctbanhxe = request.getParameter("banhxe");
                    String ctphanh = request.getParameter("phanh");
                    
                    pro.setMasanpham(ctmasanpham);
                    pro.setTensanpham(cttensanpham);
                    pro.setGiatien(ctgiatien);
                    pro.setMaloaisanpham(1);
                    pro.setSoluong(ctsoluong);
                    pro.setMota(ctmota);
                    pro.setHinhanhsanpham(cthinhanhsanpham);
                    pro.setHinhanhto1(cthinhanhto1);
                    pro.setHinhanhto2(cthinhanhto2);
                    pro.setHinhanhto3(cthinhanhto3);
                    pro.setHinhanhnho1(cthinhanhnho1);
                    pro.setHinhanhnho2(cthinhanhnho2);
                    pro.setHinhanhnho3(cthinhanhnho3);
                    pro.setTenthuonghieu(cttenthuonghieu);
                    pro.setMausac(ctmausac);
                    pro.setKhung(ctkhung);
                    pro.setTrongluong(cttrongluong);
                    pro.setKichthuoc(ctkichthuoc);
                    pro.setBanhxe(ctbanhxe);
                    pro.setPhanh(ctphanh);
                    
                    int kq = ProductDAO.updateProduct(pro);
                    if(kq != 0 ){
                        response.sendRedirect("/shopxedap/admin/tables.jsp");
                    }
                break;
                case "delete" :
                    int deleteidpro = Integer.parseInt(request.getParameter("masanpham"));
                    int kqdeletepro = ProductDAO.deleteProduct(deleteidpro);
                    if(kqdeletepro != 0){
                        response.sendRedirect("/shopxedap/admin/tables.jsp");
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
