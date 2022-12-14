/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controllers;

import Models.User;
import Models.UserDAO;
import java.io.IOException;
import java.io.PrintWriter;
import java.net.URLEncoder;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author Dell
 */
public class UserController extends HttpServlet {

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
            String command = request.getParameter("command");
            switch (command) {
                case "login":                                        
                    String username = request.getParameter("name");
                    String password = request.getParameter("password");
                    User u = UserDAO.getnguoidung(username, password);
                    if (u != null) {
                        //dang nhap thanh cong
                        HttpSession session = request.getSession();
                        session.setAttribute("name", u);
                        String message = "login";
                        response.sendRedirect("/shopxedap/index.jsp?status=" + URLEncoder.encode(message, "UTF-8"));
                    } else {
                        //dang nhap that bai
                        String message = "falure";
                        response.sendRedirect("/shopxedap/login.jsp?status=" + URLEncoder.encode(message, "UTF-8"));
                    }
                    break;
                case "logout": {
                    HttpSession session = request.getSession();
                    session.setAttribute("name", null);
                    response.sendRedirect("/shopxedap/index.jsp");
                    break;
                }

                case "kichhoat": {
                    String user_name = request.getParameter("user");
                    int kq = UserDAO.checkActive(user_name);
                    if (kq != -1) {
                        // ?????i ac th??nh c??ng
                        response.sendRedirect("/shopxedap/index.jsp");
                    } else {
                        // that b???i
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
