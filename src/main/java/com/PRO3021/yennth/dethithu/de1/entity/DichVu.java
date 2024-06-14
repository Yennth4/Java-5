package com.PRO3021.yennth.dethithu.de1.entity;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.ManyToOne;
import jakarta.persistence.Table;
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
@Table(name = "dich_vu")
public class DichVu {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer id;

    @NotBlank(message = "Ten khong de trong")
    @Column(name = "ten_dich_vu")
    private String ten;

    @ManyToOne
    @JoinColumn(name = "id_loai_dich_vu" , referencedColumnName = "id")
    private LoaiDichVu loaiDichVu;

    @NotBlank(message = "Don vi khong de trong")
    @Column(name = "don_vi_tien")
    private String donViTien;

    @NotNull(message = "Don gia khong de trong")
    @Min(10)
    @Column(name = "don_gia")
    private Double donGia;
}
