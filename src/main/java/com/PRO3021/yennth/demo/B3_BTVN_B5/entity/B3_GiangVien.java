package com.PRO3021.yennth.demo.B3_BTVN_B5.entity;

import jakarta.validation.constraints.Min;
import jakarta.validation.constraints.NotBlank;
import jakarta.validation.constraints.NotNull;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
public class B3_GiangVien {

    @NotBlank(message = "Mã không được để trống")
    private String ma;

    @NotBlank(message = "Tên không được để trống")
    private String ten;

    @NotNull(message = "Tuổi không được để trống")
    @Min(value = 25, message = "Tuổi phải lớn hơn hoặc bằng 25")
    private Integer tuoi;

    @NotBlank(message = "Địa chỉ không được để trống")
    private String diaChi;

}
