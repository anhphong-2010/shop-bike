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

/**
 *
 * @author Administrator
 */
public class InvoiceDAO {
    public static int addInvoice(Invoice in){
        int kq = 0;
        try {
            Connection con = DB_Connection.getConnection();
            Statement stm = con.createStatement();
            kq = stm.executeUpdate("INSERT INTO donhang (NgayDatHang, MaNguoiDung , TongTien, MaTrangThai) VALUES ('" + in.getNgaydathang()+ "', '" + in.getManguoidung()+ "', '" + in.getTongtien()+ "', '" + in.getMatrangthai()+ "')");
        } catch (Exception ex) {

        }
        return kq;
    }
    public static int getInvoiceID(){
        int madonhang = 0;
        try {
            Connection con = DB_Connection.getConnection();
            Statement stm = con.createStatement();
            ResultSet rs = stm.executeQuery("SELECT * FROM donhang order by MaDonHang DESC limit 1");
            while (rs.next()) {
                madonhang = rs.getInt("MaDonHang");
            }
        } catch (Exception ex) {
        }
        return madonhang;
    }
}
