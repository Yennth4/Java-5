package com.PRO3021.yennth.btvn.B10.entity;

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
@Table(name = "phong_ban")
@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor
@Builder
@ToString
public class B10_PhongBan {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer id;

    @Column(name = "loai_phong_ban_id")
    private Integer loaiPhongBan;

    private String ma;

    private String ten;

    @Column(name = "so_luong_phong_ban")
    private Integer soLuongPhongBan;

    @Column(name = "so_luong_nhan_vien")
    private Integer soLuongNhanVien;

    @Column(name = "ghi_chu")
    private String ghiChu;

    @Column(name = "trang_thai")
    private Integer trangThai;
}
