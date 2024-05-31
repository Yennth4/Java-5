package com.PRO3021.yennth.demo.B8_CRUD_API_DB.repository;

import com.PRO3021.yennth.demo.B8_CRUD_API_DB.entity.Category;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface ICategory extends JpaRepository<Category, Long> {

}
