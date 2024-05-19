package com.PRO3021.yennth.btvn.B6.service;

import com.PRO3021.yennth.btvn.B6.entity.ThucVat;
import java.util.ArrayList;
import java.util.List;

public class ThucVatService {

    private List<ThucVat> listTV;

    public ThucVatService() {
        listTV = new ArrayList<>();
        listTV.add(new ThucVat(11, "Hoa sung", 2, "Hoa", true, "HN"));
        listTV.add(new ThucVat(21, "Hoa sen", 3, "Hoa2", false, "HP"));
        listTV.add(new ThucVat(31, "Hoa hong", 4, "Hoa3", true, "HCM"));
        listTV.add(new ThucVat(41, "Hoa bang lang", 5, "Hoa4", false, "DN"));
        listTV.add(new ThucVat(51, "Hoa hue", 6, "Hoa5", true, "CT"));
    }

    public List<ThucVat> getAll() {
        return listTV;
    }

    public void addTV(ThucVat thucVat) {
        listTV.add(thucVat);
    }

    public void update(ThucVat thucVat) {
        for (int i = 0; i < listTV.size(); i++) {
            if (listTV.get(i).getId().equals(thucVat.getId())) {
                listTV.set(i, thucVat);
            }
        }
    }

    public void deleteTV(Integer id) {
        for (int i = 0; i < listTV.size(); i++) {
            if (listTV.get(i).getId().equals(id)) {
                listTV.remove(i);
            }
        }
    }

    public ThucVat detailTV(Integer id) {
        for (int i = 0; i < listTV.size(); i++) {
            if (listTV.get(i).getId().equals(id)) {
                return listTV.get(i);
            }
        }
        return null;
    }
}
