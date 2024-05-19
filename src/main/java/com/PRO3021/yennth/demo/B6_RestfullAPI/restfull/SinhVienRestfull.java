package com.PRO3021.yennth.demo.B6_RestfullAPI.restfull;

import com.PRO3021.yennth.demo.B4_CRUD_SinhVienFixCung.entity.SinhVien;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.ArrayList;
import java.util.List;

@RestController // restcontroller => tra ve json
public class SinhVienRestfull {

    @GetMapping("a")
    public List<SinhVien> getAll() {
        List<SinhVien> list = new ArrayList<>();
        list.add(new SinhVien("123", "Nguyen Manh A", 18, "Vinh Phuc", true));
        list.add(new SinhVien("145", "Nguyen Manh B", 19, "HN", false));
        list.add(new SinhVien("156", "Nguyen Manh C", 18, "HP", true));
        return list;
        // tra ve 1 list json
    }
}
