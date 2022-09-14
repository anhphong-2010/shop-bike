/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controllers;

import java.util.Properties;
import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;

/**
 *
 * @author Dell
 */
public class MailController {
    
    public static void sendmail(String email) {        
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
            message.setText("Chào n\n Vui lòng click link sau để kích hoạt tài khoản.\n Link kích hoạt: http://localhost:8080/shopxedap/RegisterController?command=kichhoat&tennguoidung=");
            Transport.send(message);
            System.out.println("Done");
        } catch (MessagingException e) {
            throw new RuntimeException(e);
        }
    }
}
