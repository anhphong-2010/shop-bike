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
public class HistoryPaymentsDAO {
    public static ArrayList<HistoryPayments> getPayments(int manguoidung) {
        ArrayList<HistoryPayments> hp = new ArrayList<HistoryPayments>();
        try {
            Connection con = DB_Connection.getConnection();
            Statement stm = con.createStatement();
            ResultSet rs = stm.executeQuery("Select a.MaDonHang, count(MaChiTiet) as SoLuong, b.NgayDatHang From chitietdonhang a, donhang b Where a.MaDonHang = b.MaDonHang and b.MaNguoiDung = '" + manguoidung + "' Group by MaDonHang Order by b.NgayDatHang DESC");
            while (rs.next()) {
                HistoryPayments l = new HistoryPayments();
                l.setMadonhang(rs.getInt("MaDonHang"));
                l.setSoluong(rs.getInt("SoLuong"));
                l.setNgaydathang(rs.getTimestamp("NgayDatHang"));
                hp.add(l);
            }
        } catch (Exception ex) {

        }
        return hp;
    }
    
    public static ArrayList<HistoryPayments> getDetails(int madonhang) {
        ArrayList<HistoryPayments> hp = new ArrayList<HistoryPayments>();
        try {
            Connection con = DB_Connection.getConnection();
            Statement stm = con.createStatement();
            ResultSet rs = stm.executeQuery("Select a.TenSanPham, a.HinhAnhNho1,  c.SoLuong , (a.GiaTien * c.SoLuong) as TongTienTheoSanPham From sanpham a, chitietdonhang c Where a.MaSanPham = c.MaSanPham and MaDonHang='" + madonhang + "'");
            while (rs.next()) {
                HistoryPayments l = new HistoryPayments();
                l.setTensanpham(rs.getString("TenSanPham"));
                l.setTongtientheosanpham(rs.getString("TongTienTheoSanPham"));
                l.setHinhanhnho1(rs.getString("HinhAnhNho1"));
                l.setSoluong(rs.getInt("SoLuong"));
                hp.add(l);
            }
        } catch (Exception ex) {

        }
        return hp;
    }
    public static HistoryPayments statistical(int manguoidung) {
        HistoryPayments h = null;
        try {
            Connection con = DB_Connection.getConnection();
            Statement stm = con.createStatement();
            ResultSet rs = stm.executeQuery("Select count(a.MaDonHang) as SoTongDon, sum(a.TongTien) as TongTien, sum(b.SoLuong) as SoLuong From donhang a, chitietdonhang b Where MaNguoiDung = '" + manguoidung + "' and a.MaDonHang = b.MaDonHang Group by MaNguoiDung");
            if (rs.next()) {
                h = new HistoryPayments();
                h.setSoluong(rs.getInt("SoLuong"));
                h.setTongtientheosanpham(rs.getString("TongTien"));
                h.setTongdon(rs.getInt("SoTongDon"));
            }
        } catch (Exception ex) {
        }
        return h;
    }
}
