package com.PRO3021.yennth.dethithu.de1.service;

import com.PRO3021.yennth.dethithu.de1.entity.DichVu;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface IDichVu extends JpaRepository<DichVu, Integer> {

    public Page<DichVu> findDichVuByTenLike(String a, PageRequest p);

}
