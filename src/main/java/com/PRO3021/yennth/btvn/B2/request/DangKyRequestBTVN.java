package com.PRO3021.yennth.btvn.B2.request;
import jakarta.validation.constraints.Min;
import jakarta.validation.constraints.NotEmpty;
import jakarta.validation.constraints.NotNull;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@AllArgsConstructor
@NoArgsConstructor
@Getter
@Setter
public class DangKyRequestBTVN {

    @NotEmpty(message = "Dien mssv")
    private String mssv;

    @NotEmpty(message = "Dien mssv")
    private String hoTen;

    @Min(18)
    @NotNull
    private Integer tuoi;

//    @NotEmpty(message = "Dien gioiTinh")
    private String gioiTinh;

//    @NotEmpty(message = "Dien kyHoc")
    private String kyHoc;

    @NotEmpty(message = "Dien nganhHoc")
    private String nganhHoc;

    @NotEmpty(message = "Dien queQuan")
    private String queQuan;

    @NotEmpty(message = "Dien matKhau")
    private String matKhau;

    @NotEmpty(message = "Dien cfMatKhau")
    private String cfMatKhau;
}
