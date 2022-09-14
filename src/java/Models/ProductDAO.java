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
public class ProductDAO {
    public static ArrayList<Product> getProduct() {
        ArrayList<Product> arrsanpham = new ArrayList<Product>();
        try{
            Connection con = DB_Connection.getConnection();
            Statement stm = con.createStatement();
            ResultSet rs = stm.executeQuery("SELECT * FROM sanpham ");
            while(rs.next()){
                Product pro = new Product();
                pro.setMasanpham(rs.getInt("MaSanPham"));
                pro.setTensanpham(rs.getString("TenSanPham"));
                pro.setTenthuonghieu(rs.getString("TenThuongHieu"));
                pro.setGiatien(rs.getInt("GiaTien"));
                pro.setMaloaisanpham(rs.getInt("MaLoaiSanPham"));
                pro.setSoluong(rs.getInt("SoLuong"));
                pro.setMota(rs.getString("MoTa"));
                pro.setHinhanhsanpham(rs.getString("HinhAnhSanPham"));
                pro.setHinhanhto1(rs.getString("HinhAnhTo1"));
                pro.setHinhanhto2(rs.getString("HinhAnhTo2"));
                pro.setHinhanhto3(rs.getString("HinhAnhTo3"));
                pro.setHinhanhnho1(rs.getString("HinhAnhNho1"));
                pro.setHinhanhnho2(rs.getString("HinhAnhNho2"));
                pro.setHinhanhnho3(rs.getString("HinhAnhNho3"));
                pro.setMausac(rs.getString("MauSac"));
                pro.setKichthuoc(rs.getString("KichThuoc"));
                pro.setTrongluong(rs.getString("TrongLuong"));
                pro.setKhung(rs.getString("Khung"));
                pro.setBanhxe(rs.getString("BanhXe"));
                pro.setPhanh(rs.getString("Phanh"));
                arrsanpham.add(pro);
            }
        }catch(Exception ex){
            
        }
        return arrsanpham;
    }
    public static ArrayList<Product> getAllProduct(int trangbatdau, int tong) {
        ArrayList<Product> arrsanpham = new ArrayList<Product>();
        try{
            Connection con = DB_Connection.getConnection();
            Statement stm = con.createStatement();
            trangbatdau = trangbatdau -1;
            ResultSet rs = stm.executeQuery("SELECT * FROM sanpham limit "+trangbatdau+","+tong+"");
            while(rs.next()){
                Product pro = new Product();
                pro.setMasanpham(rs.getInt("MaSanPham"));
                pro.setTensanpham(rs.getString("TenSanPham"));
                pro.setTenthuonghieu(rs.getString("TenThuongHieu"));
                pro.setGiatien(rs.getInt("GiaTien"));
                pro.setMaloaisanpham(rs.getInt("MaLoaiSanPham"));
                pro.setSoluong(rs.getInt("SoLuong"));
                pro.setMota(rs.getString("MoTa"));
                pro.setHinhanhsanpham(rs.getString("HinhAnhSanPham"));
                pro.setHinhanhto1(rs.getString("HinhAnhTo1"));
                pro.setHinhanhto2(rs.getString("HinhAnhTo2"));
                pro.setHinhanhto3(rs.getString("HinhAnhTo3"));
                pro.setHinhanhnho1(rs.getString("HinhAnhNho1"));
                pro.setHinhanhnho2(rs.getString("HinhAnhNho2"));
                pro.setHinhanhnho3(rs.getString("HinhAnhNho3")); 
                pro.setMausac(rs.getString("MauSac"));
                pro.setKichthuoc(rs.getString("KichThuoc"));
                pro.setTrongluong(rs.getString("TrongLuong"));
                pro.setKhung(rs.getString("Khung"));
                pro.setBanhxe(rs.getString("BanhXe"));
                pro.setPhanh(rs.getString("Phanh"));
                arrsanpham.add(pro);
            }
        }catch(Exception ex){
            
        }
        return arrsanpham;
    }
    public static ArrayList<Product> getProductByCategoryID(int maloaisanpham) {
        ArrayList<Product> arrsanpham = new ArrayList<>();
        try{
            Connection con = DB_Connection.getConnection();
            Statement stm = con.createStatement();
            ResultSet rs = stm.executeQuery("SELECT * FROM sanpham WHERE MaLoaiSanPham ='" + maloaisanpham + "'");
            while(rs.next()){
                Product pro = new Product();
                pro.setMasanpham(rs.getInt("MaSanPham"));
                pro.setTensanpham(rs.getString("TenSanPham"));
                pro.setTenthuonghieu(rs.getString("TenThuongHieu"));
                pro.setGiatien(rs.getInt("GiaTien"));
                pro.setMaloaisanpham(rs.getInt("MaLoaiSanPham"));
                pro.setSoluong(rs.getInt("SoLuong"));
                pro.setMota(rs.getString("MoTa"));
                pro.setHinhanhsanpham(rs.getString("HinhAnhSanPham"));
                pro.setHinhanhto1(rs.getString("HinhAnhTo1"));
                pro.setHinhanhto2(rs.getString("HinhAnhTo2"));
                pro.setHinhanhto3(rs.getString("HinhAnhTo3"));
                pro.setHinhanhnho1(rs.getString("HinhAnhNho1"));
                pro.setHinhanhnho2(rs.getString("HinhAnhNho2"));
                pro.setHinhanhnho3(rs.getString("HinhAnhNho3"));
                pro.setMausac(rs.getString("MauSac"));
                pro.setKichthuoc(rs.getString("KichThuoc"));
                pro.setTrongluong(rs.getString("TrongLuong"));
                pro.setKhung(rs.getString("Khung"));
                pro.setBanhxe(rs.getString("BanhXe"));
                pro.setPhanh(rs.getString("Phanh"));
                arrsanpham.add(pro);
            }
        }catch(Exception ex){
            
        }
        return arrsanpham;
    }
    public static ArrayList<Product> getLimitProductByPage(int maloaisanpham, int trangbatdau, int tong){
        ArrayList<Product> arrsanpham = new ArrayList<Product>();
        try{
            Connection con = DB_Connection.getConnection();
            Statement stm = con.createStatement();
            trangbatdau = trangbatdau -1;
            ResultSet rs = stm.executeQuery("SELECT * FROM sanpham WHERE MaLoaiSanPham ='" + maloaisanpham + "' limit "+trangbatdau+","+tong+"");
            while(rs.next()){
                Product pro = new Product();
                pro.setMasanpham(rs.getInt("MaSanPham"));
                pro.setTensanpham(rs.getString("TenSanPham"));
                pro.setTenthuonghieu(rs.getString("TenThuongHieu"));
                pro.setGiatien(rs.getInt("GiaTien"));
                pro.setMaloaisanpham(rs.getInt("MaLoaiSanPham"));
                pro.setSoluong(rs.getInt("SoLuong"));
                pro.setMota(rs.getString("MoTa"));
                pro.setHinhanhsanpham(rs.getString("HinhAnhSanPham"));
                pro.setHinhanhto1(rs.getString("HinhAnhTo1"));
                pro.setHinhanhto2(rs.getString("HinhAnhTo2"));
                pro.setHinhanhto3(rs.getString("HinhAnhTo3"));
                pro.setHinhanhnho1(rs.getString("HinhAnhNho1"));
                pro.setHinhanhnho2(rs.getString("HinhAnhNho2"));
                pro.setHinhanhnho3(rs.getString("HinhAnhNho3"));
                pro.setMausac(rs.getString("MauSac"));
                pro.setKichthuoc(rs.getString("KichThuoc"));
                pro.setTrongluong(rs.getString("TrongLuong"));
                pro.setKhung(rs.getString("Khung"));
                pro.setBanhxe(rs.getString("BanhXe"));
                pro.setPhanh(rs.getString("Phanh"));
                arrsanpham.add(pro);
            }
        }catch(Exception ex){
            
        }
        return arrsanpham;  
    }
    public static Product getProductById(int masanpham){
        Product pro = new Product();
        try {
            Connection con = DB_Connection.getConnection();
            Statement stm = con.createStatement();
            ResultSet rs = stm.executeQuery("SELECT * FROM sanpham WHERE MaSanPham = '" + masanpham + "'");
            while (rs.next()) {
                pro.setMasanpham(rs.getInt("MaSanPham"));
                pro.setTensanpham(rs.getString("TenSanPham"));
                pro.setTenthuonghieu(rs.getString("TenThuongHieu"));
                pro.setGiatien(rs.getInt("GiaTien"));
                pro.setMaloaisanpham(rs.getInt("MaLoaiSanPham"));
                pro.setSoluong(rs.getInt("SoLuong"));
                pro.setMota(rs.getString("MoTa"));
                pro.setHinhanhsanpham(rs.getString("HinhAnhSanPham"));
                pro.setHinhanhto1(rs.getString("HinhAnhTo1"));
                pro.setHinhanhto2(rs.getString("HinhAnhTo2"));
                pro.setHinhanhto3(rs.getString("HinhAnhTo3"));
                pro.setHinhanhnho1(rs.getString("HinhAnhNho1"));
                pro.setHinhanhnho2(rs.getString("HinhAnhNho2"));
                pro.setHinhanhnho3(rs.getString("HinhAnhNho3"));
                pro.setMausac(rs.getString("MauSac"));
                pro.setKichthuoc(rs.getString("KichThuoc"));
                pro.setTrongluong(rs.getString("TrongLuong"));
                pro.setKhung(rs.getString("Khung"));
                pro.setBanhxe(rs.getString("BanhXe"));
                pro.setPhanh(rs.getString("Phanh"));
            }
        } catch (Exception ex) {
            System.out.println("Fail");
        }
        return pro;
    }
    public static int addProduct(Product pro) {
        //Connect database
        int kq = 0;
        try {
            Connection con = DB_Connection.getConnection();
            Statement stm = con.createStatement();
            String sql = "INSERT INTO sanpham (TenSanPham,GiaTien,MaLoaiSanPham,SoLuong,MoTa,HinhAnhSanPham,HinhAnhTo1,HinhAnhTo2,HinhAnhTo3,HinhAnhNho1,HinhAnhNho2,HinhAnhNho3, MauSac, KichThuoc,TrongLuong,Khung, BanhXe, Phanh) VALUE ('" + pro.getTensanpham()+ "', '" + pro.getGiatien()+ "', '" + pro.getMaloaisanpham()+ "', '"+pro.getSoluong()+"', '"+pro.getMota()+"', '"+pro.getHinhanhsanpham()+"','"+pro.getHinhanhto1()+"','"+pro.getHinhanhto2()+"','"+pro.getHinhanhto3()+"','"+pro.getHinhanhnho1()+"','"+pro.getHinhanhnho2()+"','"+pro.getHinhanhnho3()+"','"+pro.getMausac()+"','"+pro.getKichthuoc()+"','"+pro.getTrongluong()+"','"+pro.getKhung()+"','"+pro.getBanhxe()+"','"+pro.getPhanh()+"')";
            kq = stm.executeUpdate(sql);
        } catch (Exception ex) {

        }
        return kq;
    }
    public static int updateProduct(Product pro) {
        //Connect database
        int kq = 0;
        try {
            Connection con = DB_Connection.getConnection();
            Statement stm = con.createStatement();
            String sql = "UPDATE sanpham SET TenSanPham = '" + pro.getTensanpham()+ "', GiaTien = '" + pro.getGiatien()+ "',MaLoaiSanPham = '" + pro.getMaloaisanpham()+ "', SoLuong = '"+pro.getSoluong()+"', MoTa = '"+pro.getMota()+"',HinhAnhSanPham = '"+pro.getHinhanhsanpham()+"', HinhAnhTo1 ='"+pro.getHinhanhto1()+"',HinhAnhTo2 ='"+pro.getHinhanhto2()+"',HinhAnhTo3 ='"+pro.getHinhanhto3()+"',HinhAnhNho1 ='"+pro.getHinhanhnho1()+"', HinhAnhNho2 ='"+pro.getHinhanhnho2()+"',HinhAnhNho3 ='"+pro.getHinhanhnho3()+"',MauSac ='"+pro.getMausac()+"', KichThuoc ='"+pro.getKichthuoc()+"',TrongLuong ='"+pro.getTrongluong()+"',Khung ='"+pro.getKhung()+"',BanhXe ='"+pro.getBanhxe()+"',Phanh ='"+pro.getPhanh()+"'  WHERE MaSanPham = '" + pro.getMasanpham() +"'";
            kq = stm.executeUpdate(sql);
        } catch (Exception ex) {

        }
        return kq;
    }
    public static int deleteProduct(int masanpham) {
        int kq = 0;
        try {
            Connection con = DB_Connection.getConnection();
            Statement stm = con.createStatement();
            kq = stm.executeUpdate("DELETE FROM sanpham WHERE (`MaSanPham` = '" + masanpham + "')");
        } catch (Exception ex) {

        }
        return kq;
    }
}
