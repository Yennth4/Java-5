package com.PRO3021.yennth.ass.service;

import com.PRO3021.yennth.ass.entity.KhachHang;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface IKhachHang extends JpaRepository<KhachHang, Integer> {
}
