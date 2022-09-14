/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Models;

import java.sql.Timestamp;

/**
 *
 * @author pc
 */
public class HistoryPayments {
    int madonhang;
    int soluong;
    Timestamp ngaydathang;
    String tensanpham;
    String hinhanhnho1;
    String tongtientheosanpham;
    int tongdon;

    public HistoryPayments() {
    }

    public int getMadonhang() {
        return madonhang;
    }

    public void setMadonhang(int madonhang) {
        this.madonhang = madonhang;
    }

    public int getSoluong() {
        return soluong;
    }

    public void setSoluong(int soluong) {
        this.soluong = soluong;
    }

    public Timestamp getNgaydathang() {
        return ngaydathang;
    }

    public void setNgaydathang(Timestamp ngaydathang) {
        this.ngaydathang = ngaydathang;
    }

    public String getTensanpham() {
        return tensanpham;
    }

    public void setTensanpham(String tensanpham) {
        this.tensanpham = tensanpham;
    }

    public String getHinhanhnho1() {
        return hinhanhnho1;
    }

    public void setHinhanhnho1(String hinhanhnho1) {
        this.hinhanhnho1 = hinhanhnho1;
    }

    public String getTongtientheosanpham() {
        return tongtientheosanpham;
    }

    public void setTongtientheosanpham(String tongtientheosanpham) {
        this.tongtientheosanpham = tongtientheosanpham;
    }

    public int getTongdon() {
        return tongdon;
    }

    public void setTongdon(int tongdon) {
        this.tongdon = tongdon;
    }
}
