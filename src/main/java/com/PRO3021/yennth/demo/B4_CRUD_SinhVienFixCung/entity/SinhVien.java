package com.PRO3021.yennth.demo.B4_CRUD_SinhVienFixCung.entity;

import jakarta.validation.constraints.Min;
import jakarta.validation.constraints.NotEmpty;
import jakarta.validation.constraints.NotNull;
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

    @NotEmpty(message = "Dien mssv")
    private String mssv;

    @NotEmpty(message = "Dien ten")
    private String ten;

    @Min(20)
    @NotNull(message = "Dien tuoi")
    private Integer tuoi;

    @NotEmpty(message = "Dien dia chi")
    private String diaChi;

   @NotNull(message = "Chon gioi tinh")
    private Boolean gioiTinh;

}
