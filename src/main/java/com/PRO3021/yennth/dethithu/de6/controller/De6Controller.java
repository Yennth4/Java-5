package com.PRO3021.yennth.dethithu.de6.controller;

import com.PRO3021.yennth.dethithu.de6.service.IDatPhong;
import com.PRO3021.yennth.dethithu.de6.service.ILoaiPhong;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/dat-phong/")
public class De6Controller {

    @Autowired
    private IDatPhong datPhongService;

    @Autowired
    private ILoaiPhong loaiPhongService;

    @GetMapping("view")
    private String hienThi(Model model) {

        return "";
    }
}
