package com.PRO3021.yennth.dethithu.de6.service;

import com.PRO3021.yennth.dethithu.de6.entity.DatPhongEntity;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface IDatPhong extends JpaRepository<DatPhongEntity, Integer> {
    @Query(value = "select * from dat_phong", nativeQuery = true)
    List<DatPhongEntity> findAllNative();
}

