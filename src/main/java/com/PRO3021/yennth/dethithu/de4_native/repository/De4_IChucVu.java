package com.PRO3021.yennth.dethithu.de4_native.repository;

import com.PRO3021.yennth.dethithu.de4_native.entity.de4_ChucVu;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface De4_IChucVu extends JpaRepository<de4_ChucVu, Integer> {
    @Query(value = "select * from chuc_vu", nativeQuery = true)
    List<de4_ChucVu> findAllNative();

    @Query(value = "select * from chuc_vu where ten_chuc_vu like %:ten%", nativeQuery = true)
    List<de4_ChucVu> findByTen(@Param("ten") String ten);
}
