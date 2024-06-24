package com.PRO3021.yennth.dethithu.de6.service;

import com.PRO3021.yennth.dethithu.de6.entity.LoaiPhongEntity;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface ILoaiPhong extends JpaRepository<LoaiPhongEntity, Integer> {
    @Query(value = "select * from loai_phong" , nativeQuery = true)
    List<LoaiPhongEntity> findAllNative();
}
