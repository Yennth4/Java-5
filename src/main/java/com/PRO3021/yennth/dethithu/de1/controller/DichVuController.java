package com.PRO3021.yennth.dethithu.de1.controller;

import com.PRO3021.yennth.dethithu.de1.entity.DichVu;
import com.PRO3021.yennth.dethithu.de1.service.IDichVu;
import com.PRO3021.yennth.dethithu.de1.service.ILoaiDichVu;
import jakarta.validation.Valid;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.PageRequest;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
@RequestMapping("/dich-vu/")
public class DichVuController {

    @Autowired
    private IDichVu dichVuService;

    @Autowired
    private ILoaiDichVu loaiDichVuService;

    @GetMapping("hien-thi-tat-ca")
    private String hienThi(
            Model model,
            @RequestParam(name = "page", defaultValue = "0") int page,
            @RequestParam(name = "keyword", defaultValue = "") String keyword
    ) {
        String s = "%" + keyword + "%";
        PageRequest p = PageRequest.of(page, 3);
        model.addAttribute("listDichVu", dichVuService.findDichVuByTenLike(s, p));
        model.addAttribute("listLoaiDichVu", loaiDichVuService.findAll());
        model.addAttribute("dichVu", new DichVu());
        return "/dethithu/de1/views";
    }

    @GetMapping("detail/{id}")
    private String detail(
            Model model,
            @RequestParam(defaultValue = "0") int page,
            @RequestParam(name = "keyword", defaultValue = "") String keyword,
            @PathVariable Integer id
    ) {
        PageRequest p = PageRequest.of(page, 3);
        model.addAttribute("listDichVu", dichVuService.findAll(p));
        model.addAttribute("listLoaiDichVu", loaiDichVuService.findAll());
        model.addAttribute("dichVu", new DichVu());
        model.addAttribute("dichVu", dichVuService.findById(id).orElse(null));
        return "/dethithu/de1/views";
    }

    @GetMapping("remove/{id}")
    private String remove(
            Model model,
            @RequestParam(defaultValue = "0") int page,
            @RequestParam(name = "keyword", defaultValue = "") String keyword,
            @PathVariable Integer id
    ) {
        PageRequest p = PageRequest.of(page, 3);
        model.addAttribute("listDichVu", dichVuService.findAll(p));
        model.addAttribute("listLoaiDichVu", loaiDichVuService.findAll());
        model.addAttribute("dichVu", new DichVu());
        dichVuService.deleteById(id);
        return "redirect:/dich-vu/hien-thi-tat-ca";
    }

    @PostMapping("add")
    private String add(
            @Valid DichVu dichVu, BindingResult result,
            Model model,
            @RequestParam(defaultValue = "0") int page,
            @RequestParam(name = "keyword", defaultValue = "") String keyword
    ) {
        if (result.hasErrors()) {
            PageRequest p = PageRequest.of(page, 3);
            model.addAttribute("listDichVu", dichVuService.findAll(p));
            model.addAttribute("listLoaiDichVu", loaiDichVuService.findAll());
            return "/dethithu/de1/views";
        }
        dichVuService.save(dichVu);
        return "redirect:/dich-vu/hien-thi-tat-ca";
    }

}
