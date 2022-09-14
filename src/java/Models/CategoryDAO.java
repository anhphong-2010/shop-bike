/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Models;

import Utils.DB_Connection;
import com.mysql.jdbc.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;

/**
 *
 * @author Dell
 */
public class CategoryDAO {
    public static ArrayList<Category> getCategory(){
        ArrayList<Category> arrloai = new ArrayList<Category>();
        try{
            Connection con = DB_Connection.getConnection();
            Statement stm = con.createStatement();
            ResultSet rs = stm.executeQuery("SELECT * FROM loaisanpham");
            while (rs.next()) {
                Category c = new Category();
                c.setMaloaisanpham(rs.getInt("MaLoaiSanPham"));
                c.setTenloaisanpham(rs.getString("TenLoaiSanPham"));
                arrloai.add(c);
            }
        }catch(Exception ex)
        {
        
        }
        return arrloai;
    }
    public static ArrayList<Category> getCategoryCustom(){
        ArrayList<Category> arrloai = new ArrayList<Category>();
        try{
            Connection con = DB_Connection.getConnection();
            Statement stm = con.createStatement();
            ResultSet rs = stm.executeQuery("SELECT * FROM loaisanpham ORDER BY MaLoaiSanPham limit 1,3");
            while (rs.next()) {
                Category c = new Category();
                c.setMaloaisanpham(rs.getInt("MaLoaiSanPham"));
                c.setTenloaisanpham(rs.getString("TenLoaiSanPham"));
                arrloai.add(c);
            }
        }catch(Exception ex)
        {
        
        }
        return arrloai;
    }
}
