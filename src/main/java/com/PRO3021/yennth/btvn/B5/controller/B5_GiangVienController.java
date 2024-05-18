package com.PRO3021.yennth.btvn.B5.controller;

import com.PRO3021.yennth.btvn.B5.entity.B5_GiangVien;
import com.PRO3021.yennth.btvn.B5.service.B5_GiangVienService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.ArrayList;
import java.util.List;

@Controller
@RequestMapping("/giang-vien/B5/")
public class B5_GiangVienController {

    B5_GiangVienService service = new B5_GiangVienService();
    List<B5_GiangVien> list = new ArrayList<>();

    @GetMapping("hien-thi")
    public String hienThi(Model model) {
        list = service.getAll();
        model.addAttribute("giangVien" , list);
        return "/btvn/B5/giangviens";
    }

    @GetMapping("detail/{ma}")
    public String detail(@PathVariable String ma , Model model) {
        B5_GiangVien giangVien = service.detailGV(ma);
        model.addAttribute("gv1" , giangVien);
        return "/btvn/B5/giangviens";
    }

    @GetMapping("remove/{ma}")
    public String delete(@PathVariable String ma) {
        service.removeGV(ma);
        return "redirect:/giang-vien/B5/hien-thi";
    }

    @PostMapping("add")
    public String add(B5_GiangVien giangVien) {
        service.addGV(giangVien);
        return "redirect:/giang-vien/B5/hien-thi";
    }

    @PostMapping("update/{ma}")
    public String update(B5_GiangVien giangVien , @PathVariable String ma , Model model) {
        B5_GiangVien giangVien1 = service.detailGV(ma);
        model.addAttribute("gv1" , giangVien1);

        service.updateGV(giangVien);
        return "redirect:/giang-vien/B5/hien-thi";
    }

}
