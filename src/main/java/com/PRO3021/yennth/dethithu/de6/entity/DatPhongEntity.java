package com.PRO3021.yennth.dethithu.de6.entity;

import jakarta.persistence.Basic;
import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.Id;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.ManyToOne;
import jakarta.persistence.Table;

import java.sql.Date;
import java.util.Objects;

@Entity
@Table(name = "dat_phong", schema = "dbo", catalog = "SOF3021_Final")
public class DatPhongEntity {
    private int id;
    private String ghiChu;
    private String maDatPhong;
    private Integer soLuongKhach;
    private Integer soLuongPhongDat;
    private Integer thoiGianLuuTru;

    @ManyToOne
    @JoinColumn(name = "id_loai_phong", referencedColumnName = "id")
    private LoaiPhongEntity loaiPhong;

    @Id
    @Column(name = "id")
    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    @Basic
    @Column(name = "ghi_chu")
    public String getGhiChu() {
        return ghiChu;
    }

    public void setGhiChu(String ghiChu) {
        this.ghiChu = ghiChu;
    }

    @Basic
    @Column(name = "ma_dat_phong")
    public String getMaDatPhong() {
        return maDatPhong;
    }

    public void setMaDatPhong(String maDatPhong) {
        this.maDatPhong = maDatPhong;
    }

    @Basic
    @Column(name = "so_luong_khach")
    public Integer getSoLuongKhach() {
        return soLuongKhach;
    }

    public void setSoLuongKhach(Integer soLuongKhach) {
        this.soLuongKhach = soLuongKhach;
    }

    @Basic
    @Column(name = "so_luong_phong_dat")
    public Integer getSoLuongPhongDat() {
        return soLuongPhongDat;
    }

    public void setSoLuongPhongDat(Integer soLuongPhongDat) {
        this.soLuongPhongDat = soLuongPhongDat;
    }

    @Basic
    @Column(name = "thoi_gian_luu_tru")
    public Integer getThoiGianLuuTru() {
        return thoiGianLuuTru;
    }

    public void setThoiGianLuuTru(Integer thoiGianLuuTru) {
        this.thoiGianLuuTru = thoiGianLuuTru;
    }

    public LoaiPhongEntity getLoaiPhong() {
        return loaiPhong;
    }

    public void setLoaiPhong(LoaiPhongEntity loaiPhong) {
        this.loaiPhong = loaiPhong;
    }
}
