package com.PRO3021.yennth.dethithu.de3.controller;

import com.PRO3021.yennth.dethithu.de3.entity.De3_HoaDon;
import com.PRO3021.yennth.dethithu.de3.entity.De3_KhachHang;
import com.PRO3021.yennth.dethithu.de3.service.HoaDonService;
import com.PRO3021.yennth.dethithu.de3.service.KhachHangService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/hoa-don/")
public class HoaDonController {

    @Autowired
    private KhachHangService khachHangService;

    @Autowired
    private HoaDonService hoaDonService;

    @GetMapping("hien-thi")
    private String hienThi(Model model) {
        model.addAttribute("listKhachHang" , khachHangService.findAll());
        model.addAttribute("listHoaDon" , hoaDonService.findAll());
        return "/dethithu/de3/views";
    }

    @GetMapping("detail/{id}")
    private String detailKhachHang(@PathVariable Integer id, Model model) {
        model.addAttribute("listKhachHang" , khachHangService.findAll());
        model.addAttribute("listHoaDon" , hoaDonService.findAll());
        model.addAttribute("khachHang" , khachHangService.findById(id).orElse(null));
        return "/dethithu/de3/views";
    }

    @GetMapping("detail1/{id}")
    private String detailHoaDon(@PathVariable Integer id, Model model) {
        model.addAttribute("listKhachHang" , khachHangService.findAll());
        model.addAttribute("listHoaDon" , hoaDonService.findAll());
        model.addAttribute("hoaDon" , hoaDonService.findById(id).orElse(null));
        return "/dethithu/de3/views";
    }

    @GetMapping("remove/{id}")
    private String removeKhachHang(@PathVariable Integer id) {
        khachHangService.deleteById(id);
        return "redirect:/hoa-don/hien-thi";
    }

    @GetMapping("remove1/{id}")
    private String removeHoaDon(@PathVariable Integer id) {
        hoaDonService.deleteById(id);
        return "redirect:/hoa-don/hien-thi";
    }

    @PostMapping("add")
    private String addKhachHang(De3_KhachHang de3KhachHang) {
        khachHangService.save(de3KhachHang);
        return "redirect:/hoa-don/hien-thi";
    }

    @PostMapping("add1")
    private String addHoaDon(De3_HoaDon de3HoaDon) {
        hoaDonService.save(de3HoaDon);
        return "redirect:/hoa-don/hien-thi";
    }
}

