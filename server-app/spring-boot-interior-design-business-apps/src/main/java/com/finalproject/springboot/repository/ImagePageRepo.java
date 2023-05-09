package com.finalproject.springboot.repository;

import com.finalproject.springboot.model.dao.ImageDAO;
import org.springframework.data.jpa.repository.JpaSpecificationExecutor;
import org.springframework.data.repository.PagingAndSortingRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface ImagePageRepo extends PagingAndSortingRepository<ImageDAO, Long>, JpaSpecificationExecutor<ImageDAO> {

}
