package com.PRO3021.yennth.demo.B4_CRUD_SinhVienFixCung.controller;

import com.PRO3021.yennth.demo.B4_CRUD_SinhVienFixCung.service.SinhVienService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping("/sinh-vien/") // tach duong link chung
public class SinhVienController {

    private SinhVienService service = new SinhVienService();

    @GetMapping("hien-thi")
    public String hienThi(Model model){
        model.addAttribute( "listSV", service.getAll());
        return "/demo/B4/sinhviens";
    }

    @GetMapping("remove/{ma}")
    public String delete(@PathVariable String ma) {
        service.xoaSinhVien(ma);
        return "redirect:/sinh-vien/hien-thi";
    }

    @RequestMapping(value = "add" , method = RequestMethod.GET)
    // cach 2
    public String add() {
        return "";
    }
}
