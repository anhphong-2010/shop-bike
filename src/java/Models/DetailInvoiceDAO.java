/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Models;

import Utils.DB_Connection;
import com.mysql.jdbc.Connection;
import java.sql.Statement;

/**
 *
 * @author Administrator
 */
public class DetailInvoiceDAO {
    public static int addDetailInvoice(DetailInvoice detailin){
        int kq = 0;
        try {
            Connection con = DB_Connection.getConnection();
            Statement stm = con.createStatement();
            kq = stm.executeUpdate("INSERT INTO chitietdonhang (MaDonHang, MaSanPham , SoLuong) VALUES ('" + detailin.getMadonhang()+ "', '" + detailin.getMasanpham()+ "', '" + detailin.getSoluong()+ "')");
        } catch (Exception ex) {

        }
        return kq;
    }
}
