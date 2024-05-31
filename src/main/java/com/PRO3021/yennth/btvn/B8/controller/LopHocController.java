package com.PRO3021.yennth.btvn.B8.controller;
import com.PRO3021.yennth.btvn.B8.entity.LopHoc;
import com.PRO3021.yennth.btvn.B8.entity.SinhVien;
import com.PRO3021.yennth.btvn.B8.repository.ILopHoc;
import com.PRO3021.yennth.btvn.B8.repository.ISinhVien;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;

@Controller
public class LopHocController {

    @Autowired
    private ILopHoc lopHocRepository;

    @Autowired
    private ISinhVien sinhVienRepository;

    @GetMapping("/lop-hoc/hien-thi")
    public String hienThi(Model model) {
        model.addAttribute("listLH", lopHocRepository.findAll());
        model.addAttribute("listSV", sinhVienRepository.findAll());
        return "/btvn/B8/lophocs";
    }

    @GetMapping("/lop-hoc/remove/{id}")
    public String remove(@PathVariable Long id, Model model) {
        lopHocRepository.deleteById(id);
        return "redirect:/lop-hoc/hien-thi";
    }

    @GetMapping("/lop-hoc/sinh-vien/remove/{id}")
    public String removeSV(@PathVariable Long id, Model model) {
        sinhVienRepository.deleteById(id);
        return "redirect:/lop-hoc/hien-thi";
    }

    @GetMapping("/lop-hoc/edit/{id}")
    public String viewUpdate(@PathVariable Long id, Model model) {
        LopHoc lopHoc = lopHocRepository.findById(id).orElse(null);
        model.addAttribute("lopHoc", lopHoc);
        return "/btvn/B8/update-lop-hoc";
    }

    @GetMapping("/lop-hoc/sinh-vien/edit/{id}")
    public String viewUpdateSV(@PathVariable Long id, Model model) {
        SinhVien sinhVien = sinhVienRepository.findById(id).orElse(null);
        model.addAttribute("sinhVien", sinhVien);
        model.addAttribute("listLH", lopHocRepository.findAll());
        return "/btvn/B8/update-sinh-vien";
    }

    @PostMapping("/lop-hoc/add")
    public String add(LopHoc lh) {
        lopHocRepository.save(lh);
        return "redirect:/lop-hoc/hien-thi";
    }

    @PostMapping("/lop-hoc/sinh-vien/add")
    public String addSV(SinhVien sinhVien) {
        sinhVienRepository.save(sinhVien);
        return "redirect:/lop-hoc/hien-thi";
    }

    @PostMapping("/lop-hoc/update")
    public String update(LopHoc lh) {
        lopHocRepository.save(lh);
        return "redirect:/lop-hoc/hien-thi";
    }

    @PostMapping("/lop-hoc/sinh-vien/update")
    public String updateSV(SinhVien sinhVien) {
        sinhVienRepository.save(sinhVien);
        return "redirect:/lop-hoc/hien-thi";
    }
}
