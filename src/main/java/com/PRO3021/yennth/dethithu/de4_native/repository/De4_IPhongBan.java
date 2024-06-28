package com.PRO3021.yennth.dethithu.de4_native.repository;

import com.PRO3021.yennth.dethithu.de4_native.entity.de4_PhongBan;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface De4_IPhongBan extends JpaRepository<de4_PhongBan, Integer> {
    @Query(value = "select * from phong_ban", nativeQuery = true)
    List<de4_PhongBan> findAllNative();
}
