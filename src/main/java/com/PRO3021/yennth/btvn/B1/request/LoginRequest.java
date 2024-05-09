package com.PRO3021.yennth.btvn.B1.request;

import jakarta.validation.constraints.NotEmpty;
import jakarta.validation.constraints.Pattern;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor
public class LoginRequest {

    @NotEmpty(message = "Username khong duoc de trong")
    @Pattern(regexp = "HangNT169" , message = "User khong chinh xac")
    private String username;

    @NotEmpty(message = "Password khong duoc de trong")
    @Pattern(regexp = "123456" , message = "Password khong chinh xac")

    private String password;

}
