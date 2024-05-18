package com.PRO3021.yennth.btvn.B4.controller;

import com.PRO3021.yennth.btvn.B4.entity.GiangVien;
import com.PRO3021.yennth.btvn.B4.service.GiangVienService;
import jakarta.validation.Valid;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
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

    @GetMapping("view-add")
    public String viewAdd(Model model) {
        model.addAttribute("giangVien" , new GiangVien());
        return "/btvn/B4/add-giang-vien.jsp";
    }

    @GetMapping("view-update/{id}")
    public String viewUpdate(@PathVariable String id , Model model) {
        GiangVien giangVien = service.detail(id);
        model.addAttribute("gv1" , giangVien);
        model.addAttribute("giangVien" , new GiangVien());
        return "/btvn/B4/update-giang-vien";
    }

    @GetMapping("detail/{id}")
    public String detail(@PathVariable String id , Model model) {
        GiangVien giangVien = service.detail(id);
        model.addAttribute("gv1" , giangVien);
        return "/btvn/B4/detail-giang-vien";
    }

    @GetMapping("remove/{id}")
    public String xoaGV(@PathVariable String id) {
        service.xoa(id);
        return "redirect:/giang-vien/hien-thi";
    }

    @PostMapping("add")
    public String add(@Valid GiangVien giangVien , BindingResult result) {
        if (result.hasErrors()) {
            return "/btvn/B4/add-giang-vien.jsp";
        }

        service.add(giangVien);
        return "redirect:/giang-vien/hien-thi";
    }

    @PostMapping("update")
    public String update(@Valid GiangVien giangVien , BindingResult result) {
        if (result.hasErrors()) {
            return "/btvn/B4/update-giang-vien";
        }

        service.sua(giangVien);
        return "redirect:/giang-vien/hien-thi";
    }
}
