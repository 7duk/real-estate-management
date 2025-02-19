package org.example.realestate.entity;

import jakarta.persistence.*;
import lombok.*;

@Entity
@Table(name = "base_price_management")
@EqualsAndHashCode(callSuper=true)
@Builder
@NoArgsConstructor
@AllArgsConstructor
public class BasePriceManagement extends BaseEntity<Integer>{

    @Column(name = "real_estate_id",nullable = false)
    private Integer realEstateId;

    @Column(name = "fee", nullable = false)
    private String fee;

}
