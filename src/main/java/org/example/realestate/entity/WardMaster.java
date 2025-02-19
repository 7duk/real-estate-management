package org.example.realestate.entity;

import jakarta.persistence.*;
import lombok.*;

@Entity
@Table(name = "ward_master")
@Builder
@NoArgsConstructor
@AllArgsConstructor
@EqualsAndHashCode(callSuper = true)
public class WardMaster extends BaseEntity<Integer> {
    @Column(name = "ward_name",nullable = false)
    private String wardName;

    @Column(name = "administrative_code",nullable = false, length = 10)
    private String administrativeCode;

    @Column(name = "districtId",nullable = false)
    private Integer districtId;
}

