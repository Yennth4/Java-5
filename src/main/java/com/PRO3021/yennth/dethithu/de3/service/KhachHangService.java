package com.PRO3021.yennth.dethithu.de3.service;

import com.PRO3021.yennth.dethithu.de3.entity.De3_KhachHang;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface KhachHangService extends JpaRepository<De3_KhachHang, Integer> {
}
