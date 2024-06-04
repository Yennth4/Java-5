package com.PRO3021.yennth.btvn.B10.service;

import com.PRO3021.yennth.btvn.B10.entity.B10_LoaiPhongBan;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.Optional;

@Repository
public interface B10_ILoaiPhongBan extends JpaRepository<B10_LoaiPhongBan, Integer> {
    Optional<B10_LoaiPhongBan> findByMa(String ma);
}
