package com.PRO3021.yennth.dethithu.de5.service;

import com.PRO3021.yennth.dethithu.de5.entity.De5_PhongBan;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface PhongBanService extends JpaRepository<De5_PhongBan, Integer> {
}
