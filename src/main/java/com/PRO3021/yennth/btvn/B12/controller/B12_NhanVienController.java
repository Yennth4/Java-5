package com.PRO3021.yennth.btvn.B12.controller;

import com.PRO3021.yennth.btvn.B12.entity.B12_ChucVu;
import com.PRO3021.yennth.btvn.B12.entity.B12_CuaHang;
import com.PRO3021.yennth.btvn.B12.entity.B12_NhanVien;
import com.PRO3021.yennth.btvn.B12.service.B12_IChucVu;
import com.PRO3021.yennth.btvn.B12.service.B12_ICuaHang;
import com.PRO3021.yennth.btvn.B12.service.B12_INhanVien;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/B12/")
public class B12_NhanVienController {

    @Autowired
    private B12_ICuaHang serviceCuaHang;

    @Autowired
    private B12_IChucVu serviceChucVu;

    @Autowired
    private B12_INhanVien serviceNhanVien;

    @GetMapping("hien-thi")
    public String hienThi(Model model) {
        model.addAttribute("listChucVu" , serviceChucVu.findAll());
        model.addAttribute("listCuaHang" , serviceCuaHang.findAll());
        model.addAttribute("listNhanVien" , serviceNhanVien.findAll());
        return "/btvn/B12/views";
    }

    @GetMapping("chuc-vu/remove/{id}")
    private String removeChucVu(@PathVariable Integer id) {
        serviceChucVu.deleteById(id);
        return "redirect:/B12/hien-thi";
    }

    @GetMapping("cua-hang/remove/{id}")
    private String removeCuaHang(@PathVariable Integer id) {
        serviceCuaHang.deleteById(id);
        return "redirect:/B12/hien-thi";
    }

    @GetMapping("nhan-vien/remove/{id}")
    private String removeNhanVien(@PathVariable Integer id) {
        serviceNhanVien.deleteById(id);
        return "redirect:/B12/hien-thi";
    }

    // them model de in ra input
    @GetMapping("nhan-vien/view-update/{id}")
    private String viewUpdateNhanVien(@PathVariable Integer id , Model model) {
        model.addAttribute("nv" , serviceNhanVien.findById(id).orElse(null));
        return "/btvn/B12/update-nhan-vien";
    }

    @GetMapping("cua-hang/view-update/{id}")
    private String viewUpdateCuaHang(@PathVariable Integer id , Model model) {
        model.addAttribute("ch" , serviceCuaHang.findById(id).orElse(null));
        return "/btvn/B12/update-cua-hang";
    }

    @GetMapping("chuc-vu/view-update/{id}")
    private String viewUpdateChucVu(@PathVariable Integer id , Model model) {
        model.addAttribute("cv" , serviceChucVu.findById(id).orElse(null));
        return "/btvn/B12/update-chuc-vu";
    }

    @PostMapping("nhan-vien/add")
    private String addNhanVien(B12_NhanVien nhanVien) {
        serviceNhanVien.save(nhanVien);
        return "redirect:/B12/hien-thi";
    }

    @PostMapping("cua-hang/add")
    private String addCuaHang(B12_CuaHang cuaHang) {
        serviceCuaHang.save(cuaHang);
        return "redirect:/B12/hien-thi";
    }

    @PostMapping("chuc-vu/add")
    private String addChucVu(B12_ChucVu chucVu) {
        serviceChucVu.save(chucVu);
        return "redirect:/B12/hien-thi";
    }

    @PostMapping("nhan-vien/update")
    private String updateNhanVien(B12_NhanVien nhanVien) {
        serviceNhanVien.save(nhanVien);
        return "redirect:/B12/hien-thi";
    }

    @PostMapping("cua-hang/update")
    private String updateCuaHang(B12_CuaHang cuaHang) {
        serviceCuaHang.save(cuaHang);
        return "redirect:/B12/hien-thi";
    }

    @PostMapping("chuc-vu/update")
    private String updateChucVu(B12_ChucVu chucVu) {
        serviceChucVu.save(chucVu);
        return "redirect:/B12/hien-thi";
    }

}
