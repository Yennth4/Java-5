package com.PRO3021.yennth.demo.B1_LamQuenVoiForm.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class LoginController {

    @GetMapping("/login")
    public String hienThi(){
        return "/demo/B1/login-form";
    }

    @PostMapping("/ket-qua")
    public String login(@RequestParam("uname") String username ,
                        @RequestParam("pwd") String password ,
                        Model model) {
        /**
         * Lay gtri tu view -> controller
         * J4 : getParameter
         * J5 : @RequestParam
         */
        model.addAttribute("username" , username);
        model.addAttribute("password" , password);
        return "/demo/B1/ket-qua";
    }
}
