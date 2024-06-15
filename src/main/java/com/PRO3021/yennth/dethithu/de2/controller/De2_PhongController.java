package com.PRO3021.yennth.dethithu.de2.controller;

import com.PRO3021.yennth.dethithu.de2.entity.LoaiPhong;
import com.PRO3021.yennth.dethithu.de2.entity.Phong;
import com.PRO3021.yennth.dethithu.de2.service.ILoaiPhong;
import com.PRO3021.yennth.dethithu.de2.service.IPhong;
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
@RequestMapping("/phong/")
public class De2_PhongController {

    @Autowired
    private IPhong phongService;

    @Autowired
    private ILoaiPhong loaiPhongService;

    @GetMapping("hien-thi")
    private String hienThi(Model model) {
        model.addAttribute("listPhong" , phongService.findAll());
        model.addAttribute("listLoaiPhong" , loaiPhongService.findAll());
        model.addAttribute("phong" , new Phong());
        return "/dethithu/de2/phongs";
    }

    @GetMapping("detail/{id}")
    private String detailPhong(@PathVariable Integer id , Model model) {
        model.addAttribute("p" , phongService.findById(id).orElse(null));
        model.addAttribute("listPhong" , phongService.findAll());
        model.addAttribute("listLoaiPhong" , loaiPhongService.findAll());
        model.addAttribute("phong" , new Phong());
        return "/dethithu/de2/phongs";
    }

    @GetMapping("detail1/{id}")
    private String detailLoaiPhong(@PathVariable Integer id , Model model) {
        model.addAttribute("lp" , loaiPhongService.findById(id).orElse(null));
        model.addAttribute("listPhong" , phongService.findAll());
        model.addAttribute("listLoaiPhong" , loaiPhongService.findAll());
        model.addAttribute("phong", new Phong());
        return "/dethithu/de2/phongs";
    }

    @GetMapping("remove/{id}")
    private String removePhong(@PathVariable Integer id) {
        phongService.deleteById(id);
        return "redirect:/phong/hien-thi";
    }

    @GetMapping("remove1/{id}")
    private String removeLoaiPhong(@PathVariable Integer id) {
        loaiPhongService.deleteById(id);
        return "redirect:/phong/hien-thi";
    }

    @PostMapping("add")
    private String add(@Valid Phong phong , BindingResult result , Model model) {
        if (result.hasErrors()) {
            model.addAttribute("listPhong" , phongService.findAll());
            model.addAttribute("listLoaiPhong" , loaiPhongService.findAll());
            return "/dethithu/de2/phongs";
        }
        phongService.save(phong);
        return "redirect:/phong/hien-thi";
    }

    @PostMapping("add1")
    private String addLoaiPhong(LoaiPhong loaiPhong) {
        loaiPhongService.save(loaiPhong);
        return "redirect:/phong/hien-thi";
    }
}
