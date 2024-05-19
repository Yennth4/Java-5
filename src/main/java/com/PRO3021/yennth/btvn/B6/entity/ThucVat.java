package com.PRO3021.yennth.btvn.B6.entity;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Getter
@Setter
@Builder
@NoArgsConstructor
@AllArgsConstructor
public class ThucVat {

    private Integer id;

    private String ten;

    private Integer tuoi;

    private String loaiCay;

    private Boolean gioiTinh;

    private String khuVuc;
}
