package com.PRO3021.yennth.btvn.B5.controller;

import com.PRO3021.yennth.btvn.B5.entity.B5_GiangVien;
import com.PRO3021.yennth.btvn.B5.service.B5_GiangVienService;
import jakarta.validation.Valid;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.ArrayList;
import java.util.List;

@Controller
@RequestMapping("/giang-vien/B5/")
public class B5_GiangVienController {

    B5_GiangVienService service = new B5_GiangVienService();
    List<B5_GiangVien> list = new ArrayList<>();

    @GetMapping("hien-thi")
    public String hienThi(@RequestParam(required = false) String searchTen,
                          @RequestParam(required = false) Integer minAge,
                          @RequestParam(required = false) Integer maxAge,
                          Model model) {
        if ((searchTen == null || searchTen.isEmpty()) && minAge == null && maxAge == null) {
            list = service.getAll();
        } else {
            list = service.searchGiangVien(searchTen, minAge, maxAge);
        }
        model.addAttribute("giangVien", list);
        model.addAttribute("b5_GiangVien", new B5_GiangVien());
        return "/btvn/B5/giangviens";
    }

    @GetMapping("detail/{ma}")
    public String detail(@PathVariable String ma, Model model) {
        B5_GiangVien giangVien = service.detailGV(ma);
        list = service.getAll();
        model.addAttribute("gv1", giangVien);
        model.addAttribute("giangVien", list);
        model.addAttribute("b5_GiangVien", new B5_GiangVien());
        return "/btvn/B5/giangviens";
    }

    @GetMapping("view-update/{ma}")
    public String viewUpdate(@PathVariable String ma, Model model) {
        B5_GiangVien giangVien = service.detailGV(ma);
        model.addAttribute("gv1", giangVien);
        return "/btvn/B5/update-giang-vien";
    }

    @GetMapping("remove/{ma}")
    public String delete(@PathVariable String ma) {
        service.removeGV(ma);
        return "redirect:/giang-vien/B5/hien-thi";
    }

    @PostMapping("add")
    public String add(@Valid B5_GiangVien giangVien, BindingResult result, Model model) {
        if (result.hasErrors()) {
            list = service.getAll();
            model.addAttribute("giangVien", list);
            return "/btvn/B5/giangviens";
        }

        service.addGV(giangVien);
        return "redirect:/giang-vien/B5/hien-thi";
    }

    @PostMapping("update")
    public String update(B5_GiangVien giangVien) {
        service.updateGV(giangVien);
        return "redirect:/giang-vien/B5/hien-thi";
    }

}
