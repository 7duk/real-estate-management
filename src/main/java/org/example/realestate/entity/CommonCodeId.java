package org.example.realestate.entity;

import jakarta.persistence.Embeddable;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.io.Serializable;

@NoArgsConstructor
@AllArgsConstructor
@Embeddable
@Builder
public class CommonCodeId  implements Serializable {
    private static final long serialVersionUID = 1L;

    private Integer categoryCode;

    private Integer innerCode;
}
