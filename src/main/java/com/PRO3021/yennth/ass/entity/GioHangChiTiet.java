package com.PRO3021.yennth.ass.entity;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.ManyToOne;
import jakarta.persistence.Table;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

import java.sql.Date;

@Entity
@Table(name = "GioHangChiTiet")
@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor
@Builder
public class GioHangChiTiet {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer id;

    @ManyToOne
    @JoinColumn(name = "IdGioHang", referencedColumnName = "id")
    private GioHang gioHang;

    @ManyToOne
    @JoinColumn(name = "IdChiTietSP", referencedColumnName = "id")
    private ChiTietSanPham chiTietSanPham;

    @Column(name = "SoLuong")
    private Integer soLuong;

    @Column(name = "DonGia")
    private Integer donGia;

    @Column(name = "DonGiaKhiGiam")
    private Integer donGiaKhiGiam;

}
