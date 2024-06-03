package com.PRO3021.yennth.btvn.B11.service;

import com.PRO3021.yennth.btvn.B11.entity.CoSo;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface ICoSo extends JpaRepository<CoSo, Integer> {

}
