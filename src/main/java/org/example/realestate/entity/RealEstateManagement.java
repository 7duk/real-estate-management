package org.example.realestate.entity;

import jakarta.persistence.*;
import lombok.*;

import java.math.BigDecimal;
import java.util.List;

@Entity
@Table(name = "real_estate_management")
@EqualsAndHashCode(callSuper=true)
@Builder
@NoArgsConstructor
@AllArgsConstructor
public class RealEstateManagement extends BaseEntity<Integer>{
    @Column(name = "partner_id", nullable = false)
    private Integer partnerId;

    @Column(name = "real_estate_name", nullable = false, columnDefinition = "VARCHAR(255) DEFAULT ''")
    private String realEstateName;

    @Column(name = "website_property_name", nullable = false)
    private String websitePropertyName;

    @Column(name = "area", nullable = false,columnDefinition = "DECIMAL(12,2)")
    private BigDecimal area;

    @Column(name = "street_type", nullable = false)
    private String streetType;

    @Column(name = "position", nullable = false)
    private String position;

    @Column(name = "road_width", nullable = false)
    private String roadWidth;

    @Column(name = "real_estate_status", nullable = false, columnDefinition = "TINYINT(1) DEFAULT 0")
    private boolean realEstateStatus;

    @Column(name = "other_notes",columnDefinition = "longtext")
    private String otherNotes;
}
