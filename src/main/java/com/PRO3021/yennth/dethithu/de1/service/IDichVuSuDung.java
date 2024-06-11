package com.PRO3021.yennth.dethithu.de1.service;

import com.PRO3021.yennth.dethithu.de1.enitty.DichVuSuDung;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface IDichVuSuDung extends JpaRepository<DichVuSuDung, Integer> {
}
