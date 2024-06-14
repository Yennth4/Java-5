package com.PRO3021.yennth.dethithu.de2.service;

import com.PRO3021.yennth.dethithu.de2.entity.LoaiPhong;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface ILoaiPhong extends JpaRepository<LoaiPhong, Integer> {
}
