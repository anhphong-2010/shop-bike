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
 * @author pc
 */
public class UserBestBuyDAO {

    public static ArrayList<UserBestBuy> getdata() {
        ArrayList<UserBestBuy> nd = new ArrayList<UserBestBuy>();
        try {
            Connection con = DB_Connection.getConnection();
            Statement stm = con.createStatement();
            ResultSet rs = stm.executeQuery("Select a.MaNguoiDung, c.TenDangNhap, c.SoDienThoai, sum(TongTien) as Tong, sum(b.SoLuong) as SL From donhang a, chitietdonhang b, nguoidung c Where a.MaDonHang = b.MaDonHang and c.MaNguoiDung = a.MaNguoiDung Group by a.MaNguoiDung LIMIT 5");
            while (rs.next()) {
                UserBestBuy l = new UserBestBuy();
                l.setSodienthoai(rs.getString("SoDienThoai"));
                l.setTendangnhap(rs.getString("TenDangNhap"));
                l.setSoluong(rs.getInt("SL"));
                l.setTongtien(rs.getLong("Tong"));
                l.setManguoidung(rs.getInt("MaNguoiDung"));
                nd.add(l);
            }
        } catch (Exception ex) {

        }
        return nd;
    }
}
