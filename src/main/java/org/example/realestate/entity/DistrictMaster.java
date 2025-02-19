package org.example.realestate.entity;

import jakarta.persistence.*;
import lombok.*;

@Entity
@Table(name = "district_master")
@Builder
@NoArgsConstructor
@AllArgsConstructor
@EqualsAndHashCode(callSuper = true)
public class DistrictMaster extends BaseEntity<Integer> {
    @Column(name = "district_name",nullable = false)
    private String districtName;

    @Column(name = "administrative_code",nullable = false, length = 10)
    private String administrativeCode;

    @Column(name = "city_id",nullable = false)
    private Integer cityId;
}
