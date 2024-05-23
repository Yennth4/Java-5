package com.PRO3021.yennth.demo.B5_Lab1_4.service;

import com.PRO3021.yennth.demo.B5_Lab1_4.entity.DongVat;
import java.util.ArrayList;
import java.util.List;

public class DongVatService {

    private List<DongVat> listDV = new ArrayList<>();

    public DongVatService() {

        listDV.add(new DongVat("DV1" , "Meo" , true , 10.0 , "HN"));
        listDV.add(new DongVat("DV2" , "Cho" , false , 12.0 , "HN1"));
        listDV.add(new DongVat("DV3" , "Cao" , true , 13.0 , "HN2"));
        listDV.add(new DongVat("DV4" , "Gau" , false , 11.0 , "HN3"));
        listDV.add(new DongVat("DV5" , "Chuot" , true , 15.0 , "HN5"));
    }

    public List<DongVat> getAll() {
        return listDV;
    }

    public void addDV(DongVat dongVat) {
        listDV.add(dongVat);
    }

    public void updateDV(DongVat dongVat) {
        for (int i = 0; i < listDV.size(); i++) {
            if (listDV.get(i).getMa().equalsIgnoreCase(dongVat.getMa())){
                listDV.set(i , dongVat);
            }
        }
    }

    public void deleteDV(String ma) {
        for (int i = 0; i < listDV.size(); i++) {
            if (listDV.get(i).getMa().equalsIgnoreCase(ma)){
                listDV.remove(i);
            }
        }
    }

    public DongVat detailDV(String ma) {
        for (DongVat dongVat : listDV) {
            if (dongVat.getMa().equalsIgnoreCase(ma)) {
                return dongVat;
            }
        }
        return null;
    }


}
