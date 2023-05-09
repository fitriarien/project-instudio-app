package com.finalproject.springboot.repository;

import com.finalproject.springboot.model.dao.ProductDAO;
import org.springframework.data.jpa.repository.JpaSpecificationExecutor;
import org.springframework.data.repository.PagingAndSortingRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface ProductPageRepo extends PagingAndSortingRepository<ProductDAO, Long>, JpaSpecificationExecutor<ProductDAO> {
}
