package org.example.realestate.repository;

import org.example.realestate.entity.LineMaster;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface LineMasterRepository extends RepositoryInterface<LineMaster, Integer> {
}
