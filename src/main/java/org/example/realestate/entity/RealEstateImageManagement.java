package org.example.realestate.entity;

import jakarta.persistence.*;
import lombok.*;

@Entity
@Table(name = "real_estate_image_management")
@EqualsAndHashCode(callSuper=true)
@Builder
@AllArgsConstructor
@NoArgsConstructor
public class RealEstateImageManagement extends BaseEntity<Integer>{
    @Column(name = "real_estate_id",nullable = false)
    private Integer realEstateId;

    @Column(name = "description",columnDefinition = "longtext")
    private String description;

    @Column(name = "image_path",nullable = false)
    private String imagePath;

    @Column(name = "image_status", nullable = false, columnDefinition = "TINYINT(1) DEFAULT 0")
    private boolean status;

    @Column(name = "arrange",nullable = false)
    private Integer arrange;

}
