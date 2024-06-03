package com.PRO3021.yennth.btvn.B11.service;

import com.PRO3021.yennth.btvn.B11.entity.TKNH;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface ITKNH extends JpaRepository<TKNH, Integer> {

}
