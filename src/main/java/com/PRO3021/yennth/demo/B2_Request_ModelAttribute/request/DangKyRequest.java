package com.PRO3021.yennth.demo.B2_Request_ModelAttribute.request;
import jakarta.validation.constraints.Min;
import jakarta.validation.constraints.NotEmpty;
import jakarta.validation.constraints.NotNull;
import jakarta.validation.constraints.Size;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor
public class DangKyRequest {

    @NotEmpty(message = "Dien ten")
    @Size(min = 5, message = "Tên quá ngắn")
    private String hoTen;

    //    @Pattern(regexp = "\\d") // Định dạng
    @Min(18)
    @NotNull
    private Integer tuoi;

    @NotEmpty(message = "Dien nganh hoc")
    private String nganhHoc;

    @NotEmpty(message = "Dien que quan")
    private String queQuan;

    @NotEmpty(message = "Dien mat khau")
    private String matKhau;

    @NotEmpty(message = "Dien confirm mat khau")
    private String confirmMatKhau;

}
