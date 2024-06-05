package com.PRO3021.yennth.btvn.B11.controller;

import com.PRO3021.yennth.btvn.B11.entity.CoSo;
import com.PRO3021.yennth.btvn.B11.entity.TKNH;
import com.PRO3021.yennth.btvn.B11.service.ICoSo;
import com.PRO3021.yennth.btvn.B11.service.ITKNH;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/B11/")
public class TKNHController {

    @Autowired
    private ITKNH serviceTKNH;

    @Autowired
    private ICoSo serviceCoSo;

    @GetMapping("hien-thi")
    public String hienThiTKNH(Model model) {
        model.addAttribute("listTKNH", serviceTKNH.findAll());
        model.addAttribute("listCoSo", serviceCoSo.findAll());
        return "/btvn/B11/views";
    }

    @GetMapping("tk/remove/{id}")
    public String removeTKNH(@PathVariable Integer id) {
        serviceTKNH.deleteById(id);
        return "redirect:/B11/hien-thi";
    }

    @GetMapping("co-so/remove/{id}")
    public String removeCoSo(@PathVariable Integer id) {
        serviceCoSo.deleteById(id);
        return "redirect:/B11/hien-thi";
    }

    @GetMapping("tk/viewUpdate/{id}")
    public String viewUpdateTKNH(@PathVariable Integer id, Model model) {
        model.addAttribute("tk", serviceTKNH.findById(id).orElse(null));
        model.addAttribute("listTKNH", serviceTKNH.findAll());
        return "/btvn/B11/update-tai-khoan-ngan-hang";
    }

    @GetMapping("co-so/viewUpdate/{id}")
    public String viewUpdateCoSo(@PathVariable Integer id, Model model) {
        model.addAttribute("cs", serviceCoSo.findById(id).orElse(null));
        model.addAttribute("listCoSo", serviceCoSo.findAll());
        return "/btvn/B11/views";
    }

    @PostMapping("tk/add")
    public String addTKNH(TKNH tk) {
        serviceTKNH.save(tk);
        return "redirect:/B11/hien-thi";
    }

    @PostMapping("co-so/add")
    public String addCoSo(CoSo coSo) {
        serviceCoSo.save(coSo);
        return "redirect:/B11/hien-thi";
    }

    @PostMapping("tk/update")
    public String updateTKNH(TKNH tk) {
        // save giong add
        serviceTKNH.save(tk);
        return "redirect:/B11/hien-thi";
    }

    @PostMapping("co-so/update")
    public String updateCoSo(CoSo coSo) {
        serviceCoSo.save(coSo);
        return "redirect:/B11/hien-thi";
    }
}
