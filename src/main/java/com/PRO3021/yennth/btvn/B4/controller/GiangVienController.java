package com.PRO3021.yennth.btvn.B4.controller;

import com.PRO3021.yennth.btvn.B4.entity.GiangVien;
import com.PRO3021.yennth.btvn.B4.service.GiangVienService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

@Controller
@RequestMapping("/giang-vien/")
public class GiangVienController {

    private GiangVienService service = new GiangVienService();

    @GetMapping("hien-thi")
    public String hienThi(Model model) {
        List<GiangVien> listGV = service.getAll();
        model.addAttribute("listGV" , listGV);
        return "/btvn/B4/giangviens";
    }

    @GetMapping("remove/{id}")
    public String xoaGV(@PathVariable String id) {
        service.xoa(id);
        return "redirect:/giang-vien/hien-thi";
    }
}
