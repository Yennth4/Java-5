package com.PRO3021.yennth.btvn.B2.controller;

import com.PRO3021.yennth.btvn.B2.request.DangKyRequestBTVN;
import jakarta.validation.Valid;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

@Controller
public class DangKyControllerBTVN {

    @GetMapping("dang-ky2")
    public String hienThi(Model model) {
        model.addAttribute("dangKyRequestBTVN" , new DangKyRequestBTVN());
        return "/btvn/B2/dang-ky";
    }

    @PostMapping("ket-qua3")
    public String ketQua(Model model , @Valid DangKyRequestBTVN request , BindingResult result) {
        if (result.hasErrors()) {
            return "/btvn/B2/dang-ky";
        }

        model.addAttribute("mssv" , request.getMssv());
        model.addAttribute("hoTen" , request.getHoTen());
        model.addAttribute("tuoi" , request.getTuoi());
        model.addAttribute("gioiTinh" , request.getGioiTinh());
        model.addAttribute("kyHoc" , request.getKyHoc());
        model.addAttribute("nganhHoc" , request.getNganhHoc());
        model.addAttribute("queQuan" , request.getQueQuan());
        model.addAttribute("matKhau" , request.getMatKhau());
        model.addAttribute("cfMatKhau" , request.getCfMatKhau());
        return "/btvn/B2/ket-qua";
    }
}
