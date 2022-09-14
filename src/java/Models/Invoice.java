/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Models;

import java.sql.Timestamp;

/**
 *
 * @author Administrator
 */
public class Invoice {
    int madonhang;
    Timestamp ngaydathang;
    int manguoidung;
    int tongtien;
    int matrangthai;

    public Invoice() {
    }

    public int getMadonhang() {
        return madonhang;
    }

    public void setMadonhang(int madonhang) {
        this.madonhang = madonhang;
    }

    public Timestamp getNgaydathang() {
        return ngaydathang;
    }

    public void setNgaydathang(Timestamp ngaydathang) {
        this.ngaydathang = ngaydathang;
    }

    public int getManguoidung() {
        return manguoidung;
    }

    public void setManguoidung(int manguoidung) {
        this.manguoidung = manguoidung;
    }

    public int getTongtien() {
        return tongtien;
    }

    public void setTongtien(int tongtien) {
        this.tongtien = tongtien;
    }

    public int getMatrangthai() {
        return matrangthai;
    }

    public void setMatrangthai(int matrangthai) {
        this.matrangthai = matrangthai;
    }
}