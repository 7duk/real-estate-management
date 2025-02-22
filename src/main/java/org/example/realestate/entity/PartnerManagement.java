package org.example.realestate.entity;

import jakarta.persistence.*;
import jakarta.validation.constraints.Email;
import lombok.*;

import java.util.List;

@Entity
@Table(name = "partner_management")
@EqualsAndHashCode(callSuper=true)
@Builder
@AllArgsConstructor
@NoArgsConstructor
public class PartnerManagement extends BaseEntity<Integer>{
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer id;

    @Column(name = "account_id", nullable = false)
    private Integer accountId;

    @Column(name = "partner_name", nullable = false)
    private String partnerName;

    @Column(name = "phone", nullable = false)
    private String phone;

    @Column(name = "description", nullable = false, columnDefinition = "longtext")
    private String description;

    @Column(name = "image_url")
    private String imageUrl;
}
