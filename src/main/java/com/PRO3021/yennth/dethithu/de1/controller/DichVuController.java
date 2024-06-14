package com.PRO3021.yennth.dethithu.de1.controller;

import com.PRO3021.yennth.dethithu.de1.entity.DichVu;
import com.PRO3021.yennth.dethithu.de1.entity.LoaiDichVu;
import com.PRO3021.yennth.dethithu.de1.service.IDichVu;
import com.PRO3021.yennth.dethithu.de1.service.ILoaiDichVu;
import jakarta.validation.Valid;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/dich-vu/")
public class DichVuController {

    @Autowired
    private IDichVu dichVuService;

    @Autowired
    private ILoaiDichVu loaiDichVuService;

    @GetMapping("hien-thi")
    private String hienThi(Model model) {
        model.addAttribute("listDichVu" , dichVuService.findAll());
        model.addAttribute("listLoaiDichVu" , loaiDichVuService.findAll());
        model.addAttribute("dichVu" , new DichVu());
        return "/dethithu/de1/dichvus";
    }

    @GetMapping("detail/{id}")
    private String detailDichVu(@PathVariable Integer id , Model model) {
        model.addAttribute("dichVu" , dichVuService.findById(id).orElse(null));
        model.addAttribute("listDichVu" , dichVuService.findAll());
        model.addAttribute("listLoaiDichVu" , loaiDichVuService.findAll());
        return "/dethithu/de1/dichvus";
    }

    @GetMapping("detail1/{id}")
    private String detailLoaiDichVu(@PathVariable Integer id , Model model) {
        model.addAttribute("loaiDichVu" , loaiDichVuService.findById(id).orElse(null));
        model.addAttribute("listDichVu" , dichVuService.findAll());
        model.addAttribute("listLoaiDichVu" , loaiDichVuService.findAll());
        model.addAttribute("dichVu" , new DichVu());
        return "/dethithu/de1/dichvus";
    }

    @GetMapping("remove/{id}")
    private String removeDichVu(@PathVariable Integer id) {
        dichVuService.deleteById(id);
        return "redirect:/dich-vu/hien-thi";
    }

    @GetMapping("remove1/{id}")
    private String removeLoaiDichVu(@PathVariable Integer id) {
        loaiDichVuService.deleteById(id);
        return "redirect:/dich-vu/hien-thi";
    }

    @PostMapping("add")
    private String add(@Valid DichVu dichVu , BindingResult result , Model model) {
        if (result.hasErrors()) {
            model.addAttribute("listDichVu" , dichVuService.findAll());
            model.addAttribute("listLoaiDichVu" , loaiDichVuService.findAll());
            return "/dethithu/de1/dichvus";
        }
        dichVuService.save(dichVu);
        return "redirect:/dich-vu/hien-thi";
    }

    @PostMapping("add1")
    private String addLoaiDichVu(LoaiDichVu loaiDichVu) {
        loaiDichVuService.save(loaiDichVu);
        return "redirect:/dich-vu/hien-thi";
    }
}
