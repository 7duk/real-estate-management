package org.example.realestate.entity;

import jakarta.persistence.*;
import lombok.Data;
import lombok.EqualsAndHashCode;

@Data
@Entity
@Table(name = "city_master")
@EqualsAndHashCode(callSuper = true)
public class CityMaster extends BaseEntity<Integer> {
    @Column(name = "city_name",nullable = false)
    private String cityName;

    @Column(name = "administrative_code",nullable = false, length = 2)
    private String administrativeCode;
}
