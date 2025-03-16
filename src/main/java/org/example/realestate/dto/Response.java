package org.example.realestate.dto;

import lombok.Builder;
import lombok.Data;
import lombok.Setter;

@Builder
@Data
public class Response {
    int code;
    Object data;
    String message;
}
