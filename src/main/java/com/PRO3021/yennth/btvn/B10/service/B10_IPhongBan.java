package com.PRO3021.yennth.btvn.B10.service;

import com.PRO3021.yennth.btvn.B10.entity.B10_PhongBan;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface B10_IPhongBan extends JpaRepository<B10_PhongBan, Integer> {
}
