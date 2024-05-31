package com.PRO3021.yennth.demo.B8_CRUD_API_DB.controller;

import com.PRO3021.yennth.demo.B8_CRUD_API_DB.repository.ICategory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/category/")
public class CategoryController {

    @Autowired
    private ICategory serviceCategory;

    @GetMapping("hien-thi")
    private String hienThi(Model model) {
        model.addAttribute("listCategory" , serviceCategory.findAll());
        return "/demo/B8/category";
    }

}
