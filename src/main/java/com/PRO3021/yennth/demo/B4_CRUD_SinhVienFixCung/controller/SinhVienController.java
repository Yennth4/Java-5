package com.PRO3021.yennth.demo.B4_CRUD_SinhVienFixCung.controller;
import com.PRO3021.yennth.demo.B4_CRUD_SinhVienFixCung.service.SinhVienService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;

@Controller
public class SinhVienController {

    private SinhVienService service = new SinhVienService();

    @GetMapping("/sinh-vien/hien-thi")
    public String hienThi(Model model){
        model.addAttribute( "listSV", service.getAll());
        return "/demo/B4/sinhviens";
    }

    @GetMapping("/sinh-vien/remove/{ma}")
    public String delete(@PathVariable String ma) {
        service.xoaSinhVien(ma);
        return "redirect:/sinh-vien/hien-thi";
    }

}
