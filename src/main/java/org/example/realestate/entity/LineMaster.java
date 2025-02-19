package org.example.realestate.entity;

import jakarta.persistence.*;
import lombok.*;


@Entity
@Table(name = "line_master")
@EqualsAndHashCode(callSuper = true)
@Builder
@NoArgsConstructor
@AllArgsConstructor
public class LineMaster extends BaseEntity<Integer> {
    @Column(name = "line_name",nullable = false)
    private String lineName;

    @Column(name = "district_id",nullable = false)
    private Integer districtId;

    @Column(name = "administrative_code",nullable = false, length = 10)
    private String administrativeCode;
}
