package com.PRO3021.yennth.btvn.B4.entity;

import jakarta.validation.constraints.Min;
import jakarta.validation.constraints.NotEmpty;
import jakarta.validation.constraints.NotNull;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@NoArgsConstructor
@AllArgsConstructor
@Getter
@Setter
@Builder
public class GiangVien {

    @NotEmpty(message = "Nhap id")
    private String id;

    @NotEmpty(message = "Nhap ma")
    private String ma;

    @NotEmpty(message = "Nhap ten")
    private String ten;

    @Min(20)
    @NotNull(message = "Nhap so tuoi")
    private Integer tuoi;

    @NotNull(message = "Chon gioi tinh")
    private Boolean gioiTinh;

    @NotEmpty(message = "Nhap dia chi")
    private String diaChi;
}
