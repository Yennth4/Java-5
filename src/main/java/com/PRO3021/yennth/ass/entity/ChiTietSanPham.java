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
@Table(name = "ChiTietSP")
@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor
@Builder
@ToString

public class ChiTietSanPham {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer id;

    @ManyToOne
    @JoinColumn(name = "IdSP", referencedColumnName = "id")
    private SanPham sanPham;

    @ManyToOne
    @JoinColumn(name = "IdMauSac", referencedColumnName = "id")
    private MauSac mauSac;

    @ManyToOne
    @JoinColumn(name = "IdDongSP", referencedColumnName = "id")
    private DongSanPham dongSanPham;

    @Column(name = "NamBH")
    private Integer namBH;

    @Column(name = "MoTa")
    private String moTa;

    @Column(name = "SoLuongTon")
    private Integer soLuongTon;

    @Column(name = "GiaNhap")
    private Integer giaNhap;

    @Column(name = "GiaBan")
    private Integer giaBan;

}
