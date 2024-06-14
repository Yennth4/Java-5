package com.PRO3021.yennth.dethithu.de5.controller;
import com.PRO3021.yennth.dethithu.de5.entity.De5_ChucVu;
import com.PRO3021.yennth.dethithu.de5.entity.De5_PhongBan;
import com.PRO3021.yennth.dethithu.de5.service.ChucVuService;
import com.PRO3021.yennth.dethithu.de5.service.PhongBanService;
import org.springframework.beans.factory.annotation.Autowired;
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
@RequestMapping("/chuc-vu/")
public class ChucVuController {

    @Autowired
    private ChucVuService chucVuService;

    @Autowired
    private PhongBanService phongBanService;

    @GetMapping("hien-thi")
    private String hienThi(Model model) {
        model.addAttribute("listChucVu", chucVuService.findAll());
        model.addAttribute("listPhongBan", phongBanService.findAll());
        return "/dethithu/de5/views";
    }

    @GetMapping("remove/{id}")
    private String removeChucVu(@PathVariable Integer id) {
        chucVuService.deleteById(id);
        return "redirect:/chuc-vu/hien-thi";
    }

    @GetMapping("remove1/{id}")
    private String removePhongBan(@PathVariable Integer id) {
        phongBanService.deleteById(id);
        return "redirect:/chuc-vu/hien-thi";
    }

    @GetMapping("detail/{id}")
    private String detailChucVu(@PathVariable Integer id, Model model) {
        model.addAttribute("listChucVu", chucVuService.findAll());
        model.addAttribute("chucVu", chucVuService.findById(id).orElse(null));
        model.addAttribute("listPhongBan", phongBanService.findAll());
        return "/dethithu/de5/views";
    }

    @GetMapping("detail1/{id}")
    private String detailPhongBan(@PathVariable Integer id, Model model) {
        model.addAttribute("listChucVu", chucVuService.findAll());
        model.addAttribute("phongBan", phongBanService.findById(id).orElse(null));
        model.addAttribute("listPhongBan", phongBanService.findAll());
        return "/dethithu/de5/views";
    }

    @PostMapping("add")
    private String addChucVu(@ModelAttribute De5_ChucVu chucVu,
                             @RequestParam("ngayBatDau") @DateTimeFormat(iso = DateTimeFormat.ISO.DATE_TIME) LocalDateTime ngayBatDau,
                             @RequestParam("denNgay") @DateTimeFormat(iso = DateTimeFormat.ISO.DATE_TIME) LocalDateTime denNgay) {
        chucVu.setNgayBatDau(ngayBatDau);
        chucVu.setDenNgay(denNgay);
        chucVuService.save(chucVu);
        return "redirect:/chuc-vu/hien-thi";
    }

    @PostMapping("add1")
    private String addPhongBan(De5_PhongBan phongBan) {
        phongBanService.save(phongBan);
        return "redirect:/chuc-vu/hien-thi";
    }
}
