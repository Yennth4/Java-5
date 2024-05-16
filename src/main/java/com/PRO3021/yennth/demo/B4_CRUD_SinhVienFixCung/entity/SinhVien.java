package com.PRO3021.yennth.demo.B4_CRUD_SinhVienFixCung.entity;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

@AllArgsConstructor
@NoArgsConstructor
@Getter
@Setter
@Builder // tao contructor tuy y , tuy tham so
@ToString
public class SinhVien {

    private String mssv;

    private String ten;

    private Integer tuoi;

    private String diaChi;

    private Boolean gioiTinh;

}
