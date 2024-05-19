package com.PRO3021.yennth.demo.B6_RestfullAPI.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class SinhVienController_RestfullAPI {

    @GetMapping("hien-thi")
    @ResponseBody
    // dung ResponseBody trong class @Controller => restfull api => tra ve json
    public String hienThi() {
        return "thanhcong";
        // tra ve "thanh cong"
    }
}
