package com.PRO3021.yennth.btvn.B5.entity;

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
public class B5_GiangVien {

    @NotEmpty(message = "Nhap ma gv")
    private String maGV;

    @NotEmpty(message = "Nhap ten")
    private String ten;

    @NotNull(message = "Nhap tuoi")
    @Min(25)
    private Integer tuoi;

    @NotEmpty(message = "Nhap que quan")
    private String queQuan;

}
