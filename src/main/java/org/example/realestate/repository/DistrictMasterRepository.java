package org.example.realestate.repository;

import org.example.realestate.entity.DistrictMaster;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface DistrictMasterRepository extends JpaRepository<DistrictMaster, Integer> {
    List<DistrictMaster> findByCityId(Integer cityId);
}
