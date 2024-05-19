package com.PRO3021.yennth.btvn.B5.service;

import com.PRO3021.yennth.btvn.B5.entity.B5_GiangVien;

import java.util.ArrayList;
import java.util.List;

public class B5_GiangVienService {

    private List<B5_GiangVien> listGV;

    public B5_GiangVienService() {
        listGV = new ArrayList<>();
        listGV.add(new B5_GiangVien("GV1", "Nguyen Van 1", 23, "HN"));
        listGV.add(new B5_GiangVien("GV2", "Nguyen Van 2", 24, "HN2"));
        listGV.add(new B5_GiangVien("GV3", "Nguyen Van 3", 30, "HN3"));
        listGV.add(new B5_GiangVien("GV4", "Nguyen Van 4", 32, "HN4"));
        listGV.add(new B5_GiangVien("GV5", "Nguyen Van 5", 25, "HN5"));
    }

    public List<B5_GiangVien> getAll() {
        return listGV;
    }

    public void addGV(B5_GiangVien giangVien) {
        listGV.add(giangVien);
    }

    public void removeGV(String ma) {
        for (int i = 0; i < listGV.size(); i++) {
            if (listGV.get(i).getMaGV().equalsIgnoreCase(ma)) {
                listGV.remove(i);
            }
        }
    }

    public void updateGV(B5_GiangVien giangVien) {
        for (int i = 0; i < listGV.size(); i++) {
            if (listGV.get(i).getMaGV().equalsIgnoreCase(giangVien.getMaGV())) {
                listGV.set(i, giangVien);
            }
        }
    }

    public B5_GiangVien detailGV(String ma) {
        for (int i = 0; i < listGV.size(); i++) {
            if (listGV.get(i).getMaGV().equalsIgnoreCase(ma)) {
                return listGV.get(i);
            }
        }
        return null;
    }
}
