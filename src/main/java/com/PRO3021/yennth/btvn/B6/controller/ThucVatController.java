package com.PRO3021.yennth.btvn.B6.controller;

import com.PRO3021.yennth.btvn.B6.entity.ThucVat;
import com.PRO3021.yennth.btvn.B6.service.ThucVatService;
import jakarta.validation.Valid;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/thuc-vat/B6/")
public class ThucVatController {

    private ThucVatService service = new ThucVatService();

    @GetMapping("hien-thi")
    public String hienThi(Model model) {
        model.addAttribute("listTV", service.getAll());
        model.addAttribute("thucVat", new ThucVat());
        return "/btvn/B6/thucvats";
    }

    @GetMapping("detail/{id}")
    public String detailTV(Model model, @PathVariable Integer id) {
        model.addAttribute("tv1", service.detailTV(id));
        model.addAttribute("listTV", service.getAll());
        model.addAttribute("thucVat", new ThucVat());
        return "/btvn/B6/thucvats";
    }

    @GetMapping("delete/{id}")
    public String deleteTV(@PathVariable Integer id) {
        service.deleteTV(id);
        return "redirect:/thuc-vat/B6/hien-thi";
    }

    @GetMapping("view-update/{id}")
    public String viewUpdate(Model model, @PathVariable Integer id) {
        model.addAttribute("tv1", service.detailTV(id));
        return "/btvn/B6/update-thuc-vat";
    }

    @PostMapping("add")
    public String addTV(@Valid ThucVat thucVat , BindingResult result , Model model) {
        if (result.hasErrors()) {
            model.addAttribute("listTV", service.getAll());
            return "/btvn/B6/thucvats";
        }

        service.addTV(thucVat);
        return "redirect:/thuc-vat/B6/hien-thi";
    }

    @PostMapping("update")
    public String updateTV(ThucVat thucVat) {
        service.update(thucVat);
        return "redirect:/thuc-vat/B6/hien-thi";
    }
}
