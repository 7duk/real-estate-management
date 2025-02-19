package org.example.realestate.repository;

import org.example.realestate.entity.RealEstateCatalog;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface RealEstateCatalogRepository extends JpaRepository<RealEstateCatalog, Integer> {
}
