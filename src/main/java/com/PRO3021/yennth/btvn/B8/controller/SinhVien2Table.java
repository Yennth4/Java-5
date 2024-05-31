package com.PRO3021.yennth.btvn.B8.controller;

import com.PRO3021.yennth.btvn.B8.repository.ISinhVien;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class SinhVien2Table {

    @Autowired
    private ISinhVien service;

    @GetMapping("/lop-hoc/sinh-vien")
    public String hienThiSinhVien(Model model) {
        model.addAttribute("listSV" , service.findAll());
        return "/btvn/B8/sinhviens";
    }


}
