package org.example.realestate.repository;

import org.example.realestate.entity.RealEstateManagement;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface RealEstateRepository extends JpaRepository<RealEstateManagement,Integer> {
}
