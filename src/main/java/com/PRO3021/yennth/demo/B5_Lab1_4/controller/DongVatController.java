package com.PRO3021.yennth.demo.B5_Lab1_4.controller;

import com.PRO3021.yennth.demo.B5_Lab1_4.entity.DongVat;
import com.PRO3021.yennth.demo.B5_Lab1_4.service.DongVatService;
import jakarta.validation.Valid;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.ArrayList;
import java.util.List;

@Controller
@RequestMapping("/dong-vat/")
public class DongVatController {

    DongVatService service = new DongVatService();
    List<DongVat> listDV = new ArrayList<>();

    @GetMapping("hien-thi-tat-ca")
    public String hienThi(Model model) {
        model.addAttribute("listDV", service.getAll());
        return "/demo/B5/dongvats";
    }

    @GetMapping("remove/{ma}")
    public String delete(@PathVariable String ma) {
        service.deleteDV(ma);
        return "redirect:/dong-vat/hien-thi-tat-ca";
    }

    @GetMapping("view-add")
    public String viewAdd(Model model) {
        model.addAttribute("dongVat", new DongVat());
        return "/demo/B5/add-dong-vat";
    }

    @GetMapping("view-update/{ma}")
    public String viewUpdate(@PathVariable String ma, Model model) {
        model.addAttribute("dv1", service.detailDV(ma));
        model.addAttribute("dongVat", new DongVat());
        return "/demo/B5/update-dong-vat";
    }

    @PostMapping("add")
    public String addDV(@Valid DongVat dongVat, BindingResult result) {
        if (result.hasErrors()) {
            return "/demo/B5/add-dong-vat";
        }

        service.addDV(dongVat);
        return "redirect:/dong-vat/hien-thi-tat-ca";
    }

    @PostMapping("update")
    public String updateDV(@Valid DongVat dongVat, BindingResult result) {
        if (result.hasErrors()) {
            return "/demo/B5/update-dong-vat";
        }
        service.updateDV(dongVat);
        return "redirect:/dong-vat/hien-thi-tat-ca";
    }
}
