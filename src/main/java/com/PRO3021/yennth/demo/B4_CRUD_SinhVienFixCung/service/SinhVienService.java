package com.PRO3021.yennth.demo.B4_CRUD_SinhVienFixCung.service;

import com.PRO3021.yennth.demo.B4_CRUD_SinhVienFixCung.entity.SinhVien;

import java.util.ArrayList;
import java.util.List;

public class SinhVienService {

    private List<SinhVien> listSinhVien;

    public SinhVienService() {
        listSinhVien = new ArrayList<>();
        listSinhVien.add(new SinhVien("PH31906", "Nguyen Hai Yen", 1, "HN", false));
        listSinhVien.add(new SinhVien("PH1", "Tran Tuan Phong", 2, "HN2", true));
        listSinhVien.add(new SinhVien("PH3", "Chu Thi Ngan", 3, "HN3", false));
        listSinhVien.add(new SinhVien("PH2", "Vu Van Nguyen", 4, "HN4", true));
        listSinhVien.add(new SinhVien("PH4", "Nguyen Thuy Hang", 5, "HN5", false));
    }

    public List<SinhVien> getAll() {
        return listSinhVien;
    }

    public void themSinhVien(SinhVien sinhVien) {
        listSinhVien.add(sinhVien);
    }

    public void suaSinhVien(SinhVien sinhVien, String ma) {
        for (int i = 0; i < listSinhVien.size(); i++) {
            if (listSinhVien.get(i).getMssv().equalsIgnoreCase(ma)) {
                listSinhVien.set(i, sinhVien);
            }
        }
    }

    public void xoaSinhVien(String ma) {
        for (int i = 0; i < listSinhVien.size(); i++) {
            if (listSinhVien.get(i).getMssv().equalsIgnoreCase(ma)) {
                listSinhVien.remove(i);
            }
        }
    }

    public SinhVien detailSinhVien(String ma) {
        for (SinhVien sinhVien : listSinhVien) {
            if (sinhVien.getMssv().equalsIgnoreCase(ma)) {
                return sinhVien;
            }
        }
        return null;
    }

}
