package com.PRO3021.yennth.dethithu.de1.controller;

import com.PRO3021.yennth.dethithu.de1.enitty.DichVu;
import com.PRO3021.yennth.dethithu.de1.enitty.DichVuSuDung;
import com.PRO3021.yennth.dethithu.de1.service.IDichVu;
import com.PRO3021.yennth.dethithu.de1.service.IDichVuSuDung;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/dich-vu-su-dung/")
public class DichVuSuDungController {

    @Autowired
    private IDichVu dichVuService;

    @Autowired
    private IDichVuSuDung dichVuSuDungService;

    @GetMapping("hien-thi")
    private String hienThi(Model model) {
        model.addAttribute("listDichVu", dichVuService.findAll());
        model.addAttribute("listDichVuSuDung", dichVuSuDungService.findAll());
        return "/dethithu/de1/views";
    }

    @GetMapping("removeDichVu/{id}")
    private String removeDichVu(@PathVariable Integer id) {
        dichVuService.deleteById(id);
        return "redirect:/dich-vu-su-dung/hien-thi";
    }

    @GetMapping("removeDichVuSuDung/{id}")
    private String removeDichVuSuDung(@PathVariable Integer id) {
        dichVuSuDungService.deleteById(id);
        return "redirect:/dich-vu-su-dung/hien-thi";
    }

    @GetMapping("detailDichVu/{id}")
    private String detailDichVu(@PathVariable Integer id, Model model) {
        model.addAttribute("dichVu", dichVuService.findById(id));
        return "/dethithu/de1/views";
    }

    @GetMapping("detailDichVuSuDung/{id}")
    private String detailDichVuSuDung(@PathVariable Integer id, Model model) {
        model.addAttribute("dichVuSuDung", dichVuSuDungService.findById(id));
        return "/dethithu/de1/views";
    }

    @GetMapping("viewUpdateDichVu/{id}")
    private String viewUpdateDichVu(@PathVariable Integer id, Model model) {
        model.addAttribute("dichVu", dichVuService.findById(id));
        return "/dethithu/de1/updateDichVu";
    }

    @GetMapping("viewUpdateDichVuSuDung/{id}")
    private String viewUpdateDichVuSuDung(@PathVariable Integer id, Model model) {
        model.addAttribute("dichVuSuDung", dichVuSuDungService.findById(id));
        model.addAttribute("listDichVu", dichVuService.findAll());
        return "/dethithu/de1/updateDichVuSuDung";
    }

    @PostMapping("addDichVu")
    private String addDichVu(DichVu dichVu) {
        dichVuService.save(dichVu);
        return "redirect:/dich-vu-su-dung/hien-thi";
    }

    @PostMapping("addDichVuSuDung")
    private String addDichVuSuDung(DichVuSuDung dichVuSuDung) {
        dichVuSuDungService.save(dichVuSuDung);
        return "redirect:/dich-vu-su-dung/hien-thi";
    }

    @PostMapping("updateDichVu")
    private String updateDichVu(DichVu dichVu) {
        dichVuService.save(dichVu);
        return "redirect:/dich-vu-su-dung/hien-thi";
    }

    @PostMapping("updateDichVuSuDung")
    private String updateDichVuSuDung(DichVuSuDung dichVuSuDung) {
        dichVuSuDungService.save(dichVuSuDung);
        return "redirect:/dich-vu-su-dung/hien-thi";
    }
}
