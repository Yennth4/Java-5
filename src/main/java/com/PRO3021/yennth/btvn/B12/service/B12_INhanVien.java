package com.PRO3021.yennth.btvn.B12.service;

import com.PRO3021.yennth.btvn.B12.entity.B12_NhanVien;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface B12_INhanVien extends JpaRepository<B12_NhanVien, Integer> {
}
