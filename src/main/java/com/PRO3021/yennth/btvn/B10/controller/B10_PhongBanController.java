package com.PRO3021.yennth.btvn.B10.controller;

import com.PRO3021.yennth.btvn.B10.entity.B10_LoaiPhongBan;
import com.PRO3021.yennth.btvn.B10.entity.B10_PhongBan;
import com.PRO3021.yennth.btvn.B10.service.B10_ILoaiPhongBan;
import com.PRO3021.yennth.btvn.B10.service.B10_IPhongBan;
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
@RequestMapping("B10/")
public class B10_PhongBanController {

    @Autowired
    private B10_ILoaiPhongBan serviceLoaiPhongBan;

    @Autowired
    private B10_IPhongBan servicePhongBan;

    @GetMapping("hien-thi")
    private String hienThi(Model model) {
        model.addAttribute("listLoaiPhongBan", serviceLoaiPhongBan.findAll());
        model.addAttribute("b10_LoaiPhongBan", new B10_LoaiPhongBan());
        model.addAttribute("listPhongBan", servicePhongBan.findAll());
        return "/btvn/B10/views";
    }

    @GetMapping("loai-phong-ban/remove/{id}")
    private String removeLoaiPhongBan(@PathVariable Integer id) {
        serviceLoaiPhongBan.deleteById(id);
        return "redirect:/B10/hien-thi";
    }

    @GetMapping("phong-ban/remove/{id}")
    private String removePhongBan(@PathVariable Integer id) {
        servicePhongBan.deleteById(id);
        return "redirect:/B10/hien-thi";
    }

    @GetMapping("loai-phong-ban/detail/{id}")
    private String detailLoaiPhongBan(@PathVariable Integer id, Model model) {
        model.addAttribute("lpb", serviceLoaiPhongBan.findById(id).orElse(null));
        model.addAttribute("listLoaiPhongBan", serviceLoaiPhongBan.findAll());
        model.addAttribute("b10_LoaiPhongBan", new B10_LoaiPhongBan());
        model.addAttribute("listPhongBan", servicePhongBan.findAll());
        return "/btvn/B10/views";
    }

    @GetMapping("phong-ban/detail/{id}")
    private String detailPhongBan(@PathVariable Integer id, Model model) {
        model.addAttribute("pb", servicePhongBan.findById(id).orElse(null));
        model.addAttribute("listLoaiPhongBan", serviceLoaiPhongBan.findAll());
        model.addAttribute("b10_LoaiPhongBan", new B10_LoaiPhongBan());
        model.addAttribute("listPhongBan", servicePhongBan.findAll());
        return "/btvn/B10/views";
    }

    @GetMapping("loai-phong-ban/view-update/{id}")
    private String viewUpdateLoaiPhongBan(@PathVariable Integer id, Model model) {
        model.addAttribute("lpb", serviceLoaiPhongBan.findById(id).orElse(null));
        return "/btvn/B10/update-loai-phong-ban";
    }

    @GetMapping("phong-ban/view-update/{id}")
    private String viewUpdatePhongBan(@PathVariable Integer id, Model model) {
        model.addAttribute("pb", servicePhongBan.findById(id).orElse(null));
        return "/btvn/B10/update-phong-ban";
    }

    @PostMapping("loai-phong-ban/add")
    private String addLoaiPhongBan(@Valid B10_LoaiPhongBan loaiPhongBan, BindingResult result, Model model) {
        if (result.hasErrors()) {
            model.addAttribute("listLoaiPhongBan", serviceLoaiPhongBan.findAll());
            model.addAttribute("listPhongBan", servicePhongBan.findAll());
            return "/btvn/B10/views";
        }

        serviceLoaiPhongBan.save(loaiPhongBan);
        return "redirect:/B10/hien-thi";
    }

    @PostMapping("phong-ban/add")
    private String addPhongBan(B10_PhongBan phongBan) {
        servicePhongBan.save(phongBan);
        return "redirect:/B10/hien-thi";
    }

    @PostMapping("loai-phong-ban/update")
    private String updateLoaiPhongBan(B10_LoaiPhongBan loaiPhongBan) {
        serviceLoaiPhongBan.save(loaiPhongBan);
        return "redirect:/B10/hien-thi";
    }

    @PostMapping("phong-ban/update")
    private String updatePhongBan(B10_PhongBan phongBan) {
        servicePhongBan.save(phongBan);
        return "redirect:/B10/hien-thi";
    }
}
