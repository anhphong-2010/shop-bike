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
 * @author chiki
 */
public class CommentRatingDAO {

    public static int themcomment(CommentRating cmtr) {
        //Connect database
        int kq = -1;
        try {
            Connection con = DB_Connection.getConnection();
            Statement stm = con.createStatement();
            String sql = "INSERT INTO danhgia (MaNguoiDung ,MaSanPham, GiaTri, DanhGia, ThoiGian) VALUES ('" + cmtr.getManguoidung()+ "', '" + cmtr.getMasanpham() + "', '" + cmtr.getGiatri() + "', '" + cmtr.getDanhgia()+"','"+cmtr.getThoigian()+"')";
            kq = stm.executeUpdate(sql);
            //Insert data to table danhgia Connecting String
            //Insert into DanhGia() values()
        } catch (Exception ex) {
            
        }
        return kq;
    }
    public static ArrayList<CommentRating> getComment(int masanpham) {
        ArrayList<CommentRating> arrcmtr = new ArrayList<CommentRating>();
        try {
            Connection con = DB_Connection.getConnection();
            Statement stm = con.createStatement();
            ResultSet rs = stm.executeQuery("SELECT a.GiaTri, a.DanhGia, b.TenDangNhap, a.ThoiGian FROM danhgia a, nguoidung b  WHERE MaSanPham = '"+masanpham+"' and a.MaNguoiDung = b.MaNguoiDung");
            while(rs.next()){
                CommentRating cmtr = new CommentRating();                
                cmtr.setTendangnhap(rs.getString("TenDangNhap"));                
                cmtr.setGiatri(rs.getInt("GiaTri"));
                cmtr.setDanhgia(rs.getString("DanhGia"));
                cmtr.setThoigian(rs.getTimestamp("ThoiGian"));
                arrcmtr.add(cmtr);
            }
        } catch (Exception ex) {

        }
        return arrcmtr;
    }
    public static float Overall(int masanpham) {
        float or = 0;
        try {
            Connection con = DB_Connection.getConnection();
            Statement stm = con.createStatement();
            ResultSet rs = stm.executeQuery("Select avg(GiaTri) as TrungBinh From DanhGia Where MaSanPham ='"+masanpham+"'");
            if (rs.next()) {
                or = rs.getFloat("TrungBinh");
            }
        } catch (Exception ex) {
        }
        return or;
    }
}
