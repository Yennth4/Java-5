package com.PRO3021.yennth.demo.B3_BTVN_B5.controller;

import com.PRO3021.yennth.demo.B3_BTVN_B5.entity.B3_GiangVien;
import com.PRO3021.yennth.demo.B3_BTVN_B5.repository.B3_GiangVienRepository;
import jakarta.servlet.http.HttpSession;
import jakarta.validation.Valid;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
@RequestMapping("/giangvien")
public class B3_GiangVienController {
    private B3_GiangVienRepository service = new B3_GiangVienRepository();

    @GetMapping("/hien-thi")
    public String index(@RequestParam(required = false) String tenSearch, @RequestParam(required = false) Integer tuiMin,
                        @RequestParam(required = false) Integer tuiMax, Model model, HttpSession ses) {
        model.addAttribute("gvien", ses.getAttribute("gvien"));
        model.addAttribute("list", service.filterGiangVien(tenSearch, tuiMin, tuiMax));
        return "/demo/B3/index";
    }

    @GetMapping("/remove/{id}")
    public String delete(@PathVariable String id) {
        service.delete(id);
        return "redirect:/giangvien/hien-thi";
    }

    @GetMapping("/create")
    public String add(Model model) {
        model.addAttribute("gv", new B3_GiangVien());
        return "/demo/B3/add_gv";
    }

    @PostMapping("/store")
    public String store(@Valid @ModelAttribute("gv") B3_GiangVien gv, BindingResult result) {
        if (result.hasErrors()) {
            return "/demo/B3/add_gv";
        }
        service.add(gv);

        return "redirect:/giangvien/hien-thi";
    }

    @GetMapping("/detail/{ma}")
    public String detail(@PathVariable() String ma, HttpSession ses) {
        ses.setAttribute("gvien", service.detailGV(ma));
        return "redirect:/giangvien/hien-thi";
    }

    @GetMapping("/formud/{ma}")
    public String formUD(@PathVariable() String ma, Model model) {
        model.addAttribute("gv", service.detailGV(ma));
        return "/demo/B3/update_gv";
    }

    @PostMapping("/update/{ma}")
    public String update(@Valid @ModelAttribute("gv") B3_GiangVien gv, @PathVariable() String ma, BindingResult result) {
        if (result.hasErrors()) {
            return "/demo/B3/update_gv";
        }
        service.update(gv, ma);
        return "redirect:/giangvien/hien-thi";
    }
}
