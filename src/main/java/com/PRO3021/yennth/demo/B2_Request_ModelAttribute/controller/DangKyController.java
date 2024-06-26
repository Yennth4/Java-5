package com.PRO3021.yennth.demo.B2_Request_ModelAttribute.controller;

import com.PRO3021.yennth.demo.B2_Request_ModelAttribute.request.DangKyRequest;
import jakarta.validation.Valid;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

@Controller
public class DangKyController {

    @GetMapping("/dangky")
    public String hienThi(Model model) {
        // tao 1 doi tuong rong -> jsp : hung loi
        model.addAttribute("dangKyRequest", new DangKyRequest());
        return "/demo/B2/dang-ky";
    }

    @PostMapping("/ket-qua2")
    // 1 ham truyen toi da 3 tham so
    public String ketQua( Model model , @Valid DangKyRequest request, BindingResult result) {

        if (!request.getMatKhau().equalsIgnoreCase(request.getConfirmMatKhau())) {
            result.rejectValue("confirmMatKhau" , "error.dangKyRequest" , "Mật khẩu và xác nhận mật khẩu không trùng khớp");
        }

        if (result.hasErrors()) {
            return "/demo/B2/dang-ky";
        }

        model.addAttribute("hoTen", request.getHoTen());
        model.addAttribute("tuoi", request.getTuoi());
        model.addAttribute("nganhHoc", request.getNganhHoc());
        model.addAttribute("queQuan", request.getQueQuan());
        model.addAttribute("matKhau", request.getMatKhau());
        model.addAttribute("confirmMatKhau", request.getConfirmMatKhau());

        return "/demo/B2/ket-qua";
    }
}
