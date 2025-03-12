package org.example.realestate.repository;

import org.example.realestate.entity.CommonCode;
import org.example.realestate.entity.CommonCodeId;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface CommonCodeRepository extends RepositoryInterface<CommonCode, CommonCodeId> {
    List<CommonCode> findByCategoryNameAndInnerName(String categoryName, String innerName);

    List<CommonCode> findByCategoryName(String categoryName);

    @Query(value = "SELECT * FROM common_code WHERE category_name = :category_name and inner_code = :inner_code",nativeQuery = true)
    List<CommonCode> findByCategoryNameAndInnerCode(@Param("category_name") String categoryName,@Param("inner_code") Integer innerCode);
}
