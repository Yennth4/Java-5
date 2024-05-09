package com.PRO3021.yennth.demo.B1_LamQuenVoiForm;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
/**
 * MVC => CONTROLLER : TAT CA CAC HAM LUON LUON TRA VE STRING
 *
 1. Spring duoc danh dau bang cac annotation - la 1 BEAN
 2. CLient (giao dien -FE) & server (Java - logic) trao doi thong tin qua : HTTP
        bang phuong thuc co ban : GET , POST , PUT , DELETE
 3. J4 chi dung : GET(lay , hien thi) & POST(xu ly)
 *
 */

public class DemoController {

    @GetMapping("/hi")
    public String hienThi(Model model) {
        // model ui
        // truyen gtri tu controller -> jsp
        // J4 : setAttribute - ${}
        // J5 : Model (ui)-> addAttribute
        model.addAttribute("hi2" , " Xin chao tat ca cac ban");
        return "/demo/B1/view";
    }

}
