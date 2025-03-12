package org.example.realestate.repository;

import org.example.realestate.entity.CityMaster;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface CityMasterRepository extends RepositoryInterface<CityMaster, Integer> {

}
