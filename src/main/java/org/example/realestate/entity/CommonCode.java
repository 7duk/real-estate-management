package org.example.realestate.entity;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.Id;
import jakarta.persistence.Table;
import lombok.*;

@Entity
@Table(name = "common_code")
@EqualsAndHashCode(callSuper = true)
@Builder
@NoArgsConstructor
@AllArgsConstructor
public class CommonCode extends BaseEntity<CommonCodeId> {
    @Column(name = "category_name",nullable = false)
    private String categoryName;

    @Column(name = "inner_name",nullable = false)
    private String innerName;

    @Column(name = "image_url")
    private String imageUrl;

    @Column(name = "description")
    private String description;

    @Column(name = "sort",nullable = false)
    private Integer sort;
}
