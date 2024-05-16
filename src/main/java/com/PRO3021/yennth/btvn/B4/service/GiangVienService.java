package com.PRO3021.yennth.btvn.B4.service;

import com.PRO3021.yennth.btvn.B4.entity.GiangVien;
import java.util.ArrayList;
import java.util.List;

public class GiangVienService {

    private List<GiangVien> listGV = new ArrayList<>();

    public GiangVienService() {
        listGV.add(new GiangVien("1", "HangNT169", "Tao", 3, true, "Dong bang"));
        listGV.add(new GiangVien("2", "NguyenVV4", "Cam", 4, true, "Trung du mien nui"));
        listGV.add(new GiangVien("3", "PhongTT35", "Sau rieng", 5, false, "Mien nam"));
        listGV.add(new GiangVien("4", "KhanhPG", "Vai", 7, true, "Bac Giang"));
        listGV.add(new GiangVien("5", "TienNH21", "Mit", 10, false, "Mien bac"));
    }

    public List<GiangVien> getAll() {
        return listGV;
    }

    public void add(GiangVien giangVien) {
        listGV.add(giangVien);
    }

    public void sua(GiangVien giangVien) {
        for (int i = 0; i < listGV.size(); i++) {
            if (listGV.get(i).getId().equalsIgnoreCase(giangVien.getMa())) {
                listGV.set(i, giangVien);
            }
        }
    }

    public void xoa(String id) {
        for (int i = 0; i < listGV.size(); i++) {
            if (listGV.get(i).getId().equalsIgnoreCase(id)) {
                listGV.remove(i);
            }
        }
    }

    public GiangVien detail(String id) {
        for (int i = 0; i < listGV.size(); i++) {
            if (listGV.get(i).getId().equalsIgnoreCase(id)) {
                return listGV.get(i);
            }
        }
        return null;
    }

}
