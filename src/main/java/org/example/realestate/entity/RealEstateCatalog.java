package org.example.realestate.entity;


import jakarta.persistence.*;
import lombok.*;

@Entity
@Table(name = "real_estate_catalog")
@EqualsAndHashCode(callSuper=true)
@Builder
@NoArgsConstructor
@AllArgsConstructor
public class RealEstateCatalog extends BaseEntity<Integer>{
    @Column(name = "partner_id", nullable = false)
    private Integer partnerId;

    @Column(name = "real_estate_id", nullable = false)
    private Integer realEstateId;

    @Column(name = "category_code", nullable = false)
    private Integer categoryCode;

    @Column(name = "inner_code", nullable = false)
    private Integer innerCode;
}
