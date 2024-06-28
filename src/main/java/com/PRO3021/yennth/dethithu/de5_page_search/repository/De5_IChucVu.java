package com.PRO3021.yennth.dethithu.de5_page_search.repository;

import com.PRO3021.yennth.dethithu.de5_page_search.entity.de5_ChucVu;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface De5_IChucVu extends JpaRepository<de5_ChucVu, Integer> {

    public Page<de5_ChucVu> findByTenLike(String keyword, PageRequest pageRequest);

}

