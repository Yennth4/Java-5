package com.PRO3021.yennth.dethithu.de5.repository;

import com.PRO3021.yennth.dethithu.de5.entity.de5_PhongBan;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface De5_IPhongBan extends JpaRepository<de5_PhongBan, Integer> {
}
