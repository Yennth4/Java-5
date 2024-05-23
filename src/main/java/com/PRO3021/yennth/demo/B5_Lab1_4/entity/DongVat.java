package com.PRO3021.yennth.demo.B5_Lab1_4.entity;

import jakarta.validation.constraints.Min;
import jakarta.validation.constraints.NotBlank;
import jakarta.validation.constraints.NotNull;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor
@Builder
public class DongVat {

    @NotBlank(message = "Dien ma")
    private String ma;

    @NotBlank(message = "Dien ten")
    private String ten;

    @NotNull(message = "Chon gioi tinh")
    private Boolean gioiTinh;

    @NotNull(message = "Dien can nang")
    @Min(value = 1 , message = "Can nang phai lon hon 0")
    private Double canNang;

    @NotNull(message = "Chon khu vuc")
    private String khuVuc;
}
