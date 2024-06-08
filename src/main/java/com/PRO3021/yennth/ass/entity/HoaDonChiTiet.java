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

@Entity
@Table(name = "HoaDonChiTiet")
@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor
@Builder
@ToString

public class HoaDonChiTiet {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer id;

    @ManyToOne
    @JoinColumn(name = "IdHoaDon" , referencedColumnName = "id")
    private HoaDon hoaDon;

    @ManyToOne
    @JoinColumn(name = "IdGioHang" , referencedColumnName = "id")
    private GioHang gioHang;

    @ManyToOne
    @JoinColumn(name = "IdChiTietSP" , referencedColumnName = "id")
    private ChiTietSanPham chiTietSanPham;

    @Column(name = "SoLuong")
    private Integer soLuong;

    @Column(name = "DonGia")
    private Integer donGia;
}
