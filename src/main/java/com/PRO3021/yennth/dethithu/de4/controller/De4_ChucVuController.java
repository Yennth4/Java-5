package com.PRO3021.yennth.dethithu.de4.controller;

import com.PRO3021.yennth.dethithu.de4.entity.de4_ChucVu;
import com.PRO3021.yennth.dethithu.de4.repository.De4_IChucVu;
import com.PRO3021.yennth.dethithu.de4.repository.De4_IPhongBan;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.time.LocalDate;
import java.time.format.DateTimeFormatter;

@Controller
@RequestMapping("/chuc-vu1")
public class De4_ChucVuController {

    @Autowired
    De4_IChucVu chucVuService;

    @Autowired
    De4_IPhongBan phongBanService;

    @GetMapping("/hien-thi")
    public String hienthi(Model model) {
        model.addAttribute("listChucVu", chucVuService.findAllNative());
        model.addAttribute("listPhongBan", phongBanService.findAllNative());
        return "/dethithu/de4/index";
    }

    @GetMapping("/detail/{id}")
    public String detail(Model model, @PathVariable Integer id) {

        DateTimeFormatter dateTimeFormatter = DateTimeFormatter.ofPattern("yyyy-MM-dd HH:mm:ss.SSSSSS");

        LocalDate ngayDen = LocalDate.parse(chucVuService.findById(id).get().getNgayDen(), dateTimeFormatter);
        model.addAttribute("ngayDen", ngayDen);

        LocalDate ngayBatDau = LocalDate.parse(chucVuService.findById(id).get().getNgayBatDau(), dateTimeFormatter);
        model.addAttribute("ngayBatDau", ngayBatDau);

        model.addAttribute("chucVu", chucVuService.findById(id).orElse(null));
        model.addAttribute("listChucVu", chucVuService.findAllNative());
        model.addAttribute("listPhongBan", phongBanService.findAllNative());
        return "/dethithu/de4/index";
    }

    @GetMapping("/remove/{id}")
    public String remove(@PathVariable Integer id) {
        chucVuService.deleteById(id);
        return "redirect:/chuc-vu1/hien-thi";
    }

    @PostMapping("/add")
    public String add(de4_ChucVu cv) {
        chucVuService.save(cv);
        return "redirect:/chuc-vu1/hien-thi";
    }

    @GetMapping("/search")
    public String search(@RequestParam String keywork, Model model) {
        model.addAttribute("listPhongBan", phongBanService.findAllNative());
        model.addAttribute("listChucVu", chucVuService.findByTen(keywork));
        model.addAttribute("keywork", keywork);
        return "/dethithu/de4/index";
    }
}
