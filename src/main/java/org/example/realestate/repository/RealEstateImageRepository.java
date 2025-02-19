package org.example.realestate.repository;

import org.example.realestate.entity.RealEstateImageManagement;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface RealEstateImageRepository extends JpaRepository<RealEstateImageManagement,Integer> {
}
