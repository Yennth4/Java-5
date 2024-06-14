package com.PRO3021.yennth.dethithu.de1.service;

import com.PRO3021.yennth.dethithu.de1.entity.LoaiDichVu;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface ILoaiDichVu extends JpaRepository<LoaiDichVu, Integer> {
}
