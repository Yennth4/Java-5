package com.PRO3021.yennth.dethithu.de5.controller;

import com.PRO3021.yennth.dethithu.de5.entity.de5_ChucVu;
import com.PRO3021.yennth.dethithu.de5.entity.de5_PhongBan;
import com.PRO3021.yennth.dethithu.de5.repository.De5_IChucVu;
import com.PRO3021.yennth.dethithu.de5.repository.De5_IPhongBan;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.PageRequest;
import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.time.LocalDateTime;

@Controller
@RequestMapping("/chuc-vu2/")
public class ChucVuController {

    @Autowired
    private De5_IChucVu chucVuService;

    @Autowired
    private De5_IPhongBan phongBanService;

    @GetMapping("hien-thi")
    private String hienThi(
            Model model,
            @RequestParam(defaultValue = "0") int page,
            @RequestParam(name = "keyword", defaultValue = "") String keyword
    ) {
        String s = "%" + keyword + "%";
        PageRequest p = PageRequest.of(page, 3);
        model.addAttribute("listChucVu", chucVuService.findByTenLike(s, p));
        model.addAttribute("listPhongBan", phongBanService.findAll());
        return "/dethithu/de5/views";
    }

    @GetMapping("remove/{id}")
    private String removeChucVu(
            Model model,
            @RequestParam(defaultValue = "0") int page,
            @RequestParam(name = "keyword", defaultValue = "") String keyword,
            @PathVariable Integer id) {
        PageRequest p = PageRequest.of(page, 3);
        model.addAttribute("listChucVu", chucVuService.findAll(p));
        model.addAttribute("listPhongBan", phongBanService.findAll());
        chucVuService.deleteById(id);
        return "redirect:/chuc-vu2/hien-thi";
    }

    @GetMapping("remove1/{id}")
    private String removePhongBan(@PathVariable Integer id) {
        phongBanService.deleteById(id);
        return "redirect:/chuc-vu2/hien-thi";
    }

    @GetMapping("detail/{id}")
    private String detailChucVu(
            Model model,
            @RequestParam(defaultValue = "0") int page,
            @RequestParam(name = "keyword", defaultValue = "") String keyword,
            @PathVariable Integer id) {
        PageRequest p = PageRequest.of(page, 3);
        model.addAttribute("listChucVu", chucVuService.findAll(p));
        model.addAttribute("listPhongBan", phongBanService.findAll());
        model.addAttribute("chucVu", chucVuService.findById(id).orElse(null));
        return "/dethithu/de5/views";
    }

    @GetMapping("detail1/{id}")
    private String detailPhongBan(
            Model model,
            @RequestParam(defaultValue = "0") int page,
            @RequestParam(name = "keyword", defaultValue = "") String keyword,
            @PathVariable Integer id) {
        PageRequest p = PageRequest.of(page, 3);
        model.addAttribute("listChucVu", chucVuService.findAll(p));
        model.addAttribute("listPhongBan", phongBanService.findAll());
        model.addAttribute("phongBan", phongBanService.findById(id).orElse(null));
        return "/dethithu/de5/views";
    }

    @PostMapping("add")
    private String addChucVu(
            Model model,
            @RequestParam(defaultValue = "0") int page,
            @RequestParam(name = "keyword", defaultValue = "") String keyword,
            @ModelAttribute de5_ChucVu chucVu,
            @RequestParam("ngayBatDau") @DateTimeFormat(iso = DateTimeFormat.ISO.DATE_TIME) LocalDateTime ngayBatDau,
            @RequestParam("denNgay") @DateTimeFormat(iso = DateTimeFormat.ISO.DATE_TIME) LocalDateTime denNgay) {
        chucVu.setNgayBatDau(ngayBatDau);
        chucVu.setDenNgay(denNgay);

        PageRequest p = PageRequest.of(page, 3);
        model.addAttribute("listChucVu", chucVuService.findAll(p));
        model.addAttribute("listPhongBan", phongBanService.findAll());

        chucVuService.save(chucVu);
        return "redirect:/chuc-vu2/hien-thi";
    }

    @PostMapping("add1")
    private String addPhongBan(de5_PhongBan phongBan) {
        phongBanService.save(phongBan);
        return "redirect:/chuc-vu2/hien-thi";
    }
}
