/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Models;

import Utils.DB_Connection;
import com.mysql.jdbc.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;

/**
 *
 * @author Dell
 */
public class UserDAO {

    public static int themnguoidung(User u) {
        //Connect database
        int kq = -1;
        try {
            Connection con = DB_Connection.getConnection();
            Statement stm = con.createStatement();
            String sql = "INSERT INTO nguoidung (TenDangNhap,MatKhau, NamSinh, SoDienThoai, Email, Active, Admin) VALUES ('" + u.getTendangnhap() + "', '" + u.getMatkhau() + "', '" + u.getNamsinh() + "', '" + u.getSodienthoai() + "', '" + u.getEmail() + "', '0', '0');";
            kq = stm.executeUpdate(sql);
            //Insert data to table nguoidung Connecting String
            //Insert into NguoiDung() values()
        } catch (Exception ex) {

        }
        return kq;
    }
    
    public static int checkActive(String username){
        int kq = -1;
        try {
            Connection con = DB_Connection.getConnection();
            Statement stm = con.createStatement();
            kq = stm.executeUpdate("UPDATE nguoidung SET Active = '1' WHERE TenDangNhap = '"+username+"'");
        } catch (Exception ex) {
            
        }
        return kq;
    }

    public static int suanguoidung(User u) {
        //Connect database
        int kq = -1;
        try {
            Connection con = DB_Connection.getConnection();
            Statement stm = con.createStatement();
            String sql = "UPDATE nguoidung SET NamSinh = '" + u.getNamsinh() + "', SoDienThoai = '" + u.getSodienthoai() + "',Email = '" + u.getEmail() + "' WHERE TenDangNhap = '" + u.getTendangnhap() + "' and '" + u.getMatkhau() + "'";
            kq = stm.executeUpdate(sql);
            //Insert data to table nguoidung Connecting String
            //Insert into NguoiDung() values()
        } catch (Exception ex) {

        }
        return kq;
    }

    public static User getnguoidung(String username, String password) {
        //Connect to database = connect String
        User u = null;
        try {
            Connection con = DB_Connection.getConnection();
            Statement stm = con.createStatement();
            String sql = "SELECT * FROM nguoidung where TenDangNhap='" + username + "' and MatKhau ='" + password + "'";
            ResultSet rs = stm.executeQuery(sql);
            if (rs.next()) {
                u = new User();
                u.setManguoidung(rs.getInt("MaNguoiDung"));
                u.setTendangnhap(rs.getString("TenDangNhap"));
                u.setMatkhau(rs.getString("MatKhau"));
                u.setNamsinh(rs.getInt("NamSinh"));
                u.setSodienthoai(rs.getString("SoDienThoai"));
                u.setEmail(rs.getString("Email"));
                u.setTrangthai(rs.getBoolean("Active"));
                u.setAdmin(rs.getBoolean("Admin"));
            }
        } catch (Exception ex) {

        }
        return u;
    }
    public static ArrayList<User> getallnguoidung() {
        //Connect to datab ase = connect String
        ArrayList<User> arrnguoidung = new ArrayList<User>();
        try {
            Connection con = DB_Connection.getConnection();
            Statement stm = con.createStatement();
            String sql = "SELECT * FROM nguoidung ";
            ResultSet rs = stm.executeQuery(sql);
            if (rs.next()) {
                User u = new User();
                u.setManguoidung(rs.getInt("MaNguoiDung"));
                u.setTendangnhap(rs.getString("TenDangNhap"));
                u.setMatkhau(rs.getString("MatKhau"));
                u.setNamsinh(rs.getInt("NamSinh"));
                u.setSodienthoai(rs.getString("SoDienThoai"));
                u.setEmail(rs.getString("Email"));
                u.setTrangthai(rs.getBoolean("Active"));
                u.setAdmin(rs.getBoolean("Admin"));
                arrnguoidung.add(u);
            }
        } catch (Exception ex) {
            
        }
        return arrnguoidung;
    }

    public static String checkUserNameIsExists(String userName) {
        //Connect to database = connect String
        String flag = "false"; // Not exists
        try {
            Connection con = DB_Connection.getConnection();
            Statement stm = con.createStatement();
            String sql = "SELECT * FROM nguoidung where TenDangNhap='" + userName + "'";
            ResultSet rs = stm.executeQuery(sql);
            if (rs.next()) {
                flag = "true";
            }
        } catch (Exception ex) {
        }
        return flag;
    }

    public static String checkPasswordIsExists(String password) {
        //Connect to database = connect String
        String flag = "false"; // Not exists
        try {
            Connection con = DB_Connection.getConnection();
            Statement stm = con.createStatement();
            String sql = "SELECT * FROM nguoidung where MatKhau='" + password + "'";
            ResultSet rs = stm.executeQuery(sql);
            if (rs.next()) {
                flag = "true";
            }
        } catch (Exception ex) {
        }
        return flag;
    }
}
