package org.example.realestate.repository;

import org.example.realestate.entity.WardMaster;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface WardMasterRepository extends RepositoryInterface<WardMaster, Integer> {
}
