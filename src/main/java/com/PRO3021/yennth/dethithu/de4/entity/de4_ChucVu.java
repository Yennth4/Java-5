package com.PRO3021.yennth.dethithu.de4.entity;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.OneToOne;
import jakarta.persistence.Table;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Entity
@Table(name = "chuc_vu")
@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
public class de4_ChucVu {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column
    private Integer id;

    @Column(name = "ten_chuc_vu")
    private String ten;

    @Column(name = "den_ngay")
    private String ngayDen;

    @Column(name = "ngay_bat_dau_ap_dung")
    private String ngayBatDau;

    @Column(name = "ghi_chu")
    private String ghiChu;

    @Column(name = "trang_thai")
    private String trangThai;

    @OneToOne
    @JoinColumn(name = "id_phong_ban")
    private de4_PhongBan phongBan;
}
