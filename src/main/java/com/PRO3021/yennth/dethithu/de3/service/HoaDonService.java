package com.PRO3021.yennth.dethithu.de3.service;

import com.PRO3021.yennth.dethithu.de3.entity.De3_HoaDon;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface HoaDonService extends JpaRepository<De3_HoaDon, Integer> {
}
