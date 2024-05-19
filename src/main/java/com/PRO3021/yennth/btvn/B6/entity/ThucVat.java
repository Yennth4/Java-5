package com.PRO3021.yennth.btvn.B6.entity;
import jakarta.validation.constraints.Min;
import jakarta.validation.constraints.NotEmpty;
import jakarta.validation.constraints.NotNull;
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

    @NotNull(message = "Dien id")
    private Integer id;

    @NotEmpty(message = "Dien ten")
    private String ten;

    @NotNull(message = "Dien tuoi")
    @Min(value = 18 , message = "Tuoi phai nguyen duong va lon hon 18")
    private Integer tuoi;

    @NotEmpty(message = "Dien loai cay")
    private String loaiCay;

    @NotNull(message = "Chon gioi tinh")
    private Boolean gioiTinh;

    @NotEmpty(message = "Dien khu vuc")
    private String khuVuc;

}
