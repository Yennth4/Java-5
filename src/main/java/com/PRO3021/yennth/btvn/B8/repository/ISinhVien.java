package com.PRO3021.yennth.btvn.B8.repository;

import com.PRO3021.yennth.btvn.B8.entity.SinhVien;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface ISinhVien extends JpaRepository<SinhVien , Long> {

}
