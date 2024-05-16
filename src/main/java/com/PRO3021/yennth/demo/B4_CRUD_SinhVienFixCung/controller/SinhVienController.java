package com.PRO3021.yennth.demo.B4_CRUD_SinhVienFixCung.controller;

import com.PRO3021.yennth.demo.B4_CRUD_SinhVienFixCung.entity.SinhVien;
import com.PRO3021.yennth.demo.B4_CRUD_SinhVienFixCung.service.SinhVienService;
import jakarta.validation.Valid;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.List;

@Controller
@RequestMapping("/sinh-vien/") // tach duong link chung
public class SinhVienController {

    private SinhVienService service = new SinhVienService();

    @GetMapping("hien-thi")
    public String hienThi(@RequestParam(required = false) String keyword, Model model) {
        List<SinhVien> listSV;
        if (keyword == null || keyword.isEmpty()) {
            listSV = service.getAll();
        } else {
            listSV = service.searchSinhVien(keyword);
        }
        model.addAttribute("listSV", listSV);
        return "/demo/B4/sinhviens";
    }

    @GetMapping("view-add")
    public String viewAdd(Model model) {
        model.addAttribute("sinhVien" , new SinhVien());
        return "/demo/B4/add-sinh-vien";
    }

    @GetMapping("view-update/{ma}")
    public String viewUpdate(@PathVariable String ma, Model model) {
        SinhVien sinhVien = service.detailSinhVien(ma);
        model.addAttribute("sv1", sinhVien);
        model.addAttribute("sinhVien" , new SinhVien());
        return "/demo/B4/update-sinh-vien";
    }

    @GetMapping("remove/{ma}")
    public String delete(@PathVariable String ma) {
        service.xoaSinhVien(ma);
        return "redirect:/sinh-vien/hien-thi";
    }

    @GetMapping("detail/{ma}")
    public String detail(@PathVariable String ma, Model model) {
        SinhVien sinhVien = service.detailSinhVien(ma);
        model.addAttribute("sv1", sinhVien);
        return "/demo/B4/detail-sinh-vien";
    }

    @PostMapping("add")
    public String add(@Valid SinhVien sinhVien , BindingResult result) {
        // sinh vien la doi tuong request lay du lieu ben form (DK : name ben form add phai trung voi thuoc tinh cua entity)

        if (result.hasErrors()) {
            return "/demo/B4/add-sinh-vien";
        }

        SinhVien sinhVien1 = new SinhVien(sinhVien.getMssv(),
                sinhVien.getTen(), sinhVien.getTuoi(),
                sinhVien.getDiaChi(), sinhVien.getGioiTinh());
        // sinhvien1 : hung gtri vua lay duoc cua form

        service.themSinhVien(sinhVien1);
        return "redirect:/sinh-vien/hien-thi";
        // return ve trang hien thi
    }

    @PostMapping("update")
    public String update(@Valid SinhVien sinhVien , BindingResult result) {

        if (result.hasErrors()) {
            return "/demo/B4/update-sinh-vien";
        }

        SinhVien sinhVien1 = new SinhVien(sinhVien.getMssv(),
                sinhVien.getTen(), sinhVien.getTuoi(),
                sinhVien.getDiaChi(), sinhVien.getGioiTinh());
        service.suaSinhVien(sinhVien1);
        return "redirect:/sinh-vien/hien-thi";
        // return ve trang hien thi
    }
}
