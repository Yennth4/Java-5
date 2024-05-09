package com.PRO3021.yennth.btvn.B1.controller;

import com.PRO3021.yennth.btvn.B1.request.LoginRequest;
import jakarta.validation.Valid;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

@Controller
public class LoginFormController {

    @GetMapping("/login1")
    public String hienThiForm(Model model) {
        model.addAttribute("loginRequest" , new LoginRequest());
        return "/btvn/B1/login-form";
    }

    @PostMapping("/home")
    public String ketQua(@Valid LoginRequest request , BindingResult result , Model model ) {
        // check empty
        if (result.hasErrors()){
            return "/btvn/B1/login-form";
        }
        model.addAttribute("username" , request.getUsername());
        model.addAttribute("password" , request.getPassword());
        return "/btvn/B1/ket-qua";
    }
}
