package com.PRO3021.yennth.ass.service;

import com.PRO3021.yennth.ass.entity.NhanVien;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface INhanVien extends JpaRepository<NhanVien, Integer> {
}
