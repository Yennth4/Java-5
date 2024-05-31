package com.example.demo.controller;


import com.example.demo.entity.GiangVien;
import com.example.demo.repository.GiangVienRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;

@Controller
public class GiangVienController {

    @Autowired
    private GiangVienRepository giangVienRepository;

    @GetMapping("/giang-vien/hien-thi")
    public String hienThi(Model model){

        model.addAttribute("lists",giangVienRepository.findAll());
        return "giangviens";
    }

    @GetMapping("/giang-vien/view-add")
    public String viewAdd(){


        return "add-giang-vien";
    }
    @GetMapping("/giang-vien/view-update/{a}")
    public String viewUpdate(@PathVariable("a")Long id,Model model){

        model.addAttribute("gv1",giangVienRepository.findById(id).orElse(null));

        return "update-giang-vien";
    }
    @GetMapping("/giang-vien/remove/{id}")
    public String remove(@PathVariable Long id, Model model) {
        giangVienRepository.deleteById(id);
        return "redirect:/giang-vien/hien-thi";
    }
    @GetMapping("/giang-vien/detail/{a}")
    public String detail(@PathVariable("a")Long id,Model model){

        model.addAttribute("gv1",giangVienRepository.findById(id).orElse(null));

        return "detail-giang-vien";
    }
    @PostMapping("/giang-vien/add")
    public String add(GiangVien gv){

        giangVienRepository.save(gv);
        return "redirect:/giang-vien/hien-thi";
    }

    @PostMapping("/giang-vien/update")
    public String update(GiangVien gv){

        giangVienRepository.save(gv);
        return "redirect:/giang-vien/hien-thi";
    }

}
