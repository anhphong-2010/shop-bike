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
import java.util.Properties;
import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author Dell
 */
public class RegisterController extends HttpServlet {

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
            String name = request.getParameter("userName");
            String email = request.getParameter("email");
            String password = request.getParameter("password");
            String confirmpassword = request.getParameter("confirmpassword");
            String sodienthoai = request.getParameter("sodienthoai");
            String namsinh = request.getParameter("namsinh").replaceAll("\\D", "");
            Integer iNamSinh = Integer.parseInt(namsinh);
            User u = new User();
            u.setTendangnhap(name);
            u.setEmail(email);
            u.setMatkhau(password);
            u.setSodienthoai(sodienthoai);
            u.setNamsinh(iNamSinh);
            u.setTrangthai(Boolean.FALSE);
            String op = request.getParameter("option");
            if (op != null && op.equals("register")) {
                int kq = UserDAO.themnguoidung(u);
                if (kq != 0) {
                    response.sendRedirect("/shopxedap/index.jsp");
                    sendmail(name, email);
                } else {
                    response.sendRedirect("/shopxedap/registration.jsp");
                }
            }
            if (op != null && op.equals("edit")) {
                int kq = UserDAO.suanguoidung(u);
                if (kq != 0) {
                    HttpSession ses1 = request.getSession();
                    ses1.setAttribute("userName", null);
                    u.setTrangthai(Boolean.TRUE);
                    HttpSession ses2 = request.getSession();
                    ses2.setAttribute("name", u);
                    response.sendRedirect("/shopxedap/index.jsp");
                } else {
                    response.sendRedirect("/shopxedap/editinformation.jsp");
                }
            }
        }
    }

    public static void sendmail(String user, String email) {
        final String username = "anhphongnw.2010@gmail.com";
        final String password = "anhhungvt";

        Properties prop = new Properties();
        prop.put("mail.smtp.host", "smtp.gmail.com");
        prop.put("mail.smtp.port", "587");
        prop.put("mail.smtp.auth", "true");
        prop.put("mail.smtp.starttls.enable", "true");

        Session session21 = Session.getInstance(prop,
                new javax.mail.Authenticator() {
            protected PasswordAuthentication getPasswordAuthentication() {
                return new PasswordAuthentication(username, password);
            }
        });
        try {
            Message message = new MimeMessage(session21);
            message.setFrom(new InternetAddress("username"));
            message.setRecipients(Message.RecipientType.TO,
                    InternetAddress.parse(email));
            message.setSubject("Activate Account");
            message.setText("Hi " + user + " \n \n Please check link below to activate your account.\n Link : http://localhost:8084/shopxedap/UserController?command=kichhoat&user=" +user);
            Transport.send(message);
            System.out.println("Done");
        } catch (MessagingException e) {
            throw new RuntimeException(e);
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
