package com.PRO3021.yennth.btvn.B11.entity;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

@Entity
@Table(name = "tai_khoan_ngan_hang")
@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor
@Builder
@ToString
public class TKNH {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer id;

    private String ma;

    @Column(name = "ho_ten_chu_tai_khoan")
    private String hoTen;

    @Column(name = "so_tai_khoan")
    private String soTaiKhoan;

    @Column(name = "ten_ngan_hang")
    private String tenNganHang;

    @Column(name = "ten_chi_nhanh")
    private String tenChiNhanh;

    @Column(name = "dia_chi")
    private String diaChi;

    @Column(name = "ghi_chu")
    private String ghiChu;

    @Column(name = "trang_thai")
    private Integer trangThai;

}
