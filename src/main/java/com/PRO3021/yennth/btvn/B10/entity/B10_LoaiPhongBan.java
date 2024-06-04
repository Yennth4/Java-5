package com.PRO3021.yennth.btvn.B10.entity;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;
import jakarta.persistence.UniqueConstraint;
import jakarta.validation.constraints.Min;
import jakarta.validation.constraints.NotBlank;
import jakarta.validation.constraints.NotNull;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

@Entity
@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor
@Builder
@ToString
@Table(name = "loai_phong_ban", uniqueConstraints = @UniqueConstraint(columnNames = "ma"))
public class B10_LoaiPhongBan {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer id;

    @NotBlank(message = "Ma khong de trong")
    private String ma;

    @NotBlank(message = "Ten khong de trong")
    private String ten;

    @NotNull(message = "So luong khong de trong")
    @Min(value = 2, message = "Nho nhat la 2")
    @Column(name = "so_luong")
    private Integer soLuong;

    @NotBlank(message = "Ghi chu khong de trong")
    @Column(name = "ghi_chu")
    private String ghiChu;

    @Column(name = "trang_thai")
    private Integer trangThai;
}
