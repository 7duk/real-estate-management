package org.example.realestate.repository;


import org.example.realestate.entity.BasePriceManagement;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface BasePriceManagementRepository extends JpaRepository<BasePriceManagement, Integer> {
}
