package com.PRO3021.yennth.demo.B3_BTVN_B5.repository;

import com.PRO3021.yennth.demo.B3_BTVN_B5.entity.B3_GiangVien;

import java.util.ArrayList;
import java.util.List;
import java.util.stream.Collectors;

public class B3_GiangVienRepository {
    private List<B3_GiangVien> list = new ArrayList<>();
    public B3_GiangVienRepository(){
        list.add(new B3_GiangVien("GV01", "N Thi A", 10, "Hà Nội"));
        list.add(new B3_GiangVien("GV02", "K Thi C", 20, "Hà Nội"));
        list.add(new B3_GiangVien("GV03", "H Thi O", 40, "Hà Nội"));
        list.add(new B3_GiangVien("GV04", "D Thi U", 50, "Hà Nội"));
        list.add(new B3_GiangVien("GV05", "U Thi Y", 30, "Hà Nội"));
    }

    public List<B3_GiangVien> filterGiangVien(String ten, Integer tuoiMin, Integer tuoiMax) {
        return list.stream()
                .filter(gv -> (ten == null || gv.getTen().toLowerCase().contains(ten)) &&
                        (tuoiMin == null || gv.getTuoi() >= tuoiMin) &&
                        (tuoiMax == null || gv.getTuoi() <= tuoiMax))
                .collect(Collectors.toList());
    }


    public void add(B3_GiangVien gv){
        list.add(gv);
    }

    public B3_GiangVien detailGV(String ma){
        for (B3_GiangVien gvien: list ) {
            if (gvien.getMa().equals(ma)){
                return gvien;
            }
        }
        return null;
    }

    public void update(B3_GiangVien gv, String ma){
        for (int i = 0; i < list.size(); i++) {
            if (ma.equals(list.get(i).getMa())){
                list.set(i, gv);
                break;
            }
        }
    }

    public void delete(String id){
        for (int i = 0; i < list.size(); i++) {
            if (id.equals(list.get(i).getMa())){
                list.remove(i);
            }
        }
    }

}
