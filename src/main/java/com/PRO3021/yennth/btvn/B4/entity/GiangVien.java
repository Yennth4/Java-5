package com.PRO3021.yennth.btvn.B4.entity;

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

    private String id;

    private String ma;

    private String ten;

    private Integer tuoi;

    private Boolean gioiTinh;

    private String diaChi;
}
